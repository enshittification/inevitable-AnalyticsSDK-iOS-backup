//
//  EventTests.swift
//  ParselyTrackerTests
//
//  Created by Chris Wisecarver on 7/10/18.
//  Copyright © 2018 Parse.ly. All rights reserved.
//

import XCTest
@testable import ParselyTracker

class EventTests: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
//    func testBasic() {
//        let now = Date()
//        let evDict:[String: Any] = ["action": "pageview", "ts": now, "idsite": "example.com"]
//        let event = Event(params: evDict)
//        let evJSON = event.toJSON()
//        let jsonString:String = "{\"action\":\"pageview\",\"ts\":\(Int(now.timeIntervalSince1970 * 1000))}"
//        XCTAssert(evJSON == jsonString,
//                  "event.toJSON should produce valid JSON")
//    }

//    func testMetadataEncode() {
//        XCTAssert(false,
//                  "TODO: implement metadata encoding in Event class. Should take a Dictionary, encode to pretty-printedJSON, and ascii encode that. Formerly in Video class")
//    }

//    func testNested() {
//        let now = Date()
//        let dataDict: [String: Any] = ["slts": 12345, "_region": 24.74, "__things__": 1985]
//        let evDict:[String: Any] = ["action": "pageview", "ts": now, "data": dataDict, "idsite": "example.com"]
//        let event = Event(params: evDict)
//        let evJSON = event.toJSON()
//        let jsonString:String = "{\"action\":\"pageview\",\"ts\":\(Int(now.timeIntervalSince1970 * 1000))}"
//        XCTAssert(evJSON == jsonString,
//                  "event.toJSON should produce valid JSON with nested data")
//    }
    func testHeartbeatEvents() {
        let event = Heartbeat("vheartbeat", url: "http://test.com", urlref: nil,  inc: 5, tt: 1234567, data: nil)
        XCTAssert(event.url == "http://test.com",
                  "Heartbeat events should handle inc and tt.")
    }
    
    func testValidity() {
        // make an Event
        let event = Event("pageview", url: "http://test.com", urlref: nil, data: nil)
        XCTAssert(event.idsite == "parsely.com", "Events should automatically know which apikey to use.")
    }
}

