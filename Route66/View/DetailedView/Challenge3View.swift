//
//  ChallengeView3.swift
//  Route66
//
//  Created by Igor Tarantino on 18/12/24.
//

import SwiftUI

struct Challenge3View: View {
    
    var boldText1: Text = Text("Finding the grave")
        .fontWeight(.bold)
        .font(.system(size: 20))
    
    var boldText2: Text = Text("Keep The Memory")
        .fontWeight(.bold)
        .font(.system(size: 20))
    
    var boldText3: Text = Text("NoSix")
        .fontWeight(.bold)
        .font(.system(size: 20))
    
    var boldText4: Text = Text("official cemetery databases")
        .fontWeight(.bold)
        .font(.system(size: 20))
    
    var body: some View {
        
        ZStack {
            
            ScrollView {
                
                Challenge2Title()
                
                VStack {
                    
                    Text("""
                             \(boldText1) of a loved one sometimes can be hard or even impossible because not always the information about the location is available.
                             """)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .font(.system(size: 20))
                    .lineSpacing(3)
                    
                    Image("NoSix")
                        .resizable()
                        .shadow(radius: 5)
                        .frame(maxWidth: .infinity, maxHeight: 400)
                        .padding()
                        
                    
                    Text("""
                             Asking for the position of a deceased one in a cemetery can often be a difficult task considering that the box offices are often full of people that are there for longer requests such as light payments. Or maybe because the person that is going to be commemorated is a distant parent or friend that people do know little or nothing about.
                             """)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .font(.system(size: 20))
                    .lineSpacing(3)
                    
                    ScrollView(.horizontal) {
                        
                        HStack {
                            
                            Image("frame1")
                                .resizable()
                                .frame(width: 200, height: 450)
                            
                            Image("frame2")
                                .resizable()
                                .frame(width: 200, height: 450)
                            
                            Image("frame3")
                                .resizable()
                                .frame(width: 200, height: 450)
                            
                            Image("frame4")
                                .resizable()
                                .frame(width: 200, height: 450)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    
                    Text("""
                             That's why the \(boldText3) team came up with the idea of \(boldText2). One of the team member, Federica, had a clear idea of what to achieve from this challenge but little did they know the amazing journey they would take part in. No one could have predicted that the \(boldText3) would have got in touch with the chairman of neapolitan cemeteries and would have got the access to \(boldText4). And the story is far distant from its conclusion...
                             """)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .font(.system(size: 20))
                    .lineSpacing(3)
                    .padding(.bottom, 80)
                }
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ChallengeView3()
}
