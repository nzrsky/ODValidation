//
//  NSObject+Validation.m
//
// Copyright (c) 2009-2015 Alexey Nazaroff, AJR
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "NSObject+ODValidation.h"

@implementation NSObject (ODXCore_Validation)

- (BOOL)od_isValidObject {
    return YES;
}

- (BOOL)od_isValidString {
    return NO;
}

- (BOOL)od_isValidDictionary {
    return NO;
}

- (BOOL)od_isValidArray {
    return NO;
}

- (BOOL)od_isValidNumber {
    return NO;
}


- (instancetype)od_validObject {
    return self;
}

- (NSString *)od_validString {
    return nil;
}

- (NSNumber *)od_validNumber {
    return nil;
}

- (NSArray *)od_validArray {
    return nil;
}

- (NSDictionary *)od_validDictionary {
    return nil;
}

@end


@implementation NSNull (ODXCore_Validation)

- (BOOL)od_isValidObject {
    return NO;
}

- (instancetype)od_validObject {
    return nil;
}

@end


@implementation NSNumber (ODXCore_Validation)

- (BOOL)od_isValidNumber {
    return YES;
}

- (NSString *)od_validString {
    return [self stringValue];
}

- (NSNumber *)od_validNumber {
    return self;
}

@end


@implementation NSString (ODXCore_Validation)

- (BOOL)od_isValidString {
    return self.length > 0;
}

- (NSString *)od_validString {
    return self;
}

- (NSNumber *)od_validNumber {
    return @([self doubleValue]);
}

@end


@implementation NSDictionary (ODXCore_Validation)

- (BOOL)od_isValidDictionary {
    return YES;
}

- (NSDictionary *)od_validDictionary {
    return self;
}

@end


@implementation NSArray (ODXCore_Validation)

- (BOOL)od_isValidArray {
    return self.count > 0;
}

- (NSArray *)od_validArray {
    return self;
}

@end