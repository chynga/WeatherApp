//
//  HomeView.swift
//  WeatherApp
//
//  Created by Шынгыс Курбан on 17.01.2022.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var vm = HomeVM(city: CityModel.almaty)
    
    
    init() {
        
    }
    
    var body: some View {
        VStack(alignment: .center) {
            if let forecast = vm.forecast {
                Text("\(vm.city.name)")
                Text(forecast.hourly[0].temp.convertKelvinToCelsius().asTemp())
            }
            
            Button {
                if vm.city == CityModel.almaty {
                    vm.city = CityModel.nursultan
                } else {
                    vm.city = CityModel.almaty
                }
            } label: {
                Text("Change")
            }

            List {
                if
                    let hourlyToday = vm.hourlyToday,
                    let hourlyTomorrow = vm.hourlyTomorrow,
                    let hourlyAfterTomorrow = vm.hourlyAfterTomorrow {
                    
                    Text("Today")
                    
                    ForEach(hourlyToday) { hourly in
                        HStack {
                            Text("\(hourly.dt.asLocalDate())")
                            Spacer()
                            Text("\(hourly.temp.convertKelvinToCelsius().asTemp())")
                        }
                    }
                    
                    Text("Tomorrow")
                    
                    ForEach(hourlyTomorrow) { hourly in
                        HStack {
                            Text("\(hourly.dt.asLocalDate())")
                            Spacer()
                            Text("\(hourly.temp.convertKelvinToCelsius().asTemp())")
                        }
                    }
                    
                    Text("After Tomorrow")
                    
                    ForEach(hourlyAfterTomorrow) { hourly in
                        HStack {
                            Text("\(hourly.dt.asLocalDate())")
                            Spacer()
                            Text("\(hourly.temp.convertKelvinToCelsius().asTemp())")
                        }
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
