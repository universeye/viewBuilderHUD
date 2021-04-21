//
//  BasicView.swift
//  viewBuilderHUD
//
//  Created by Terry Kuo on 2021/4/21.
//

import SwiftUI

struct BasicView: View {
    
    @State private var isSquare = true
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    isSquare.toggle()
                }, label: {
                    squareOrCircle()
                    //SquareOrCircle(isSquare: $isSquare)
                })
            }
            .navigationTitle("The Basic")
        }
        
    }
}

//struct SquareOrCircle: View {
//    @Binding var isSquare: Bool
//
//    var body: some View {
//        if isSquare {
//            RoundedRectangle(cornerRadius: 10)
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//        } else {
//            Circle()
//                .fill(Color.red)
//                .frame(width: 100, height: 100)
//        }
//    }
//}

extension BasicView {
    @ViewBuilder
    func squareOrCircle() -> some View {
        if isSquare {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.green)
                .frame(width: 100, height: 100)
        } else {
            Circle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
        }
    }
}

struct BasicView_Previews: PreviewProvider {
    static var previews: some View {
        BasicView()
    }
}
