

import Routing
import Vapor

/// Register your application's routes here.
///
/// [Learn More →](https://docs.vapor.codes/3.0/getting-started/structure/#routesswift)

public func routes(_ router: Router) throws {
    
    //basic get example
    router.get("hello") { req in
        return "Hello, world!"
    }
    
    router.get("rickard") { req in
        return "Rickard was here!"
    }
    
    //Basic Parameter
    router.get("hello", String.parameter) { req -> String in
        let name = try req.parameters.next(String.self)
        return "Hello, \(name)"
    }
    
    //basic post examples
    router.post(InfoData.self, at: "info") { req, data -> InfoResponse in
        return InfoResponse(request: data)
    }
    struct InfoData: Content {
        let name: String
    }
    struct InfoResponse: Content {
        let request: InfoData
    }
    
    // this calls a method (with logic controller file)
    let helloController = HelloController()
    //Basic
    router.get("greet", use: helloController.greet)
    // with a Parameter (test with name of 'Marvin'
    router.get("greet", String.parameter) { req -> String in
        let name = try req.parameters.next(String.self)
        let answer = try helloController.sayHello(name: name)
        return answer
    }
    
    
    
    
}








//Vapor setup (the way fluent was set up from Vapor - ony fluent)
//
//final class Routes: RouteCollection {
//    let view: ViewRenderer
//    init(_ view: ViewRenderer) {
//        self.view = view
//    }
//
//    func build(_ builder: RouteBuilder) throws {
//        /// GET /
//        builder.get { req in
//            return try self.view.make("welcome")
//        }
//
//        /// GET /hello/...
//        builder.resource("hello", HelloController(view))
//
//        // response to requests to /info domain
//        // with a description of the request
//        builder.get("info") { req in
//            return req.description
//        }
//
//    }
//}
