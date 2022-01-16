//
//  LocationListView.swift
//  Nearby
//
//  Created by Srinivasan Rajendran on 2022-01-15.
//

import SwiftUI

struct LocationsListView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<10) { _ in
                    NavigationLink(destination: LocationDetailView()) {
                        LocationListItem()
                    }
                }
            }
            .navigationTitle("Spots")
        }
    }
}

struct LocationsListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsListView()
    }
}

struct AvatarView: View {

    let size: CGFloat

    var body: some View {
        Image("default-avatar")
            .resizable()
            .scaledToFit()
            .frame(width: size, height: size)
            .clipShape(Circle())
    }
}

struct LocationListItem: View {
    var body: some View {
        HStack {
            Image("default-square-asset")
                .resizable()
                .scaledToFit()
                .frame(width: 80)
                .clipShape(Circle())
                .padding(.vertical, 8)

            VStack(alignment: .leading) {
                Text("Location Namesdfsdfsdfsdf dsfsdf")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.75)

                HStack {
                    AvatarView(size: 35)
                    AvatarView(size: 35)
                    AvatarView(size: 35)
                    AvatarView(size: 35)
                }
            }
            .padding(.leading)
        }
    }
}
