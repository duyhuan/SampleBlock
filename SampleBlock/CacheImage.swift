//
//  CacheImage.swift
//  SampleBlock
//
//  Created by techmaster on 2/17/17.
//  Copyright © 2017 techmaster. All rights reserved.
//

import Foundation
import UIKit

let imageContactCache = NSCache<NSString, UIImage>()

extension UIImageView {
    func loadImageContactUsingCache(_ url : String) {
        //self.image = nil
        //check cache for image first
        let urlImage = NSURL(string: url)
        if let cachedImage = imageContactCache.object(forKey: url as NSString) {
            if let imageData = NSData(contentsOf: urlImage as! URL) {
                DispatchQueue.main.async {
                    self.image = UIImage(data: imageData as Data)
                    imageContactCache.setObject(UIImage(data: imageData as Data)!, forKey: url as NSString)
                    return
                }
            }
            self.image = cachedImage
            return
        }
        // Cache image
        DispatchQueue.main.async(execute: {
            if let imageData = NSData(contentsOf: NSURL(string: url) as! URL) {
                let downloadedImage = UIImage(data: imageData as Data)
                imageContactCache.setObject(downloadedImage!, forKey: url as NSString)
                self.image = downloadedImage
            }
        })
    }
}
