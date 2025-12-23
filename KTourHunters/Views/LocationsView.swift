//
//  LocationsView.swift
//  MapApp
//
//  Created by Jason Yoon on 11/18/25.
//

/*
 @StateObject → creates the view model
 @ObservedObject → receives a view model via initializer
 @EnvironmentObject → expects a parent to inject the view model into the environment
 */

import SwiftUI
import MapKit

struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    let maxWidthForIpad: CGFloat = 700
    
    // adding for initial fade in
    @State private var hasAppeared = false
    
    var body: some View {
            ZStack {
                mapLayer
                    .ignoresSafeArea()
                
                VStack (spacing: 0) {
                    header
                        .padding()
                        .frame(maxWidth: maxWidthForIpad)
                    
                    Spacer()
                    locationsPreviewStack
                }
            }
            .opacity(hasAppeared ? 1 : 0)
            .scaleEffect(hasAppeared ? 1 : 0.98)
            .animation(.easeOut(duration: 0.5), value: hasAppeared)
            .onAppear {
                hasAppeared = true
            }
            .sheet(item: $vm.sheetLocation, onDismiss: nil) { location in
                LocationDetailView(location: location)
            }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}

// using extension to keep the body clean
extension LocationsView {
    
    private var header: some View {
        VStack {
            Button(action: vm.toggleLocationsList) {
                HStack {
                    Image(systemName: "arrow.down")
                        .font(.headline)
                        .foregroundStyle(.primary)
                        .padding()
                        .rotationEffect(Angle(degrees:
                                                vm.showLocationsList ? 180: 0))
                        .foregroundStyle(Color.primary)
                    Text(vm.mapLocation.name + ", " + vm.mapLocation.cityName)
                        .font(.title2)
                        .fontWeight(.black)
                        .lineLimit(3)
                        .frame(maxWidth: .infinity)
                        .animation(.none, value: vm.mapLocation)
                        .foregroundStyle(Color.primary)
                    Spacer()
                }
            }
            if vm.showLocationsList {
                LocationsListView()
            }
        }
        .background(.thickMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y : 15)
    }
    
    private var mapLayer: some View {
        Map(position: $vm.mapRegion) {
            ForEach(vm.locations) { location in
                Annotation(location.name, coordinate: location.coordinates) {
                    LocationMapAnnotationView()
                        .scaleEffect(vm.mapLocation == location ? 1 : 0.7)
                        .shadow(radius: 10)
                        .onTapGesture {
                            vm.showNextLocation(location: location)
                        }
                }
            }
        }
    }
    
    private var locationsPreviewStack: some View {
        ZStack {
            ForEach(vm.locations) { location in
                
                // vm.mapLocation is the current selected 
                if vm.mapLocation == location {
                    LocationPreviewView(location: location)
                        .shadow(color: Color.black.opacity(0.3), radius: 20)
                        .padding()
                        .frame(maxWidth: maxWidthForIpad)
                        // adding this so the transition is based on .inifinity
                        .frame(maxWidth: .infinity)
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing),
                            removal: .move(edge: .leading)))
                }
            }
        }
    }
}
