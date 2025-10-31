//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

class ___VARIABLE_ModuleName___Interactor: ___VARIABLE_ModuleName___InteractorInputProtocol {

    // MARK: Properties
    weak var presenter: ___VARIABLE_ModuleName___InteractorOutputProtocol?
    var localDataManager: ___VARIABLE_ModuleName___LocalDataManagerInputProtocol?
    
    // MARK: - Input Protocol Methods
    func fetchData() {
        localDataManager?.fetchLocalData()
    }
    
    func saveData() {
        localDataManager?.saveLocalData()
    }
    
    func deleteData() {
        localDataManager?.deleteLocalData()
    }
}

extension ___VARIABLE_ModuleName___Interactor: ___VARIABLE_ModuleName___LocalDataManagerOutputProtocol {
    
    func didFetchLocalDataSuccess() {
        presenter?.didFetchDataSuccess()
    }
    
    func didFetchLocalDataFailed(error: Error) {
        presenter?.didFetchDataFailed(error: error)
    }
    
    func didSaveLocalDataSuccess() {
        presenter?.didSaveDataSuccess()
    }
    
    func didSaveLocalDataFailed(error: Error) {
        presenter?.didSaveDataFailed(error: error)
    }
    
    func didDeleteLocalDataSuccess() {
        presenter?.didDeleteDataSuccess()
    }
    
    func didDeleteLocalDataFailed(error: Error) {
        presenter?.didDeleteDataFailed(error: error)
    }
}
