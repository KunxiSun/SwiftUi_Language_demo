//
//  SettingView.swift
//  SwiftUi_Language_demo
//
//  Created by 孙堃曦 on 21/12/20.
//

import SwiftUI

struct SettingView: View {
    
    @EnvironmentObject var userSetting: UserSetting
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        VStack {
            Button("Chinese", action: {
                userSetting.language = "zh-Hans"
                self.presentationMode.wrappedValue.dismiss()            })
            Button("English", action: {
                userSetting.language = "en"
                self.presentationMode.wrappedValue.dismiss()            })

        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
