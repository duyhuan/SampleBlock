//
//  DetailVC.swift
//  SampleBlock
//
//  Created by techmaster on 2/17/17.
//  Copyright © 2017 techmaster. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    var imgViewString: String? = nil
    var nameTitle: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = nameTitle
        imgView.image = try! UIImage(data: NSData(contentsOf: URL(string: imgViewString!)!) as Data)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
