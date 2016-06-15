//
//  ODValidation_Test.m
//  ODXCore
//
//  Created by Alex Nazaroff on 15.06.16.
//  Copyright © 2016 AJR. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ODXCore.h"

@interface ODValidation_Test : XCTestCase
@end

@implementation ODValidation_Test

- (void)testIsValidObject {
    XCTAssert([[NSObject new] od_isValidObject]);
    XCTAssert(![[NSNull null] od_isValidObject]);
}

- (void)testIsValidString {
    XCTAssert(![[NSObject new] od_isValidString]);
    XCTAssert(![[NSArray new] od_isValidString]);
    XCTAssert(![[NSNumber new] od_isValidString]);
    XCTAssert(![[NSDictionary new] od_isValidString]);
    XCTAssert(![[NSString new] od_isValidString]);
    XCTAssert(![[NSNull null] od_isValidString]);
    XCTAssert(![@"" od_isValidString]);
    XCTAssert([@"a" od_isValidString]);
}

- (void)testIsValidArray {
    XCTAssert(![[NSObject new] od_isValidArray]);
    XCTAssert(![[NSArray new] od_isValidArray]);
    XCTAssert(![@[] od_isValidArray]);
    XCTAssert([@[ @"a" ] od_isValidArray]);
    XCTAssert(![[NSNumber new] od_isValidArray]);
    XCTAssert(![[NSDictionary new] od_isValidArray]);
    XCTAssert(![[NSString new] od_isValidArray]);
    XCTAssert(![[NSNull null] od_isValidArray]);
}

- (void)testIsValidDictionary {
    XCTAssert(![[NSObject new] od_isValidDictionary]);
    XCTAssert(![[NSArray new] od_isValidDictionary]);
    XCTAssert(![[NSNumber new] od_isValidDictionary]);
    XCTAssert([[NSDictionary new] od_isValidDictionary]);
    XCTAssert(![[NSString new] od_isValidDictionary]);
    XCTAssert(![[NSNull null] od_isValidDictionary]);
}

- (void)testIsValidNumber {
    XCTAssert(![[NSObject new] od_isValidNumber]);
    XCTAssert(![[NSArray new] od_isValidNumber]);
    XCTAssert([@0 od_isValidNumber]);
    XCTAssert(![[NSDictionary new] od_isValidNumber]);
    XCTAssert(![[NSString new] od_isValidNumber]);
    XCTAssert(![[NSNull null] od_isValidNumber]);
}

- (void)testValidObject {
    XCTAssert([[NSObject new] od_validObject]);
    XCTAssert([[NSNull null] od_validObject] == nil);
    XCTAssert([@"" od_validObject]);
    XCTAssert([@0 od_validObject]);
    XCTAssert([@[] od_validObject]);
    XCTAssert([@{@"": @0} od_validObject]);
}

- (void)testValidString {
    XCTAssert([[NSObject new] od_validString] == nil);
    XCTAssert([[NSNull null] od_validString] == nil);
    XCTAssert([@"" od_validString]);
    XCTAssert([@0 od_validString]);
    XCTAssert([@[] od_validString] == nil);
    XCTAssert([@{@"": @0} od_validString] == nil);
}

- (void)testValidNumber {
    XCTAssert([[NSObject new] od_validNumber] == nil);
    XCTAssert([[NSNull null] od_validNumber] == nil);
    XCTAssert([@"0" od_validNumber]);
    XCTAssert([@0 od_validNumber]);
    XCTAssert([@[] od_validNumber] == nil);
    XCTAssert([@{@"": @0} od_validNumber] == nil);
}

- (void)testValidArray {
    XCTAssert([[NSObject new] od_validArray] == nil);
    XCTAssert([[NSNull null] od_validArray] == nil);
    XCTAssert([@"0" od_validArray] == nil);
    XCTAssert([@0 od_validArray] == nil);
    XCTAssert([@[] od_validArray]);
    XCTAssert([@{@"": @0} od_validArray] == nil);
}

- (void)testValidDictionary {
    XCTAssert([[NSObject new] od_validDictionary] == nil);
    XCTAssert([[NSNull null] od_validDictionary] == nil);
    XCTAssert([@"0" od_validDictionary] == nil);
    XCTAssert([@0 od_validDictionary] == nil);
    XCTAssert([@[] od_validDictionary] == nil);
    XCTAssert([@{@"": @0} od_validDictionary]);
}

@end
