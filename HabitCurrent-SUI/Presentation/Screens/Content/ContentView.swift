//
//  ContentView.swift
//  HabitCurrent-SUI
//
//  Created by KsArT on 11.03.2025.
//

import SwiftUI

struct ContentView: View {
    // получим тему на устройстве
    @Environment(\.colorScheme) private var colorScheme
    // сохраним-загрузим выбранную тему
    @AppStorage("appTheme") private var appTheme = AppTheme.device
    
    @Environment(\.diManager) private var di
    
    @State private var initialized = false
    
    var body: some View {
        if initialized {
            MainScreen(viewModel: di.resolve())
        } else {
            SplashScreen()
                .preferredColorScheme(appTheme.scheme(colorScheme))
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation {
                            initialized = true
                        }
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
