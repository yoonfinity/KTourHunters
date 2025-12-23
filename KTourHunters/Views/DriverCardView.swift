//
//  ShowToDriverView.swift
//  MapApp
//
//  Created by Jason Yoon on 12/5/25.
//

import SwiftUI

struct DriverCardView: View {
    
    let location: Location
    
    var body: some View {
        VStack(spacing: 24) {
            Text("기사님, 여기로 가주세요🙏")
                .font(.title)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            
            VStack(spacing: 8) {
                Text(location.nameKorean)
                    .font(.system(size: 60, weight: .bold))
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .minimumScaleFactor(0.6)
                Text(location.cityNameKorean)
                    .font(.title)
                    .foregroundStyle(.secondary)
            }
        }
        .padding()
    }
}

#Preview {
    DriverCardView(location: LocationsDataService.locations.first!).environmentObject(LocationsViewModel())
}
