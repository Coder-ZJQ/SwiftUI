//
//  ContentView.swift
//  09.Creating-A-watchOS-App(watchOS) Extension
//
//  Created by ZJQ on 2020/7/3.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let userData = UserData()
        return LandmarkList {
            WatchLandmarkDetail(landmark: $0)
        }
        .environmentObject(userData)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
