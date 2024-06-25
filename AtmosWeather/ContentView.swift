//
//  ContentView.swift
//  AtmosWeather
//
//  Created by Brandon Jones on 6/19/24.
//

import SwiftUI

struct ContentView: View {
  @State private var city: String = ""
  @State private var isFetchingWeather: Bool = false
  @State private var weather: Weather?
  let geocodingClient = GeocodingClient()
  let weatherClient = WeatherClient()
  
  
  
  private func fetchWeather() async {
    do {
guard let location = try await  geocodingClient.coordinateByCity(city) else { return }
      weather = try await weatherClient.fetchWeather(location: location)
    } catch {
      print(error)
    }
  }
  
  
  
  

    var body: some View {
      VStack {
        TextField("City", text: $city)
          .textFieldStyle(.roundedBorder)
          .onSubmit {
            isFetchingWeather = true
          }.task(id: isFetchingWeather) {
            if isFetchingWeather {
            await fetchWeather()
            isFetchingWeather = false
            city = ""
          }
      }
        if let weather {
          Text(MeasurementFormatter.temperature(value: weather.temp))
            .font(.system(size: 100))
        }
      
      
        Spacer()
      }
        .padding()
    }
}

#Preview {
    ContentView()
}
