//
//  LandmarkList.swift
//  02.Building-Lists-and-Navigation
//
//  Created by ZJQ on 2020/7/2.
//  Copyright © 2020 www.jokerz.me. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                // https://stackoverflow.com/questions/59217265/navigationlink-freezes-when-trying-to-revisit-previously-clicked-navigationlink/59291574#59291574
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
