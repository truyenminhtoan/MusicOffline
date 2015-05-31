//
//  SecondViewController.m
//  MusicOffline
//
//  Created by Truyen Minh Toan on 5/28/15.
//  Copyright (c) 2015 Truyen Minh Toan. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize lastViewController;
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        self.title=@"second tab";
        self.tabBarItem.image=[UIImage imageNamed:@"bg_patern_cell.png"];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *myLabel=[[UILabel alloc] initWithFrame:CGRectMake(20, 20, 300, 100)];
    myLabel.text=@"Second View Controller";
    myLabel.font=[UIFont boldSystemFontOfSize:24.0f];
    [self.view addSubview:myLabel];
    
    UIButton *myButton=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [myButton setTitle:@"Add another Tab" forState:UIControlStateNormal];
    myButton.frame=CGRectMake(85.0f, 100.0f, 150.0f, 37.0f);
    [myButton addTarget:self action:@selector(checkButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:myButton];
}

-(void)checkButtonClick:(UIButton *)paramSender{
    UIButton   *myButton=paramSender;
    if([myButton.currentTitle isEqualToString:@"Add another Tab"]){
        if (self.lastViewController==nil) {
            LastViewController *lastView=[[LastViewController alloc]init];
            self.lastViewController=lastView;
            NSArray *currentControllers=self.tabBarController.viewControllers;
            
            NSMutableArray *newControllers=[NSMutableArray arrayWithArray:currentControllers];
            
            [newControllers addObject:lastViewController];
            
            [self.tabBarController setViewControllers:newControllers animated:YES];
            
            [self.tabBarController setSelectedIndex:(newControllers.count-1)];
        }
    }
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
