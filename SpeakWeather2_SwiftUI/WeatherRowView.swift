//
//  WeatherRowView.swift
//  SpeakWeather2_SwiftUI
//
//  Created by Alphonso Sensley II on 8/25/20.
//

import SwiftUI

struct WeatherRowView: View {
    var body: some View {
      
            ZStack(alignment: .leading) {
                
                    RoundedRectangle(cornerRadius: 25).frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(.systemFill))
                        .shadow(radius: 15)
               
                   
                    Text("Hello World")
                   
                
                        
            
            }
        }
    }


struct WeatherRowView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherRowView()
    }
}
