//
//  DataController.swift
//  DataLoading
//
//  Created by Thuong Vu on 8/30/15.
//  Copyright (c) 2015 ThuongNH. All rights reserved.
//

import UIKit
import SwiftyJSON

class DataController: NSObject {

    class func fetchDataFromJSON() -> [UserInfo] {
        var userInfos = [UserInfo]()
        let jsonPath = NSBundle.mainBundle().pathForResource("profile", ofType: "json") as String?
        let jsonData = NSData(contentsOfFile: jsonPath!)
        let json = JSON(data: jsonData!, options: .AllowFragments, error: nil)
        
        for dict in json {
            let user = UserInfo(name: dict.1["name"].string, age:dict.1["age"].string, des: dict.1["descriotion"].string, picURL: dict.1["picture"].string)
            userInfos.append(user)
        }
        return userInfos
    }
}
