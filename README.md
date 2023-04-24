# RatingView
`RatingView` is a customizable SwiftUI view for displaying and interacting with ratings using stars.

# Preview
Here's a screenshot:

<img width="404" alt="Screenshot 2023-04-24 at 6 20 43 PM" src="https://user-images.githubusercontent.com/8961643/234006439-b9ef1005-633b-4207-b4b3-7ac8043061d2.png"> <img width="404" alt="Screenshot 2023-04-24 at 6 21 17 PM" src="https://user-images.githubusercontent.com/8961643/234006496-f786c022-b99b-4c9b-a422-c56dc41dcc96.png">

## Features
- Display a maximum rating with a customizable number of stars.
- Show a rating using filled or empty stars with a customizable star color and size.
- Allow users to interact with the rating by tapping on the stars.
- Customize the rounding of the rating to full or half stars.

## Requirements
- iOS 13.0+ / macOS 10.0+ / tvOS 13.0+ / watchOS 6.0+
- Xcode 12.0+
- Swift 5.3+

## Installation

### Manual
1. Download and unzip the source code.
2. Drag and drop the **"RatingView.swift"** file into your Xcode project
3. Make sure that "Copy items if needed" and your project target are selected
4. Click "Finish" to complete the installation

## Usage
Create a RatingView instance in your view.

```swift
RatingView(maxRating: 5, rating: $rating)
```
You can customize the component by changing the following parameters:

- maxRating: The maximum rating value (default is 5).
- rating: A binding to the current rating value (default is 1).
- starColor: The color of the stars (default is .blue).
- starRounding: The rounding mode for the stars (default is .floorToFullStar).
- size: The size of the stars (default is 20).

Star Rounding
The starRounding parameter specifies how the rating value should be rounded to the nearest half or full star. The available options are:

### Star Rounding
- roundToHalfStar: Round to the nearest half star.
- ceilToHalfStar: Round up to the nearest half star.
- floorToHalfStar: Round down to the nearest half star.
- roundToFullStar: Round to the nearest full star.
- ceilToFullStar: Round up to the nearest full star.
- floorToFullStar: Round down to the nearest full star.

## Examples
The following examples demonstrate how to use the RatingView in different scenarios:

```swift
struct ContentView: View {
    @State private var rating = 3.5
    
    var body: some View {
        VStack {
            RatingView(maxRating: 5, rating: $rating)
                .padding(.bottom, 20)
            
            Text("Rating: \(rating, specifier: "%.1f")")
        }
    }
}
```

or Check out the RatingView_Previews file for examples of how to use RatingView in your SwiftUI app.

## Contact
If you have any questions or feedback, feel free to contact me at **devendra.bhumca12@gmail.com**.
