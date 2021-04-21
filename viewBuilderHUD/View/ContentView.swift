//
//  ContentView.swift
//  viewBuilderHUD
//
//  Created by Terry Kuo on 2021/4/21.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        TabView {
            BasicView()
                .tabItem {
                    SFSymbols.basic
                    Text("Basic")
                }
            
            ContainerView()
                .tabItem {
                    SFSymbols.container
                    Text("Container")
                }
            HUDView()
                .tabItem {
                    SFSymbols.hud
                    Text("HUD")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
