//
//  DataServiceImpl.swift
//  HabitCurrent-SUI
//
//  Created by KsArT on 11.03.2025.
//

import Foundation

final class DataServiceImpl: DataService {
    private let db: DataBase
    
    init(db: DataBase) {
        self.db = db
    }
}
