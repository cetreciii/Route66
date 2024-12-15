//
//  DesignView.swift
//  Route66
//
//  Created by Igor Tarantino on 13/12/24.
//

import SwiftUI

struct DesignView: View {
    var body: some View {
        
        NavigationView {
            List {
                
                HStack {
                    GreenBox()
                    RedBox()
                }
                .listRowBackground(Color.clear)
                
                Section(header: Text("Design"),
                        footer: Text("Learn how to apply the Human Interface Guidelines principles.")) {
                    
                    NavigationLink(destination: Text("Design Screen")) {
                        Label("Placeholder",
                              systemImage: "paintbrush")
                    }
                    NavigationLink(destination: Text("Design Screen")) {
                        Label("Placeholder",
                              systemImage: "paintbrush")
                    }
                }
            }
            .navigationTitle("Design")
        }
    }
}

#Preview {
    DesignView()
}
