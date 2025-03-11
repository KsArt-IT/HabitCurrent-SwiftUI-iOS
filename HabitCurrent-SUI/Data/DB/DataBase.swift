//
//  DataBase.swift
//  HabitCurrent-SUI
//
//  Created by KsArT on 11.03.2025.
//

import SwiftData

final class DataBase {
    private var container: ModelContainer = {
        let schema = Schema([
            UserModel.self,
            HabitModel.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
        
        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    
    lazy var context: ModelContext = {
        let context = ModelContext(self.container)
        context.autosaveEnabled = false
        return context
    }()
}
