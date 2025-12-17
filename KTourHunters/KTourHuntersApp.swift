//
//  MapAppApp.swift
//  MapApp
//
//  Created by Jason Yoon on 11/17/25.
//

import SwiftUI


@main
struct KTourHuntersApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            // anything that are in this view of a child of this view,
            // will have reference to vm
            LocationsView()
                .environmentObject(vm)
        }
    }
}
