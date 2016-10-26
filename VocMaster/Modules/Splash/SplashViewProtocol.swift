//
//  SplashViewProtocol.swift
//  VocMaster
//
//  Created by Csipler Zoltan on 2016. 10. 20..
//  Copyright © 2016. Csipler Zoltan. All rights reserved.
//

protocol SplashViewProtocol: VMBaseViewProtocol
{
    func startAnimation(loadingText: String);
    func stopAnimation();
}
