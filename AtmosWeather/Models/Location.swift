//
//  Location.swift
//  AtmosWeather
//
//  Created by Brandon Jones on 6/19/24.
//

import Foundation


struct Location: Decodable {
  let name: String
  let lat: Double
  let lon: Double
}
