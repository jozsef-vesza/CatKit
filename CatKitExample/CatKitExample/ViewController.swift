//
//  ViewController.swift
//  CatKitExample
//
//  Created by Vesza Jozsef on 02/06/15.
//  Copyright (c) 2015 József Vesza. All rights reserved.
//

import UIKit
import CatKit

class ViewController: UIViewController {
    
    @IBOutlet weak var catImageView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        CatFetcherService.fetchCatsOfWidth(1000, height: 800,
            fromSource: .PlaceKitten) { image, error in
                
                self.activityIndicator.stopAnimating()
                
                switch (image, error) {
                    
                case (nil, let error):
                    
                    let alertController = UIAlertController(title: "Error", message: error, preferredStyle: .Alert)
                    let okAction = UIAlertAction(title: "OK", style: .Default, handler: {(alert :UIAlertAction!) in })
                    
                    alertController.addAction(okAction)
                    self.presentViewController(alertController, animated: true, completion: nil)
                    
                default:
                    self.catImageView.image = image
                }
        }
    }
}

