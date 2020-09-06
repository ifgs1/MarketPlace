//
//  ImageDownloader.swift
//  MarketPlace
//
//  Created by Ivan F Garcia S on 6/09/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import Foundation
import Combine

class ImageDownloader: ObservableObject {
    
    let didChange = PassthroughSubject<Data, Never>()

    @Published var imageData = Data() {
        didSet {
            didChange.send(imageData)
        }
    }
    
    init(imageUrl: String) {
       downloadImageFromUrl(imageUrl: imageUrl)
    }
    
    private func downloadImageFromUrl(imageUrl: String) {
        guard let completeUrl = URL(string: imageUrl) else {
            return
        }
               
        URLSession.shared.dataTask(with: completeUrl) { (data, response, error) in
            guard let response = data else {
                return
            }
                   
            DispatchQueue.main.async {
                self.imageData = response
            }
        }.resume()
    }
}
