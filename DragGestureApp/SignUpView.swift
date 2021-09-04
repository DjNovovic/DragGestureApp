//
//  SignUpView.swift
//  DragGestureApp
//
//  Created by Đorđije Novović on 4.9.21..
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Image(systemName: "chevron.up")
                .padding(.top)
            
            Text("Pull Up")
                .font(.headline)
            Image(systemName: "appletv.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            
            Text("Apple Original shows and movies from Apple TV+. The premium channels you want. Thousands of movies to buy or rent. Popular streaming services and cable TV providers.1 It’s all on the expertly curated Apple TV app, and it’s everywhere — on your favorite Apple devices, streaming platforms, smart TVs, gaming consoles, and more. It’s the ultimate way to watch TV.")
                .font(.headline)
                .multilineTextAlignment(.center)
            
            Text("Sign in with Apple".uppercased())
                .foregroundColor(.white)
                .font(.headline)
                .padding()
                .padding(.horizontal)
                .background(Color.black.cornerRadius(16))
            Spacer()
        }
        .foregroundColor(.primary)
        .frame(maxWidth: .infinity)
        .background(Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)))
        .cornerRadius(32)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
