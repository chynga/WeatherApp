//
//  HomeView.swift
//  WeatherApp
//
//  Created by Шынгыс Курбан on 17.01.2022.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var vm = HomeVM(city: City.almaty)
    
    
    init() {
        
    }
    
    var body: some View {
        VStack(alignment: .center) {
            if let forecast = vm.forecast {
                Text("\(vm.city.name)")
                Text(forecast.hourly[0].temp.convertKelvinToCelsius().asTempWith2Decimals())
            }
            
            Button {
                if vm.city == City.almaty {
                    vm.city = City.nursultan
                } else {
                    vm.city = City.almaty
                }
            } label: {
                Text("Change")
            }

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
