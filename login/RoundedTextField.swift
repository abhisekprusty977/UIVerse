//
//  RoundedTextField.swift
//  login
//
//  Created by Abhisek Prusty on 26/03/26.
//

import Foundation
import SwiftUI
struct RoundedTextField: View {
    
    @State var text = ""
    var isSecure: Bool = false
    
    var body: some View {
        Group {
            if isSecure {
                SecureField("", text: $text)
            } else {
                TextField("", text: $text)
            }
        }
        .padding()
        .frame(height: 55)
        .background(Color(.systemGray5))
        .cornerRadius(30)
        .shadow(color: .black.opacity(0.2), radius: 4, x: 0, y: 3)
    }
}
#Preview {
    RoundedTextField(text: "")
}
