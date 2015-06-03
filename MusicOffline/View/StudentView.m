//
//  StudentView.m
//  MusicOffline
//
//  Created by Truyen Minh Toan on 03/06/2015.
//  Copyright (c) Năm 2015 Truyen Minh Toan. All rights reserved.
//

#import "StudentView.h"

@interface StudentView ()

@end

@implementation StudentView
@synthesize searchField;
@synthesize registerIdField;
@synthesize nameField;
@synthesize departField;
@synthesize yearField;

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        [self initView];
    }
    return self;
}

-(void) initView{
    searchField=[[UITextField alloc]initWithFrame:CGRectMake(10, 10, 100, 30)];
    [self.view addSubview:searchField];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
