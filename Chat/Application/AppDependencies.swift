//
//  AppDependencies.swift
//  Chat
//
//  Created by IgorBizi@mail.ru on 5/15/16.
//  Copyright © 2016 IgorBizi@mail.ru. All rights reserved.
//

import UIKit

class AppDependencies {
    var initialWireframe: VIPERWireframe!
    
    //MARK: LifeCycle
    
    init() {
        configureDependencies()
    }
    
    func configureDependencies() {
        AppTheme.applyTheme()
    }
    
    func deallocDependencies() {
    
    }
    
    func setupRootInterface(fromWindow window: UIWindow) {
        
        let rootViewContoller = RootWireframe.rootViewContollerFromWindow(window) as? VIPERViewController
        initialWireframe = VIPERWireframe.init(rootUserInterface: rootViewContoller!)
    }
}