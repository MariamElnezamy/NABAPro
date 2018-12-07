//
//  WalkthroughPageViewController.swift
//  NABA
//
//  Created by Admin on 12/6/18.
//  Copyright © 2018 mariamelnezamy. All rights reserved.
//

import UIKit

class WalkthroughPageViewController: UIPageViewController ,UIPageViewControllerDataSource {
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! WalkthroughContentViewController).index
        index -= 1
        return contentViewController(at: index)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! WalkthroughContentViewController).index
        index += 1
        return contentViewController(at: index)
    }
    
    
    var pageImages = ["1", "2", "3"]
    var pageContent = ["Lorem ipsum dolor sit amet consectetur adipiscing elit tempor incididunt ut sed do usmod labore." ,"Lorem ipsum dolor sit amet consectetur adipiscing elit tempor incididunt ut sed do usmod labore.","Lorem ipsum dolor sit amet consectetur adipiscing elit tempor incididunt ut sed do usmod labore."]

    func contentViewController(at index: Int) -> WalkthroughContentViewController?
    {
        if index < 0 || index >= pageImages.count {
            return nil
        }
        // Create a new view controller and pass suitable data.
        if let pageContentViewController =
            storyboard?.instantiateViewController(withIdentifier:
                "WalkthroughContentViewController") as? WalkthroughContentViewController {
            pageContentViewController.imageFile = pageImages[index]
            pageContentViewController.content = pageContent[index]
            pageContentViewController.index = index
        
            return pageContentViewController
        }
        return nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        if let startingViewController = contentViewController(at: 0) {
            setViewControllers([startingViewController], direction: .forward, animated: true, completion: nil)
        }
    }

    func forward(index: Int) {
        if let nextViewController = contentViewController(at: index + 1) {
            setViewControllers([nextViewController], direction: .forward, animated:
                true, completion: nil)
        }

}
}
