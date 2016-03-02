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
    var Price: Double
    var Desc: String
    var TimeAddedToOrder: NSDate?
    var Menues: MenuType
    var Type: ItemType
    
    init(id: Int, name: String, price: Double, desc: String, menues: MenuType, type: ItemType) {
        Id = id
        Name = name
        Price = price
        Desc = desc
        Menues = menues
        Type = type
    }
}

enum MenuType: Int {
    case Nothing =      0
    case Breakfast =    1
    case Lunch =        2
    case HappyHour =    4
    case Dinner =       8
}

enum ItemType: Int {
    case Nothing =      0
    case Apps =         1
    case Entre =        2
    case Desert =       4
}