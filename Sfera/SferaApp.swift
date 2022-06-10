//
//  SferaApp.swift
//  Sfera
//
//  Created by Fabiola Llanes on 09/06/22.
//

import SwiftUI

@main
struct SferaApp: App {
    var body: some Scene {
        WindowGroup {
          
            SplashView().modifier(DarkModeViewModifier())
            
        }
    }
}
