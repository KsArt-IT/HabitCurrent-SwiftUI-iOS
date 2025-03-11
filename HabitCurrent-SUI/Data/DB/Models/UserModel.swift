//
//  UserModel.swift
//  HabitCurrent-SUI
//
//  Created by KsArT on 11.03.2025.
//

import Foundation
import SwiftData

@Model
final class UserModel {
    @Attribute(.unique)
    var id: String
    var name: String
    
    var isActive: Bool
    var created: Date
    var timestamp: Date
    
    init(
        id: String,
        name: String,
        created: Date
    ) {
        self.id = id
        self.name = name
        self.isActive = true
        self.created = created
        self.timestamp = Date.now
    }
    
}
