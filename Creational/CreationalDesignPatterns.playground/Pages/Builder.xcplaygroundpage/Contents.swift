
// Car Model


struct Car {
    let name: String
    let model: String
    let color: String
    let numberOfDoors: Int
}

enum CarBuilderError: Error {
    case insufficientData(forCarName: String)
}

extension CarBuilderError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .insufficientData(let carName):
            return "Please include all properties for \(carName)"
        }
    }
}

class CarBuilder {
    private var name: String?
    private var model: String?
    private var color: String?
    private var numberOfDoors: Int?
    
    func setName(_ name: String) -> Self {
        self.name = name
        return self
    }
    
    func setModel(_ model: String) -> Self {
        self.model = model
        return self
    }
    
    func setColor(_ color: String) -> Self {
        self.color = color
        return self
    }
    
    func setNumberOfDoors(_ number: Int) -> Self {
        self.numberOfDoors = number
        return self
    }
    
    func build() throws -> Car {
        guard let name = name,
              let model = model,
              let color = color,
              let numberOfDoors = numberOfDoors else {
            throw CarBuilderError.insufficientData(forCarName: name ?? "Please provide name")
        }
        
        return Car(
            name: name,
            model: model,
            color: color,
            numberOfDoors: numberOfDoors
        )
    }
}

 do {
     let suzukiCarBuilder = try CarBuilder()
        .setName("Brezza")
        .setModel("2023")
        .setColor("White")
        .build()
     
     let suzukiCarBuilder2 = try CarBuilder()
        .setName("Dzire")
        .setModel("2023")
        .setColor("White")
        .setNumberOfDoors(4)
        .build()

 } catch let error {
     print(error.localizedDescription)
 }

