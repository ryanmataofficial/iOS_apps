//
//  HomeView.swift
//  VIC
//
//  Created by Ryan Mata on 2/18/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        GeometryReader{ geo in
            ZStack(alignment: .bottom){
                ZStack (alignment: .top){
                    Rectangle()
                        .foregroundColor(.black)
                        .cornerRadius(15)
                        .ignoresSafeArea()
                    HStack{
                        Text("Welcome, Ryan")
                            .foregroundColor(Color.white)
                            .font(Font.custom("Avenir Heavy", size: 45))
                            .padding(.top, 40)
                    }
                }
                ZStack (alignment: .top){
                    Rectangle()
                        .foregroundColor(Color(.sRGB, red: 74/255, green: 74/255, blue: 74/255, opacity: 1))
                        .cornerRadius(15)
                        .frame(width: geo.size.width, height: geo.size.height/4*3.3)
                    HStack(spacing: 0){
                        Text("2022 Hyundai Tucson")
                            .foregroundColor(Color.white)
                            .font(Font.custom("Avenir Heavy", size: 25))
                            .frame(width: geo.size.width/2, height: geo.size.width/4)
                        Image("2022 Hyundai Tucson")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geo.size.width/2, height: geo.size.width/4)
                    }
                }
                ZStack (alignment: .top){
                    Rectangle()
                        .foregroundColor(Color(.sRGB, red: 54/255, green: 54/255, blue: 54/255, opacity: 1))
                        .cornerRadius(15)
                        .frame(width: geo.size.width, height: geo.size.height/4*2.3)
                    HStack(spacing: 0){
                        Text("2022 Hyundai Tucson")
                            .foregroundColor(Color.white)
                            .font(Font.custom("Avenir Heavy", size: 25))
                            .frame(width: geo.size.width/2, height: geo.size.width/4)
                        Image("2022 Hyundai Tucson")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geo.size.width/2, height: geo.size.width/4)
                    }
                }
                ZStack (alignment: .top){
                    Rectangle()
                        .foregroundColor(Color(.sRGB, red: 34/255, green: 34/255, blue: 34/255, opacity: 1))
                        .cornerRadius(15)
                        .frame(width: geo.size.width, height: geo.size.height/4*1.3)
                    HStack(spacing: 0){
                        Text("2022 Hyundai Tucson")
                            .foregroundColor(Color.white)
                            .font(Font.custom("Avenir Heavy", size: 25))
                            .frame(width: geo.size.width/2, height: geo.size.width/4)
                        Image("2022 Hyundai Tucson")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geo.size.width/2, height: geo.size.width/4)
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
