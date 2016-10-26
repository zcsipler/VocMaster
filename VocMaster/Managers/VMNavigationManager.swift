//
//  VMNavigationManager.swift
//  VocMaster
//
//  Created by Csipler Zoltan on 2016. 10. 26..
//  Copyright © 2016. Csipler Zoltan. All rights reserved.
//

import UIKit

final class VMNavigationManager: NSObject
{
    static let sharedInstance = VMNavigationManager()
    var currentViewController: UIViewController
    
    
    override init()
    {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        self.currentViewController = appDelegate.window!.rootViewController!
    }
    
    func navigateToMainScreen()
    {
        let mainViewController = VMModuleBuilder.buildMainModule()
        let navigationController = UINavigationController(rootViewController: mainViewController)
        
        self.currentViewController.present(navigationController, animated: false, completion: nil)
        
        self.currentViewController = mainViewController
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window!.rootViewController = nil
    }
}
