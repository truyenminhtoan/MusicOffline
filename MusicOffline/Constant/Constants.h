//
//  Constants.h
//  NetworkDemo
//
//  Created by Nguyen Thanh Dung on 6/14/10.
//  Copyright 2010 Viettel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


#define ACTION_PATH			@"https://210.211.125.231:8805/"
#define KUNKUN_REQUEST_PATH @"https://210.211.125.231:8805/rpc"

#define ITEM_PER_PAGE 20

#define SYSFONT_NORMAL @"Helvetica"
#define SYSFONT_ITALIC @"Helvetica-Oblique"
#define SYSFONT_BOLD_ITALIC @"Helvetica-BoldOblique"
#define SYSFONT_BOLD @"Helvetica-Bold"

#define SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width
#define SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height

#define kConsumerKey @"touristone"
#define kConsumerSecret @"1192d23f3d8470e0deab0a51d5946f9c"

#define kRequestTokenURL	@"https://210.211.125.231:8805/oauth/token?client_id=%@&client_secret=%@&grant_type=client_credentials&response_type=token"
#define kAuthorizeURL		@"http://mobile.kunkun.vn:8000/oauth/authorize"
#define kAccessTokenURL		@"http://mobile.kunkun.vn:8000/oauth/access_token"

#define COLOR_BG_VIEW [UIColor colorWithRed:226.0f/255 green:226.0f/255 blue:229.0f/255 alpha:1]
#define COLOR_BG_VIEW_SELECT [UIColor colorWithRed:161.7f/255 green:162.4f/255 blue:163.1f/255 alpha:1]
#define COLOR_BG_MENU  [UIColor colorWithRed:112.0f/255 green:60.0f/255 blue:119.0f/255 alpha:1]
#define COLOR_BG_MENU_SELECT  [UIColor colorWithRed:71.4f/255 green:25.2f/255 blue:76.3f/255 alpha:1]
#define COLOR_BG_LINE_MENU  [UIColor colorWithRed:170.0f/255 green:126.0f/255 blue:148.0f/255 alpha:1]

#define COLOR_STATUS_WAITING [UIColor colorWithRed:253.0f/255 green:197.0f/255 blue:104.0f/255 alpha:1]
#define COLOR_STATUS_CONFRIM [UIColor colorWithRed:187.0f/255 green:187.0f/255 blue:186.0f/255 alpha:1]
#define COLOR_STATUS_USED [UIColor colorWithRed:98.0f/255 green:192.0f/255 blue:229.0f/255 alpha:1]
#define COLOR_STATUS_DENY [UIColor colorWithRed:141.0f/255 green:25.0f/255 blue:27.0f/255 alpha:1]
#define COLOR_STATUS_CANCEL [UIColor colorWithRed:242.0f/255 green:109.0f/255 blue:106.0f/255 alpha:1]
#define COLOR_STATUS_CLOSE [UIColor colorWithRed:171.0f/255 green:202.0f/255 blue:82.0f/255 alpha:1]
#define COLOR_DARK_GRAY [UIColor colorWithWhite:0.2f alpha:1.0f]


#define SYSFONT_14 [UIFont systemFontOfSize:14]
#define BOLDSYSFONT_14 [UIFont boldSystemFontOfSize:14]

#define iCategoryRow 0
#define pageSize 9

@interface Constants : NSObject {
	
}

@end
