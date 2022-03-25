//
//  ContentView.swift
//  LaboKadai
//
//  Created by 菅原 惇 on 2022/03/24.
//


import SwiftUI
import MapKit

struct ContentView: View {
    @ObservedObject var manager = LocationManager()
    @State var trackingMode = MapUserTrackingMode.follow

    var body: some View {
        Map(coordinateRegion: $manager.region,
            showsUserLocation: true,
            userTrackingMode: $trackingMode)
            .edgesIgnoringSafeArea(.bottom)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
