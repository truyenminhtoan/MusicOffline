//
//  MusicListView.m
//  MusicOffline
//
//  Created by Truyen Minh Toan on 5/27/15.
//  Copyright (c) 2015 Truyen Minh Toan. All rights reserved.
//

#import "MusicListView.h"
#import <QuartzCore/QuartzCore.h>
#import "UIScrollView+SVPullToRefresh.h"
#import "UIScrollView+SVInfiniteScrolling.h"

#import "Constants.h"
#import "MusicDetailView.h"
#import "AppDelegate.h"
#import "MFSideMenu.h"
#import "CBAutoScrollLabel.h"
#import "SongObject.h"

static int initialPage=1;
@interface MusicListView ()

@end

@implementation MusicListView

@synthesize tableView=_tableView;
@synthesize currentPage=_currentPage;
@synthesize myList=_myList;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.menuContainerViewController.panMode=MFSideMenuPanModeNone;
    self.view.backgroundColor = COLOR_BG_VIEW;
    [self createLeftItemBarWithScrollLabel:@"MỤC LỤC"];
    
    _myList=[NSMutableArray array];
    _currentPage=initialPage;
    
    //init table list
    self.tableView=[[UITableView alloc]initWithFrame:self.view.bounds];
    self.tableView.autoresizingMask=UIViewAutoresizingFlexibleBottomMargin;
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
    [self.view addSubview:self.tableView];
    
    __weak typeof (self) weakSelf=self;
    //Refesh new data when pull the table lis
    [self.tableView addPullToRefreshWithActionHandler:^{
        weakSelf.currentPage=initialPage;
        [weakSelf.myList removeAllObjects];
        [weakSelf.tableView reloadData];
        [weakSelf loadFormServer];
        [weakSelf.tableView.pullToRefreshView stopAnimating];
        weakSelf.tableView.showsInfiniteScrolling=YES;
    }];
    
    [self.tableView addInfiniteScrollingWithActionHandler:^{
        [weakSelf loadFormServer];
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) loadFormServer{
    _currentPage++;
    int currentRow=[_myList count];
    
    for (int i=0; i<5; i++) {
        SongObject *song=[[SongObject alloc]init];
        [song setTitle:[NSString stringWithFormat:@"Bai hat so %d",_currentPage*5+i+1]];
        [song setSinger:[NSString stringWithFormat:@"Ca si: %d",_currentPage*5+i+1]];
        [song setContent:[NSString stringWithFormat:@"Bai hat %d bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay ",_currentPage*5+i+1]];
        [_myList addObject:song];
    }
    
    [self reloadTableView:currentRow];
    
    //clear the pull
    [self.tableView.pullToRefreshView stopAnimating];
    [self.tableView.infiniteScrollingView stopAnimating];
}


-(void) reloadTableView:(int) startingRow
{
    int endingRow=[_myList count];
    NSMutableArray *indePaths=[NSMutableArray array];
    for (; startingRow<endingRow; startingRow++) {
        [indePaths addObject:[NSIndexPath indexPathForRow:startingRow inSection:0]];
    }
    [self.tableView insertRowsAtIndexPaths:indePaths withRowAnimation:UITableViewRowAnimationFade];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_myList count];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIndentifier=@"Cell";
    UITableViewCell *cell =[[UITableViewCell alloc]init];
    
    if(cell==nil){
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIndentifier];
        cell.selectionStyle=UITableViewCellSelectionStyleGray;
    }
    
    if(indexPath.row %2 ==0){
        cell.backgroundColor=[UIColor colorWithRed:231.0f/255 green:232.0f/255 blue:233.0f/255 alpha:1];
    }else{
        cell.backgroundColor=[UIColor whiteColor];
    }
    
    NSString *chapterNumber;
    if (indexPath.row+1<[_myList count]) {
        chapterNumber=[NSString stringWithFormat:@"0%d",indexPath.row+1];
    } else {
        chapterNumber=[NSString stringWithFormat:@"%d",indexPath.row+1];
    }
    
    UIImageView *imvIcon=[[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 30, 30)];
    imvIcon.image=[UIImage imageNamed:@"icon_amnhac.png"];
    [cell.contentView addSubview:imvIcon];
    
    
    SongObject *songObject=[_myList objectAtIndex:indexPath.row];
    
    
    UILabel *labelNumber=[[UILabel alloc] initWithFrame:CGRectMake(50, 0, 235, 50)];
    labelNumber.textAlignment=UITextAlignmentLeft;
    labelNumber.text=[NSString stringWithFormat:@"%@", songObject.title];
    labelNumber.backgroundColor=[UIColor clearColor];
    labelNumber.textColor=[UIColor grayColor];
    labelNumber.font=[UIFont boldSystemFontOfSize:17];
    [cell.contentView addSubview:labelNumber];
    
    
    
    return cell;
}


