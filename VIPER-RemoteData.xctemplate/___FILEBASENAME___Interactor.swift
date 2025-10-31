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
    var remoteDataManager: ___VARIABLE_ModuleName___RemoteDataManagerInputProtocol?
    
    // MARK: - Input Protocol Methods
    func fetchData() {
        remoteDataManager?.fetchRemoteData()
    }
}

extension ___VARIABLE_ModuleName___Interactor: ___VARIABLE_ModuleName___RemoteDataManagerOutputProtocol {
    
    func didFetchDataSuccess() {
        presenter?.didFetchDataSuccess()
    }
    
    func didFetchDataFailed(error: Error) {
        presenter?.didFetchDataFailed(error: error)
    }
}
