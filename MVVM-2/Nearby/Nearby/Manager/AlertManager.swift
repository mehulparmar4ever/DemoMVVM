//
//  AlertManager.swift
//  Nearby
//
//  Created by Mehul on 06/29/19.
//  Copyright © 2018 Demo. All rights reserved.
//

import Foundation
import UIKit

struct AlertManager {
  
  let rootController: UIViewController? = {
    let app = UIApplication.shared.delegate as! AppDelegate
    return app.window?.rootViewController
  }()
  
  let activityIndicator = UIActivityIndicatorView()
  
  func showAlert(withMessage message: String, title: String) {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
    let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
    alertController.addAction(okAction)
    rootController?.present(alertController, animated: true, completion: nil)
  }
  
}

