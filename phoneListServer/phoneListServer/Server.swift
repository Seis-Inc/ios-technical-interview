//
//  Server.swift
//  phoneListServer
//
//  Created by Matt McMurry on 7/31/23.
//

import Foundation
import Swifter

final class Server: ObservableObject {
    static func start() { _ = shared}
    static var shared = Server()
    let httpServer: HttpServer
    
    @Published var isRunning = false
    @Published var error: Error?
    
    init() {
        let server = HttpServer()
        let numbersObject: [String: [String]] = [
            "phoneNumbers":
                [
                    "+18013601234", //US
                    "+18095648879", //Republica Dominicana
                    "+50422763791", //Honduras
                    "+525585266971",//Mexico
                    "+59173128301", //Boliva
                    "+56522555592", //Chile
                    "+1445",        //Invalid US
                    "+593222"       //Invalid Ecuador
                ]
        ]
        
        let jsonEncoder = JSONEncoder()
        let jsonData = try! jsonEncoder.encode(numbersObject)

        let jsonObject = try! JSONSerialization.jsonObject(with: jsonData, options: [])
        

        server["/phone-numbers"] = { request in
            return .ok(.json(jsonObject))
        }
        httpServer = server
        toggle()
    }
    
    func start() throws {
        try httpServer.start(8181)
        isRunning = true
    }
    
    func stop() throws {
        httpServer.stop()
        isRunning = false
    }
    
    func toggle() {
        do {
            if isRunning {
                try stop()
            } else {
                try start()
            }
        } catch {
            self.error = error
        }
    }
}
