//
//  MusicListView.h
//  MusicOffline
//
//  Created by Truyen Minh Toan on 5/27/15.
//  Copyright (c) 2015 Truyen Minh Toan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MusicListView : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property(nonatomic, strong) UITableView *tableView;
@property(nonatomic,assign) int currentPage;
@property(nonatomic, strong) NSMutableArray *myList;

@end
