//
//  ContentView.swift
//  SpeakWeather2_SwiftUI
//
//  Created by Alphonso Sensley II on 8/22/20.
//

import SwiftUI



struct ContentView: View {
    @State private var cityArray = ["San Francisco"]
    @State private var pickerSelection = Int()
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                Spacer()
                CityCardView(city: "San Francisco", condition: "Sunny", image: "sun.max.fill", temp: 70)
//                ScrollingCardView(cityForecasts:$cityArray)
//                    .frame(width: 400)
//                    //.offset(x: -40)
//                    .padding(.top)
                Picker(selection:$pickerSelection, label:Text("Picker"), content:{
                    Text("Day").tag(0)
                    Text("Week").tag(1)
                })
                .padding(.bottom)
                .frame(width: 300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .pickerStyle(SegmentedPickerStyle())
                
                List(0..<10, id: \.self) {row in
                    
                    HStack {
                            Image(systemName:"sun.max.fill")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Spacer()
                            Text("Test")
                            Spacer()
                            Text("89")
                        }
                    
                    
                }
                .opacity(0.1)

                
                .frame(width: 400, height: 450, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(y: 10)
                                Spacer()
            }
        }
        
    }
    
}

struct ScrollingCardView: View {
    @Binding var cityForecasts: [String]
    var body: some View {
            ScrollView(.horizontal){
                HStack(alignment:.center, spacing:10){
                    ForEach( cityForecasts,id:\.self) { cityFromArray in
                        CityCardView(city: cityFromArray, condition: "Partly Cloudy",image: "sun.max.fill", temp: 54)
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




