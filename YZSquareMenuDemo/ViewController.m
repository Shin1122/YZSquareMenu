//
//  ViewController.m
//  YZSquareMenu
//
//  Created by Shin on 2016/9/28.
//  Copyright © 2016年 Shin. All rights reserved.
//

#import "ViewController.h"
#import "PageViewController.h"


@interface ViewController ()<YZSquareMenuDelegate>{
    
    NSArray *imageArr;
    NSArray *titleArr;
    PageViewController *pageViewController;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /* Demo1*/
    _squareMenuView1=({
        
        YZSquareMenu *_=[[YZSquareMenu alloc]initWithFrame:CGRectMake(0, 40, CGRectGetWidth(self.view.frame), 240)];
        _.iconType = YZMenuIconTypeNone;
        _.iconNumbers =8;
        _.menuIconName =@[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8"];
        _.menuIconTitle =@[@"标题1",@"标题2",@"标题3",@"标题4",@"标题5",@"标题6",@"标题7",@"标题8"];
        _.YZSquareMenuDelegate=self;
        
        [self.view addSubview:_];
        /* 点击回调*/
        [_ selectedItem:^(NSInteger index) {
            
            NSLog(@"%ld",index);
            
            [[NSNotificationCenter defaultCenter]postNotificationName:@"PageName" object:[NSString stringWithFormat:@"%ld",index]];
            
            [self presentViewController:pageViewController animated:YES completion:nil];

        }];
        _;
    
    });
    [self.view addSubview:_squareMenuView1];

    
    /* Demo2*/
    
    _squareMenuView2=({
        YZSquareMenu *_=[[YZSquareMenu alloc]initWithFrame:CGRectMake(0, 300, CGRectGetWidth(self.view.frame), 200)];
        _.iconType = YZMenuIconTypeRound;
        _.iconNumbers =10;
        _.menuIconName =@[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10"];
        _.menuIconTitle =@[@"标题1",@"标题2",@"标题3",@"标题4",@"标题5",@"标题6",@"标题7",@"标题8",@"标题9",@"标题10"];
        _.YZSquareMenuDelegate=self;
        /* 点击回调*/
        [_ selectedItem:^(NSInteger index) {
            
            NSLog(@"%ld",index);
            [[NSNotificationCenter defaultCenter]postNotificationName:@"PageName" object:[NSString stringWithFormat:@"%ld",index]];
            
            [self presentViewController:pageViewController animated:YES completion:nil];
            
        }];

        _;

    });
    [self.view addSubview:_squareMenuView2];
    
    /* Demo3*/
    
    _squareMenuView3=({
        YZSquareMenu *_=[[YZSquareMenu alloc]initWithFrame:CGRectMake(0, 500, CGRectGetWidth(self.view.frame), 200) iconNumbers:10 menuIconName:@[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10"] menuIconTitle:@[@"标题1",@"标题2",@"标题3",@"标题4",@"标题5",@"标题6",@"标题7",@"标题8",@"标题9",@"标题10"] iconType:YZMenuIconTypeCornerRound] ;
        _.YZSquareMenuDelegate = self;
        /* 点击回调 获取index值*/
        [_ selectedItem:^(NSInteger index) {
            
            
            [[NSNotificationCenter defaultCenter]postNotificationName:@"PageName" object:[NSString stringWithFormat:@"%ld",index]];
            
            [self presentViewController:pageViewController animated:YES completion:nil];
            
        }];

        _;
        
    });
    [self.view addSubview:_squareMenuView3];
    
    pageViewController = [PageViewController new];
    
    
}

/*回调方法2 delegate */
//- (void) touchesIconIndex:(NSInteger)index{
//    
//    NSLog(@"点击图标序号：%ld",index);
//    
//    [[NSNotificationCenter defaultCenter]postNotificationName:@"PageName" object:[NSString stringWithFormat:@"%ld",index]];
//    
//    [self presentViewController:pageViewController animated:YES completion:nil];
//    
//    
//}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
