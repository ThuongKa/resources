//
//  ViewController.swift
//  DataLoading
//
//  Created by Thuong Vu on 8/30/15.
//  Copyright (c) 2015 ThuongNH. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UITableViewController {
    
    var users = [UserInfo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        users = DataController.fetchDataFromJSON();
        loadingJSONStringFromURL()
    }
    
    func loadingJSONStringFromURL() {
        Alamofire.request(.GET, "https://github.com/ThuongKa/resources/blob/master/profile.json")
            .response{ (_, _, user, _) in
            let string = NSString(data: user!, encoding: NSUTF8StringEncoding)
            let json = JSON(string!)
                print(json)
        }
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CustomCell", forIndexPath: indexPath) as! CustomCell
        let user = users[indexPath.row]
        cell.nameLabel.text = user.name
        cell.descriptionLabel.text = user.des
        cell.profileImageView.sd_setImageWithURL(NSURL(string: user.picURL), placeholderImage: nil)
        return cell
    }
}

