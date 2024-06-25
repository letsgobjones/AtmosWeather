# AtmosWeather 🌤️

AtmosWeather is a simple weather app built with SwiftUI that showcases various Swift techniques for fetching and displaying weather data from the OpenWeatherMap API.

## Features ✨

- **Clean and Minimalist UI:** Easily view the current temperature for any city.
- **Asynchronous Networking with `async/await`:**  Leverages Swift's modern concurrency features for seamless data fetching.
- **Structured Error Handling:** Uses `try/catch` blocks for robust error management and user feedback.
- **Custom Structs and Enums:** Encapsulates data and functionality for improved code organization.
- **JSON Decoding:** Parses API responses into Swift structures for easy manipulation.
- **API Key Management:** Securely stores and accesses API keys for external services.
- **Temperature Conversion:** Converts temperature units with a custom `MeasurementFormatter` extension.
- **URL Construction:** Employs an enum (`APIEndpoint`) for building flexible and maintainable API URLs.


## Installation 🚀

1. Clone this repository: `git clone https://github.com/your-username/AtmosWeather.git`
2. Open the project in Xcode.
3. Obtain an API key from OpenWeatherMap ([https://openweathermap.org/appid](https://openweathermap.org/appid)) and replace the placeholder value (`xxxxx`) in `KeyConstant.swift` with your actual API key.
4. Build and run the app in the simulator or on a device.

## Usage 📱

1. Type the name of a city in the text field and press Enter or tap the "Go" button.
2. The app will fetch the current temperature for that city and display it.


