//
//  HomeVM.swift
//  WeatherApp
//
//  Created by Шынгыс Курбан on 17.01.2022.
//

import Foundation
import Combine

class HomeVM: ObservableObject {
    @Published var forecast: Forecast?
    
    @Published var city: (name: String, lat: Double, lon: Double)
    private let forecastDataService: ForecastDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(city: (name: String, lat: Double, lon: Double)) {
        forecastDataService = ForecastDataService(city: city)
        self.city = city
        addSubscribers()
    }
    
    func addSubscribers() {
        $city
            .sink { [weak self] returnedCity in
                self?.forecastDataService.getForecast(city: returnedCity)
            }
            .store(in: &cancellables)
        
        
        forecastDataService.$forecast
            .sink { [weak self] returnedForecast in
                self?.forecast = returnedForecast
            }
            .store(in: &cancellables)
    }
}
