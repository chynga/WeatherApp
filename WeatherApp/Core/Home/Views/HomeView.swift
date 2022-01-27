//
//  HomeView.swift
//  WeatherApp
//
//  Created by Шынгыс Курбан on 17.01.2022.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var vm = HomeVM(city: CityModel.almaty)
    
    var body: some View {
        VStack(alignment: .center) {
            if let forecast = vm.forecast {
                Text("\(vm.city.name)")
                    .font(.largeTitle)
                Text(forecast.hourly[0].temp.convertKelvinToCelsius().asTemp())
                    .font(.system(size: 80))
                    
            }
            
            HourlyForcastView(dayTitle: "Today", hourlyForecast: vm.hourlyToday)
                .padding()
            
            HourlyForcastView(dayTitle: "Tomorrow", hourlyForecast: vm.hourlyTomorrow)
                .padding()
            
            DailyForecastView(dailyForecast: vm.daily)
                .padding()
            
            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                NavigationLink {
                    Text("List of Cities")
                } label: {
                    Image(systemName: "mappin.and.ellipse")
                }
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink {
                    Text("List of Cities")
                } label: {
                    Image(systemName: "gearshape.fill")
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
        }
    }
}
