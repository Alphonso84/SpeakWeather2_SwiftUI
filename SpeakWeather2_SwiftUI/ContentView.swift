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
        CardView()
    }
}

struct CardView: View {
    @State var city = String()
    @State var angle: Double = 1
    @State var counter = 0
    var body: some View {
        VStack {
            HStack {
                
                Image(systemName: "chevron.left")
                    .resizable()
                    .frame(width: 30, height: 50, alignment: .leading)
                    .onTapGesture {
                        if counter > 0 {
                        self.counter -= 1
                        city = cityArray[counter]
                    }
                    }
                
                VStack {
                    Text(city).font(.largeTitle).fontWeight(.bold).multilineTextAlignment(.center).lineLimit(1).padding(0.0)
                        .animation(.linear(duration: 0.1))
                        .onAppear {
                            self.city = cityArray[counter]
                            
                        }
                    Image(systemName:"sun.max")
                        .resizable()
                        .frame(width: 60, height: 60, alignment: .center)
                        .rotationEffect(.degrees(angle), anchor: .center)
                        .animation(Animation
                                    .easeInOut(duration: 4))
                        .onAppear {
                            self.angle += 90
                        }
                    Text("58").font(.largeTitle).fontWeight(.heavy).multilineTextAlignment(.center).padding(.vertical).frame(width: 80.0, height: nil)
                }
                .frame(width:255, height: 250)
                .cornerRadius(25)
                
                Image(systemName: "chevron.right")
                    .resizable()
                    .frame(width: 30, height: 50, alignment: .leading)
                    .onTapGesture {
                        if counter < cityArray.count - 1 {
                        self.counter += 1
                        city = cityArray[counter]
                    }
                    }
            }
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
