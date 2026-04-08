//
//  LandmarkDetail.swift
//  lab6
//
//  Created by Ivanna Malashchuk on 17.03.2026.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(Font.title)
                HStack {
                    Text(landmark.park)
                        
                    Spacer()
                    Text(landmark.state)
                }
                .font(Font.subheadline)
                .foregroundStyle(.secondary)
                Divider()
                Text("About \(landmark.name)")
                    .font(Font.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)

    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
