//
//  UnitTestingBootcampViewModel_Tests.swift
//  Swiftful-thinking-17_Tests
//
//  Created by Bo Zhong on 6/11/24.
//

import XCTest
@testable import Swiftful_thinking_17

// Naming Structure: test_UnitOfWork_StateUnderTest_ExpectedBehavior
// Testing Structure: Given, When, Then

final class UnitTestingBootcampViewModel_Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_UnitTestingBootcampViewModel_isPremium_shouldBeTrue() {
        // Given
        let userIsPremium: Bool = true
        
    
        // When
        let vm = UnitTestingBootcampViewModel(isPremium: userIsPremium)
        

        // Then
        XCTAssertTrue(vm.isPremium)
    }

    func test_UnitTestingBootcampViewModel_isPremium_shouldbeFalse() {
        // Given
        let userPremium: Bool = false
        
        // When
        let vm = UnitTestingBootcampViewModel(isPremium: userPremium)

        
        // Test
        XCTAssertFalse(vm.isPremium)
    }
    
    func test_UnitTestingBootcampViewModel_isPremium_shouldBeInjectedValue() {
        // Given
        let userPremium: Bool = Bool.random()
        
        // When
        let vm = UnitTestingBootcampViewModel(isPremium: userPremium)

        // Test
        XCTAssertEqual(vm.isPremium, userPremium)
    }
    
    func test_UnitTestingBootcampViewModel_isPremium_shouldBeInjectedValue_stress() {
        for _ in 0..<1000 {
            // Given
            let userPremium: Bool = Bool.random()
            
            // When
            let vm = UnitTestingBootcampViewModel(isPremium: userPremium)
            
            // Then
            XCTAssertEqual(vm.isPremium, userPremium)
        }
    }
    
    
    func test_UnitTestingBootcampViewModel_dataArray_shouldBeEmpty() {
        // Given
        let userPremium: Bool = Bool.random()
        
        // When
        let vm = UnitTestingBootcampViewModel(isPremium: userPremium)
        
        // Then
        XCTAssertTrue(vm.dataArray.isEmpty)
    }
    
}
