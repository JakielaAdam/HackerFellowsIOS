//
//  FellowsViewController.swift
//  Hacker Fellows
//
//  Created by Hacker Fellows on 7/28/15.
//  Copyright (c) 2015 Grand Circus. All rights reserved.
//

import UIKit

let fellowsData = [ Fellow(name:"Adam Jakiela", bio:"this is my biography"),
    Fellow(name:"John Doe", bio:"this is my biography") ]

class FellowsViewController: UITableViewController {
    
    var fellows: [Fellow] = fellowsData


    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fellows.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("FellowCell", forIndexPath: indexPath) as! FellowViewCell
        
        let fellow = fellows[indexPath.row] as Fellow
        cell.nameLabel.text = fellow.name
        return cell
    }
    
    
}

