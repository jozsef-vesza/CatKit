//
//  CatFetcherService.swift
//  CatKit
//
//  Created by Vesza Jozsef on 02/06/15.
//  Copyright (c) 2015 József Vesza. All rights reserved.
//

import UIKit

/**
    Completion handler for cat image downloads.

    :param: image The downloaded image.
    :param: error Description of a possible error.
*/
public typealias CatCompletionHandler = (image: UIImage?, error: String?) -> Void

/// Service to handle the fetching of cat images.
public struct CatFetcherService {
    
    /**
        Fetch cat images.
        
        :param: width The desired image width.
        :param: height The desired image height.
        :param: source The source of the cat images.
        :param: complete Completion handler closure.
    */
    public static func fetchCatsOfWidth(width: Int, height: Int, fromSource source: CatSource, onComplete complete: CatCompletionHandler) {
        
        let queryString: String
        
        switch source {
        case .PlaceKitten:
            queryString = "\(width)/\(height)"
        }
        
        if let baseUrl = CatSource.urlForCatSource(source), let queryUrl = NSURL(string: queryString, relativeToURL: baseUrl) {
            
            let request = NSURLRequest(URL: queryUrl)
            
            NSURLSession.sharedSession().dataTaskWithRequest(request) { data, response, error in
                
                let image = UIImage(data: data)
                
                switch image {
                case .Some(let image):
                    complete(image: image, error: nil)
                case .None where error != nil:
                    complete(image: nil, error: error.localizedDescription)
                default:
                    complete(image: nil, error: "No image found!")
                }
                
                }.resume()
        }
    }
}