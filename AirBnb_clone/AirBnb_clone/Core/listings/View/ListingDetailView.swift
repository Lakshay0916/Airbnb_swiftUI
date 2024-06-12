//
//  ListingDetailView.swift
//  AirBnb_clone
//
//  Created by Lakshay Singhal on 01/06/24.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {

    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView{
            
            ZStack(alignment: .topLeading) {
                ListingImageCarsoulView()
                    .frame(height: 320)
                
                Button{
                    dismiss() 
                } label:{
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32,height: 32)
                            
                        }.padding(32)
                }
            }
          
            VStack(alignment: .leading, spacing: 8) {
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                VStack(alignment: .leading){
                    HStack(spacing: 2){
                        Image(systemName: "star.fill")
                        Text("4.56")
                        Text("-")
                        Text("23 Reviews")
                            .underline()
                            .fontWeight(.semibold )
                            
                    }
                    .foregroundStyle(.black)
                    
                    Text("Miami, Florida")
                }
            }.font(.caption)
             .padding(.leading)
             .frame(maxWidth: .infinity,alignment: .leading)
            
            Divider()
            
            //host info view
            HStack{
                VStack(alignment: .leading,spacing: 4){
                    Text("Entire Villa hosted by John Smith")
                        .font(.headline)
                        .frame(width: 250,alignment: .leading)
                    
                    HStack(spacing: 2){
                        Text("4 Guests-")
                        Text("4 Bedrooms-")
                        Text("4 Beds-")
                        Text("4 Baths")
                       
                    }.font(.caption)
                   
                }
                .frame(width:300,alignment: .leading)
                Spacer()
                
                Image("male-profile")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64,height: 64)
                    .clipShape(Circle())
            }
                .padding()
            
            Divider()
            
            VStack(alignment: .leading,spacing: 16){
                ForEach(0 ..< 2) {feature in
                    HStack(spacing:12){
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading){
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("superhosts are experienced,highly hosts who are committed to providing great stars for guests")
                                .font(.caption)
                                .foregroundStyle(.gray)
                            
                        }
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            //berdrooms view
            VStack(alignment: .leading,spacing: 16){
                Text("Where you'll Sleep")
                    .font(.headline)
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 16){
                        ForEach(1 ..< 5) {bedroom in
                            VStack{
                                Image(systemName: "bed.double")
                                Text("Bedroom \(bedroom)")
                            }
                            .frame(width: 132,height: 100)
                            .overlay{
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                }.scrollTargetBehavior(.paging)
                
            }
            .padding()
            
            Divider()
            
            //listing amenities
            VStack(alignment: .leading,spacing: 16){
                Text("what this place offers")
                    .font(.headline)
                    .fontWeight(.semibold)
                
                ForEach(0 ..< 5){feature in
                    HStack{
                        Image(systemName: "wifi")
                            .frame(width: 32)
                        
                        Text("WiFi")
                            .font(.footnote)
                        
                        Spacer()
                    }
                    
                }
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16){
                Text("where you'll be")
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
            
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom,64)
        .overlay(alignment: .bottom){
            VStack{
                Divider()
                    .padding(.bottom)
                HStack{
                    VStack(alignment: .leading){
                        Text("$500")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Total before Taxes")
                        Text("Oct 15-17")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    Spacer()
                    
                    Button{
                        
                    }label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140 ,height: 40 )
                            .background(.pink)
                            .cornerRadius(8)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
                .padding(.horizontal,32)
            }
            .background(.white)
        }
    }
}

#Preview {
    ListingDetailView()
}
