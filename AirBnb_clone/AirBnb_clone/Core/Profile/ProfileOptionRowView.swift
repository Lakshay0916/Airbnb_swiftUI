//
//  ProfileOptionRowView.swift
//  AirBnb_clone
//
//  Created by Lakshay Singhal on 04/06/24.
//

import SwiftUI

struct ProfileOptionRowView: View {
    let imagename: String
    let title: String
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imagename)
                
                Text(title)
                    .font(.subheadline)
               
                Spacer()
                
                Image(systemName: "chevron.right")
            }
            Divider()
            
        }
    }
}

#Preview {
    ProfileOptionRowView(imagename: "gear", title: "settings")
}
