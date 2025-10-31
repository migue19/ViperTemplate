////

//  ___FILENAME___//  ___FILENAME___

//  ___PROJECTNAME___//  ___PROJECTNAME___

////

//  Created by ___FULLUSERNAME___ on ___DATE___.//  Created by ___FULLUSERNAME___ on ___DATE___.

//  ___COPYRIGHT___//  ___COPYRIGHT___

////



import Foundationimport Foundation

import UIKitimport UIKit

// PRESENTER -> VIEW

// PRESENTER -> VIEWprotocol ___VARIABLE_ModuleName___ViewProtocol: AnyObject {

protocol ___VARIABLE_ModuleName___ViewProtocol: AnyObject {    var presenter: ___VARIABLE_ModuleName___PresenterProtocol? { get set }

    var presenter: ___VARIABLE_ModuleName___PresenterProtocol? { get set }}

}// PRESENTER -> ROUTER

protocol ___VARIABLE_ModuleName___RouterProtocol: AnyObject {

// PRESENTER -> ROUTER    var view: ___VARIABLE_ModuleName___VC? { get set }

protocol ___VARIABLE_ModuleName___RouterProtocol: AnyObject {    static func create___VARIABLE_ModuleName___Module() -> UIViewController

    var view: ___VARIABLE_ModuleName___VC? { get set }}

    static func create___VARIABLE_ModuleName___Module() -> UIViewController// VIEW -> PRESENTER

}protocol ___VARIABLE_ModuleName___PresenterProtocol: AnyObject {

    var view: ___VARIABLE_ModuleName___ViewProtocol? { get set }

// VIEW -> PRESENTER    var interactor: ___VARIABLE_ModuleName___InteractorInputProtocol? { get set }

protocol ___VARIABLE_ModuleName___PresenterProtocol: AnyObject {    var router: ___VARIABLE_ModuleName___RouterProtocol? { get set }

    var view: ___VARIABLE_ModuleName___ViewProtocol? { get set }    

    var interactor: ___VARIABLE_ModuleName___InteractorInputProtocol? { get set }    func viewDidLoad()

    var router: ___VARIABLE_ModuleName___RouterProtocol? { get set }}

    // INTERACTOR -> PRESENTER

    func viewDidLoad()protocol ___VARIABLE_ModuleName___InteractorOutputProtocol: AnyObject {

    func processUserAction()    func didFetchDataSuccess()

}    func didFetchDataFailed(error: Error)

}

// INTERACTOR -> PRESENTER// PRESENTER -> INTERACTOR

protocol ___VARIABLE_ModuleName___InteractorOutputProtocol: AnyObject {protocol ___VARIABLE_ModuleName___InteractorInputProtocol: AnyObject {

    func didProcessDataSuccess()    var presenter: ___VARIABLE_ModuleName___InteractorOutputProtocol? { get set }

}    var remoteDataManager: ___VARIABLE_ModuleName___RemoteDataManagerInputProtocol? { get set }

    

// PRESENTER -> INTERACTOR    func fetchData()

protocol ___VARIABLE_ModuleName___InteractorInputProtocol: AnyObject {}

    var presenter: ___VARIABLE_ModuleName___InteractorOutputProtocol? { get set }// INTERACTOR -> REMOTEDATAMANAGER

    protocol ___VARIABLE_ModuleName___RemoteDataManagerInputProtocol: AnyObject {

    func processData()    var remoteRequestHandler: ___VARIABLE_ModuleName___RemoteDataManagerOutputProtocol? { get set }

}    
    func fetchRemoteData()
}
// REMOTEDATAMANAGER -> INTERACTOR
protocol ___VARIABLE_ModuleName___RemoteDataManagerOutputProtocol: AnyObject {
    func didFetchDataSuccess()
    func didFetchDataFailed(error: Error)
}
