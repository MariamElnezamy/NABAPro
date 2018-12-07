//
//  ContactUsViewController.swift
//  NABA
//
//  Created by Admin on 12/3/18.
//  Copyright © 2018 mariamelnezamy. All rights reserved.
//

import UIKit

class ContactUsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func FaceBookBtnAct(_ sender: Any) {
            let ActivityVC = UIActivityViewController(activityItems: ["www.Facebook.com"], applicationActivities: nil)
        
            ActivityVC.popoverPresentationController?.sourceView = self.view
        
            self.present(ActivityVC, animated: true, completion: nil)
        
    }
    
    
    @IBAction func twitterBtnAct(_ sender: Any) {
        let ActivityVC = UIActivityViewController(activityItems: ["www.Facebook.com"], applicationActivities: nil)
        
        ActivityVC.popoverPresentationController?.sourceView = self.view
        
        self.present(ActivityVC, animated: true, completion: nil)
        

    }
    
    @IBAction func GoogleBtnAct(_ sender: Any) {
        let ActivityVC = UIActivityViewController(activityItems: ["www.Facebook.com"], applicationActivities: nil)
        
        ActivityVC.popoverPresentationController?.sourceView = self.view
        
        self.present(ActivityVC, animated: true, completion: nil)
        

    }

}
