//
//  ImageAndLabelCollectionCellVM.swift
//  Nearby
//
//  Created by Mehul on 06/29/19.
//  Copyright © 2018 Demo. All rights reserved.
//

import Foundation

struct ImageAndLabelCollectionCellModel {
    var name: String = ""
    var imageUrl: String = ""
}

class ImageAndLabelCollectionCellVM {
    
    private var dataModel: ImageAndLabelCollectionCellModel!
    
    // Output
    var imageURL: String!
    var text: String!
    
    init(dataModel: ImageAndLabelCollectionCellModel) {
        self.dataModel = dataModel
        configureOutput()
    }
    
    private func configureOutput() {
        imageURL = dataModel.imageUrl
        text = dataModel.name
    }
    
}
