//
//  DateUtils.m
//  Tourist.ONE
//
//  Created by Thanh on 12/10/13.
//  Copyright (c) 2013 Thanh. All rights reserved.
//

#import "DateUtils.h"

@implementation DateUtils

+ (NSString*) getStringFormatDate: (NSString*) stringDate {
    NSString* result = @"";
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"dd/MM/yyyy"];
    NSDate* date = [dateFormatter dateFromString:stringDate];
    [dateFormatter setDateFormat:@"ccc dd MMM yyyy"];
    NSLocale *usLocale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
    [dateFormatter setLocale:usLocale];
    result = [dateFormatter stringFromDate:date];
    return result;
}

+ (NSString*) getMonthFromInterger: (NSInteger) month{
    NSString *strMonth;
    switch(month){
        case 1:{
            strMonth=@"Jan";
            break;
        }
        case 2:{
            strMonth=@"Feb";
            break;
        }
        case 3:{
            strMonth=@"Mar";
            break;
        }
        case 4:{
            strMonth=@"April";
            break;
        }
        case 5:{
            strMonth=@"May";
            break;
        }
        case 6:{
            strMonth=@"Jun";
            break;
        }
        case 7:{
            strMonth=@"July";
            break;
        }
        case 8:{
            strMonth=@"Aug";
            break;
        }
        case 9:{
            strMonth=@"Sep";
            break;
        }
        case 10:{
            strMonth=@"Oct";
            break;
        }
        case 11:{
            strMonth=@"Nov";
            break;
        }
        case 12:{
            strMonth=@"Dec";
            break;
        }
        default:{
            strMonth=@"Jan";
            break;
        }
            
    }
    return strMonth;
}

@end
