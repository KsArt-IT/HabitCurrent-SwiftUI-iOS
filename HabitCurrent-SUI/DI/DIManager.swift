//
//  DIManager.swift
//  HabitCurrent-SUI
//
//  Created by KsArT on 11.03.2025.
//

import Foundation
import Swinject

final class DIManager {
    private let container = Container()
    
    // MARK: - Registering dependencies
    init() {
        registerDataBase()
        registerRepository()
        
        registerMainViewModel()
        registerHabitFlowViewModel()
        registerHabitWeekViewModel()
        registerHabitMonthViewModel()
        registerSettingsViewModel()
    }
    
    // MARK: DataBase
    private func registerDataBase() {
        container.register(DataBase.self) { _ in
            DataBase()
        }.inObjectScope(.weak)

        container.register(DataService.self) { c in
            DataServiceImpl(db: c.resolve(DataBase.self)!)
        }.inObjectScope(.container)
    }
    
    // MARK: Repository
    private func registerRepository() {
        container.register(DataRepository.self) { c in
            DataRepositoryImpl(service: c.resolve(DataService.self)!)
        }.inObjectScope(.container)
    }
    
    // MARK: - ViewModel
    private func registerMainViewModel() {
        container.register(MainViewModel.self) { c in
            MainViewModel()
        }.inObjectScope(.weak)
    }
    
    private func registerHabitFlowViewModel() {
        container.register(HabitFlowViewModel.self) { c in
            HabitFlowViewModel()
        }.inObjectScope(.weak)
    }
    
    private func registerHabitWeekViewModel() {
        container.register(HabitWeekViewModel.self) { c in
            HabitWeekViewModel()
        }.inObjectScope(.weak)
    }
    
    private func registerHabitMonthViewModel() {
        container.register(HabitMonthViewModel.self) { c in
            HabitMonthViewModel()
        }.inObjectScope(.weak)
    }
    
    private func registerSettingsViewModel() {
        container.register(SettingsViewModel.self) { c in
            SettingsViewModel()
        }.inObjectScope(.weak)
    }
    
    // MARK: - Getting dependencies
    public func resolve<T>() -> T {
        resolve(T.self)!
    }
    
    public func resolve<T>(_ type: T.Type) -> T? {
        container.resolve(type)
    }
}
                                                                  
