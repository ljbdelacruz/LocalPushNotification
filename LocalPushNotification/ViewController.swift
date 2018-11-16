//
//  ViewController.swift
//  LocalPushNotification
//
//  Created by Lainel John Dela Cruz on 17/11/2018.
//  Copyright © 2018 Lainel John Dela Cruz. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    var vcpresenter:VCPresenter?;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //setting up notification to enable use of notification in app request permission from user
        self.vcpresenter=VCPresenter();
        self.vcpresenter?.delegate=self;
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, error in
            self.vcpresenter?.isNotificationAllowed=didAllow
            UNUserNotificationCenter.current().delegate = self
        })
    }
    @IBAction func ShowNotificationOnClick(_ sender: Any) {
        //show notifications here
        self.vcpresenter?.CreateNotification()
    }
}
//MARK: VCDelegate func
extension ViewController:VCPresenterDelegate{
    func ShowRequest(request: UNNotificationRequest) {
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
}
//MARK: UserNotification func
extension ViewController:UNUserNotificationCenterDelegate{
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        //displaying the ios local notification when app is in foreground
        print("Will present notif");
        completionHandler([.alert, .badge, .sound])
    }
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        print("Yes I Received it!")
    }
}

