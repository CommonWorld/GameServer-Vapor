

import Routing
import Vapor

/// Register your application's routes here.
///
/// [Learn More →](https://docs.vapor.codes/3.0/getting-started/structure/#routesswift)
public func routes(_ router: Router) throws {
    router.get("hello") { req in
        return "Hello, world!"
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
