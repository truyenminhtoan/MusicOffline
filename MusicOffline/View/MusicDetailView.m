//
//  MusicDetailView.m
//  ChuQuyenVietNam
//
//  Created by Truyen Minh Toan on 5/26/15.
//  Copyright (c) 2015 BSD. All rights reserved.
//

#import "MusicDetailView.h"
#import "AppDelegate.h"
#import "Constants.h"
#import "SongObject.h"

@interface MusicDetailView ()

@end

@implementation MusicDetailView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self initView];
    }
    return self;
}

-(id)initWithPosition:(int)pos
{
    self=[super initWithNibName:nil bundle:nil];
    if(self){
        position=pos;
        [self initView];
    }
    return self;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //[self initView];
    AppDelegate *appDelegate = [AppDelegate getInstance];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void) initView
{
    SongObject *songObject=[self getSongObject];
    
    UILabel *labelTitle=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 30)];
    labelTitle.textAlignment=UITextAlignmentCenter;
    labelTitle.text=songObject.title;
    labelTitle.backgroundColor=[UIColor whiteColor];
    labelTitle.textColor=[UIColor grayColor];
    labelTitle.font=[UIFont boldSystemFontOfSize:20];
    [self.view addSubview:labelTitle];
    self.view.backgroundColor=[UIColor whiteColor];
    
    UILabel *labelSinger=[[UILabel alloc] initWithFrame:CGRectMake(0, 30, SCREEN_WIDTH, 30)];
    labelSinger.textAlignment=UITextAlignmentCenter;
    labelSinger.text=[NSString stringWithFormat:@"(%@)",songObject.singer];
    labelSinger.backgroundColor=[UIColor whiteColor];
    labelSinger.textColor=[UIColor redColor];
    labelSinger.font=[UIFont italicSystemFontOfSize:14];
    [self.view addSubview:labelSinger];
    
    UILabel *labelContent=[[UILabel alloc] initWithFrame:CGRectMake(10, 60, SCREEN_WIDTH-10, SCREEN_HEIGHT-20-44-60)];
    labelContent.textAlignment=UITextAlignmentLeft;
    labelContent.text=[NSString stringWithFormat:@"(%@)",songObject.content];
    labelContent.backgroundColor=[UIColor whiteColor];
    labelContent.textColor=[UIColor grayColor];
    labelContent.font=[UIFont italicSystemFontOfSize:14];
    //labelContent.lineBreakMode=UILineBreakModeWordWrap;
    labelContent.numberOfLines=18;
    [self.view addSubview:labelContent];
}



-(void) initArrayList{
    songLst=[[NSMutableArray alloc]init];
    for (int i=0; i<20; i++) {
        SongObject *song=[[SongObject alloc]init];
        [song setTitle:[NSString stringWithFormat:@"Bai hat so %d",i]];
        [song setSinger:[NSString stringWithFormat:@"Ca si: %d",i]];
        [song setContent:[NSString stringWithFormat:@"Bai hat %d bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay  bai hat hay ",i]];
        [songLst addObject:song];
    }
}


-(SongObject *) getSongObject{
    [self initArrayList];
    SongObject *songObject=[songLst objectAtIndex:position];
    return songObject;
}

@end
