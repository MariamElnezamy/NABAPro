//
//  TabBarViewController.swift
//  NABA
//
//  Created by Admin on 12/6/18.
//  Copyright © 2018 mariamelnezamy. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if UserDefaults.standard.bool(forKey: "hasViewedWalkthrough") {
            return
        }
        if let pageViewController =
            storyboard?.instantiateViewController(withIdentifier: "WalkthroughController")
                as? WalkthroughPageViewController {
            present(pageViewController, animated: true, completion: nil)
        }
    }

}
