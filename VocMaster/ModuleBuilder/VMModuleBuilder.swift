//
//  VMBuilderService.swift
//  VocMaster
//
//  Created by Csipler Zoltan on 2016. 10. 26..
//  Copyright © 2016. Csipler Zoltan. All rights reserved.
//

import UIKit

class VMModuleBuilder: NSObject
{
    static func buildSplashModule() -> SplashViewController
    {
        let splashViewController = SplashViewController(nibName: "SplashViewController", bundle: nil)
        let splashPresenter = SplashPresenter(view: splashViewController)
        splashViewController.presenter = splashPresenter
        
        return splashViewController
    }
    
    static func buildMainModule() -> MainViewController
    {
        let mainViewController = MainViewController(nibName: "MainViewController", bundle: nil)
        let mainPresenter = MainPresenter(view: mainViewController)
        mainViewController.presenter = mainPresenter
        
        return mainViewController
    }
}
