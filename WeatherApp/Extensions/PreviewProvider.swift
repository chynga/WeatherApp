//
//  PreviewProvider.swift
//  WeatherApp
//
//  Created by Шынгыс Курбан on 25.01.2022.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
    
}

class DeveloperPreview {
    
    static let instance = DeveloperPreview()
    private init() { }
    
    let vm = HomeVM(city: CityModel.almaty)
    
    
}

