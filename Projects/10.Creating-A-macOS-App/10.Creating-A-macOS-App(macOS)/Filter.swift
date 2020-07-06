//
//  Filter.swift
//  10.Creating-A-macOS-App(macOS)
//
//  Created by ZJQ on 2020/7/6.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct Filter: View {
    
    @EnvironmentObject private var userData: UserData
    @Binding var filter: FilterType
    
    
    var body: some View {
        HStack {
            
            Picker(selection: $filter, label: EmptyView()) {
                ForEach(FilterType.allCases) {
                    Text($0.name).tag($0)
                }
            }
            
            Spacer()
            
            Toggle(isOn: $userData.showFavoritesOnly) {
                Text("Favorite only")
            }
        }
    }
}

struct Filter_Previews: PreviewProvider {
    static var previews: some View {
        Filter(filter: .constant(.all))
            .environmentObject(UserData())
    }
}

struct FilterType: Hashable, CaseIterable, Identifiable {
    var name: String
    var category: Landmark.Category?
    
    init(_ category: Landmark.Category) {
        self.name = category.rawValue
        self.category = category
    }
    
    init(name: String) {
        self.name = name
        self.category = nil
    }
    
    static var all = FilterType(name: "All")
    
    static var allCases: [FilterType] {
        return [.all] + Landmark.Category.allCases.map(FilterType.init)
    }
    
    var id: FilterType {
        return self
    }
}
