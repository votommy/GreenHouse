//
//  NotificationScheduler.swift
//  GreenHouse
//
//  Created by student on 4/1/20.
//  Copyright © 2020 S531823. All rights reserved.
//

import Foundation
import Foundation
import UserNotifications
struct NotificationScheduler {
    private var waterFrequancy : Int
    private var waterTimeFrame : String
    private var sunlightDuration : Int
    private var sunlightTimeFrame: String
    
    init(waterFrequancy : Int, waterTimeFrame : String,sunlightDuration : Int, sunlightTimeFrame: String) {
        self.waterFrequancy = waterFrequancy
        self.waterTimeFrame = waterTimeFrame
        self.sunlightDuration = sunlightDuration
        self.sunlightTimeFrame = sunlightTimeFrame
    }
    func schedule() -> Void
    {
        print("schedule")
        let center = UNUserNotificationCenter.current()
        center.removeAllPendingNotificationRequests()
        let content = UNMutableNotificationContent()

        content.title = "Pour Water to Plant"
        content.body = "remainder for pouring water"
        content.categoryIdentifier = "Remainder"
        content.sound = .default
        
        var dateComponents = DateComponents()
        dateComponents.hour = 09
        dateComponents.minute = 00
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5 , repeats: false)
        
        //let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        center.add(request)
        
}
}
