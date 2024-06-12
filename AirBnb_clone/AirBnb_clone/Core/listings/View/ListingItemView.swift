//
//  ListingItemView.swift
//  AirBnb_clone
//
//  Created by Lakshay Singhal on 01/06/24.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "Listing-1",
        "Listing-2",
        "Listing-3",
        "Listing-4"
    ]
    
    var body: some View {
        VStack(spacing: 8){
            
             ListingImageCarsoulView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
         
         
            
            //listing details
            HStack(alignment: .top){
                //details
                VStack(alignment: .leading){
                    Text("Miami, Florida")
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                    Text("12 miles Away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    Text("$599 / night")
                        .fontWeight(.bold)
                        
                }
                .foregroundStyle(.black)
                Spacer()
                
                //ratings
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    Text("4.56")
                        
                }
                .foregroundStyle(.black)
                
            }.font(.footnote)
        }
  
    }
}

#Preview {
    ListingItemView()
}
