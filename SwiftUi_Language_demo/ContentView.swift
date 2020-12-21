//
//  ContentView.swift
//  SwiftUi_Language_demo
//
//  Created by 孙堃曦 on 21/12/20.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State var identifier = "en"

    var body: some View {
        VStack {
            Button("Chinese", action: {
                self.identifier = "zh-Hans"
            })
            Button("English", action: {
                self.identifier = "en"
            })
            Text("Test")
        }
        .environment(\.locale, .init(identifier: identifier))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
