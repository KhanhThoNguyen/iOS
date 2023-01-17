//
//  CircleImage.swift
//  LESwiftUI
//
//  Created by Tho Nguyen on 17/1/2023.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("myImage")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
