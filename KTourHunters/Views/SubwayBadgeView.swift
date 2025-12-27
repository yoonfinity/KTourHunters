//
//  SwiftUIView.swift
//  KTourHunters
//
//  Created by Jason Yoon on 12/27/25.
//

import SwiftUI

struct SubwayBadgeView: View {
    let subway: SubwayInfo
    
    var body: some View {
        HStack(spacing: 8) {
            Text(subway.lineName)
                .font(.system(size: 12, weight: .bold))
                .foregroundColor(.white)
                .frame(width: 24, height: 24)
                .background(Color(hex: subway.lineColorHex))
                .clipShape(Circle())
                    
            Text(subway.stationName)
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.primary)
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .background(Color(hex: subway.lineColorHex).opacity(0.15))
        .clipShape(Capsule())
    }
}
