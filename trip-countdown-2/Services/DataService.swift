//
//  DataService.swift
//  master-detail-simple
//
//  Created by Rick Pearce on 3/27/18.
//  Copyright © 2018 Rick Pearce. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    private static let dateFormatter: DateFormatter = {
       let df = DateFormatter()
        df.dateFormat = "MM/dd/yyyy"
        return df
    }()
    
    private let trips = [
        Trip(title: "Magic NYC to Bermuda 6 Night Cruise", date: "10/13/2018"),
        Trip(title: "Wonder San Diego to Baja 5 Night Cruise", date: "03/10/2019")
    ]
    
    func getTrips() -> [Trip] {
        return trips
    }
    
    func calculateDaysUntilDate(tripDate: String) -> Int {
        let today = Date()
        let targetDate = DataService.dateFormatter.date(from: tripDate)
        let diff = targetDate?.timeIntervalSince(today)
        return Int(ceil(diff! / (60 * 60 * 24)))
    }
}
