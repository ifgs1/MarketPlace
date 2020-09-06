//
//  TabBar.swift
//  MarketPlace
//
//  Created by Ivan F Garcia S on 6/09/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    var body:  some View {
        TabView {
            ProductsTableView()
                
            .tabItem {
                Image("home")
                Text("Home")
            }.tag(0)
           
            Text("Order")
                
            .tabItem {
                Image("order")
                Text("Order")
            }.tag(1)
           
            Text("Restaurants")
                
            .tabItem {
                Image("stores")
                Text("Restaurants")
            }.tag(2)
            
            AccountView()
                
            .tabItem {
                Image("profile")
                Text("Profile")
            }.tag(2)
        }.accentColor(.black)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

