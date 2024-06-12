//
//  TabBarView.swift
//  AirBnb_clone
//
//  Created by Lakshay Singhal on 04/06/24.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView{
            
            ExploreView()
                .tabItem { Label("Explore",systemImage: "magnifyingglass") }
            
            WishListView()
                .tabItem { Label("WishList",systemImage: "heart") }

            
            ProfileView()
                .tabItem { Label("Profile",systemImage: "person") }

            
        }
    }
}

#Preview {
    TabBarView()
}
