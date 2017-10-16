//
//  DetailVC.swift
//  WeatherGift
//
//  Created by Charlie Gamer on 10/11/17.
//  Copyright © 2017 Charlie Gamer. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var currentImage: UIImageView!
    
    var currentPage = 0
    var locationsArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationLabel.text = locationsArray[currentPage]
        
    }



}
