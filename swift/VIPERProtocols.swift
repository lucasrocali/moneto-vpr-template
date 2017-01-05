//
// Created by AUTHOR
// Copyright (c) YEAR COMPANY. All rights reserved.
//

import Foundation

protocol VIPERViewProtocol: class {
    var presenter: VIPERPresenterProtocol? { get set }
    // PRESENTER -> VIEW
}

protocol VIPERWireframeProtocol: class {
    func presentVIPERModule(fpresenter: ROOTPresenter)
    func dismissVC(view:UIViewController)
     //PRESENTER -> WIREFRAME
}

protocol VIPERPresenterProtocol: class {
    var view: VIPERViewProtocol? { get set }
    var wireframe: VIPERWireframeProtocol? { get set }
    // View -> Presenter
    var VIPERDelegate: VIPERDelegate?
}
