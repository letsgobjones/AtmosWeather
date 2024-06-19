//
//  Weather.swift
//  AtmosWeather
//
//  Created by Brandon Jones on 6/19/24.
//

import Foundation


struct WeatherResponse: Decodable {
  
  let main: Weather
}


struct Weather: Decodable {
  let temp: Double
  let pressure: Int
  let humidity: Int
  
  
}
