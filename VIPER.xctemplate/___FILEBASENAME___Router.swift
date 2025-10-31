//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit

class ___VARIABLE_ModuleName___Router: ___VARIABLE_ModuleName___RouterProtocol {
    weak var view: ___VARIABLE_ModuleName___VC?
    
    class func create___VARIABLE_ModuleName___Module() -> UIViewController {
        let view = ___VARIABLE_ModuleName___VC()
        let presenter: ___VARIABLE_ModuleName___PresenterProtocol & ___VARIABLE_ModuleName___InteractorOutputProtocol = ___VARIABLE_ModuleName___Presenter()
        let interactor: ___VARIABLE_ModuleName___InteractorInputProtocol = ___VARIABLE_ModuleName___Interactor()
        let router: ___VARIABLE_ModuleName___RouterProtocol = ___VARIABLE_ModuleName___Router()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        router.view = view
        
        return view
    }
}
