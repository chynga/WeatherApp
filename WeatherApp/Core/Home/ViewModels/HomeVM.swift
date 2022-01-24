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
    @Published var hourlyToday: [Hourly]?
    @Published var hourlyTomorrow: [Hourly]?
    @Published var hourlyAfterTomorrow: [Hourly]?
    
    @Published var city: City
    private let forecastDataService: ForecastDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(city: City) {
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
                self?.hourlyToday = returnedForecast?.hourly.filter({ hourly in
                    let date = Date(timeIntervalSince1970: Double(hourly.dt))
                    return Calendar.current.isDateInToday(date)
                })
                self?.hourlyTomorrow = returnedForecast?.hourly.filter({ hourly in
                    let date = Date(timeIntervalSince1970: Double(hourly.dt))
                    return Calendar.current.isDateInTomorrow(date)
                })
                self?.hourlyAfterTomorrow = returnedForecast?.hourly.filter({ hourly in
                    let date = Date(timeIntervalSince1970: Double(hourly.dt))
                    let today = Date()
                    guard let nextDate = Calendar.current.date(byAdding: .day, value: 2, to: today) else { return false }
                    return Calendar.current.isDate(date, inSameDayAs: nextDate)
                })
            }
            .store(in: &cancellables)
    }
}
