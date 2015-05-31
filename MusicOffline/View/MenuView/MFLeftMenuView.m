//
//  MFLeftMenuView.m
//  ChuQuyenVietNam
//
//  Created by Truyen Minh Toan on 5/26/15.
//  CopyLeft (c) 2015 BSD. All Lefts reserved.
//

#import "MFLeftMenuView.h"
#import "Constants.h"
#import "LeftMenuCellView.h"

@interface MFLeftMenuView ()

@end

@implementation MFLeftMenuView
@synthesize tableContent;
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self==nil) {
        
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section==0) {
        return 5;
    } else {
        return 2;
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LeftMenuCellView *cell=[tableView dequeueReusableCellWithIdentifier:nil];
    if(cell==nil) {
        cell=[[LeftMenuCellView alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
        UIView *view=[[UIView alloc]init];
        view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"bg_patern_cell.png"]];
        cell.backgroundView=view;
        
        UIView *viewBg=[[UIView alloc]init];
        view.backgroundColor=[UIColor colorWithRed:208.0f/255 green:208.0f/255 blue:208.0f/255 alpha:1];
        cell.backgroundView=viewBg;
        viewBg=nil;
    }
    
    UIImageView *icon=[[UIImageView alloc]init];
    icon.frame=CGRectMake(10, 0, 44, 44);
    [cell addSubview:icon];

    UILabel *lableTitle=[[UILabel alloc]initWithFrame:CGRectMake(60, 0, SCREEN_WIDTH-20, 45)];
    lableTitle.backgroundColor=[UIColor whiteColor];
    lableTitle.font=[UIFont boldSystemFontOfSize:15];
    lableTitle.textColor=[UIColor blackColor];
    lableTitle.textAlignment=UITextAlignmentLeft;
    [cell addSubview:lableTitle];
    
    if (indexPath.section==0) {
        
        switch (indexPath.row) {
            case 0:
                lableTitle.text=@"10 Ca khuc yeu thich";
                icon.image=[UIImage imageNamed:@"icon_top_yeuthich.png"];
                break;
  
            case 1:
                lableTitle.text=@"Top mp3 korea";
                icon.image=[UIImage imageNamed:@"icon_mp3.png"];
                break;
                
            case 2:
                lableTitle.text=@"Viet nam music";
                icon.image=[UIImage imageNamed:@"icon_rock.png"];
                break;
                
            case 3:
                lableTitle.text=@"Nhac vang";
                icon.image=[UIImage imageNamed:@"icon_thantuong_amnhac.png"];
                break;
                
            case 4:
                lableTitle.text=@"Nhac co dien";
                icon.image=[UIImage imageNamed:@"icon_rock.png"];
                break;
        }

    } else if(indexPath.section==1) {
        
        switch (indexPath.row) {
            case 0:
                lableTitle.text=@"Plays List";
                icon.image=[UIImage imageNamed:@"icon_top_yeuthich.png"];
                break;
                
            default:
                lableTitle.text=@"Nghe nhieu nhat";
                icon.image=[UIImage imageNamed:@"icon_mp3.png"];
                break;
        }

    }
    
    return cell;
}

//HEADER
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 30;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *headerView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 45)];
    if(section==0)
    {
        UIView *bgSession0=[[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH-20, 30)];
        bgSession0.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"bg_section.png"]];
        [headerView addSubview:bgSession0];
        
        UILabel *labelContent0=[[UILabel alloc]initWithFrame:CGRectMake(10, 0, SCREEN_WIDTH-20, 30)];
        labelContent0.text=@"NHAC ONLINE";
        [headerView addSubview:labelContent0];
        
    }else if (section==1)
    {
        UIView *bgSession1=[[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH-20, 30)];
        bgSession1.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"bg_section.png"]];
        [headerView addSubview:bgSession1];
        
        UILabel *labelContent1=[[UILabel alloc]initWithFrame:CGRectMake(10, 0, SCREEN_WIDTH-20, 30)];
        labelContent1.text=@"NHAC CUA TOI";
        [headerView addSubview:labelContent1];
    }
    return headerView;
}

/*
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView* v_header = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 45)];
    int k=0;
    if(section==0){
        k=45;
        v_header.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"bg_patern_cell.png"]];
        
        UIImageView* imv_icon1 = [[UIImageView alloc] init];
        imv_icon1.frame = CGRectMake(5, 5, 35, 35);
        imv_icon1.image = [UIImage imageNamed:@"icon120.png"];
        [v_header addSubview:imv_icon1];
        
        UILabel* lb_title1 = [[UILabel alloc] initWithFrame:CGRectMake(47, 5 , SCREEN_WIDTH - 97, 17)];
        lb_title1.backgroundColor = [UIColor clearColor];
        lb_title1.textColor = [UIColor darkGrayColor];
        lb_title1.font = [UIFont boldSystemFontOfSize:16];
        lb_title1.text = @"BOOK.ONE";
        [v_header addSubview:lb_title1];
        
        UILabel* lb_title2 = [[UILabel alloc] initWithFrame:CGRectMake(47, 20 , SCREEN_WIDTH - 97, 23)];
        lb_title2.backgroundColor = [UIColor clearColor];
        lb_title2.textColor = [UIColor darkGrayColor];
        lb_title2.font = [UIFont fontWithName:@"Noteworthy-Bold" size:15];
        lb_title2.text = @"Tân Tây Du Ký 2011 - Truyện tranh hài hước";
        [v_header addSubview:lb_title2];
    }
    
    
    UIView* imv_bg = [[UIView alloc] initWithFrame:CGRectMake(0, k, SCREEN_WIDTH, 30)];
    imv_bg.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg_navigation.png"]];
    [v_header addSubview:imv_bg];
    
    UIImageView* imv_icon = [[UIImageView alloc] init];
    
    
    UILabel* lb_title = [[UILabel alloc] initWithFrame:CGRectMake(10,k+5-2, SCREEN_WIDTH - 97, 24)];
    lb_title.backgroundColor = [UIColor clearColor];
    lb_title.textColor = [UIColor whiteColor];
    lb_title.font = [UIFont systemFontOfSize:14];
    
    lb_title.text = @"ỨNG DỤNG";
    
    [v_header addSubview:imv_icon];
    [v_header addSubview:lb_title];
    
    
    return v_header;
}
 */


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void) initView
{
    UIImageView *logoView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 80)];
    logoView.image=[UIImage imageNamed:@"logo_amnhac.png"];
    [self.view addSubview:logoView];
    
    tableContent=[[UITableView alloc]initWithFrame:CGRectMake(0, 80, SCREEN_WIDTH, SCREEN_HEIGHT-20)];
    tableContent.delegate=self;
    tableContent.dataSource=self;
    [self.view addSubview:tableContent];
    
}

@end
