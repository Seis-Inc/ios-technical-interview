//
//  ContentView.swift
//  phoneListServer
//
//  Created by Matt McMurry on 7/31/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var server = Server.shared
    
    var title: String {
        server.isRunning ? "Stop Server" : "Start Server"
    }
    
    var body: some View {
        VStack {
            if let error = server.error {
                Text(error.localizedDescription)
            }
            
            if server.isRunning {
                Text("GET http://localhost:8181/phone-numbers")
            }
            
            Button(title, action: { server.toggle() })
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
