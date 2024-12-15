//
//  LargeBox.swift
//  Route66
//
//  Created by Igor Tarantino on 13/12/24.
//

import SwiftUI

struct CodeBox: View {
    
    @State private var moveRight = false
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(colors: [Color.gray, Color.black], startPoint: .bottom, endPoint: .top))
                .frame(width: 350, height: 175)
                .padding(.horizontal, 10)
                .overlay(
                    Image("CodeImage2")
                        .resizable()
                        .frame(width: 350, height: 175)
                        .opacity(0.5)
                        .offset(x: moveRight ? -30 : +70)
                        .animation(
                            Animation.linear(duration: 15)
                                .repeatForever(autoreverses: true),
                            value: moveRight
                        )
                        .scaleEffect(1.8)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .clipped()
                )
            
            Image(systemName: "curlybraces")
                .frame(width: 300, height: 150, alignment: .trailing)
                .foregroundStyle(Color.white)
                .font(.system(size: 75))
            
            Text("Code")
                .frame(width: 300, height: 150, alignment: .leading)
                .font(.system(size: 50))
                .foregroundStyle(Color.white)
                .fontWeight(.bold)
        }
        .onAppear {
            moveRight.toggle()
        }
    }
}

#Preview {
    CodeBox()
}
