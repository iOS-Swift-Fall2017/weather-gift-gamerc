//
//  TimeInterval+format.swift
//  WeatherGift
//
//  Created by Charlie Gamer on 10/30/17.
//  Copyright © 2017 Charlie Gamer. All rights reserved.
//

import Foundation

extension TimeInterval {
    func format(timeZone: String, dateFormatter: DateFormatter) -> String {
        let usableDate = Date(timeIntervalSince1970: self)
        dateFormatter.timeZone = TimeZone(identifier: timeZone)
        let dateString = dateFormatter.string(from: usableDate)
        return dateString
    }
    
}
