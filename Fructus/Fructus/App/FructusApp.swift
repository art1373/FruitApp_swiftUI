//
//  FructusApp.swift
//  Fructus
//
//  Created by Alireza TK on 4/30/21.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboading : Bool = true
    
    var body: some Scene {
        
        WindowGroup {
            if isOnboading {
                OnboardingView()
            }else{
                ContentView()
            }
        }
    }
}
