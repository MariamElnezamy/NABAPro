//
//  NotificationViewController.swift
//  NABA
//
//  Created by Admin on 12/4/18.
//  Copyright © 2018 mariamelnezamy. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet var NotificationTableView: UITableView!
    
    var Noti:[IconOfNotification]=[IconOfNotification(name: "Naba For Educational Informations ", Img: "sale"),
                                   IconOfNotification(name: "Special Dicount", Img: "discount")]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return Noti.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let NotificationCell = NotificationTableView.dequeueReusableCell(withIdentifier: "NotificationCell", for: indexPath) as! NotificationTableViewCell
        
        NotificationCell.name.text = Noti[indexPath.row].name
        NotificationCell.Img.image = UIImage(named: Noti[indexPath.row].Img )
        return NotificationCell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        pageControler.numberOfPages = 2
//        for index in 0..<1{
//            frame.origin.x = ScrollView.frame.size.width * CGFloat(index)
//            frame.size = ScrollView.frame.size
//
////            let ImgView = UIImageView(frame: frame)
////            ImgView.image = UIImage(named: Images[index])
//            self.ScrollView.addSubview(NotificationTableView)
        
        }
//        ScrollView.contentSize = CGSize(width: (ScrollView.frame.size.width), height: (ScrollView.frame.size.height ))
//        ScrollView.delegate = self
 //   }
    
    
//    @IBOutlet var ScrollView: UIScrollView!
//    @IBOutlet var pageControler: UIPageControl!
//
////    var Images: [String] = ["1","2","3"]
//    var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
//
//



}
