protocol GreetinGateway {
    func names() -> [String]
}

struct Greeting {

    private let gateway: GreetinGateway

    init(gateway: GreetinGateway) {
        self.gateway = gateway
    }

    func greet() -> String {
        let names = gateway.names()

        if names.isEmpty {
            return "Olá!"
        }

        let hi = "Olá"

        var joinedNames = names.first!
        if names.count > 1 {
            joinedNames = names[0..<names.count-1].joined(separator: ", ")
            return hi + " \(joinedNames)" + " e \(names.last!)!"
        }
        return hi + " \(joinedNames)!"

    }

}
