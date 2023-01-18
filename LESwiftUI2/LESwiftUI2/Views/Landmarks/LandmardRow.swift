//
//  LandmardRow.swift
//  LESwiftUI2
//
//  Created by Tho Nguyen on 17/1/2023.
//

import SwiftUI

struct LandmardRow: View {
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
            
        }
    }
}

struct LandmardRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        Group {
            LandmardRow(landmark: landmarks[0])
            LandmardRow(landmark: landmarks[1])
        }
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
