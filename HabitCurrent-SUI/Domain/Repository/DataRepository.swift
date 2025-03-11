//
//  HabitRepository.swift
//  HabitCurrent-SUI
//
//  Created by KsArT on 11.03.2025.
//

import Foundation

protocol DataRepository: AnyObject {
    func fetchUsers() async -> Result<User, any Error>
    func fetchData(_ userId: String) async -> Result<[Habit], any Error>
    func fetchData(_ userId: String, id: String) async -> Result<Habit, any Error>
    
    func saveUser(_ user: User) async -> Result<String, any Error> // userId
    func saveData(_ userId: String, habit: Habit) async -> Result<String, any Error> // id Habit
}
