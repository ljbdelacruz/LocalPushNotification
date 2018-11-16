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
        self.vcpresenter?.delegate=self;
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, error in
            self.vcpresenter?.isNotificationAllowed=didAllow
        })
    }
    @IBAction func ShowNotificationOnClick(_ sender: Any) {
        //show notifications here
        if self.vcpresenter!.isNotificationAllowed{
            
        }
    }
}
//MARK: VCDelegate func
extension ViewController:VCPresenterDelegate{
    
}

