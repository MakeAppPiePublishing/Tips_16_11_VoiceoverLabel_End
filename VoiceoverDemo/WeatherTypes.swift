//
//  File.swift
//  VoiceoverDemo
//
//  Created by Steven Lipton on 9/26/21.
//

import Foundation

struct WeatherType:Identifiable{
    var id:Int
    var name:String
    var sfSymbol:String
    var description:String
}

var weatherTypes:[WeatherType] = [
    WeatherType(id: 0, name: "Sunshine", sfSymbol:"sun.max",description:"The sun rising over the mountains"),
    WeatherType(id: 1, name: "Clouds", sfSymbol:"cloud.sun", description: "The sun partially hidden by clouds over a valley"),
    WeatherType(id: 2, name: "Fog", sfSymbol:"cloud.fog",description: "A highway disappearing into the fog"),
    WeatherType(id: 3, name: "Rain", sfSymbol:"cloud.rain",description: "Rain falling on a city street with two people under an umbrella"),
    WeatherType(id: 4, name: "Thunderstorm", sfSymbol:"cloud.bolt.rain", description: "A thunderstorm over a city with a large lightning bolt decending from a cloud into the nearby lake"),
    WeatherType(id: 5, name: "Snow", sfSymbol: "cloud.snow", description:"Heavy snow falling on a road and overpass in a forest"),
]
