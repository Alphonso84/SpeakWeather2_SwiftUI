//
//  ContentView.swift
//  SpeakWeather2_SwiftUI
//
//  Created by Alphonso Sensley II on 8/22/20.
//

import SwiftUI

var cityArray = ["San Francisco","Oakland","San Leandro","San Jose","Antioch", "Alameda"]

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                ScrollingCardView()
//                Picker(selection: .constant(1)/*@END_MENU_TOKEN@*/, label: /*@START_MENU_TOKEN@*/Text("Picker"), content: /*@START_MENU_TOKEN@*/{
//                    Text("Day").tag(1)
//                    Text("Week").tag(2)
//                }/*@END_MENU_TOKEN@*/)
//                .padding(.bottom)
//                .pickerStyle(SegmentedPickerStyle())
//                List{
//
//                }
            }
        }
        
    }
    
}

struct ScrollingCardView: View {
    @State var city = String()
    @State var angle: Double = 1
    @State var counter = 0
    var body: some View {
            ScrollView(.horizontal){
                HStack(alignment:.center, spacing:10){
                    ForEach( 0..<20) { CityWeather in
                        CityCardView(city: "San Francisco", condition: "Partly Cloudy",image: "sun.max.fill", temp: 54)
                            .offset(x: 100)
                    }
                }
            }
            .frame(width: 500,alignment:.topLeading)
    }
}

struct BackgroundView: View {
   
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.white, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




