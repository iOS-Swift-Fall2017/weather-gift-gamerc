//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by Charlie Gamer on 10/19/17.
//  Copyright © 2017 Charlie Gamer. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class WeatherLocation {
    var name = ""
    var coordinates = ""
    var currentTemperature = "--"
    var dailySummary = ""
    
    func getWeather(completed: @escaping () -> ()) {
        
        let weatherURL = urlBase + urlAPIKey + coordinates
        
        Alamofire.request(weatherURL).responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                if let temperature = json["currently"]["temperature"].double {
                    let roundedTemp = String(format:"%3.f", temperature)
                    self.currentTemperature = roundedTemp + "°"
                } else {
                    print("could not return temp")
                }
                if let summary = json["daily"]["summary"].string {
                    self.dailySummary = summary
                } else {
                    print("could not return summary")
                }
            case .failure(let error):
                print(error)
            }
            completed()
        }
    }
}


