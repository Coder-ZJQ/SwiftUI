//
//  CircleImage.swift
//  SwiftUI-Demo
//
//  Created by ZJQ on 2020/7/2.
//  Copyright © 2020 www.jokerz.me. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
