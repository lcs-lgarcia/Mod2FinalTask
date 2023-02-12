//
//  Mod2FinalTaskApp.swift
//  Mod2FinalTask
//
//  Created by Lucas García on 9/2/23.
//

import SwiftUI

@main
struct Mod2FinalTaskApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                
                    
                    CreateTank()
                        .tabItem{
                            Image(systemName: "cart")
                            Text("Create Tank")
                        }
                    
                    Orders(history: [])
                        .tabItem{
                            Image(systemName: "shippingbox")
                            Text("Orders")
                        }
                    
                   
                }
            
            .accentColor(.blue)
            
        }
        
    }
    
}


