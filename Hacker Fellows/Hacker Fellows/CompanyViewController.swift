//
//  CompanyViewController.swift
//  Hacker Fellows
//
//  Created by Hacker Fellows on 8/3/15.
//  Copyright (c) 2015 Grand Circus. All rights reserved.
//

import UIKit

let companyData = [ Company(name:"Adam Jakiela", bio:"this is my biography"),
    Company(name:"John Doe", bio:"this is my biography") ]


class CompanyViewController: UITableViewController {
    
    
    
    var companies: [Company] = companyData

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companyData.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CompanyCell", forIndexPath: indexPath) as! CompanyViewCell
        
        let company = companies[indexPath.row] as Company
        cell.nameLabel.text = company.name
        
        return cell
    }
    
}
