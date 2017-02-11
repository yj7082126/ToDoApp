//
//  ToDoItem.swift
//  ToDoApp
//
//  Created by Yong Jae Kwon on 2/10/17.
//  Copyright © 2017 Jonathan. All rights reserved.
//

import UIKit

class ToDoItem: NSObject {
    var itemName: NSString = ""
    var completed: Bool = false
    var creationDate: NSDate = NSDate()
    
    init(name:NSString){
        self.itemName = name
        
    }
}
