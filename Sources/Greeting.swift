final class Greeting {

    private let gateway: GreetinGateway

    init(gateway: GreetinGateway) {
        self.gateway = gateway
    }

    func greet() -> String {
        let names = gateway.names()

        var joinedNames = ""
        if names.count > 1 {
            joinedNames = names[0..<names.count-1].joined(separator: ", ")
            joinedNames = " \(joinedNames)" + " e \(names.last!)"
        } else if names.count == 1 {
            joinedNames = " \(names.first!)"
        }

        return "Olá\(joinedNames)!"
    }

}
