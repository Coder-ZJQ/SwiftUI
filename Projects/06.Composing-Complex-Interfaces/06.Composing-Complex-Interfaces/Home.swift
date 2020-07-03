//
//  Home.swift
//  06.Composing-Complex-Interfaces
//
//  Created by ZJQ on 2020/7/3.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    
    @State var showingPrifile = false
    
    var categories: [String: [Landmark]] {
        Dictionary(grouping: landmarkData, by: { $0.category.rawValue })
    }
    
    var featured: [Landmark] {
        landmarkData.filter {
            $0.isFeatured
        }
    }
    
    var profileButton: some View {
        Button(action: {
            self.showingPrifile.toggle()
        }) {
            Image(systemName: "person.crop.circle")
                .imageScale(.large)
                .accessibility(label: Text("User Profile"))
                .padding()
        }
    }
    var body: some View {
        NavigationView {
            List {
                FeaturedLandMarks(landmarks: featured)
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: self.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
                
                NavigationLink(destination: LandmarkList().environmentObject(UserData())) {
                    Text("See All")
                }
            }
            .navigationBarTitle(Text("Featured"))
            .navigationBarItems(trailing: profileButton)
            .sheet(isPresented: $showingPrifile) {
                Text("User Profile")
            }
        }
    }
}

struct FeaturedLandMarks: View {
    var landmarks: [Landmark]
    var body: some View {
        landmarks[0].image.resizable()
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
