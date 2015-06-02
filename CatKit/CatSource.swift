//
//  CatSource.swift
//  CatKit
//
//  Created by Vesza Jozsef on 02/06/15.
//  Copyright (c) 2015 József Vesza. All rights reserved.
//

import UIKit

/**
    Enum type for representing sources of cat pictures.

    - PlaceKitten: Download from placekitten.com.
*/
public enum CatSource {
    
    case PlaceKitten
    
    /**
        Resolve the URLs of the given source.
    
        :param: source The desired source.
        
        :returns: An Optional NSURL instance with the resolved URL.
    */
    public static func urlForCatSource(source: CatSource) -> NSURL? {
        
        switch source {
        case .PlaceKitten:
            return NSURL(string: "http://placekitten.com/g/")
        }
    }
}