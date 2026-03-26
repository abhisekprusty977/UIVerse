//
//  CustomTextField.swift
//  login
//
//  Created by Abhisek Prusty on 26/03/26.
//

import SwiftUI

struct CustomTextField: View {
    
    var placeholder: String
    
    var body: some View {
        TextField("", text: .constant(""))
            .placeholder(when: true) {
                Text(placeholder)
                    .foregroundColor(.gray)
                    .font(.system(size: 16, weight: .semibold))
            }
            .padding()
            .frame(height: 55)
            .background(Color(.systemGray5))
            .cornerRadius(30)
            .shadow(color: .black.opacity(0.2), radius: 4, x: 0, y: 3)
    }
}

#Preview {
    CustomTextField(placeholder: "")
}

