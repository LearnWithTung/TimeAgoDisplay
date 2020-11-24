//
//  TimeAgoDisplayKataTests.swift
//  TimeAgoDisplayKataTests
//
//  Created by Tung Vu Duc on 24/11/2020.
//

import XCTest
@testable import TimeAgoDisplayKata

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
    
    func test_daysAgo_returnsFormattedDisplay(){
        let date1 = Date(timeIntervalSinceNow: -60 * 60 * 24)
        XCTAssertEqual(date1.timeAgoDisplay(), "a day ago")
        
        let date2 = Date(timeIntervalSinceNow: -60 * 60 * 24 * 2)
        XCTAssertEqual(date2.timeAgoDisplay(), "2 days ago")

        let date3 = Date(timeIntervalSinceNow: -60 * 60 * 24 * 6)
        XCTAssertEqual(date3.timeAgoDisplay(), "6 days ago")
    }
    
    func test_weeksAgo_returnsFormattedDisplay(){
        let date1 = Date(timeIntervalSinceNow: -60 * 60 * 24 * 7)
        XCTAssertEqual(date1.timeAgoDisplay(), "a week ago")
        
        let date2 = Date(timeIntervalSinceNow: -60 * 60 * 24 * 7 * 2)
        XCTAssertEqual(date2.timeAgoDisplay(), "2 weeks ago")

        let date3 = Date(timeIntervalSinceNow: -60 * 60 * 24 * 7 * 10)
        XCTAssertEqual(date3.timeAgoDisplay(), "10 weeks ago")
    }
    
}
