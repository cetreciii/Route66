//
//  CodeView.swift
//  Route66
//
//  Created by Igor Tarantino on 13/12/24.
//

import SwiftUI

struct CodeView: View {
    var body: some View {
        
        NavigationView {
            List {
                
                HStack {
                    BlueBox()
                    YellowBox()
                }
                .listRowBackground(Color.clear)
                
                Section(header: Text("Coding"),
                        footer: Text("The frameworks used during the previous challenges.")) {
                    
                    NavigationLink(destination: Text("Coding Screen")) {
                        Label("Placeholder",
                              systemImage: "gear")
                    }
                    NavigationLink(destination: Text("Settings Screen")) {
                        Label("Placeholder",
                              systemImage: "gear")
                    }
                }
            }
            .navigationTitle("Code")
        }
    }
}

#Preview {
    CodeView()
}
