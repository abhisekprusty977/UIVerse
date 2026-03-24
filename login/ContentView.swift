//
//  ContentView.swift
//  login
//
//  Created by Abhisek Prusty on 23/03/26.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var rememberMe: Bool = false
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.96, green: 0.95, blue: 0.95, alpha: 1))
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                
                // 🔴 Top Background
                ZStack(alignment: .bottomLeading) {
                    Image("test")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 275)
                    // .ignoresSafeArea(edges: .top)
                        .allowsHitTesting(false) // ✅ Fix tap issue
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Sign in")
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
                
                // 🔴 Form Section
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 25) {
                        
                        // Email
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Email")
                                .font(.system(size: 16, weight: .semibold))
                                .foregroundColor(.gray)
                            
                            HStack {
                                Image(systemName: "envelope")
                                    .foregroundColor(.gray)
                                
                                TextField("Enter Your Mail...", text: $email)
                                    .foregroundColor(.gray)
                            }
                            .padding(.vertical, 10)
                            
                            Rectangle()
                                .frame(height: 2)
                                .foregroundColor(Color.red.opacity(0.6))
                        }
                        
                        // Password
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Password")
                                .font(.system(size: 16, weight: .semibold))
                                .foregroundColor(.gray)
                            
                            HStack {
                                Image(systemName: "lock")
                                    .foregroundColor(.gray)
                                
                                SecureField("Enter Your Password...", text: $password)
                                
                                Spacer()
                                
                                Image(systemName: "eye")
                                    .foregroundColor(.gray)
                            }
                            .padding(.vertical, 10)
                            
                            Rectangle()
                                .frame(height: 2)
                                .foregroundColor(Color.red.opacity(0.6))
                        }
                        
                        // Remember + Forgot
                        HStack {
                            Button {
                                rememberMe.toggle()
                            } label: {
                                HStack(spacing: 8) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 4)
                                            .stroke(Color.red, lineWidth: 2)
                                            .frame(width: 20, height: 20)
                                        
                                        if rememberMe {
                                            Image(systemName: "checkmark")
                                                .font(.system(size: 12, weight: .bold))
                                                .foregroundColor(.red)
                                        }
                                    }
                                    
                                    Text("Remember Me")
                                        .foregroundColor(.gray)
                                }
                            }
                            
                            Spacer()
                            
                            NavigationLink {
                                ForgotPassword()
                                    
                            } label: {
                                Text("Forgot Password?")
                                    .foregroundColor(.red)
                            }
                            .buttonStyle(.plain)
                        }
                        
                        // Login Button
                        NavigationLink {
                            TabbarView()
                                .navigationBarBackButtonHidden(true)
                        } label: {
                            Text("Login")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.red.opacity(0.7))
                                .cornerRadius(15)
                        }
                        .buttonStyle(.plain)
                        .padding(.top, 20)
                        
                        // 🔥 Sign Up Navigation (WORKING)
                        HStack {
                            Spacer()
                            
                            Text("Don’t have an Account ? ")
                                .foregroundColor(.gray)
                            
                            NavigationLink {
                                SignUpView()
                                    .navigationBarBackButtonHidden(true)
                            } label: {
                                Text("Sign up")
                                    .foregroundColor(.red)
                            }
                            .buttonStyle(.plain)
                            
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

#Preview {
    LoginView()
}




