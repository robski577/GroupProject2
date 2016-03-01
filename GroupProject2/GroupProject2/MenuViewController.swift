//
//  MenuViewController.swift
//  GroupProject2
//
//  Created by Casey on 2/26/16.
//  Copyright © 2016 Robert Masen. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var menuTableView: UITableView!
    
    var items = ["Chef's Salad","Chocolate Milk Shake","Super Burger"]
    var descriptions = ["You'll have to ask the chef. He's on break.","Mostly milk","Instead of buns, you get two mini pizzas!"]
    var prices = ["7.95","5.00","12.95"]
    var photos = [UIImage()]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.menuTableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! MenuItemCell
        
        cell.item.text = items[indexPath.row]
        cell.desc.text = descriptions[indexPath.row]
        cell.price.text = prices[indexPath.row]
        return cell
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
