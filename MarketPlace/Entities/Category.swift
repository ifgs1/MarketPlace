//
//  Category.swift
//  MarketPlace
//
//  Created by Ivan F Garcia S on 6/09/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import Foundation

struct Category: Codable {
    var id: Int
    var name: String
    var products: [Product]
}
