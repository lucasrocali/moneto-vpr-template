//
// Created by AUTHOR
// Copyright (c) YEAR COMPANY. All rights reserved.
//

import Foundation

class VIPERWireframe: NSObject,VIPERWireframeProtocol,UIViewControllerTransitioningDelegate {

    let VIPERViewControllerIdentifier = "VIPERViewController"
    func presentVIPERModule(fpresenter: VIPERPresenter) {
        // Generating module components
        let view: VIPERViewProtocol = getVIPERViewController()
        let presenter: VIPERPresenterProtocol = VIPERPresenter()

        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = self
        presenter.setFullInstallmentDelegate = fpresenter

        let fview = fpresenter.view as! ROOTViewController

        let VIPERVC = view as! VIPERViewController
        VIPERVC.modalPresentationStyle = .custom
        VIPERVC.transitioningDelegate = self
        VIPERVC.view.frame = CGRect(x: 0, y: 0, width: fview.view.bounds.size.width/2, height: fview.view.bounds.size.height/2)

        fview.present(VIPERVC, animated: true, completion: nil)

    }

    func getVIPERViewController() -> SetFullInstallmentViewController {
        let storyboard = someStoryboard()
        let VIPERVC: VIPERViewController = storyboard.instantiateViewController(withIdentifier: VIPERViewControllerIdentifier) as! VIPERViewController
        return VIPERVC
    }

    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return PopUpDismissalTransaction()
    }

    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return PopUpPresentationTransaction()
    }

    func dismissVC(view:UIViewController) {
        view.dismiss(animated: true, completion: nil)
    }}
