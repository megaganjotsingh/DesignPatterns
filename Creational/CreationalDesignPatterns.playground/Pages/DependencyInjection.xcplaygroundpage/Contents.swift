protocol DataStore {
    func fetchData() -> String
}

class RemoteDateStore: DataStore {
    func fetchData() -> String {
        "fetched data from remote"
    }
}

class LocalDataStore: DataStore {
    func fetchData() -> String {
        "fetched data from local"
    }
}

class DataManager {
    private let dataStore: DataStore
    
    init(datastore: DataStore) {
        self.dataStore = datastore
    }
    
    func fetchData() {
        let fetchedData = dataStore.fetchData()
        print(fetchedData)
    }
}

let localDataManager = DataManager(datastore: LocalDataStore())
localDataManager.fetchData()

let remoteDataManager = DataManager(datastore: RemoteDateStore())
remoteDataManager.fetchData()
