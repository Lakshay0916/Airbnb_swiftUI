//
//  WishListView.swift
//  AirBnb_clone
//
//  Created by Lakshay Singhal on 04/06/24.
//

import SwiftUI

struct WishListView: View {
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading, spacing: 32){
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Login to view your wishlist")
                        .font(.headline)
                    
                    Text("You can create, view or edit wishlists once you've logged in")
                    
                    Button{
                        print("login")
                    }label: {
                        Text("Login")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 48)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                    Spacer()
                }
                .padding()
                .navigationTitle("Wishlist")
                
            }
        }

    }
}

#Preview {
    WishListView()
}
