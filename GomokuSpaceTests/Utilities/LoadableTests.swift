//
//  LoadableTests.swift
//  UnitTests
//
//  Created by Alexey Naumov on 31.10.2019.
//  Copyright © 2019 Alexey Naumov. All rights reserved.
//

import XCTest
@testable import GomokuSpace

final class LoadableTests: XCTestCase {
    
    func testLoadableNotRequested() {
        let loadable: Loadable<String> = .notRequested
        XCTAssertNil(loadable.value)
        XCTAssertNil(loadable.error)
    }
    
    func testLoadableLoaded() {
        let loadable: Loadable<String> = .loaded("Test")
        XCTAssertEqual(loadable.value, "Test")
        XCTAssertNil(loadable.error)
    }
}
