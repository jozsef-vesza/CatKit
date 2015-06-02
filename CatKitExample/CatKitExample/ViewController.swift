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
        
        CatFetcherService.fetchCatsOfWidth(300, height: 200,
            fromSource: .PlaceKitten) { image, error in
                
                NSOperationQueue.mainQueue().addOperationWithBlock {
                    self.activityIndicator.stopAnimating()
                }
                
                switch (image, error) {
                    
                case (nil, let error):
                    
                    let alertController = UIAlertController(title: "Error", message: error, preferredStyle: .Alert)
                    let okAction = UIAlertAction(title: "OK", style: .Default, handler: {(_) in })
                    
                    alertController.addAction(okAction)
                    
                    NSOperationQueue.mainQueue().addOperationWithBlock {
                        self.presentViewController(alertController, animated: true, completion: nil)
                    }
                    
                default:
                    self.catImageView.image = image
                }
        }
    }
}

