//
//  TabBarView.swift
//  ZeroGame
//
//  Created by Youngseo Yoon on 2022/05/01.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView{
            PlayView()
                .tabItem{
                    Label("Play", systemImage: "gamecontroller.fill")
                }
            TutorialView()
                .tabItem{
                    Label("Tutorial", systemImage: "list.star")
                }
        }.accentColor(.mainOrange)

    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView().preferredColorScheme(.dark)
    }
}

