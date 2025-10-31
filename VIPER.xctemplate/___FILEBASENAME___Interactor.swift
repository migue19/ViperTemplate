////

//  ___FILENAME___//  ___FILENAME___

//  ___PROJECTNAME___//  ___PROJECTNAME___

////

//  Created by ___FULLUSERNAME___ on ___DATE___.//  Created by ___FULLUSERNAME___ on ___DATE___.

//  ___COPYRIGHT___//  ___COPYRIGHT___

////



import Foundationimport Foundation



class ___VARIABLE_ModuleName___Interactor: ___VARIABLE_ModuleName___InteractorInputProtocol {class ___VARIABLE_ModuleName___Interactor: ___VARIABLE_ModuleName___InteractorInputProtocol {



    // MARK: Properties    // MARK: Properties

    weak var presenter: ___VARIABLE_ModuleName___InteractorOutputProtocol?    weak var presenter: ___VARIABLE_ModuleName___InteractorOutputProtocol?

        var remoteDataManager: ___VARIABLE_ModuleName___RemoteDataManagerInputProtocol?

    // MARK: - Business Logic Methods    

    func processData() {    // MARK: - Input Protocol Methods

        // TODO: Implement business logic    func fetchData() {

        presenter?.didProcessDataSuccess()        remoteDataManager?.fetchRemoteData()

    }    }

}}

extension ___VARIABLE_ModuleName___Interactor: ___VARIABLE_ModuleName___RemoteDataManagerOutputProtocol {
    
    func didFetchDataSuccess() {
        presenter?.didFetchDataSuccess()
    }
    
    func didFetchDataFailed(error: Error) {
        presenter?.didFetchDataFailed(error: error)
    }
}
