//
//  VIPERWireframe.swift
//
//
//  Created by IgorBizi@mail.ru on 5/15/16.
//  Copyright © 2016 IgorBizi@mail.ru. All rights reserved.
//

import UIKit

class VIPERWireframe: RootWireframe, VIPERWireframeInput {
    
    let kVIPERViewControllerKey = "VIPERViewContoller"
    
    var presenter: VIPERPresenter!
    var userInterface: VIPERViewController!
    
    var presentingViewContoller: UIViewController?
    
    override init() {
        super.init()
        
        let userInterface = createViewController(withKey: kVIPERViewControllerKey) as! VIPERViewController
        setupModuleForUserInterface(userInterface)
    }
    
    init(rootUserInterface: VIPERViewController) {
        super.init()
        
        setupModuleForUserInterface(rootUserInterface)
    }
    
    func setupModuleForUserInterface(userInterface: VIPERViewController) {
        let interactor = VIPERInteractor()
        let dataManagerAPI = VIPERDataManagerAPI()
        let dataManagerLocal = VIPERDataManagerLocal()
        let presenter = VIPERPresenter()
        
        presenter.wireframe = self;
        presenter.interactor = interactor;
        
        interactor.dataManagerAPI = dataManagerAPI;
        interactor.dataManagerLocal = dataManagerLocal;
        interactor.output = presenter;
        
        presenter.userInterface = userInterface;
        userInterface.eventHandler = presenter;
        
        self.userInterface = userInterface
        self.presenter = presenter
    }
    
    //MARK: VIPERWireframeInput
    
    func presentVIPERInterfaceFromVC(presentingVC: UIViewController) {
        presentingViewContoller = presentingVC
        
        presentingViewContoller!.navigationController!.pushViewController(userInterface, animated: true)
    }
    
    func dismissVIPERInterface() {
    
    }

}

