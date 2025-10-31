//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit
// PRESENTER -> VIEW
protocol ___VARIABLE_ModuleName___ViewProtocol: AnyObject {
    var presenter: ___VARIABLE_ModuleName___PresenterProtocol? { get set }
}
// PRESENTER -> ROUTER
protocol ___VARIABLE_ModuleName___RouterProtocol: AnyObject {
    var view: ___VARIABLE_ModuleName___VC? { get set }
    static func create___VARIABLE_ModuleName___Module() -> UIViewController
}
// VIEW -> PRESENTER
protocol ___VARIABLE_ModuleName___PresenterProtocol: AnyObject {
    var view: ___VARIABLE_ModuleName___ViewProtocol? { get set }
    var interactor: ___VARIABLE_ModuleName___InteractorInputProtocol? { get set }
    var router: ___VARIABLE_ModuleName___RouterProtocol? { get set }
    
    func viewDidLoad()
}
// INTERACTOR -> PRESENTER
protocol ___VARIABLE_ModuleName___InteractorOutputProtocol: AnyObject {
    func didFetchDataSuccess()
    func didFetchDataFailed(error: Error)
}
// PRESENTER -> INTERACTOR
protocol ___VARIABLE_ModuleName___InteractorInputProtocol: AnyObject {
    var presenter: ___VARIABLE_ModuleName___InteractorOutputProtocol? { get set }
    var remoteDataManager: ___VARIABLE_ModuleName___RemoteDataManagerInputProtocol? { get set }
    
    func fetchData()
}
// INTERACTOR -> REMOTEDATAMANAGER
protocol ___VARIABLE_ModuleName___RemoteDataManagerInputProtocol: AnyObject {
    var remoteRequestHandler: ___VARIABLE_ModuleName___RemoteDataManagerOutputProtocol? { get set }
    
    func fetchRemoteData()
}
// REMOTEDATAMANAGER -> INTERACTOR
protocol ___VARIABLE_ModuleName___RemoteDataManagerOutputProtocol: AnyObject {
    func didFetchDataSuccess()
    func didFetchDataFailed(error: Error)
}
