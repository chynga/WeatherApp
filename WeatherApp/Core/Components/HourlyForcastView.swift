//
//  HourlyForcastView.swift
//  WeatherApp
//
//  Created by Шынгыс Курбан on 25.01.2022.
//

import SwiftUI

struct HourlyForcastView: View {
    
    let dayTitle: String
    let hourlyForecast: [Hourly]?
    
    var body: some View {
        if let hourlyForecast = hourlyForecast {
            VStack {
                HStack {
                    Text(dayTitle)
                        .font(.title)
                    Spacer()
                }
                Divider()
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(hourlyForecast) { hourForecast in
                            VStack {
                                Text(hourForecast.dt.asLocalDate())
                                
                                Text(hourForecast.temp.convertKelvinToCelsius().asTemp())
                            }
                        }
                    }
                }
            }
        }
        
    }
}

struct HourlyForcastView_Previews: PreviewProvider {
    static var previews: some View {
        HourlyForcastView(dayTitle: "Today", hourlyForecast: dev.vm.hourlyToday)
    }
}
