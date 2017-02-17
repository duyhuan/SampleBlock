//
//  ViewController.swift
//  SampleBlock
//
//  Created by techmaster on 2/15/17.
//  Copyright © 2017 techmaster. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var btnLoad: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    var items = [ModelItem]()
    
    var imgs = [
        "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac10.jpg",
        "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac12.jpg",
        "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac11.jpg",
        "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac14.jpg",
        "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac15.jpg",
        "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac16.jpg",
        "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac17.jpg",
        "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac18.jpg",
        "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac19.jpg",
        "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac20.jpg",
        "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac45.jpg",
        "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac44.jpg",
        "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac43.jpg",
        "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac42.jpg",
        "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac41.jpg",
        "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac40.jpg",
        "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac39.jpg",
        "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac38.jpg",
        "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac37.jpg"
    ]
    
    var block1: ((_ p1: Int, _ p2: String)-> (Int))?
    var block2 = {(p1: Int) -> () in
        //print(p1)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //block2(999)
//        printSomething(p1: 9, completion: {() in
//            print("Block da hoan thanh")
//        })
        
        items.append(ModelItem.init(labelName: "Ngoc Trinh", labelAge: "25", labelAssizes: "90 - 60 - 90", imgViewString: "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac10.jpg"))
        items.append(ModelItem.init(labelName: "Ngoc Trinh", labelAge: "25", labelAssizes: "90 - 60 - 90", imgViewString: "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac12.jpg"))
        items.append(ModelItem.init(labelName: "Ngoc Trinh", labelAge: "25", labelAssizes: "90 - 60 - 90", imgViewString: "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac11.jpg"))
        items.append(ModelItem.init(labelName: "Ngoc Trinh", labelAge: "25", labelAssizes: "90 - 60 - 90", imgViewString: "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac14.jpg"))
        items.append(ModelItem.init(labelName: "Ngoc Trinh", labelAge: "25", labelAssizes: "90 - 60 - 90", imgViewString: "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac15.jpg"))
        items.append(ModelItem.init(labelName: "Ngoc Trinh", labelAge: "25", labelAssizes: "90 - 60 - 90", imgViewString: "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac16.jpg"))
        items.append(ModelItem.init(labelName: "Ngoc Trinh", labelAge: "25", labelAssizes: "90 - 60 - 90", imgViewString: "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac17.jpg"))
        items.append(ModelItem.init(labelName: "Ngoc Trinh", labelAge: "25", labelAssizes: "90 - 60 - 90", imgViewString: "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac18.jpg"))
        items.append(ModelItem.init(labelName: "Ngoc Trinh", labelAge: "25", labelAssizes: "90 - 60 - 90", imgViewString: "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac19.jpg"))
        items.append(ModelItem.init(labelName: "Ngoc Trinh", labelAge: "25", labelAssizes: "90 - 60 - 90", imgViewString: "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac20.jpg"))
        items.append(ModelItem.init(labelName: "Ngoc Trinh", labelAge: "25", labelAssizes: "90 - 60 - 90", imgViewString: "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac37.jpg"))
        items.append(ModelItem.init(labelName: "Ngoc Trinh", labelAge: "25", labelAssizes: "90 - 60 - 90", imgViewString: "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac38.jpg"))
        items.append(ModelItem.init(labelName: "Ngoc Trinh", labelAge: "25", labelAssizes: "90 - 60 - 90", imgViewString: "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac39.jpg"))
        items.append(ModelItem.init(labelName: "Ngoc Trinh", labelAge: "25", labelAssizes: "90 - 60 - 90", imgViewString: "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac40.jpg"))
        items.append(ModelItem.init(labelName: "Ngoc Trinh", labelAge: "25", labelAssizes: "90 - 60 - 90", imgViewString: "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac41.jpg"))
        items.append(ModelItem.init(labelName: "Ngoc Trinh", labelAge: "25", labelAssizes: "90 - 60 - 90", imgViewString: "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac42.jpg"))
        items.append(ModelItem.init(labelName: "Ngoc Trinh", labelAge: "25", labelAssizes: "90 - 60 - 90", imgViewString: "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac43.jpg"))
        items.append(ModelItem.init(labelName: "Ngoc Trinh", labelAge: "25", labelAssizes: "90 - 60 - 90", imgViewString: "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac44.jpg"))
        items.append(ModelItem.init(labelName: "Ngoc Trinh", labelAge: "25", labelAssizes: "90 - 60 - 90", imgViewString: "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac45.jpg"))
        items.append(ModelItem.init(labelName: "Ngoc Trinh", labelAge: "25", labelAssizes: "90 - 60 - 90", imgViewString: "http://thuvienanhdep.net/wp-content/uploads/2016/04/anh-nong-bong-cua-ngoc-trinh-qua-nhung-bo-noi-y-day-me-hoac15.jpg"))
        
    }

    func printSomething(p1: Int, completion:() -> ()) {
        //print(p1)
        completion()
    }
    
    func loadData(completion: @escaping (_ data: NSData, _ indexImg: Int) -> ()) {
        DispatchQueue.global().async {
            for stringUrl in self.imgs {
                if let url = NSURL(string: stringUrl) {
                    if let data = NSData(contentsOf: url as URL) {
                        completion(data, self.imgs.index(of: stringUrl)!)
                    }
                }
            }
            
        }
    }
    
    @IBAction func a_Load(sender: AnyObject) {
        tableView.dataSource = self
        tableView.reloadData()
//        loadData { (data, index) in
//            DispatchQueue.main.async(execute: { 
//                if let imgView = self.view.viewWithTag(100+index) as? UIImageView {
//                    imgView.image = UIImage(data: data as Data)
//                }
//            })
//        }
    }
    
    @IBAction func a_Print(sender: AnyObject) {
        print("Em xinh em co quyen.")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
     
//        loadData { (data, index) in
//            DispatchQueue.main.async(execute: {
//                if indexPath.row == index {
//                    cell.imgView.image = UIImage(data: data as Data)
//                }
//            })
//        }
        
        let item = items[indexPath.row]
        
        DispatchQueue.main.async {
            if let url = URL(string: item.imgViewString) {
                //cell.imgView.sd_setImage(with: url)
                cell.labelName.text = item.labelName
                cell.labelAge.text = item.labelAge
                cell.labelAssizes.text = item.labelAssizes
                cell.imgView.sd_setImage(with: url)
            }
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "DetailVC") as! DetailVC
        let item = items[indexPath.row]
        detailVC.nameTitle = item.labelName
        detailVC.imgViewString = item.imgViewString
        navigationController?.pushViewController(detailVC, animated: true)
    }
    
}

