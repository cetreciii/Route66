//
//  DesignTest.swift
//  Route66
//
//  Created by Igor Tarantino on 18/12/24.
//

import SwiftUI

struct DesignTest: View {
    
    
    var body: some View {
        
        ZStack {
            
            Color.white
            
            VStack {
                
                Image("Route66V2")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                    .shadow(radius: 15)
                    .padding(.top, 100)
                
                Text("""
                 BECAUSE
                 I KNOW 
                 ALMOST NOTHING 
                 ABOUT DESIGN
                 """)
                .font(.system(size: 35))
                .fontWeight(.bold)
                .foregroundStyle(Color.black)
                .frame(maxWidth: .infinity, alignment: .bottomLeading)
                .padding(.horizontal)
                
                Text("What an opportunity to learn.")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .foregroundStyle(Color.black)
                    .frame(maxWidth: .infinity, alignment: .bottomLeading)
                    .padding(.horizontal)
                    .padding(.bottom, 20)
            }
        }
    }
}

#Preview {
    DesignTest()
}
