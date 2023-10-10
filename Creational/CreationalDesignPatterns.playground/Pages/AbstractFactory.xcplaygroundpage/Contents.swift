import Foundation

// Abstract factory
protocol RestaurantFactory {
    func createMainCourse() -> MainCourse
    func createDessert() -> Dessert
}

// Abstract products
protocol MainCourse {
    func display()
}

protocol Dessert {
    func display()
}

class ItalianRestaurantFactory: RestaurantFactory {
    func createMainCourse() -> MainCourse {
        ItalianMainCourse()
    }
    
    func createDessert() -> Dessert {
        ItalianDessert()
    }
}

class ItalianMainCourse: MainCourse {
    func display() {
        print("Italian appetizer: Bruschetta")
    }
}

class ItalianDessert: Dessert {
    func display() {
        print("Italian main course: Margherita pizza")
    }
}

class MexicanRestaurantFactory: RestaurantFactory {
    func createMainCourse() -> MainCourse {
        MexicanMainCourse()
    }
    
    func createDessert() -> Dessert {
        MexicanDessert()
    }
}

class MexicanMainCourse: MainCourse {
    func display() {
        print("Mexican main course: Tacos")
    }
}


class MexicanDessert: Dessert {
    func display() {
        print("Mexican dessert: Churros")
    }
}

class FoodDeliveryApp {
    var factory: RestaurantFactory
    
    init(factory: RestaurantFactory) {
        self.factory = factory
    }
    
    func displayMenu() {
        let mainCourse = factory.createMainCourse()
        let dessert = factory.createDessert()
        
        mainCourse.display()
        dessert.display()
    }
}

let italianApp = FoodDeliveryApp(factory: ItalianRestaurantFactory())
let mexicanApp = FoodDeliveryApp(factory: MexicanRestaurantFactory())
italianApp.displayMenu()
mexicanApp.displayMenu()
