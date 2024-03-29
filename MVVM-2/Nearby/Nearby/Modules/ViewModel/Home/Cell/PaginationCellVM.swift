//
//  PaginationCellViewModel.swift
//  Nearby
//
//  Created by Mehul on 06/29/19.
//  Copyright © 2018 Demo. All rights reserved.
//

import Foundation

class PaginationCellVM {
    
    // Output
    var numberOfPages = 0
    var title = ""
    
    // Datasource
    private var dataSource = [Place]()
    
    // Events
    var placeSelected: (Place)->()?
    
    init(data: [Place], placeSelected: @escaping (Place)->()) {
        dataSource = data
        self.placeSelected = placeSelected
        configureOutput()
    }
    
    private func configureOutput() {
        numberOfPages = dataSource.count
        title = "Hot picks only for you"
    }
    
    func viewModelForPlaceView(position: Int)->PlaceViewVM {
        let place = dataSource[position]
        let placeViewVM = PlaceViewVM(place: place)
        placeViewVM.placesViewSelected = { [weak self] in
            self?.placeSelected(place)
        }
        return placeViewVM
    }
    
}
