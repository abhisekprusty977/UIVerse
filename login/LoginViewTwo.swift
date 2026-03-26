//
//  LoginViewTwo.swift
//  login
//
//  Created by Abhisek Prusty on 26/03/26.
//

import SwiftUI

struct LoginViewTwo: View {
    
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            
            // Background
            LinearGradient(
                colors: [
                    Color(#colorLiteral(red: 0.54, green: 0.39, blue: 0.70, alpha: 1)),
                    Color(#colorLiteral(red: 0.54, green: 0.39, blue: 0.70, alpha: 1)).opacity(2.0),
                    Color.clear
                ],
                startPoint: .top,
                endPoint: .bottom
            )
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 0) {
                
                // MARK: - Title
                Text("Log in to App!")
                    .font(.system(size: 34, weight: .bold))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top, 60)
                
                // MARK: - Google Button
                Button {
                } label: {
                    HStack(spacing: 12) {
                        Image("google") // add asset
                            .resizable()
                            .frame(width: 22, height: 22)
                        
                        Text("Log in with Google")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundColor(.white)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 60)
                    .background(Color.black)
                    .cornerRadius(30)
                }
                .padding(.horizontal, 24)
                .padding(.top, 30)
                
                // MARK: - Divider
                HStack {
                    Rectangle()
                        .fill(Color.black)
                        .frame(height: 1)
                    
                    Text("Or log in with Email")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.black)
                        .padding(.horizontal, 10)
                    
                    Rectangle()
                        .fill(Color.black)
                        .frame(height: 1)
                }
                .padding(.horizontal, 24)
                .padding(.top, 30)
                
                // MARK: - Username
                Text("Username or Email")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.black)
                    .padding(.horizontal, 24)
                    .padding(.top, 40)
                
                RoundedTextField(text: username)
                    .padding(.horizontal, 24)
                    .padding(.top, 10)
                
                // MARK: - Password + Forgot
                HStack {
                    Text("Password")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Text("Forgot?")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(.black)
                }
                .padding(.horizontal, 24)
                .padding(.top, 30)
                
                RoundedTextField(text: password, isSecure: true)
                    .padding(.horizontal, 24)
                    .padding(.top, 10)
                
                Spacer()
                
                // MARK: - Bottom Section
                VStack(spacing: 6) {
                    Text("Don’t have an account?")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .semibold))
                        .padding(.trailing, 150)
                    
                    Text("Sign up")
                        .foregroundColor(.black)
                        .font(.system(size: 20, weight: .bold))
                        .padding(.trailing, 150)
                }
                .frame(maxWidth: .infinity)
                .padding(.bottom, 140) // space for image
            }
            
            // MARK: - Bottom Illustration
            
            HStack {
                Image("login_illustration")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity)
                    .frame(maxHeight: 0)
                    .padding(.trailing, -10)
                Spacer()
            }
            
        }
    }
}

#Preview {
    LoginViewTwo()
}
