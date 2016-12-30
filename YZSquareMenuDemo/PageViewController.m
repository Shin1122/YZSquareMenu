//
//  PageViewController.m
//  YZSquareMenu
//
//  Created by Shin on 2016/9/29.
//  Copyright © 2016年 Shin. All rights reserved.
//

#import "PageViewController.h"

@interface PageViewController (){
    
    UILabel *pageLabel;
    
}

@end

@implementation PageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    pageLabel =[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 200, 100)];
    pageLabel.center = self.view.center;
    
    pageLabel.textColor = [UIColor blackColor];
    pageLabel.font = [UIFont systemFontOfSize:24];
    
    pageLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:pageLabel];
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(pageName:) name:@"PageName" object:nil];
    
    
    
}

- (void)pageName:(NSNotification *)notification{
    
    NSString *pageNum=[NSString stringWithFormat:@"%@",[notification object]];
    
    [pageLabel setText:[NSString stringWithFormat:@"页面 %@",pageNum]];
    
        
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
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
