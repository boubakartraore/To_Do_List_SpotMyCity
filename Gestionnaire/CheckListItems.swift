//
//  CheckListItems.swift
//  Gestionnaire
//
//  Created by Bacar on 19/01/2017.
//  Copyright © 2017 Bacar. All rights reserved.
//

import UIKit

class ChecklistItem: NSObject, NSCoding{
    var text = ""
    var checked = false
    var dueDate = Date()

    func toggleChecked() {
        checked = !checked
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(text, forKey: "Text")
        aCoder.encode(checked, forKey: "Checked")
        aCoder.encode(dueDate, forKey: "DueDate")
    }
    
    required init?(coder aDecoder: NSCoder) {
        text = aDecoder.decodeObject(forKey: "Text") as! String
        dueDate = aDecoder.decodeObject(forKey: "DueDate") as! Date
        checked = aDecoder.decodeBool(forKey: "Checked")
        super.init()
    }
    
    override init() {
        super.init()
    }
}
