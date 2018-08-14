//
//  Item.swift
//  Todoey
//
//  Created by Brian Chenault on 8/9/18.
//  Copyright © 2018 Brian Chenault. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title : String = ""
    @objc dynamic var done : Bool = false
    @objc dynamic var dateCreated : Date?
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
