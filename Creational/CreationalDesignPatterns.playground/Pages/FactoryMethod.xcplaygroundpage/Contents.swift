protocol AmountSender {
    func sendAmount(_ amount: String)
}

// Concrete DebitCardSender class
class DebitCardSender: AmountSender {
    func sendAmount(_ amount: String) {
        print("Sending amount: \(amount) through debit card")
    }
}

// Concrete UPISender class
class UPISender: AmountSender {
    func sendAmount(_ amount: String) {
        print("Sending amount: \(amount) through upi")
    }
}

// AmountSenderFactory class implementing the Factory Method pattern
class AmountSenderFactory {
    enum SenderType {
        case upi
        case debitCard
    }
    
    static func createAmountSender(type: SenderType) -> AmountSender {
        switch type {
        case .upi:
            return UPISender()
        case .debitCard:
            return DebitCardSender()
        }
    }
}

let sender = AmountSenderFactory.createAmountSender(type: .upi)
sender.sendAmount("200!")
