//
//  LandmarkList.swift
//  10.Creating-A-macOS-App(macOS)
//
//  Created by ZJQ on 2020/7/6.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject private var userData: UserData
    @Binding var selectedLandmark: Landmark?
    @Binding var filter: FilterType
    
    
    var body: some View {
        List(selection: $selectedLandmark) {
            ForEach(userData.landmarks) {
                if (!self.userData.showFavoritesOnly || $0.isFavorite) && (self.filter == .all || self.filter.category == $0.category || (self.filter.category == .featured && $0.isFeatured)) {
                    LandmarkRow(landmark: $0).tag($0)
                }
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList(selectedLandmark: .constant(landmarkData[0]), filter: .constant(.all))
        .environmentObject(UserData())
    }
}
