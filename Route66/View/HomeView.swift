//
//  HomeView.swift
//  Route66
//
//  Created by Igor Tarantino on 13/12/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        
        NavigationView {
            List {
                
                VStack {
                    CarouselCD()
                        .padding(.bottom, 20)
                    
                    HStack {
                        RedBox()
                        GreenBox()
                    }
                    
                    HStack {
                        BlueBox()
                        YellowBox()
                    }
                }
                .listRowBackground(Color.clear)
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Route66")
            .searchable(
                text: $searchText,
                placement: .navigationBarDrawer(displayMode: .always)
            )
        }
    }
}


#Preview {
    HomeView()
}
