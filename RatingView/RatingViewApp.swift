//
//  RatingViewApp.swift
//  RatingView
//
//  Created by Devendra Kumar on 24/04/23.
//

import SwiftUI

@main
struct RatingViewApp: App {
    @State var rating: Double = 3
    
    var body: some Scene {
        WindowGroup {
            Text("Rating: \(String(format: "%.1f", rating))")
            RatingView(maxRating: 5, rating: $rating, starColor: .blue, starRounding: .roundToHalfStar)
                .padding()
        }
    }
}
