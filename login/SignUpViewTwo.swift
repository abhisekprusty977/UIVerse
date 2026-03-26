//
//  SignUpViewTwo.swift
//  login
//
//  Created by Abhisek Prusty on 26/03/26.
//

import SwiftUI

struct SignUpViewTwo: View {
    
    @State private var isChecked = false
    
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
            
            VStack(spacing: 0) {
                
                // MARK: - Title
                Text("Sign Up To App!")
                    .font(.system(size: 34, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.top, 60)
                
                // MARK: - Google Button
                Button {
                } label: {
                    HStack(spacing: 12) {
                        Image("google") // add in assets
                            .resizable()
                            .frame(width: 22, height: 22)
                        
                        Text("Sign up with Google")
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
                    
                    Text("Or continue with Email")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.black)
                        .padding(.horizontal, 10)
                    
                    Rectangle()
                        .fill(Color.black)
                        .frame(height: 1)
                }
                .padding(.horizontal, 24)
                .padding(.top, 30)
                
                // MARK: - Input Fields
                VStack(spacing: 20) {
                    CustomTextField(placeholder: "Enter your name")
                    CustomTextField(placeholder: "Enter username")
                    CustomTextField(placeholder: "Enter  Email")
                    CustomTextField(placeholder: "Enter password")
                }
                .padding(.horizontal, 24)
                .padding(.top, 30)
                
                // MARK: - Checkbox
                HStack(alignment: .top, spacing: 10) {
                    
                    Button {
                        isChecked.toggle()
                    } label: {
                        Rectangle()
                            .stroke(Color.black, lineWidth: 2)
                            .frame(width: 22, height: 22)
                            .background(isChecked ? Color.black : Color.clear)
                    }
                    
                    Text("I agree with the Terms of Service and Privacy policy")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.white)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Spacer()
                }
                .padding(.horizontal, 24)
                .padding(.top, 20)
                
                Spacer()
                
                // MARK: - Bottom Section
                VStack(spacing: 16) {
                    
                    Button {
                    } label: {
                        Text("Create Account")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                            .frame(width: 240, height: 60)
                            .background(Color.black)
                            .cornerRadius(30)
                    }
                    .padding(.leading, 80)
                    VStack(spacing: 4) {
                        Text("Already have an account?")
                            .foregroundColor(.white)
                            .padding(.leading, 80)
                        Text("Login")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .padding(.leading, 80)
                    }
                }
                .padding(.bottom, 140) 
                
            }
            
            // MARK: - Bottom Illustration
            HStack {
                
                Image("signup_illustration")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity)
                    .frame(maxHeight: 0)
                
                Spacer()
            }
        }
    }
}

#Preview {
    SignUpViewTwo()
}
