//
//  MoreViewController.swift
//  NABA
//
//  Created by Admin on 12/2/18.
//  Copyright © 2018 mariamelnezamy. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var MoreTableView: UITableView!
    var Table:[IconOfMore] = [IconOfMore(Img: "Events", name: "Events"),
                            IconOfMore(Img: "Services", name: "Services"),
                              IconOfMore(Img: "Contact Us", name: "Contact Us"),
                              IconOfMore(Img: "About Us", name: "About Us"),
                               IconOfMore(Img: "Language", name: "Language")]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Table.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let MoreCell = MoreTableView.dequeueReusableCell(withIdentifier: "MoreCell", for: indexPath) as! MoreTableViewCell
        MoreCell.name.text = Table[indexPath.row].name
        MoreCell.Img.image = UIImage(named: Table[indexPath.row].Img )
        return MoreCell
    }
}
