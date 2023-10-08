//: [Previous](@previous)

import Foundation

final class SingletonClass {
    static let shared = SingletonClass()

    private init() { }

    func printSomething() {
        print("printSomething method called from shared instance")
    }
}

let singleton = SingletonClass.shared

singleton.printSomething()
