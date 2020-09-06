//
//  SegmentedControlView.swift
//  MarketPlace
//
//  Created by Ivan F Garcia S on 6/09/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI

struct Segment: Identifiable {
    var id: Int
    var segmentName: String
}

struct SegmentedControlView : View {
    
    @Binding var selected : Int
    var segments: [Segment]

    var body : some View {
        
        HStack {
            ForEach(segments) { segment in
                Button(action: {
                    self.selected = segment.id
                })
                {
                    VStack {
                        Text(segment.segmentName)
                            .padding(.horizontal, 5)
                            .padding(.vertical, 0)
                            .font(.custom("HelveticaNeue-Medium", size: 16))
                        Image( self.selected == segment.id ? "lineSelected" : "")
                        .frame(width: 60, height: 10)
                    }
                }.foregroundColor(self.selected == segment.id ? Color("Color3") : .black)
            }
            .foregroundColor(self.selected == 1 ? Color("Color3") : .black)
            
            }.padding(8)
            .clipShape(Capsule())
            .animation(.default)
    }
}

struct SegmentedControlView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControlView(selected: .constant(0), segments: [Segment(id: 0, segmentName: "Popular"), Segment(id: 1, segmentName: "New"), Segment(id: 2, segmentName: "Follow")])
    }
}

