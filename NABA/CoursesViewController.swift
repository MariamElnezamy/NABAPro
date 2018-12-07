//
//  CoursesViewController.swift
//  NABA
//
//  Created by Admin on 12/4/18.
//  Copyright © 2018 mariamelnezamy. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class CoursesViewController: UIViewController,IndicatorInfoProvider,UITableViewDataSource,UITableViewDelegate {
    
    var imgs:[String]=["c","cc","cccc","ccccc"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imgs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CoursesCell", for: indexPath) as!  CoursesTableViewCell
        cell.imge.image = UIImage(named: imgs[indexPath.row])
        return cell
    }
    
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Courses")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

}
