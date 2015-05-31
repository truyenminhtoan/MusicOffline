//
//  MusicDetailView.h
//  ChuQuyenVietNam
//
//  Created by Truyen Minh Toan on 5/26/15.
//  Copyright (c) 2015 BSD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MusicDetailView : UIViewController
{
    int position;
    NSMutableArray *songLst;
    int currentPage;
}
    -(id)initWithPosition:(int)pos;
@end

