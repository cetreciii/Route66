//
//  CarouselCD.swift
//  Route66
//
//  Created by Igor Tarantino on 14/12/24.
//

import SwiftUI

struct CarouselCD: View {
    
    var body: some View {
        
        TabView {
            CodeBox()
                .padding(.horizontal, 50)
            
            DesignBox()
                .padding(.horizontal, 50)
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .frame(width: 350, height: 175)
    }
}

#Preview {
    CarouselCD()
}
