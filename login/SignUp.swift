//
//  SignUp.swift
//  login
//
//  Created by Abhisek Prusty on 23/03/26.
//

import SwiftUI

struct SignUpView: View {
    @State private var email: String = ""
    @State private var phone: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.96, green: 0.95, blue: 0.95, alpha: 1)).ignoresSafeArea()
            
            VStack(spacing: 0) {
                // Top Background
                ZStack(alignment: .bottomLeading) {
                    Image("testtwo")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 125)
                        .allowsHitTesting(false)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Sign up")
                            .font(.system(size: 34, weight: .bold))
                            .foregroundColor(.black.opacity(0.8))
                            .padding(.leading, 20)
                        
                        Rectangle()
                            .frame(width: 50, height: 4)
                            .foregroundColor(Color.red.opacity(0.7))
                            .cornerRadius(2)
                            .padding(.leading, 20)
                    }
                }
                
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 25) {
                        
                        // Email
                        inputField(title: "Email", systemImage: "envelope", text: $email, placeholder: "demo@email.com", isSecure: false, isActive: true)
                        
                        // Phone
                        inputField(title: "Phone no", systemImage: "iphone", text: $phone, placeholder: "+00 000-0000-000", isSecure: false, isActive: true)
                        
                        // Password
                        passwordField(title: "Password", text: $password, placeholder: "Enter Your Password...")
                        
                        // Confirm Password
                        passwordField(title: "Confirm Password", text: $confirmPassword, placeholder: "Enter Your Confirm Your Password...")
                        
                        // Button
                        Button(action: {}) {
                            Text("Create Acount")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.red.opacity(0.7))
                                .cornerRadius(18)
                        }
                        .padding(.top, 20)
                        
                        HStack {
                            Spacer()
                            
                            Text("Already have an Account! ")
                                .foregroundColor(.gray)
                            
                            Button {
                                dismiss() // ✅ Go back
                            } label: {
                                Text("Login")
                                    .foregroundColor(.red)
                            }
                            
                            Spacer()
                        }
                        .padding(.bottom, 20)
                    }
                    .padding(20)
                }
            }
        }
    }
}

// MARK: - Reusable Views

func inputField(title: String, systemImage: String, text: Binding<String>, placeholder: String, isSecure: Bool, isActive: Bool) -> some View {
    VStack(alignment: .leading, spacing: 8) {
        Text(title)
            .font(.system(size: 16, weight: .semibold))
            .foregroundColor(.gray)
        
        HStack {
            Image(systemName: systemImage)
                .foregroundColor(.gray)
            
            TextField(placeholder, text: text)
                .foregroundColor(.gray)
        }
        .padding(.vertical, 10)
        
        Rectangle()
            .frame(height: 2)
            .foregroundColor(isActive ? Color.red.opacity(0.7) : Color.gray.opacity(0.4))
    }
}

func passwordField(title: String, text: Binding<String>, placeholder: String) -> some View {
    VStack(alignment: .leading, spacing: 8) {
        Text(title)
            .font(.system(size: 16, weight: .semibold))
            .foregroundColor(.gray)
        
        HStack {
            Image(systemName: "lock")
                .foregroundColor(.gray)
            
            SecureField(placeholder, text: text)
                .foregroundColor(.gray)
            
            Spacer()
            
            Image(systemName: "eye")
                .foregroundColor(.gray)
        }
        .padding(.vertical, 10)
        
        Rectangle()
            .frame(height: 2)
            .foregroundColor(Color.red.opacity(0.7))
    }
}

#Preview {
    SignUpView()
}
