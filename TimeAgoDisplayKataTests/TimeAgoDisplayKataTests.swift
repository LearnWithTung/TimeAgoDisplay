//
//  TimeAgoDisplayKataTests.swift
//  TimeAgoDisplayKataTests
//
//  Created by Tung Vu Duc on 24/11/2020.
//

import XCTest

extension Date {
    
    func timeAgoDisplay() -> String{
        let secondsAgo = Int(Date().timeIntervalSince(self))
        if secondsAgo == 0 {
            return "Just now"
        }
        else if secondsAgo < 60 {
            return "\(secondsAgo) seconds ago"
        }
        
        let minutesAgo = secondsAgo / 60
        if minutesAgo < 60 {
            return minutesAgo == 1 ? "a minute ago" : "\(minutesAgo) minutes ago"
        }
        
        let hoursAgo = secondsAgo / 3600
        return hoursAgo == 1 ? "a hour ago" : "\(hoursAgo) hours ago"
    }
}

class TimeAgoDisplayKataTests: XCTestCase {

    func test_currentDate_returnsFormattedDisplay(){
        let date = Date()
        
        XCTAssertEqual(date.timeAgoDisplay(), "Just now")
    }
    
    func test_secondsAgo_returnsFormattedDisplay(){
        let date1 = Date(timeIntervalSinceNow: -5)
        
        XCTAssertEqual(date1.timeAgoDisplay(), "5 seconds ago")
        
        let date2 = Date(timeIntervalSinceNow: -10)
        
        XCTAssertEqual(date2.timeAgoDisplay(), "10 seconds ago")
        
        let date3 = Date(timeIntervalSinceNow: -55)

        XCTAssertEqual(date3.timeAgoDisplay(), "55 seconds ago")
    }
    
    func test_minutesAgo_returnsFormattedDisplay(){
        let date1 = Date(timeIntervalSinceNow: -60)
        XCTAssertEqual(date1.timeAgoDisplay(), "a minute ago")
        
        let date2 = Date(timeIntervalSinceNow: -60 * 2)
        XCTAssertEqual(date2.timeAgoDisplay(), "2 minutes ago")
        
        let date3 = Date(timeIntervalSinceNow: -60 * 50)
        XCTAssertEqual(date3.timeAgoDisplay(), "50 minutes ago")
    }
    
    func test_hoursAgo_returnsFormattedDisplay(){
        let date1 = Date(timeIntervalSinceNow: -60 * 60)
        XCTAssertEqual(date1.timeAgoDisplay(), "a hour ago")
        
        let date2 = Date(timeIntervalSinceNow: -60 * 60 * 2)
        XCTAssertEqual(date2.timeAgoDisplay(), "2 hours ago")

        let date3 = Date(timeIntervalSinceNow: -60 * 60 * 10)
        XCTAssertEqual(date3.timeAgoDisplay(), "10 hours ago")
    }
    
}
