//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

class ___VARIABLE_ModuleName___Presenter  {
    
    // MARK: Properties
    weak var view: ___VARIABLE_ModuleName___ViewProtocol?
    var interactor: ___VARIABLE_ModuleName___InteractorInputProtocol?
    var router: ___VARIABLE_ModuleName___RouterProtocol?
    
}

extension ___VARIABLE_ModuleName___Presenter: ___VARIABLE_ModuleName___PresenterProtocol {
    // TODO: implement presenter methods
    func viewDidLoad() {
    }
}

extension ___VARIABLE_ModuleName___Presenter: ___VARIABLE_ModuleName___InteractorOutputProtocol {
    
    func didFetchDataSuccess() {
        // TODO: Handle successful data fetch
        // Update view with data
    }
    
    func didFetchDataFailed(error: Error) {
        // TODO: Handle data fetch error
        // Show error message to user
    }
}
