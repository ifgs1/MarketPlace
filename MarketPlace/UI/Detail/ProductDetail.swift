//
//  ProductDetail.swift
//  MarketPlace
//
//  Created by Ivan F Garcia S on 6/09/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI

import SwiftUI

struct ProductDetail : View {
    var name: String
    var price: String
    var image: String
    var description: String
    
    var body: some View {
        
        VStack(spacing: 15.0) {
            CustomImageView(imageUrl: image)
            Text(name)
                .font(.custom("HelveticaNeue-Bold", size: 22))

            Text(price)
                .font(.custom("HelveticaNeue-Medium", size: 18))
            Divider()
            Text(description)
                .font(.custom("HelveticaNeue-Light", size: 16))
                .multilineTextAlignment(.center)
                .lineLimit(50)
            Button(action: {
                           
                           
            }) {
                VStack {
                    Image("favorite")
                        .renderingMode(.original)
                        .padding()
                        .background(Color("Color1"))
                        .clipShape(Circle())
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
            }
            
            Button(action: {
                           
                           
            }) {
                VStack {
                    Text("Add to order")
                    .font(.custom("HelveticaNeue-Regular", size: 16))
                    .padding()
                    .background(Color("Color3"))
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .frame(maxWidth: .infinity, alignment: .trailing)

                }
            }
        }.padding().navigationBarTitle(Text(name), displayMode: .inline)
    }
}

struct ProductDetail_Previews : PreviewProvider {
    static var previews: some View {
        ProductDetail(name: "Helado KG", price: "$150", image: "Helado kg", description: "Oblea bañada en stracciatella rellena con helado de chantilly y bañado con chocolate semi amargo decorado con líneas de chocolate blanco.")
    }
}
