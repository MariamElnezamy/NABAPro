//
//  USATableViewController.swift
//  NABA
//
//  Created by Admin on 11/29/18.
//  Copyright © 2018 mariamelnezamy. All rights reserved.
//

import UIKit

class USAViewController: UIViewController,UITableViewDelegate  ,UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    
    @IBOutlet var USATableView: UITableView!
    var USATabel:[IconOfUSA] = [IconOfUSA(img: "Stanford University", name: "Stanford University"),
                                      IconOfUSA(img: "University Of California", name: "University Of California"),
                                      IconOfUSA(img: "Connell University", name: "Connell University"),
                                      IconOfUSA(img: "Harvard University", name: "Harvard University")]
    

     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (4)
    }

    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let USACell = USATableView.dequeueReusableCell(withIdentifier: "USACell", for: indexPath) as! USATableViewCell
        
        USACell.Name.text = USATabel[indexPath.row].name
        USACell.Img.image = UIImage(named: USATabel[indexPath.row].img)
        return USACell
    }
 

}
