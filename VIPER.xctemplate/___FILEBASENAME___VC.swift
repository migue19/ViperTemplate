//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//
import UIKit
class ___VARIABLE_ModuleName___VC: UIViewController {
    // MARK: Properties
    var presenter: ___VARIABLE_ModuleName___PresenterProtocol?
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
}
extension ___VARIABLE_ModuleName___VC: ___VARIABLE_ModuleName___ViewProtocol {
    // TODO: Implement view protocol methods
}