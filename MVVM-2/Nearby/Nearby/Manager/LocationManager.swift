//
//  LocationManager.swift
//  Nearby
//
//  Created by Mehul on 06/29/19.
//  Copyright © 2018 Demo. All rights reserved.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, CLLocationManagerDelegate {
    
    static let sharedManager = LocationManager()
    fileprivate var locationManager: CLLocationManager!
    var latitude: CLLocationDegrees = 0.0
    var longitude: CLLocationDegrees = 0.0
    
    func initializeLocationManager() {
        locationManager = CLLocationManager()
        locationManager.delegate = self;
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let locValue:CLLocationCoordinate2D = manager.location!.coordinate
        latitude = locValue.latitude
        longitude = locValue.longitude
        if latitude != 0.0 && longitude != 0 {
            notifyLocationAvailability()
        }
    }
    
    private func notifyLocationAvailability() {
        NotificationCenter.default.post(name: Notification.Name("LocationAvailable"), object: nil)
    }
    
}
