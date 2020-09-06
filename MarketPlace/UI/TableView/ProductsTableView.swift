//
//  ProductsTableView.swift
//  MarketPlace
//
//  Created by Ivan F Garcia S on 6/09/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI
import Combine

struct ProductsTableView: View {
    @State var selected = 0

    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                Text("Menu")
                    .font(.custom("HelveticaNeue-Medium", size: 32))
                    .frame(maxWidth: .infinity, alignment: .leading)
                SegmentedControlView(selected: self.$selected, segments: [Segment(id: 0, segmentName: "Menu"), Segment(id: 1, segmentName: "Favourites")])
                    .frame(maxWidth: .infinity, alignment: .leading)
                    if self.selected == 0 {
                        ProductsList()
                    } else {
                        ProductsList()
                    }
            }.background(Color("Color").edgesIgnoringSafeArea(.all))
        }
    }
}

struct ProductsList : View {
    @State var selected = 0
    @ObservedObject var model = GetCategoriesList()

    var body: some View {
        List() {
            ForEach(model.categories) { category in
                Section(header: ListHeader(title: category.name, count: category.products.count)) {
                    ForEach(category.products) { product in
                        ProductCell(product: product)
                    }
               }
            }
        }.listStyle(GroupedListStyle())
    }
}

struct ListHeader: View {
    var title = ""
    var count = 0
    var body: some View {
        HStack {
            Text(title)
                .font(.custom("HelveticaNeue-Regular", size: 16))
            Button(action: {
                // Add action for see all
            }) {
                HStack {
                    Text("see all (\(count))")
                        .font(.custom("HelveticaNeue-Regular", size: 16))
                }.padding()
                 .background(Color.clear)
                 .foregroundColor(Color("Color3"))
                 .frame(maxWidth: .infinity, alignment: .trailing)
            }.cornerRadius(15)
        }
    }
}

struct ProductsTableView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsTableView()
    }
}
