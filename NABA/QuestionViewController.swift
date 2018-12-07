//
//  QuestionViewController.swift
//  NABA
//
//  Created by Admin on 12/4/18.
//  Copyright © 2018 mariamelnezamy. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class QuestionViewController: UIViewController ,IndicatorInfoProvider{
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Question")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func CheckBtn(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
            sender.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        }) { (success) in
            sender.isSelected = !sender.isSelected
            UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
                sender.transform = .identity
                
            }, completion: nil)
        }
    }
    
    @IBAction func close(segue:UIStoryboardSegue) {
    }
}
