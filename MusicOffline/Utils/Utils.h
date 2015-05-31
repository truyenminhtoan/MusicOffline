//
//  Utils.h
//  Tourist.ONE
//
//  Created by Thanh on 11/6/13.
//  Copyright (c) 2013 Thanh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Utils : NSObject


+ (BOOL) validEmail: (NSString *) candidate ;
+(NSString*)trimText:(NSString*)string;
+ (CGSize) getGSizeOfString: (NSString*) resultString withFont: (UIFont *) font withWidth: (int) width withNumOfLines: (int) numOfLines;
+ (NSString*) parseMoneyString:(NSString*) stringMoney;
+ (NSString*) parseIntegerToMoneyString:(NSString*) stringMoney;
+ (float) returnMoneyFromString:(NSString*) stringMoney;
+ (BOOL) canCallPhoneNumber: (NSURL *) phoneUrl ;
+ (BOOL) canSupportPhone ;
+ (NSString*) removeNumberAfterFloat:(NSString*) stringFloat;
+ (NSString*) replaceWidthHeighImage:(NSString*) htmlString;
+ (NSDictionary*)parseURLParams:(NSString *)query;
+ (NSString*) formatURL:(NSString*) strURL;
+(UIColor*)getColorFromCode:(NSString*)strCode;
+(BOOL)string:(NSString*)str containsString:(NSString *)substring
        range:(NSRange *)range;
+ (NSString*) parseMoneyFloat:(float) floatMoney;

+ (NSString*) formatStringForUSDate:(NSString*) strDate;

+ (UIImage *)imageWithColor:(UIColor *)color andSize:(CGSize)size;
+ (void) setCornerRadius:(UIView*)view rectCorner:(UIRectCorner)rectCorner;
+ (NSDate *)dateWithYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day;

+(BOOL)isViettelPhoneNumber:(NSString*) phoneNumber;
+(NSString*) getTime;
+(NSString*)reverseString:(NSString *)str;
+ (CGSize)sizeForLabel:(UILabel *)label;
+ (NSString *)checkIphoneDevice;

@end
