//
//  Date+TimeAgoDisplayHelper.swift
//  TimeAgoDisplayKata
//
//  Created by Tung Vu Duc on 25/11/2020.
//

import Foundation

extension Date {
    
    func timeAgoDisplay() -> String{
        let secondsAgo = Int(Date().timeIntervalSince(self))
        if secondsAgo == 0 {
            return "Just now"
        }
        
        let minute = 60
        let hour = 60 * minute
        let day = 24 * hour
        let week = 7 * day
        
        if secondsAgo < minute {
            return "\(secondsAgo) seconds ago"
        }
        
        let minutesAgo = secondsAgo / minute
        if minutesAgo < 60 {
            return minutesAgo == 1 ? "a minute ago" : "\(minutesAgo) minutes ago"
        }
        
        let hoursAgo = secondsAgo / hour
        if hoursAgo < 24 {
            return hoursAgo == 1 ? "a hour ago" : "\(hoursAgo) hours ago"
        }
        
        let daysAgo = secondsAgo / day
        if daysAgo < 7 {
            return daysAgo == 1 ? "a day ago" : "\(daysAgo) days ago"
        }
        
        let weeksAgo = secondsAgo / week
        return weeksAgo == 1 ? "a week ago" : "\(weeksAgo) weeks ago"
    }
}
