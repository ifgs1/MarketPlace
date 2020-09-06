//
//  GetCategoriesList.swift
//  MarketPlace
//
//  Created by Ivan F Garcia S on 5/09/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import Foundation
import Combine

class GetCategoriesList: ObservableObject {
    
    let didChange = PassthroughSubject<GetCategoriesList,Never>()
    
    init() {
        getCategories()
    }
    
    @Published var categories = [CategoriesViewModel]() {
        didSet {
            didChange.send(self)
        }
    }
    
    private func getCategories() {
        guard let url = URL(string: "https://enigmatic-retreat-95157.herokuapp.com/api/store/don-jediondo") else {
            return
        }
        
        Webservice().loadCategories(url: url) { categories in
            if let categories = categories {
                self.categories = categories.map(CategoriesViewModel.init)
            }
        }
    }
}
