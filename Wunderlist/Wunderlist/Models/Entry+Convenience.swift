//
//  Entry+Convenience.swift
//  Wunderlist
//
//  Created by Vincent Hoang on 5/27/20.
//  Copyright © 2020 Bradley Diroff. All rights reserved.
//

import Foundation
import CoreData

extension Entry {
    
    var entryRepresentation: EntryRepresentation? {
        guard let title = title, let desc = bodyDescription, let date = date else {
            return nil
        }
        
        return EntryRepresentation(identifier: identifier, title: title, bodyDescription: desc, important: important, completed: completed, date: date)
    }
    
    @discardableResult convenience init(identifier: Int32,
                                        title: String,
                                        bodyDescription: String,
                                        date: Date,
                                        completed: Bool = false,
                                        important: Bool = false,
                                        context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        self.init(context: context)
        self.identifier = identifier
        self.title = title
        self.bodyDescription = bodyDescription
        self.date = date
        self.completed = completed
        self.important = important
    }
    
    @discardableResult convenience init?(entryRepresentation: EntryRepresentation, context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        
        self.init(identifier: entryRepresentation.identifier,
                  title: entryRepresentation.title,
                  bodyDescription: entryRepresentation.bodyDescription,
                  date: entryRepresentation.date,
                  completed: entryRepresentation.completed,
                  important: entryRepresentation.important,
                  context: context)
    }
}
