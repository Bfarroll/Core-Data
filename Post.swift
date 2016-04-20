//
//  Post.swift
//  SaveUser
//
//  Created by Billy Farroll on 20/04/2016.
//  Copyright © 2016 Billy Farroll. All rights reserved.
//

import Foundation
import CoreData
import UIKit



class Post: NSManagedObject {

    convenience init(title: String, name: String) {
    
        let appDelegate = UIApplication.sharedApplication().delegate as!
        AppDelegate
        let managedContext = appDelegate.managedObjectContext
        let entity = NSEntityDescription.entityForName("Post", inManagedObjectContext: managedContext)
        self.init(entity: entity!, insertIntoManagedObjectContext: managedContext)
    
        self.name = name
        self.title = title
        
        
    }

}
