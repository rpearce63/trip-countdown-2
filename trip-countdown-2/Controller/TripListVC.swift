//
//  ViewController.swift
//  master-detail-simple
//
//  Created by Rick Pearce on 3/27/18.
//  Copyright © 2018 Rick Pearce. All rights reserved.
//

import UIKit

class TripListVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tripTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tripTable.delegate = self
        tripTable.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getTrips().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TripCell") as? TripCell {
            let trip = DataService.instance.getTrips()[indexPath.row]
            cell.updateViews(trip: trip)
            return cell
        }
        
        return TripCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row Selected")
    }
    


}

