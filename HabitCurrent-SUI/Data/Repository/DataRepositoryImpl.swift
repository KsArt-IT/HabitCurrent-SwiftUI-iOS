//
//  DataRepositoryImpl.swift
//  HabitCurrent-SUI
//
//  Created by KsArT on 11.03.2025.
//

import Foundation

final class DataRepositoryImpl: DataRepository {
    private let service: DataService
    
    init(service: DataService) {
        self.service = service
    }

    func fetchUsers() async -> Result<User, any Error> {
        fatalError("Not implements")
    }
    
    func fetchData(_ userId: String) async -> Result<[Habit], any Error> {
        fatalError("Not implements")
    }
    
    func fetchData(_ userId: String, id: String) async -> Result<Habit, any Error> {
        fatalError("Not implements")
    }
    
    func saveUser(_ user: User) async -> Result<String, any Error> {
        fatalError("Not implements")
    }
    
    func saveData(_ userId: String, habit: Habit) async -> Result<String, any Error> {
        fatalError("Not implements")
    }
    
}
