//
//  SFSymbols.swift
//  viewBuilderHUD
//
//  Created by Terry Kuo on 2021/4/21.
//

import Foundation
import SwiftUI

enum SFSymbols: String, View {
    case basic = "1.square.fill"
    case container = "2.square.fill"
    case hud = "3.square.fill"
    case star = "star"
    
    
    var body: some View {
        Image(systemName: self.rawValue)
    }
}
