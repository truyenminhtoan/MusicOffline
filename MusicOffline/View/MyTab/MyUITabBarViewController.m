//
//  MyUITabBarViewController.m
//  MusicOffline
//
//  Created by Truyen Minh Toan on 5/28/15.
//  Copyright (c) 2015 Truyen Minh Toan. All rights reserved.
//

#import "MyUITabBarViewController.h"

@interface MyUITabBarViewController ()

@end

@implementation MyUITabBarViewController
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){

    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CGRect frame=CGRectMake(0, 0, self.view.bounds.size.width, 48);
    UIView *v=[[UIView alloc]initWithFrame:frame];
    [v setBackgroundColor:[UIColor greenColor]];
    [v setAlpha:0.5];
    [[self tabBar] addSubview:v];
    
    [[UITabBarItem appearance]
     setTitleTextAttributes:@{UITextAttributeTextColor:[UIColor whiteColor],
                              UITextAttributeFont:[UIFont boldSystemFontOfSize:16.0f]} forState:UIControlStateNormal];
    
    [[UITabBarItem appearance]
     setTitleTextAttributes:@{UITextAttributeTextColor:[UIColor blueColor],
                              UITextAttributeFont:[UIFont boldSystemFontOfSize:16.0f]} forState:UIControlStateHighlighted];
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
