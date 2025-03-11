//
//  HabitCurrent_SUIApp.swift
//  HabitCurrent-SUI
//
//  Created by KsArT on 11.03.2025.
//

import SwiftUI
import SwiftData

@main
struct HabitCurrent_SUIApp: App {
    private let di = DIManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .environment(\.diManager, di)
    }
    
    init() {
        debugPrint(URL.applicationSupportDirectory.path(percentEncoded: false))
    }
}
