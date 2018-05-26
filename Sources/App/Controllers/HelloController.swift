//
//  new.swift
//  GameServer
//
//  Created by Rob Rickard on 5/25/18.
//

import Vapor

final class HelloController {
    
    var name = "" //added for more example code not yet added
    
    func greet(_ req: Request) throws -> String {
        let answer = self.makeThisWork()
        return answer
    }
    
    func sayHello(name:String) throws -> String {
        var answer = "Hello, \(name)"
        if name == "Marvin" {
            answer = "Hello, \(name)! You are a good developer."
        }
        return answer
    }
    
    private func makeThisWork() -> String {
        let words = "Hey\(name), this worked - from a method in a class"
        return words
    }
    
    
    
    
}

