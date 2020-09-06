//
//  WebService.swift
//  MarketPlace
//
//  Created by Ivan F Garcia S on 5/09/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import Foundation


class Webservice {
    func loadCategories(url: URL, completion: @escaping ([Category]?) -> ()) {
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request as URLRequest) { (data, response, error) in
            guard error == nil, let data = data else {
                completion(nil)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                JSONDecoder().keyDecodingStrategy = .convertFromSnakeCase
                let response = try decoder.decode(Restaurant.self, from: data)
                
                DispatchQueue.main.async {
                    completion(response.categories)
                }
            } catch {
                completion(nil)
            }
            
        }.resume()
    }
}
