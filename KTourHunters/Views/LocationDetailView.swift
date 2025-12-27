//
//  LocationDetailView.swift
//  MapApp
//
//  Created by Jason Yoon on 11/28/25.
//

import SwiftUI
import MapKit

struct LocationDetailView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    let location: Location
    @State private var isShowingDriverSheet = false
    @State private var isCopied = false
    @State private var showMapAlert = false
    
    // test var to test copy/paste
    @State private var testPaste = ""
    
    var body: some View {
        ScrollView {
            VStack {
                imageSection
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
                
                VStack(alignment: .leading, spacing: 16) {
                    titleSection
                    Divider()
                    descriptionSection
                    // TextField("Paste here to test", text: $testPaste)
                    Divider()
                    mapLayer
                    
                    Divider()
                    VStack(spacing: 10) {
                        showDriver
                        openMapButton
                    }
                    copyAddressKor
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }
        }
        .ignoresSafeArea()
        .background(.ultraThinMaterial)
        .overlay(backButton, alignment: .topLeading)
        
        .sheet(isPresented: $isShowingDriverSheet) {
            DriverCardView(location: location)
                .presentationDetents([.height(250), .medium, .large])
                .presentationDragIndicator(.visible)
        }
        
        .confirmationDialog("Choose Map", isPresented: $showMapAlert) {
            Button("Download Naver Map (Recommended)") {
                if let url = URL(string: "itms-apps://itunes.apple.com/app/id311867728") {
                                    UIApplication.shared.open(url)
                }
            }
            Button("Open Apple Maps (No Navigation)") {
                let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: location.coordinates))
                mapItem.name = location.name
                mapItem.openInMaps(launchOptions: nil)
            }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Naver Map is recommended for walking & transit directions in South Korea.\n\nGlobal maps (Apple/Google) generally do not support turn-by-turn navigation here.")
        }
    }
}

#Preview {
    LocationDetailView(location: LocationsDataService.locations.first!)
        .environmentObject(LocationsViewModel())
}

extension LocationDetailView {
    private var imageSection: some View {
        TabView {
            ForEach(location.imageNames, id: \.self) {
                Image($0)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIDevice.current.userInterfaceIdiom == .pad ? nil : UIScreen.main.bounds.width)
                    .clipped()
            }
        }
        .frame(height: 500)
        .tabViewStyle(PageTabViewStyle())
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 8) {
                Text(location.name)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text(location.cityName)
                    .font(.title3)
                    .foregroundStyle(Color.secondary)
            }
    }
    
    private var descriptionSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(location.description)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            
            if let url = URL(string: location.link) {
                Link("Learn more about this landmark", destination: url)
                    .font(.headline)
                    .tint(.blue)
            }
        }
    }
    
    private var mapLayer: some View {
        Map(position: .constant(
            .region(
                MKCoordinateRegion(
                    center: location.coordinates,
                    span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                )
            )
        )
        ) {
            Annotation("", coordinate: location.coordinates) {
                LocationMapAnnotationView()
                    .shadow(radius:10)
            }
        }
        // don't want users to drag around the map
        .allowsHitTesting(false)
        .aspectRatio(1, contentMode: .fit)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
    
    private var showDriver: some View {
        Button {
            isShowingDriverSheet = true
            
        } label: {
            HStack {
                Image(systemName: "car.fill")
                Text("Show to Driver")
            }
            .font(.headline)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.blue)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
        }
    }
    
    private var openMapButton: some View {
        Button {
            let latitude = location.coordinates.latitude
            let longitude = location.coordinates.longitude
            let encodedName = location.name.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
            let appBundleId = Bundle.main.bundleIdentifier ?? "com.mapapp"
                
            // Naver Map URL Scheme
            let naverUrlString = "nmap://place?lat=\(latitude)&lng=\(longitude)&name=\(encodedName)&appname=\(appBundleId)"
            
            // print("DEBUG: Generated URL -> \(naverUrlString)")
                
            if let naverUrl = URL(string: naverUrlString), UIApplication.shared.canOpenURL(naverUrl) {
                // Happy Path: Open Naver
                UIApplication.shared.open(naverUrl, options: [:], completionHandler: nil)
            } else {
                // Sad Path: Trigger Alert
                showMapAlert = true
            }
        } label: {
            HStack {
                Image(systemName: "map.fill")
                Text("Get Directions (Naver Map)")
            }
            .font(.headline)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.green) // Naver Brand Color
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
        }
    }
    
    private var copyAddressKor: some View {
        
        HStack(alignment: .center, spacing: 12) {
            // fill the blank space with the actual address text
            VStack(alignment: .leading, spacing: 2) {
                Text("Address (Korean)")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    
                Text(location.addressKorean)
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .lineLimit(1) // Keep it clean, or 2 if addresses are long
                    .minimumScaleFactor(0.9)
            }
                
            Spacer()
                
            Button {
                UIPasteboard.general.string = location.addressKorean
                    
                let generator = UINotificationFeedbackGenerator()
                generator.notificationOccurred(.success)
                    
                withAnimation { isCopied = true }
                    
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation { isCopied = false }
                }
            } label: {
                Image(systemName: isCopied ? "checkmark" : "doc.on.doc")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(isCopied ? .green : .blue)
                    .padding(10)
                    .background(isCopied ? Color.green.opacity(0.1) : Color.blue.opacity(0.1))
                    .clipShape(Circle()) // Make it a circular icon button
            }
        }
        .padding()
        .background(Color.primary.opacity(0.05)) // Light gray container
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
    
    private var backButton: some View {
        Button {
            // once it's Nil, it knows to dismiss the sheet
            vm.sheetLocation = nil
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
                .padding(16)
                .foregroundStyle(Color.primary)
                .background(.thickMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 4)
                .padding()
        }
    }
}
