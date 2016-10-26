//
//  MainPresenter.swift
//  VocMaster
//
//  Created by Csipler Zoltan on 2016. 10. 24..
//  Copyright © 2016. Csipler Zoltan. All rights reserved.
//

import UIKit

class MainPresenter: VMBasePresenter, MainPresenterProtocol
{
    unowned var view: MainViewProtocol;
    
    init(view: MainViewProtocol)
    {
        self.view = view
    }
    
    override func viewDidLoad()
    {
        
    }
}
