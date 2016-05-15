//
//  RootWireframe.swift
//
//
//  Created by IgorBizi@mail.ru on 5/15/16.
//  Copyright © 2016 IgorBizi@mail.ru. All rights reserved.
//

import UIKit

class RootWireframe {
    
    static func rootViewContollerFromWindow(window: UIWindow) -> UIViewController! {
        if window.rootViewController is UINavigationController {
            if let nvc = window.rootViewController as? UINavigationController {
                return nvc.viewControllers.first
            }
            return nil
        } else {
            return window.rootViewController
        }
    }
    
    func presentOkAlert(presentingViewController: UIViewController, title: String, message: String, okButtonEventHandler: (action: UIAlertAction) -> Void) {
        let alertController = UIAlertController.init(title: title, message: message, preferredStyle: .Alert)
        let actionOk = UIAlertAction.init(title: NSLocalizedString("OK", comment: ""), style: .Default, handler: okButtonEventHandler)
        alertController.addAction(actionOk)
        presentingViewController.presentViewController(alertController, animated: true, completion: nil)
    }
 
    //MARK: Create ViewControllers
  
    func createViewController(withKey key: String) -> UIViewController {
        let storyboard = UIStoryboard.init(name: "Main", bundle: NSBundle.mainBundle())
        let viewController = storyboard.instantiateViewControllerWithIdentifier(key)
        return viewController
    }
    
    func createViewController(withXibName xibName: String) -> UIViewController {
        return NSBundle.mainBundle().loadNibNamed(xibName, owner: nil, options: nil).first as! UIViewController
    }
    
}