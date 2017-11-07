//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by Charlie Gamer on 11/2/17.
//  Copyright © 2017 Charlie Gamer. All rights reserved.
//

import Foundation

class WeatherLocation: Codable {
  
    var name: String
    var coordinates: String
    
    init(name: String, coordinates: String) {
        self.name = name
        self.coordinates = coordinates
    }
}
