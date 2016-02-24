//
//  Item.swift
//  GroupProject2
//
//  Created by Robert Masen on 2/23/16.
//  Copyright © 2016 Robert Masen. All rights reserved.
//

import Foundation

class Item {
    var Id: Int
    var Name: String
    var Price: double_t
    var Desc: String
    var TimeAddedToOrder: NSDate?
    var Menues: [Bool]
    
    init(id: Int, name: String, desc: String, menues: [Bool]) {
        Id = id
        Name = name
        Desc = desc
        Menues = menues
    }
}