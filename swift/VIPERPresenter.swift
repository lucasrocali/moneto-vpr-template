//
// Created by AUTHOR
// Copyright (c) YEAR COMPANY. All rights reserved.
//

import Foundation

class VIPERPresenter: VIPERPresenterProtocol, VIPERInteractorOutputProtocol {
    
    weak var view: VIPERViewProtocol?
    var wireframe: VIPERWireframeProtocol?
    var VIPERDelegate: VIPERDelegate?
    
    init() {}
}
