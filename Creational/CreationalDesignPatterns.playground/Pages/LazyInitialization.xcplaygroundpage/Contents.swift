class SleepingBeauty {
    init() {
        print("zzzz... Sleeping")
        sleep(2)
        print("Awaken")
    }
}

class DataManager {
    
//    var sleepingBeauty = SleepingBeauty()
    lazy var sleepingBeauty = SleepingBeauty()
    
    init() {
        print("initialized DataManager")
    }
}


//print("Start")
//
//let dataManager = DataManager()

//// // without lazy with SleepingBeauty instance in DataManager class
//  OUTPUT --------------------------------------
//Start
//zzzz... Sleeping
//Awaken
//initialized DataManager

print("Start")
let dataManager = DataManager()
dataManager.sleepingBeauty

//// // lazy with SleepingBeauty instance in DataManager class
//  OUTPUT --------------------------------------

//Start
//initialized DataManager
//zzzz... Sleeping
//Awaken



