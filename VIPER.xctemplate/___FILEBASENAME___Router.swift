////

//  ___FILENAME___//  ___FILENAME___

//  ___PROJECTNAME___//  ___PROJECTNAME___

////

//  Created by ___FULLUSERNAME___ on ___DATE___.//  Created by ___FULLUSERNAME___ on ___DATE___.

//  ___COPYRIGHT___//  ___COPYRIGHT___

////



import Foundationimport Foundation

import UIKitimport UIKit



class ___VARIABLE_ModuleName___Router: ___VARIABLE_ModuleName___RouterProtocol {class ___VARIABLE_ModuleName___Router: ___VARIABLE_ModuleName___RouterProtocol {

    weak var view: ___VARIABLE_ModuleName___VC?    weak var view: ___VARIABLE_ModuleName___VC?

        

    class func create___VARIABLE_ModuleName___Module() -> UIViewController {    class func create___VARIABLE_ModuleName___Module() -> UIViewController {

        let view = ___VARIABLE_ModuleName___VC()        let view = ___VARIABLE_ModuleName___VC()

        let presenter: ___VARIABLE_ModuleName___PresenterProtocol & ___VARIABLE_ModuleName___InteractorOutputProtocol = ___VARIABLE_ModuleName___Presenter()        let presenter: ___VARIABLE_ModuleName___PresenterProtocol & ___VARIABLE_ModuleName___InteractorOutputProtocol = ___VARIABLE_ModuleName___Presenter()

        let interactor: ___VARIABLE_ModuleName___InteractorInputProtocol = ___VARIABLE_ModuleName___Interactor()        let interactor: ___VARIABLE_ModuleName___InteractorInputProtocol & ___VARIABLE_ModuleName___RemoteDataManagerOutputProtocol = ___VARIABLE_ModuleName___Interactor()

        let router: ___VARIABLE_ModuleName___RouterProtocol = ___VARIABLE_ModuleName___Router()        let remoteDataManager: ___VARIABLE_ModuleName___RemoteDataManagerInputProtocol = ___VARIABLE_ModuleName___RemoteDataManager()

                let router: ___VARIABLE_ModuleName___RouterProtocol = ___VARIABLE_ModuleName___Router()

        view.presenter = presenter        

        presenter.view = view        view.presenter = presenter

        presenter.router = router        presenter.view = view

        presenter.interactor = interactor        presenter.router = router

        interactor.presenter = presenter        presenter.interactor = interactor

        router.view = view        interactor.presenter = presenter

                interactor.remoteDataManager = remoteDataManager

        return view        remoteDataManager.remoteRequestHandler = interactor

    }        router.view = view

}        
        return view
    }
}
