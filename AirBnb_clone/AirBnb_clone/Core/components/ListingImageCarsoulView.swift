//
//  ListingImageCarsoulView.swift
//  AirBnb_clone
//
//  Created by Lakshay Singhal on 01/06/24.
//

import SwiftUI

struct ListingImageCarsoulView: View {
    var images = [
        "Listing-1",
        "Listing-2",
        "Listing-3",
        "Listing-4"
    ] 
    var body: some View {
        TabView{
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
        
    }
}

#Preview {
    ListingImageCarsoulView()
}
