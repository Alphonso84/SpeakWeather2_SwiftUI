//
//  CityCardView.swift
//  SpeakWeather2_SwiftUI
//
//  Created by Alphonso Sensley II on 11/11/20.
//

import Foundation
import SwiftUI


struct CityCardView: View {
    @State var city: String = "San Francisco"
    @State var condition: String = "Sunny"
    @State var image: String = "sun.fill"
    @State var temp: Int = 75
    
    var body: some View {
        VStack {
            Text(city)
                .bold()
                .font(.title)
                .fixedSize()
                .foregroundColor(Color(.label))
            Text(condition)
                .font(.title2)
                .foregroundColor(Color(.label))
            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("\(temp)")
                .bold()
                .font(.largeTitle)
                .foregroundColor(Color(.label))
        }
        .frame(width:175, height: 150)
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(lineWidth: 0.1)
                .shadow(color: .gray, radius: 10, x: 2, y: 1))
        
        .foregroundColor(Color(.label))
        
    }
}

struct CityCardView_Previews: PreviewProvider {
    static var previews: some View {
        CityCardView()
    }
}
