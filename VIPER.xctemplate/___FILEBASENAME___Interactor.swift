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
    
    // MARK: - Business Logic Methods
    func processData() {
        // TODO: Implement business logic
        presenter?.didProcessDataSuccess()
    }
}
