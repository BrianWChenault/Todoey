//
//  Data.swift
//  Todoey
//
//  Created by Brian Chenault on 8/9/18.
//  Copyright © 2018 Brian Chenault. All rights reserved.
//

import Foundation
import RealmSwift

class Data: Object {
    @objc dynamic var name : String = ""
    @objc dynamic var age : Int = 0
}
