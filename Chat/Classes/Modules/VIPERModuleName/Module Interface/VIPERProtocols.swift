//
//  VIPERProtocols.swift
//
//
//  Created by IgorBizi@mail.ru on 5/15/16.
//  Copyright © 2016 IgorBizi@mail.ru. All rights reserved.
//

import UIKit

protocol VIPERDataManagerAPIInput: class {
    
}

protocol VIPERDataManagerLocalInput: class {
    
}

protocol VIPERInteractorInput: class {
    
}

protocol VIPERInteractorOutput: class {
    
}

protocol VIPERModuleInterface: class {
    
}

protocol VIPERViewInterface: class {
    
}

protocol VIPERWireframeInput: class {    
    func presentVIPERInterfaceFromVC(presentingVC: UIViewController)
    func dismissVIPERInterface()
}

protocol VIPERDelegate: class {
    
}



