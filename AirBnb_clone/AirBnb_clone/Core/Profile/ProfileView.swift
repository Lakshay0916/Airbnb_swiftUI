//
//  ProfileView.swift
//  AirBnb_clone
//
//  Created by Lakshay Singhal on 04/06/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading,spacing: 32){
                VStack(alignment: .leading,spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                    .fontWeight(.semibold)
                    
                    Text("Login To Start Planning Your Next Trip")
                }
                            
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
                
                HStack{
                    Text("Don't have an account? ")
                    Text("Sign up")
                        .fontWeight(.semibold)
                        .underline()
                    
                }.font(.caption)
            }
            
            VStack(spacing: 24){
                ProfileOptionRowView(imagename: "gear", title: "settings")
                ProfileOptionRowView(imagename: "gear", title: "settings")
                ProfileOptionRowView(imagename: "questionmark.circle", title: "Visit the help centre")
            }
            .padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
