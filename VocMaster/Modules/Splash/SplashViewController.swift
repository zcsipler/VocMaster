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
    @IBOutlet weak var aicLoading: UIActivityIndicatorView!
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
    
    func startAnimation(loadingText: String)
    {
        self.aicLoading.startAnimating()
        self.lblLoadingText.text = loadingText
    }
    
    func stopAnimation()
    {
        self.aicLoading.stopAnimating()
    }
    
    deinit
    {
        
    }
}
