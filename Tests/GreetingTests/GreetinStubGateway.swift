@testable import Greeting

class GreetinStubGateway: GreetinGateway {

    var setupNamesReturn: [String] = []

    func names() -> [String] {
        return setupNamesReturn
    }

}
