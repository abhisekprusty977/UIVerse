//
//  WelcomeView.swift
//  login
//
//  Created by Abhisek Prusty on 26/03/26.
//

import SwiftUI

struct WelcomeViewTwo: View {
    
    var body: some View {
        ZStack {
            Image("new_beginning")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .frame(maxHeight: .infinity)
                .clipped()
                .ignoresSafeArea()
            
            LinearGradient(
                colors: [
                    Color(#colorLiteral(red: 0.54, green: 0.39, blue: 0.70, alpha: 1)),
                    Color(#colorLiteral(red: 0.54, green: 0.39, blue: 0.70, alpha: 1)).opacity(0.50),
                    Color.clear
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                
                Spacer().frame(height: 80)
                
                // Title
                Text("Welcome To\nApp!")
                    .font(.system(size: 42, weight: .bold))
                    .foregroundColor(.white)
               
                // Subtitle
                Text("A Hub Where Whispers Echo Loudest")
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundColor(.black)
                    .padding(.top, 5)
                Spacer() // pushes bottom section down (controlled)
                
                // ✅ BOTTOM SECTION (Fixed position feel)
                VStack(spacing: 16) {
                    
                    NavigationLink {
                        SignUpViewTwo()
                            //.navigationBarBackButtonHidden(true)
                    } label: {
                        Text("Sign up")
                            .frame(maxWidth: .infinity)
                            .frame(height: 60)
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(30)
                    }
                    .buttonStyle(.plain)
                    
                    HStack(spacing: 4) {
                        Text("Already have an account?")
                            .foregroundColor(.white)
                        
                        NavigationLink {
                            LoginViewTwo()
                            //.navigationBarBackButtonHidden(true)
                        } label: {
                            Text("Login")
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                        }
                        .buttonStyle(.plain)
                    }
                    .frame(maxWidth: .infinity)
                }
                
                // 👇 THIS IS THE REAL MAGIC (match mockup spacing)
                .padding(.bottom, 350)  // 🔥 adjust based on your image height
                
            }
            .padding(.horizontal, 24)
        }
    }
}
#Preview {
    WelcomeViewTwo()
}
