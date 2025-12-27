//
//  Location.swift
//  MapApp
//
//  Created by Jason Yoon on 11/17/25.
//

import Foundation
import MapKit

struct SubwayInfo: Identifiable, Codable {
    var id = UUID()
    let stationName: String
    let lineName: String 
    let lineColorHex: String
}

// all of the data for the specific location
struct Location: Identifiable, Equatable {
    let name: String
    let cityName: String
    let nameKorean: String
    let cityNameKorean: String
    let addressKorean: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    let nearbySubways: [SubwayInfo]
    
    // computed var
    // identifiable
    var id: String {
        // name = "Colosseum"
        // cityName = "Rome"
        // id = "ColosseumRome"
        name + cityName
    }
    
    // Equatable
    static func == (lhs: Location, rhs: Location) -> Bool {
        // if two locations have the same id, then they are the same location
        lhs.id == rhs.id
    }
}
