//
//  Int.swift
//  WeatherApp
//
//  Created by Шынгыс Курбан on 22.01.2022.
//

import Foundation

extension Int {
    
    func asLocalDate() -> String {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .none
        dateFormatter.timeStyle = .short
        dateFormatter.timeZone = .current
        
        let date = Date(timeIntervalSince1970: TimeInterval(self))
        
        return dateFormatter.string(from: date)
    }
}
