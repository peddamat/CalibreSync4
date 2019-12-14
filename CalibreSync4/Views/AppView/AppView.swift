//
//  TabView.swift
//  CalibreSync4
//
//  Created by Sumanth Peddamatham on 12/13/19.
//  Copyright © 2019 Sumanth Peddamatham. All rights reserved.
//

import SwiftUI

struct AppView: View {
    @State private var selection = 1

    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                    VStack {
                        Image(systemName: "square.grid.3x2.fill")
                        Text("Home")
                    }
            }
            .tag(0)
            LibraryView()
                .tabItem {
                    VStack {
                        Image(systemName: "rectangle.3.offgrid.fill")
                        Text("Library")
                    }
            }
            .tag(1)
        }
        .accentColor(.yellow)
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
