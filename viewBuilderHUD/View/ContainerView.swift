//
//  ContainerView.swift
//  viewBuilderHUD
//
//  Created by Terry Kuo on 2021/4/21.
//

import SwiftUI

struct ContainerView: View {
    var body: some View {
        NavigationView {
            VStack {
                MyContainer {
                    Text("This is container view")
                    Text("This is the second line")
                    Button(action: {}, label: {
                        SFSymbols.star
                    })
                }
                MyContainer(bgColor: .red, fgColor: .yellow) {
                    Text("second Container")
                    Rectangle()
                        .frame(width: 200, height: 50)
                }
                .navigationTitle("Container View")
            }
        }
    }
}

struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
}

