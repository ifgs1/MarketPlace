//
//  CustomImageView.swift
//  MarketPlace
//
//  Created by Ivan F Garcia S on 6/09/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

struct CustomImageView: View {
    @ObservedObject var imageUrl: ImageDownloader
    
    init(imageUrl: String) {
        self.imageUrl = ImageDownloader(imageUrl: imageUrl)
    }
    
    var body: some View {
        Image(uiImage: (self.imageUrl.imageData.isEmpty ? UIImage(imageLiteralResourceName: "placeholder") : UIImage(data: self.imageUrl.imageData)) ?? UIImage(imageLiteralResourceName: "placeholder"))
    }

}
