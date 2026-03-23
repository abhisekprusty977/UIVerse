//
//  Welcome.swift
//  login
//
//  Created by Abhisek Prusty on 24/03/26.
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        ZStack {
            // Background Color
            Color(#colorLiteral(red: 0.96, green: 0.95, blue: 0.95, alpha: 1))
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                
                // 🔴 Top Coral Background
                ZStack(alignment: .bottomLeading) {
                    Image("welcome")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 510)
                }
                
                Spacer()
            }
            
            // 🔴 Content
            VStack(alignment: .leading) {
                
                Spacer().frame(height: 500)
                
                Text("Welcome")
                    .font(.system(size: 36, weight: .bold))
                    .foregroundColor(.black.opacity(0.8))
                
                Text("Start your journey with us.\nDiscover something amazing every day.")
                    .font(.system(size: 16))
                    .foregroundColor(.gray)
                    .padding(.top, 8)
                
                Spacer()
                
                // 🔴 Continue Button
                HStack {
                    Spacer()
                    
                    HStack(spacing: 12) {
                        Text("Continue")
                            .foregroundColor(.gray)
                            .font(.system(size: 18, weight: .semibold))
                        
                        ZStack {
                            Circle()
                                .fill(Color.red.opacity(0.7))
                                .frame(width: 55, height: 55)
                            
                            Image(systemName: "arrow.right")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .bold))
                            
                            NavigationLink {
                               LoginView()
                            } label: {
                                Image(systemName: "arrow.right")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20, weight: .bold))
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
                .padding(.bottom, 30)
            }
            .padding(.horizontal, 20)
        }
    }
}

// MARK: - Custom Wave Shape

struct WaveShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: 0, y: 60))
        
        path.addCurve(
            to: CGPoint(x: rect.width, y: 40),
            control1: CGPoint(x: rect.width * 0.3, y: 120),
            control2: CGPoint(x: rect.width * 0.7, y: 0)
        )
        
        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
        path.addLine(to: CGPoint(x: 0, y: rect.height))
        path.closeSubpath()
        
        return path
    }
}

#Preview {
    WelcomeView()
}
