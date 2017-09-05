import XCTest
@testable import Greeting

class GreetingTests: XCTestCase {

    private var greeting: Greeting!
    private var gateway: GreetinStubGateway!

    override func setUp() {
        gateway = GreetinStubGateway()
        greeting = Greeting(gateway: gateway)
    }

    func testGreetWhenHaveNotNamesThenReturnSimpleGreetMessage() {
        gateway.setupNamesReturn = []
        let greetMessage = greeting.greet()

        XCTAssertEqual(greetMessage, "Olá!")
    }

    func testGreetWhenHaveOneNameThenReturnGreetMessageForOneName() {
        gateway.setupNamesReturn = ["Ronan"]
        let greetMessage = greeting.greet()

        XCTAssertEqual(greetMessage, "Olá Ronan!")
    }

    func testGreetWhenHaveTwoNamesThenReturnGreetMessageForTwoNames() {
        gateway.setupNamesReturn = ["Ronan", "Sergio"]
        let greetMessage = greeting.greet()

        XCTAssertEqual(greetMessage, "Olá Ronan e Sergio!")
    }

    func testGreetWhenHaveThreeNamesThenReturnGreetMessageForThreeNames() {
        gateway.setupNamesReturn = ["Ronan", "Sergio", "Vinicius"]
        let greetMessage = greeting.greet()

        XCTAssertEqual(greetMessage, "Olá Ronan, Sergio e Vinicius!")
    }

    func testGreetWhenHaveTwoEqualNamesThenReturnGreetMessageForTwoNames() {
        gateway.setupNamesReturn = ["Ronan", "Ronan"]
        let greetMessage = greeting.greet()

        XCTAssertEqual(greetMessage, "Olá Ronan e Ronan!")
    }

}
