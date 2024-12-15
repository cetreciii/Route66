//
//  BlueBox.swift
//  Route66
//
//  Created by Igor Tarantino on 11/12/24.
//

import SwiftUI

struct BlueBox: View {
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(colors: [Color.blue, Color.purple], startPoint: .bottom, endPoint: .top))
                .frame(width: 170, height: 170)
            
            VStack {
                Image(systemName: "curlybraces")
                    .foregroundStyle(Color.white)
                    .font(.system(size: 75))
            }
            .frame(width: 30, height: 130, alignment: .topTrailing)
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            
            VStack {
                Text("API Calls")
                    .font(.system(size: 20))
                    .foregroundStyle(Color.white)
                    .fontWeight(.bold)
                    .padding(.top, 5)
            }
            .frame(width: 140, height: 150, alignment: .bottomLeading)
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        }
    }
}

#Preview {
    BlueBox()
}
