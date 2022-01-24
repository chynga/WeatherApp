//
//  ForecastDataService.swift
//  WeatherApp
//
//  Created by Шынгыс Курбан on 17.01.2022.
//

import Foundation
import Combine

class ForecastDataService {
    
    @Published var forecast: Forecast?
    
    var forecastSubscription: AnyCancellable?
    
    init(city: City) {
        getForecast(city: city)
    }
    
    func getForecast(city: City) {
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/onecall?lat=\(city.lat)&lon=\(city.lon)&exclude=current,minutely&appid=dd7bf386e7b6fa62abac93ec93b1f47a") else { return }
        print(url)
        forecastSubscription = NetworkingManager.download(url: url)
            .decode(type: Forecast.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] returnedForecast in
                self?.forecast = returnedForecast
//                self?.forecastSubscription?.cancel()
            })
    }
}
