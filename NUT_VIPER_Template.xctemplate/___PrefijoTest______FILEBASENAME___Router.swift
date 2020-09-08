//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

class ___VARIABLE_ModuleName___Router {
    private var view: ___VARIABLE_ModuleName___VC
    private var presenter: ___VARIABLE_ModuleName___Presenter
    private var interactor: ___VARIABLE_ModuleName___Interactor
    private var window: UIWindow?
    init(in window: UIWindow?) {
        self.view = ___VARIABLE_ModuleName___VC()
        self.presenter = ___VARIABLE_ModuleName___Presenter()
        self.interactor = ___VARIABLE_ModuleName___Interactor()
        view.presenter = self.presenter
        presenter.view = self.view
        presenter.interactor = self.interactor
        presenter.router = self
        interactor.presenter = self.presenter
        self.window = window
    }
    func showView() {
        window?.rootViewController = UINavigationController(rootViewController: view)
        window?.makeKeyAndVisible()
    }
}
extension ___VARIABLE_ModuleName___Router: ___VARIABLE_ModuleName___RouterProtocol {
}


