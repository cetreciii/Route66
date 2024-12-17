//
//  Challenge1Box.swift
//  Route66
//
//  Created by Igor Tarantino on 13/12/24.
//

import SwiftUI

struct Challenge1Box: View {
    
    @State private var moveRight = false
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(colors: [Color.gray, Color.black], startPoint: .bottom, endPoint: .top))
                .frame(width: 350, height: 175)
                .padding(.horizontal, 10)
                .overlay(
                    Image("Challenge1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 350, height: 175)
                        .opacity(0.11)
                        .offset(x: moveRight ? -80 : +75)
                        .animation(
                            Animation.linear(duration: 15)
                                .repeatForever(autoreverses: true),
                            value: moveRight
                        )
                        .scaleEffect(1.05)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .clipped()
                )
            
            Image(systemName: "01.circle")
                .frame(width: 300, height: 150, alignment: .trailing)
                .foregroundStyle(Color.white)
                .font(.system(size: 75))
            
            Text("Challenge")
                .frame(width: 300, height: 150, alignment: .leading)
                .font(.system(size: 45))
                .foregroundStyle(Color.white)
                .fontWeight(.bold)
            
            Text("Waddumean")
                .frame(width: 300, height: 90, alignment: .bottomLeading)
                .fontWeight(.light)
                .font(.system(size: 20))
                .foregroundStyle(Color.white)
        }
        .onAppear {
            moveRight.toggle()
        }
    }
}

#Preview {
    Challenge1Box()
}
