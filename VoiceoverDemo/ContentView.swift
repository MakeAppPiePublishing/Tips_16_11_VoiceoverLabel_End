//
//  ContentView.swift
//  VoiceoverDemo
//
//  Created by Steven Lipton on 9/26/21.
// An exercise file for iOS Development Tips Weekly
// A weekly course on LinkedIn Learning for iOS developers
//  Season 16 (Q4 2021) video 11
//  by Steven Lipton (C)2021, All rights reserved
// Learn more at https://linkedin-learning.pxf.io/YxZgj
//  For more code, go to http://bit.ly/AppPieGithub

import SwiftUI

struct ContentView: View {
    @State var currentWeatherID = 0
    @State var currentWeatherStatus = "Sunshine"
    var currentImageDescription:String{
        weatherTypes.first(where: {(weather) -> Bool in weather.id == currentWeatherID})?.description ?? ""
    }
    func changeWeather(weather:WeatherType){
        currentWeatherID = weather.id
        currentWeatherStatus = weather.name
    }
    var body: some View {
        ZStack {
            Image("\(currentWeatherID)")
                        .resizable().scaledToFill()
                        .padding()
                        .ignoresSafeArea(edges: [.bottom])
                        .accessibilityLabel(currentWeatherStatus)
                        .accessibilityHint(currentImageDescription)
            
            
            VStack {
                Text("Hello " + currentWeatherStatus)
                    .font(.largeTitle)
                    .padding(50)
                    .background(.thinMaterial, in:RoundedRectangle(cornerRadius: 10))
                    .padding([.top], 100)
                Spacer()
                HStack{
                    Spacer()
                    ForEach(weatherTypes) { weather in
                        Button(action: {changeWeather(weather:weather)}) {
                            Image(systemName: weather.sfSymbol)
                                .padding()
                                .font(.title2)
                                .background(.regularMaterial)
                                .accessibilityLabel(Text(weather.name))
                                .accessibilityHint(Text("change the background to an image of " + weather.name))
                            
                        }
                    }
                    Spacer()
                }
                .padding()
                
                .background(.bar)
                .padding()
                
                //Spacer()
            }.ignoresSafeArea()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
