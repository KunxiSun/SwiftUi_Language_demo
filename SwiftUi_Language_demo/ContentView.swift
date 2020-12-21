//
//  ContentView.swift
//  SwiftUi_Language_demo
//
//  Created by 孙堃曦 on 21/12/20.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @EnvironmentObject private var userSetting: UserSetting

    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(
                    destination: SettingView(),
                    label: {
                        Text("Setting")
                })
                
                Text("Test")
            }
            
        }.environment(\.locale, .init(identifier: userSetting.language))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
