//
//  SplashViewController.swift
//  VocMaster
//
//  Created by Csipler Zoltan on 2016. 10. 20..
//  Copyright © 2016. Csipler Zoltan. All rights reserved.
//

import UIKit

class SplashViewController: VMBaseViewController, SplashViewProtocol
{
    @IBOutlet weak var lblLoadingText: UILabel!
    
    var presenter: SplashPresenterProtocol!;
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.presenter.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    func setLoadingText(loadingText: String)
    {
        lblLoadingText.text = loadingText;
        
        sleep(10);
        
        self.presenter.loadingAnimationFinished()
    }
}
