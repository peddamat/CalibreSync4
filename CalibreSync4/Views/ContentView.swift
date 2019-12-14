//
//  ContentView.swift
//  CalibreSync4
//
//  Created by Sumanth Peddamatham on 12/13/19.
//  Copyright © 2019 Sumanth Peddamatham. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var store = Store.shared
    
    var body: some View {
        Group {
            if !store.setupComplete {
                SetupView().environmentObject(store)
            }
            else {
                AppView().environmentObject(store)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
