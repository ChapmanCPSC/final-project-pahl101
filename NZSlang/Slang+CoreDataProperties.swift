//
//  Slang+CoreDataProperties.swift
//  NZSlang
//
//  Created by Madison Pahl on 5/4/16.
//  Copyright © 2016 Madison Pahl. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Slang {

    @NSManaged var theWord: String?
    @NSManaged var meaning: String?

}
