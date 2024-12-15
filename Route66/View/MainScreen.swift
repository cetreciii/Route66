//
//  MainScreen.swift
//  Route66
//
//  Created by Igor Tarantino on 12/12/24.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        
        TabView {
            
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            CodeView()
                .tabItem {
                    Label("Code", systemImage: "pc")
                }
            
            DesignView()
                .tabItem {
                    Label("Design", systemImage: "paintbrush")
                }
        }
    }
}

#Preview {
    MainScreen()
}
