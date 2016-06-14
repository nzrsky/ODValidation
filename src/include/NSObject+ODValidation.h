//
//  NSObject+Validation.h
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

#import <Foundation/Foundation.h>

@interface NSObject (ODXCore_Validation)

/** Returns YES if object isn't an instance of NSNull class */
- (BOOL)od_isValidObject;

/** Returns YES if object is an instance of NSString class and string is nonempty */
- (BOOL)od_isValidString;

/** Returns YES if object is an instance of NSDictionary class */
- (BOOL)od_isValidDictionary;

/** Returns YES if object is an instance of NSArray class and array is nonempty */
- (BOOL)od_isValidArray;

/** Returns YES if object is an instance of NSNumber class */
- (BOOL)od_isValidNumber;


/** Returns object if it isn't NSNull, otherwise nil */
- (instancetype)od_validObject;

/** Returns string value for NSStrings and NSNumbers, otherwise nil */
- (NSString *)od_validString;

/** Returns number value for NSStrings and NSNumbers, otherwise nil */
- (NSNumber *)od_validNumber;

/** Returns objects if it's instance of NSArray, otherwise nil */
- (NSArray *)od_validArray;

/** Returns objects if it's instance of NSDictionary, otherwise nil */
- (NSDictionary *)od_validDictionary;

@end
