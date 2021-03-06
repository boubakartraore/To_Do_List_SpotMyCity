//
//  Checklist.swift
//  Gestionnaire
//
//  Created by Bacar on 22/01/2017.
//  Copyright © 2017 Bacar. All rights reserved.
//

import UIKit

class Checklist: NSObject, NSCoding {
    
    var name = ""
    var iconName: String
    var items = [ChecklistItem]()
    
    init(name: String) {
        self.name = name
        iconName = "No Icon"
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: "Name") as! String
        items = aDecoder.decodeObject(forKey: "Items") as! [ChecklistItem]
        iconName = aDecoder.decodeObject(forKey: "IconName") as! String
        super.init()
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "Name")
        aCoder.encode(items, forKey: "Items")
        aCoder.encode(iconName, forKey: "IconName")
    }
    
    func countUncheckedItems() -> Int {
        var count = 0
        for item in items where !item.checked {
            count += 1
        }
        return count
    }
}
