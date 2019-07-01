//
//  AppData.swift
//  Nearby
//
//  Created by Mehul on 06/29/19.
//  Copyright © 2018 Demo. All rights reserved.
//

import Foundation

class AppData {
    
    static let sharedData = AppData()
    var allPlaces = [Place]()
    
    func resetData() {
        allPlaces.removeAll()
    }
    
}
