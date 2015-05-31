//
//  FirstViewController.m
//  MusicOffline
//
//  Created by Truyen Minh Toan on 5/28/15.
//  Copyright (c) 2015 Truyen Minh Toan. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        self.title=@"first tab";
        self.tabBarItem.image=[UIImage imageNamed:@"bg_naviage_amnhac.png"];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *myLabel=[[UILabel alloc] initWithFrame:CGRectMake(20, 20, 300, 100)];
    myLabel.text=@"First View Controller";
    myLabel.font=[UIFont boldSystemFontOfSize:24.0f];
    [self.view addSubview:myLabel];
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

@end
