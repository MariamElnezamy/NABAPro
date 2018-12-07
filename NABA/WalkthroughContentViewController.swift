//
//  WalkthroughContentViewController.swift
//  NABA
//
//  Created by Admin on 12/6/18.
//  Copyright © 2018 mariamelnezamy. All rights reserved.
//

import UIKit

class WalkthroughContentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        pageControl.currentPage = index
        contentLabel.text = content
        contentImageView.image = UIImage(named: imageFile)
        
        
        switch index {
        case 0...1: forwardButton.setTitle("SKIP", for: .normal)
        case 2:
            forwardButton.setTitle("DONE", for: .normal)
         
        default: break}
    }
    
    @IBOutlet var contentLabel: UILabel!
    @IBOutlet var contentImageView: UIImageView!
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var forwardButton: UIButton!
    var index = 0
    var imageFile = ""
    var content = ""
    
    @IBAction func nextButtonTapped(sender: UIButton) {
        switch index {
        case 0...1:
            let pageViewController = parent as! WalkthroughPageViewController
            pageViewController.forward(index: index)
        case 2:
            dismiss(animated: true, completion: nil)
        default: break
        }
        
       
    }

}
