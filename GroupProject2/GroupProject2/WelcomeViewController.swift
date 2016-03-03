//
//  WelcomeViewController.swift
//  GroupProject2
//
//  Created by Casey on 2/26/16.
//  Copyright © 2016 Robert Masen. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let menu = Menu()
        menu.GetItemsForMenu()
        for a in menu.Apps {
            print(a.Name)
        }
        for e in menu.Entre {
            print(e.Name)
        }
        for d in menu.Dessert {
            print(d.Name)
        }
        for dr in menu.Drinks {
            print(dr.Name)
        }

        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
