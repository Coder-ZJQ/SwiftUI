//
//  WatchMapView.swift
//  09.Creating-A-watchOS-App(watchOS) Extension
//
//  Created by ZJQ on 2020/7/3.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct WatchMapView: WKInterfaceObjectRepresentable {
    typealias WKInterfaceObjectType = WKInterfaceMap
    
    var landmark: Landmark
    
    func updateWKInterfaceObject(_ wkInterfaceObject: WKInterfaceMap, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        
        let region = MKCoordinateRegion(center: landmark.locationCoordinate, span: span)
        
        wkInterfaceObject.setRegion(region)
    }
    
    func makeWKInterfaceObject(context: Context) -> WKInterfaceMap {
        return WKInterfaceMap()
    }
    
}

struct WatchMapView_Previews: PreviewProvider {
    static var previews: some View {
        WatchMapView(landmark: UserData().landmarks[0])
    }
}
