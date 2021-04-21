//
//  MyContainer.swift
//  viewBuilderHUD
//
//  Created by Terry Kuo on 2021/4/21.
//

import SwiftUI


struct MyContainer<Content: View>: View {
    
    let content:Content
    let bgColor: Color
    let fgColor: Color
    init(bgColor:Color = Color.green, fgColor: Color = Color.white, @ViewBuilder content: () -> Content) {
        self.content = content()
        self.bgColor = bgColor
        self.fgColor = fgColor
    }
    
    var body: some View {
        VStack {
            content
                .padding(5)
                
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 30, style: .continuous).fill(bgColor))
        .foregroundColor(fgColor)
        .shadow(radius: 5)
    }
}

struct MyContainer_Preview: PreviewProvider {
    static var previews: some View {
        MyContainer {
            Text("Hello")
            Text("World")
        }.previewLayout(.sizeThatFits)
        
    }
}
