//
//  AccountView.swift
//  MarketPlace
//
//  Created by Ivan F Garcia S on 6/09/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI

struct AccountView: View {
    
    var body: some View {
        
        VStack(spacing: 20) {
            HStack(spacing: 15) {
                Image("apic")
                    .frame(width:  80, height: 80)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                    .overlay(Circle().stroke(Color.black, lineWidth: 0.5))
                VStack(alignment: .leading, spacing: 10) {
                    Text("Ivan")
                    Text("abc@domain.com")
                }
                Spacer()
            }
            
            HStack(spacing: 15){
                HStack{
                    VStack(alignment: .leading) {
                        Text("Points")
                            .fontWeight(.bold)
                        Text("128")
                            .fontWeight(.bold).font(.system(size: 22))
                    }
                Spacer(minLength: 0)
                    
                }.padding()
                .frame(width: (UIScreen.main.bounds.width - 45) / 2)
                .background(Color("Color3"))
                .cornerRadius(15)
                
                HStack{
                    VStack(alignment: .leading) {
                        Text("Orders")
                            .fontWeight(.bold)
                        Text("228")
                            .fontWeight(.bold).font(.system(size: 22))
                    }
                    
                    Spacer(minLength: 0)
                }.padding()
                .frame(width: (UIScreen.main.bounds.width - 45) / 2)
                .background(Color.gray)
                .cornerRadius(15)
                
            }.foregroundColor(.white)
             .padding(.top)
            
            Button(action: {
                
            }) {
                HStack(spacing: 15) {
                    Image("map")
                        .renderingMode(.original)
                        .padding()
                        .background(Color("Color1"))
                        .clipShape(Circle())
                    Text("Address")
                    
                    Spacer()
                    
                    Image("arrow").renderingMode(.original)
                    
                }.padding()
                .background(Color.white)
                .foregroundColor(.black)
                
            }.cornerRadius(15)
            .padding(.top)
            
            Button(action: {
                
            }) {
                HStack(spacing: 15) {
                    Image("world")
                        .renderingMode(.original)
                        .padding()
                        .background(Color("Color1"))
                        .clipShape(Circle())
                    Text("Payments")
                    
                    Spacer()
                    
                    Image("arrow").renderingMode(.original)
                    
                }.padding()
                .background(Color.white)
                .foregroundColor(.black)
                
            }.cornerRadius(15)
            
            Button(action: {
          
            }) {
                
                HStack(spacing: 15) {
                    Image("log")
                        .renderingMode(.original)
                        .padding()
                        .background(Color("Color1"))
                        .clipShape(Circle())
                    
                    Text("Logout")
                    Spacer()
                    Image("arrow").renderingMode(.original)
                }.padding()
                .background(Color.white)
                .foregroundColor(.black)
                
            }.cornerRadius(15)
            
            Spacer()
            
        }.padding()
        .padding(.top)
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
