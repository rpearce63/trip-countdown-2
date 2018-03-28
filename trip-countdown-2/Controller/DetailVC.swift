//
//  DetailVC.swift
//  trip-countdown-2
//
//  Created by Rick Pearce on 3/28/18.
//  Copyright © 2018 Rick Pearce. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var countdownLbl: UILabel!
    
    
    private(set) public var trip: Trip?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLbl.text = trip!.title
        dateLbl.text = trip!.date
        let countdown = DataService.instance.calculateDaysUntilDate(tripDate: trip!.date)
        countdownLbl.text = "\(countdown)"
    }

    func initTripDetail(trip: Trip) {
        self.trip = trip
        
    }
}
