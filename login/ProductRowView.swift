//
//  ProductRowView.swift
//  login
//
//  Created by Abhisek Prusty on 24/03/26.
//

import SwiftUI
struct ProductRowView: View {
    let product :Product
    let imageSize :CGFloat = 50
    var body: some View {
        HStack{
            ZStack{
                Color("C1").frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                product.image.resizable()
                    .scaledToFill()
                    .frame(width: imageSize,height: imageSize)
                    .clipped()
            }
            VStack(alignment: .leading, spacing: 5){
                Text(product.name)
                    .font(.headline)
                    .foregroundColor(.black)
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity , alignment: .leading)
                Text("$" + product.price)
                    .foregroundColor(.black)
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity , alignment: .leading)
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack{
                    Circle()
                        .foregroundColor(.black)
                        .frame(width: 35,height: 35)
                    Image(systemName: "cart")
                        .font(.title3)
                        .foregroundColor(.white)
                }
                .padding(.trailing,10)
            })
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity , alignment: .leading)
        .background(.white)
        .cornerRadius(10, corners: .allCorners)
        .shadow(color: Color("BgColor"), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)

    }
}
struct CornerRadiusStyle: ViewModifier {
    var radius: CGFloat
    var corners: UIRectCorner
    
    struct CornerRadiusShape: Shape {

        var radius = CGFloat.infinity
        var corners = UIRectCorner.allCorners

        func path(in rect: CGRect) -> Path {
            let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
            return Path(path.cgPath)
        }
    }

    func body(content: Content) -> some View {
        content
            .clipShape(CornerRadiusShape(radius: radius, corners: corners))
    }
}
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        ModifiedContent(content: self, modifier: CornerRadiusStyle(radius: radius, corners: corners))
    }
}

#Preview {
    ProductRowView(product: product.first!)
        .previewLayout(.fixed(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
}
