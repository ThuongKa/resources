//
//  UserInfo.swift
//  DataLoading
//
//  Created by Thuong Vu on 8/30/15.
//  Copyright (c) 2015 ThuongNH. All rights reserved.
//

import UIKit

class UserInfo: NSObject {
    
    var name: String
    
    var age: String
    
    var des: String
    
    var picURL: String
    
    init(name: String?, age: String?, des: String?, picURL: String?) {
        if let userName = name {
            self.name = userName
        } else {
            self.name = ""
        }
        if let userAge = age {
            self.age = userAge
        } else {
            self.age = ""
        }
        if let userDes = des {
            self.des = userDes
        } else {
            self.des = ""
        }
        if let userPic = picURL {
            self.picURL = userPic
        } else {
            self.picURL = ""
        }
  
    }
}
