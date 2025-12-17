//
//  LocationsViewModel.swift
//  MapApp
//
//  Created by Jason Yoon on 11/18/25.
//

import Foundation
import MapKit
import SwiftUI

// making this ObservableObject because we need to observe it from the View
class LocationsViewModel: ObservableObject {
    
    // All loaded locations
    @Published var locations: [Location]
    
    // Current location on the map
    @Published var mapLocation: Location {
        // every time we set the value for map location we are then going to call updateMapRegion
        didSet {
            updateMapRegion(location: mapLocation)
        }
    }
    
//    @Published var mapRegion = MapCameraPosition.region(MKCoordinateRegion(
//        center: CLLocationCoordinate2DMake(37.575832, 126.973857),
//        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
//    ))
    
    // with didSet above, we never need to update this manually again
    // if we change mapLocation, the map should update automatically
    
    // current region on map
    @Published var mapRegion = MapCameraPosition.region(MKCoordinateRegion())
                                                        
    let mapSpan = MKCoordinateSpan(
        latitudeDelta: 0.025,
        longitudeDelta: 0.025)
    
    // Show list of locations
    @Published var showLocationsList: Bool = false
    
    // Show location detail via sheet
    // nil because we don't want the pop up to show when we start the app
    @Published var sheetLocation: Location? = nil
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        // explicit unwrap -> we know it's never going to fail because there will always be the first item we hard coded.
        self.mapLocation = locations.first!
        self.updateMapRegion(location: locations.first!)
    }
    
    private func updateMapRegion(location: Location) {
        withAnimation(.easeInOut) {
            mapRegion = MapCameraPosition.region(MKCoordinateRegion(
                    center: location.coordinates,
                    span: mapSpan)
                )
        }
    }
    
    func toggleLocationsList() {
        withAnimation(.easeInOut) {
            showLocationsList = !showLocationsList
        }
    }
    
    func showNextLocation(location: Location) {
        withAnimation(.easeInOut) {
            mapLocation = location
            showLocationsList = false
        }
    }
    
    func nextButtonPressed() {
        

//        let currentIdex = locations.firstIndex { location in
//                return location == mapLocation
//        }
        
        // get the current index
        // $0 is the "location" from above
        guard let currentIndex = locations.firstIndex(where: { $0 == mapLocation }) else {
            print("Could not find current index in locations array! Should never happen.")
            return
        }
        
        // check if currentIndex is valid
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
            // next index is NOT valid
            // restart from 0
            guard let firstLocation = locations.first else { return }
            showNextLocation(location: firstLocation)
            return
        }
        
        // next index is valid
        // we can do this because we already checked there will be nextIndex
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
    }
}
