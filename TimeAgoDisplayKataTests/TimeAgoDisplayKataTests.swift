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
    
    func test_fiveSecondsAgo_returnsFormattedDisplay(){
        let date = Date(timeIntervalSinceNow: -5)
        
        XCTAssertEqual(date.timeAgoDisplay(), "5 seconds ago")
    }
    
}
