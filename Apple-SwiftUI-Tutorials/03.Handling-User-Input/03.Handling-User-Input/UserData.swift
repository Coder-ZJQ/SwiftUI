//
//  UserData.swift
//  03.Handling-User-Input
//
//  Created by ZJQ on 2020/7/2.
//  Copyright © 2020 Apple. All rights reserved.
//

import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
