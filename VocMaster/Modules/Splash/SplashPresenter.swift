//
//  SplashPresenter.swift
//  VocMaster
//
//  Created by Csipler Zoltan on 2016. 10. 20..
//  Copyright © 2016. Csipler Zoltan. All rights reserved.
//

import UIKit

class SplashPresenter: VMBasePresenter, SplashPresenterProtocol
{
    unowned var view: SplashViewProtocol;
    
    init(view: SplashViewProtocol)
    {
        self.view = view;
    }
    
    override func viewDidLoad()
    {
        self.view.startAnimation(loadingText:"Loading");
        
        let deadline = DispatchTime.now() + 2
        DispatchQueue.main.asyncAfter(deadline: deadline)
        {
            
            self.view.stopAnimation()
            VMNavigationManager.sharedInstance.navigateToMainScreen()
        }
    }
}
