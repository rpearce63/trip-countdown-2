//
//  TripCell.swift
//  master-detail-simple
//
//  Created by Rick Pearce on 3/27/18.
//  Copyright © 2018 Rick Pearce. All rights reserved.
//

import UIKit

class TripCell: UITableViewCell {

    @IBOutlet weak var tripTitle: UILabel!
    @IBOutlet weak var tripDate: UILabel!
    @IBOutlet weak var tripCountdown: UILabel!
    
    func updateViews(trip: Trip) {
        tripTitle.text = (trip.title)
        tripDate.text = (trip.date)
        tripCountdown.text = "\(DataService.instance.calculateDaysUntilDate(tripDate: trip.date))"
    }

}
