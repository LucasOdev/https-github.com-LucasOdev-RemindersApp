//
//  Main.swift
//  Memorize
//
//  Created by Lucas on 03/01/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            Text("Empty")
            .navigationTitle("Reminders")
            .toolbar{
                Button (action : {}) {
                    Image(systemName: "plus")
                    
                    
                }
                
            }
        }
        
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
