//
//  HabitModel.swift
//  HabitCurrent-SUI
//
//  Created by KsArT on 11.03.2025.
//

import Foundation
import SwiftData

@Model
final class HabitModel {
    @Attribute(.unique)
    var id: String
    var title: String

    var isActive: Bool
    var created: Date
    var closed: Date?
    var timestamp: Date

    // Связь с UserModel
    @Relationship(deleteRule: .cascade)
    var userId: String

    init(
        userId: String,
        id: String,
        title: String,
        isActive: Bool,
        created: Date = Date.now,
        closed: Date = Date.distantFuture
    ) {
        self.userId = userId
        self.id = id
        self.title = title
        self.isActive = isActive

        self.created = created
        self.closed = closed

        self.timestamp = Date.now
    }

}
