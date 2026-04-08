//
//  Landmark.swift
//  lab6
//
//  Created by Ivanna Malashchuk on 17.03.2026.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Codable, Hashable, Identifiable{
    let id: Int
    let name: String
    let park: String
    let state: String
    let description: String
    let isFavorite: Bool
    let imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    struct Coordinates: Codable, Hashable {
        let latitude: Double
        let longitude: Double
    }
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
}
