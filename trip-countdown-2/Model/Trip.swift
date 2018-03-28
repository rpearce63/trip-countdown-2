//
//  Trip.swift
//  master-detail-simple
//
//  Created by Rick Pearce on 3/27/18.
//  Copyright © 2018 Rick Pearce. All rights reserved.
//

import Foundation

struct Trip {
    private(set) public var title: String
    private(set) public var date: String
    
    init(title: String, date: String) {
        self.title = title
        self.date = date
    }
}
