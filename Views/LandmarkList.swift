//
//  LandmarkList.swift
//  lab6
//
//  Created by Ivanna Malashchuk on 17.03.2026.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks){ landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a landmark to see more information.")
        }
        
    }
}

#Preview {
    LandmarkList()
}