-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //    MusicDetailView * viewDetail=[[MusicDetailView alloc]initWithNibName:nil bundle:nil];
    //MusicDetailView * viewDetail=[[MusicDetailView alloc]initWithNibName:@"titleMusic" bundle:nil];
    //[viewDetail setNilValueForKey:@"BAC"];
    MusicDetailView * viewDetail=[[MusicDetailView alloc]initWithPosition:indexPath.row];
    [self.navigationController pushViewController:viewDetail animated:YES];
}

- (void) createLeftItemBarWithScrollLabel:(NSString*) navigatorTitle{
    self.navigationItem.leftBarButtonItem = nil;
    CGRect leftRect = CGRectMake(0, 0, SCREEN_WIDTH - 100, 44);
    UIView* leftView = [[UIView alloc] initWithFrame:leftRect];
    
    
    UIButton* btBack = [[UIButton alloc] initWithFrame:CGRectMake(0, 5, 34, 34)];
    UIImage* imgBack = [UIImage imageNamed:@"menu1.png"];
    [btBack setImage:imgBack forState:UIControlStateNormal];
    [btBack addTarget:self action:@selector(leftMenu:) forControlEvents:UIControlEventTouchUpInside];
    [leftView addSubview:btBack];
    
    
    CGRect scrollRect = CGRectMake(45, 0, SCREEN_WIDTH - 60, 44);
    CBAutoScrollLabel *autoScrollLabel = [[CBAutoScrollLabel alloc] initWithFrame:scrollRect];
    autoScrollLabel.text = navigatorTitle;
    autoScrollLabel.textColor = [UIColor blackColor];
    autoScrollLabel.labelSpacing = 20; // distance between start and end labels
    autoScrollLabel.pauseInterval = 0.3; // seconds of pause before scrolling starts again
    autoScrollLabel.font = [UIFont boldSystemFontOfSize:20];
    autoScrollLabel.scrollSpeed = 30; // pixels per second
    autoScrollLabel.textAlignment = UITextAlignmentLeft; // centers text when no auto-scrolling is applied
    autoScrollLabel.fadeLength = 12.f;
    autoScrollLabel.scrollDirection = CBAutoScrollDirectionLeft;
    [autoScrollLabel observeApplicationNotifications];
    [leftView addSubview:autoScrollLabel];
    autoScrollLabel = nil;
    
    UIBarButtonItem *negativeSpacer = [[UIBarButtonItem alloc]
                                       initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
                                       target:nil action:nil];
    int widthFrame = -2;
    if(IS_IOS7){
        widthFrame = -12;
    }
    negativeSpacer.width = widthFrame;// it was -6 in iOS 6
    
    UIBarButtonItem * segmentBarItem = [[UIBarButtonItem alloc] initWithCustomView: leftView];
    //self.navigationItem.leftBarButtonItem = segmentBarItem;
    [self.navigationItem setLeftBarButtonItems:[NSArray arrayWithObjects:negativeSpacer, segmentBarItem, nil] animated:NO];
    segmentBarItem = nil;
}

- (void) leftMenu:(id)sender{
    [self.menuContainerViewController toggleLeftSideMenuCompletion:^{
        
    }];
}

@end
