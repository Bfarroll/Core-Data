//
//  Post+CoreDataProperties.swift
//  SaveUser
//
//  Created by Billy Farroll on 20/04/2016.
//  Copyright © 2016 Billy Farroll. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Post {

    @NSManaged var title: String
    @NSManaged var name: String

}
