//
//  WeatherClient.swift
//  AtmosWeather
//
//  Created by Brandon Jones on 6/19/24.
//

import Foundation


struct WeatherClient {
  
  
  func fetchWeather(location: Location) async throws -> Weather  {
    let (data, response) = try await URLSession.shared.data(from: APIEndpoint.endpointURL(for: .weatherByLatLon(location.lat, location.lon)))
    
    
    guard let httpResponse = response as? HTTPURLResponse,
          httpResponse.statusCode == 200 else {
      
      throw NetworkError.invalidResponse
    }
    
    let weatherResponse = try JSONDecoder().decode(WeatherResponse.self, from: data)
    return weatherResponse.main
    
  }
}
