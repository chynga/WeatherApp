//
//  DailyForecast.swift
//  WeatherApp
//
//  Created by Шынгыс Курбан on 27.01.2022.
//

import SwiftUI

struct DailyForecastView: View {
    
    let dailyForecast: [Daily]?
    
    var body: some View {
        if let dailyForecast = dailyForecast {
            VStack {
                HStack {
                    Text("Daily forecast")
                        .font(.title)
                    Spacer()
                }
                
                Divider()
                
                ForEach(dailyForecast) { dayForecast in
                    HStack {
                        Text(dayForecast.dt.asLocalDay())
                        
                        Spacer()
                        
                        Text(dayForecast.temp.day.convertKelvinToCelsius().asTemp())
                    }
                }
            }
        }
    }
}

struct DailyForecastView_Previews: PreviewProvider {
    static var previews: some View {
        DailyForecastView(dailyForecast: dev.vm.daily)
    }
}
