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
        return "\(secondsAgo) seconds ago"
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
    
}
