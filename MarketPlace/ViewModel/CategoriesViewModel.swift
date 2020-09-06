//
//  CategoriesViewModel.swift
//  MarketPlace
//
//  Created by Ivan F Garcia S on 5/09/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import Foundation

class CategoriesViewModel: Identifiable {
    
    let id = UUID()
    
    let category: Category
    
    init(category: Category) {
        self.category = category
    }
    
    var name: String {
        return self.category.name
    }
    
    var products: [Product] {
        return self.category.products
    }
    
}
