//
//  City.swift
//  WeatherApp
//
//  Created by Шынгыс Курбан on 19.01.2022.
//

import Foundation

struct CityModel {
    static let almaty = (name: "Almaty", lat: 43.258509, lon: 76.924993)
    static let nursultan = (name: "Nur-Sultan", lat: 51.169392, lon: 71.449074)
}

typealias City = (name: String, lat: Double, lon: Double)
