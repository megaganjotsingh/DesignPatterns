
import UIKit

// Step 1: Create a protocol that defines the clone method
protocol UserClonable {
  func clone() -> Self
}

// Step 2: Create a concrete class that adopts the clonable protocol
final class User: UserClonable {
  private(set) var username: String
  private(set) var bio: String

  init(username: String, bio: String) {
    self.username = username
    self.bio = bio
  }

  // Step 3: Implement the clone method to create a copy of the object
  func clone() -> User {
    let clone = User(username: self.username, bio: self.bio)
    return clone
  }

  func customize(username: String, bio: String) -> User {
    let clone = self.clone()
    clone.username = username
    clone.bio = bio
    return clone
  }
}

// Step 4: Usage
let defaultUser = User(username: "DefaultUser",
                             bio: "This is a default bio.")

let user1 = defaultUser.customize(username: "User1",
                                                    bio: "This is User1's bio.")
                                                    