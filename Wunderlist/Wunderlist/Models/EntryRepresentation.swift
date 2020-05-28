//
//  EntryRepresentation.swift
//  Wunderlist
//
//  Created by Vincent Hoang on 5/27/20.
//  Copyright © 2020 Bradley Diroff. All rights reserved.
//

import Foundation

struct EntryRepresentation: Codable {
    var identifier: Int32
    var title: String
    var bodyDescription: String
    var important: Bool
    var completed: Bool
    var date: Date
    
    enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case title = "title"
        case bodyDescription = "description"
        case important
        case completed
        case date = "date_time"
    }
}
