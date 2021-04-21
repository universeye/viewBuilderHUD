//
//  HUDView.swift
//  viewBuilderHUD
//
//  Created by Terry Kuo on 2021/4/21.
//

import SwiftUI

struct HUDView: View {
    @State private var isShowingHud = false
    
    var body: some View {
        NavigationView {
            ZStack {
                if isShowingHud {
                    HUDContainer(isShowingHud: $isShowingHud) {
                        HStack {
                            SFSymbols.star
                            Text("This is HUD View")
                        }
                        
                    }
                }
                Button(action: {
                    isShowingHud.toggle()
                }, label: {
                    Text("Show HUD")
                })
            }
            .navigationTitle("Heads Up Display")
        }
        
    }
}

struct HUDView_Previews: PreviewProvider {
    static var previews: some View {
        HUDView()
    }
}


struct HUDContainer<Content: View>: View {
    
    let content: Content
    @Binding var isShowingHud: Bool
    init(isShowingHud: Binding<Bool>, @ViewBuilder content: () -> Content) {
        self._isShowingHud = isShowingHud
        self.content = content()
    }
    
    var body: some View {
        VStack {
            MyContainer(bgColor: Color(.white), fgColor: Color(.black)) {
                content
            }
            Spacer()
        }
        .zIndex(1) //force the hud always on top
        .transition(.move(edge: .top))
        .animation(.spring())
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                    isShowingHud = false
                }
            }
        }
    }
    
}

