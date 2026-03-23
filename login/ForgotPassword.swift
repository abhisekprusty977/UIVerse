//
//  ForgotPassword.swift
//  login
//
//  Created by Abhisek Prusty on 24/03/26.
//

import SwiftUI

struct ForgotPassword: View {
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
                        Text("Forgot")
                            .font(.system(size: 34, weight: .bold))
                            .foregroundColor(.black.opacity(0.8))
                            .padding(.leading, 20)
                            .padding(.top, 20)
                       
                        Rectangle()
                            .frame(width: 50, height: 4)
                            .foregroundColor(Color.red.opacity(0.7))
                            .cornerRadius(2)
                            .padding(.leading, 20)
                    }
                }
                
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 25) {
                        
                        // Password
                        passwordField(title: "Current Password", text: $password, placeholder: "Enter Your Password...")
                        
                        passwordField(title: "New Password", text: $password, placeholder: "Enter Your New Password...")
                        
                        // Confirm Password
                        passwordField(title: "Confirm New Password", text: $confirmPassword, placeholder: "Enter Your Confirm New Password...")
                        
                        // Button
                        Button(action: {}) {
                            Text("Reset Password")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.red.opacity(0.7))
                                .cornerRadius(18)
                        }
                        .padding(.top, 20)
                        
//                        HStack {
//                            Spacer()
//                            
//                            Text("Already have an Account! ")
//                                .foregroundColor(.gray)
//                            
//                            Button {
//                                dismiss() // ✅ Go back
//                            } label: {
//                                Text("Login")
//                                    .foregroundColor(.red)
//                            }
//                            
//                            Spacer()
//                        }
//                        .padding(.bottom, 20)
                    }
                    .padding(20)
                }
            }
        }
    }
}


#Preview {
    ForgotPassword()
}
