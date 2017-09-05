@testable import Greeting

final class GreetinStubGateway: GreetinGateway {

    var setupNamesReturn: [String] = []

    func names() -> [String] {
        return setupNamesReturn
    }

}
