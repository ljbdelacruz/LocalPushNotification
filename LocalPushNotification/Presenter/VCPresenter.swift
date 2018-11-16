//
//  VCPresenter.swift
//  LocalPushNotification
//
//  Created by Lainel John Dela Cruz on 17/11/2018.
//  Copyright © 2018 Lainel John Dela Cruz. All rights reserved.
//

import Foundation

protocol VCPresenterDelegate{
}
class VCPresenter:NSObject{
    var isNotificationAllowed:Bool=false;
    var delegate:VCPresenterDelegate?
    func CreateNotification(){
    }
}
