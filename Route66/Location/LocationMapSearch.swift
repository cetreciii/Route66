//
//  LocationMap.swift
//  Route66
//
//  Created by Igor Tarantino on 18/12/24.
//

import SwiftUI
import MapKit
import CoreLocation

struct LocationMapSearch: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 40.83652, longitude: 14.30635),
        span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
    )
    
    @State private var searchQuery: String = ""
    @State private var searchResults: [MKMapItem] = []
    
    var body: some View {
        
        ZStack {
            
            Map(coordinateRegion: $region, showsUserLocation: true)
                .edgesIgnoringSafeArea(.all)
            
            TextField("Search for a location", text: $searchQuery, onCommit: {
                performSearch()
            })
            .padding()
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.top)
            .frame(maxHeight: .infinity, alignment: .top)
        }
    }
    
    func performSearch() {
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = searchQuery
        
        let search = MKLocalSearch(request: request)
        search.start { response, error in
            if let error = error {
                print("Search failed: \(error.localizedDescription)")
                return
            }
            
            if let mapItems = response?.mapItems, !mapItems.isEmpty {
                let firstItem = mapItems.first!
                region.center = firstItem.placemark.coordinate
            } else {
                print("No results found.")
            }
        }
    }
}

#Preview {
    LocationMapSearch()
}
