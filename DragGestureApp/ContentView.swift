//
//  ContentView.swift
//  DragGestureApp
//
//  Created by Đorđije Novović on 4.9.21..
//

import SwiftUI

struct ContentView: View {
    @State var startingOffsetY: CGFloat = UIScreen.main.bounds.height * 0.85
    @State var currentDragOffsetY: CGFloat = 0
    @State var endingOffsetY: CGFloat = 0
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)).ignoresSafeArea()
            
            VStack {
                Image(systemName: "appletv")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                Text("All your TV. All in one App. Apple TV app.")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
            }
            
            SignUpView()
                .offset(y: startingOffsetY)
                .offset(y: currentDragOffsetY)
                .offset(y: endingOffsetY)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            withAnimation(.spring()) {
                                currentDragOffsetY = value.translation.height
                            }
                        }
                        .onEnded { value in
                            withAnimation(.spring()) {
                                if currentDragOffsetY < -175 {
                                    endingOffsetY = -startingOffsetY
                                } else if endingOffsetY != 0 && currentDragOffsetY > 175 {
                                    endingOffsetY = 0
                                }
                                currentDragOffsetY = 0
                            }
                        }
                )
            
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
