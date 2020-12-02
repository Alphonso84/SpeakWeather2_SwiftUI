//
//  ContentView.swift
//  SpeakWeather2_SwiftUI
//
//  Created by Alphonso Sensley II on 8/22/20.
//

import SwiftUI

var cityArray = ["San Francisco","Oakland","San Leandro","San Jose","Antioch", "Alameda"]

struct ContentView: View {
    @State private var pickerSelection = Int()
    var body: some View {
        ZStack {
           // BackgroundView()
            VStack {
                Spacer()
                ScrollingCardView()
                    .padding(.top)
               Picker(selection:$pickerSelection, label:Text("Picker"), content:{
                    Text("Day").tag(0)
                    Text("Week").tag(1)
                })
               .padding(.bottom)
               .frame(width: 300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
               .pickerStyle(SegmentedPickerStyle())
                
                List(0..<10, id: \.self) {row in
                    ZStack {
                        HStack {
                            Text("Test")
                        }
                    }
                }
                .frame(width: 400, height: 450, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(y: 10)
              Spacer()
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




