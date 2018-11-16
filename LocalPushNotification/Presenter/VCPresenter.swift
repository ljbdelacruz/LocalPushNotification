//
//  VCPresenter.swift
//  LocalPushNotification
//
//  Created by Lainel John Dela Cruz on 17/11/2018.
//  Copyright © 2018 Lainel John Dela Cruz. All rights reserved.
//

import Foundation
import UserNotifications


protocol VCPresenterDelegate{
    func ShowRequest(request:UNNotificationRequest);
}
class VCPresenter:NSObject{
    var isNotificationAllowed:Bool=false;
    var delegate:VCPresenterDelegate?
    func CreateNotification(){
        let content = UNMutableNotificationContent()
        //adding title, subtitle, body and badge
        content.title = "Hi this is my local request"
        content.subtitle = "hello my world"
        content.body = "I am trying to show you how to do local notifications using MVP Design Pattern"
        content.badge = 1
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        //getting the notification request
        let request = UNNotificationRequest(identifier: "SimpleNotification", content: content, trigger: trigger)
        print("Creating Request Please wait....");
        delegate?.ShowRequest(request: request);
    }
}
