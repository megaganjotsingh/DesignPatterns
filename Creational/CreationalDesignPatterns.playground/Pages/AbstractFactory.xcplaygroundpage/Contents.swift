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
