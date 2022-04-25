//
//  FructusApp.swift
//  Fructus
//
//  Created by Rajanish Karki on 4/11/22.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnBoardingView()
            } else {
                ContentView()
            }
        }
    }
}
