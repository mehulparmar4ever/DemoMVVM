//
//  Helper.swift
//  Nearby
//
//  Created by Abhisek on 15/05/18.
//  Copyright © 2018 Abhisek. All rights reserved.
//

import Foundation
import UIKit

class Helper {
    
    static func getTopPlace(paceType: PlaceType, topPlacesCount: Int) -> [Place] {
        let places = AppData.sharedData.allPlaces.filter { $0.type == paceType }
        return Array(places.prefix(topPlacesCount))
    }
    
}

class ActivityIndicator {
    
    static let sharedIndicator = ActivityIndicator()
    private var spinnerView = UIView()
    
    func displayActivityIndicator(onView : UIView) {
        spinnerView = UIView.init(frame: onView.bounds)
        spinnerView.backgroundColor = UIColor.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        let ai = UIActivityIndicatorView.init(activityIndicatorStyle: .whiteLarge)
        ai.startAnimating()
        ai.center = spinnerView.center
        
        DispatchQueue.main.async { [weak self] in
            guard let _self = self else { return }
            _self.spinnerView.addSubview(ai)
            onView.addSubview(_self.spinnerView)
        }
        
    }
    
    func hideActivityIndicator() {
        DispatchQueue.main.async {[weak self] in
            guard let _self = self else { return }
            _self.spinnerView.removeFromSuperview()
        }
    }
    
}
