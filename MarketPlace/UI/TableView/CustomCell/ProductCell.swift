//
//  ProductCell.swift
//  MarketPlace
//
//  Created by Ivan F Garcia S on 6/09/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI

struct ProductCell : View {
    let product: Product
    var body: some View {
        return NavigationLink(destination: ProductDetail(name: product.name, price: product.price, image: product.image, description: product.description)) {
            CustomImageView(imageUrl: product.image)
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .shadow(radius: 10)
                .overlay(Circle().stroke(Color.black, lineWidth: 0.5))
            
            VStack(alignment: .leading) {
                Text(product.name)
                    .font(.custom("HelveticaNeue-Regular", size: 16))
                Text(product.price)
                    .font(.custom("HelveticaNeue-Regular", size: 16))
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ProductCell(product:  Product(id: 0, name: "Ice pop de mascarpone", image: "Ice pop de mascarpone", price: "$170", description: "Ice pop sabor mascarpone italiano, veElaborada en Italia con queso mascarpone combinado con un veteado de frutos del bosque de la Patagonia Argentina. teado con frutos del bosque de la Patagonia argentina"))
    }
}
