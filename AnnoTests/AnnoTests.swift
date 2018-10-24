//
//  HeatWavesTests.swift
//  HeatWavesTests
//
//  Created by Sven Titgemeyer on 20.05.18.
//  Copyright © 2018 Cocoaheads Aachen. All rights reserved.
//

import XCTest
@testable import Anno

class AnnoTests: XCTestCase {
    let allTitles = [1008,1017,1026,1035,1044,1053,1062,1071,1080,1107,1170,1206,1260,1305,1350,1404,1440,1503,1530,1602,1620,1701,1710,1800,2007,2016,2025,2034,2043,2052,2061,2070,2106,2160,2205,2250,2304,2340,2403,2430,2502,2520,2601,2610,2700,3006,3015,3024,3033,3042,3051,3060,3105,3150,3204,3240,3303,3330,3402,3420,3501,3510,3600,4005,4014,4023,4032,4041,4050,4104,4140,4203,4230,4302,4320,4401,4410,4500,5004,5013,5022,5031,5040,5103,5130,5202,5220,5301,5310,5400,6003,6012,6021,6030,6102,6120,6201,6210,6300,7002,7011,7020,7101,7110,7200,8001,8010,8100,9000]
    
    func testResultIsCorrect() {
        let sut = annoTitles()
        XCTAssertEqual(sut, allTitles)
    }
    
    func testResultIsCorrectIgnoringOrder() {
        let sut = annoTitles().sorted()
        XCTAssertEqual(sut, allTitles)
    }
    
    func testNoMissingYears() {
        let sut = annoTitles()
        let missingYears = allTitles.filter { !sut.contains($0)}
        XCTAssertEqual(missingYears, [], "There are titles missing in your solution.")
    }

    func testNoAdditionalYears() {
        let sut = annoTitles()
        let additionalYears = sut.filter { !allTitles.contains($0) }
        XCTAssertEqual(additionalYears, [], "There are additional titles in your solution.")
    }
}
