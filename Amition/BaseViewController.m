//
//  BaseViewController.m
//  Amition
//
//  Created by 余浩 on 17/3/4.
//  Copyright © 2017年 余浩. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor  = [UIColor whiteColor];
    UIView *leftView = [[UIView alloc] initWithFrame:CGRectMake(20, 0, 60, 44)];
    leftView.backgroundColor = [UIColor blueColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 60, 44);
    btn.imageEdgeInsets = UIEdgeInsetsMake(0, -40, 0, 0);
    btn.titleLabel.font = [UIFont systemFontOfSize:15];
    [btn setTitle:@"下一页" forState:(UIControlStateNormal)];
    [btn setTintColor:[UIColor redColor]];
    // UIBarButtonItem *itm = [[UIBarButtonItem alloc]initWithCustomView:btn];
    [btn addTarget:self action:@selector(clickBack) forControlEvents:UIControlEventTouchUpInside];
    [leftView addSubview:btn];
    // btn.x = 5;
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftView];;
    
    
    UIView *rightView = [[UIView alloc] initWithFrame:CGRectMake(20, 0, 60, 44)];
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame = CGRectMake(0, 0, 60, 44);
    btn1.imageEdgeInsets = UIEdgeInsetsMake(0, -40, 0, 0);
    btn1.titleLabel.font = [UIFont systemFontOfSize:15];
    [btn1 setTitle:@"上一页" forState:(UIControlStateNormal)];
    // UIBarButtonItem *itm = [[UIBarButtonItem alloc]initWithCustomView:btn];
    [btn1 addTarget:self action:@selector(cbtn1Back) forControlEvents:UIControlEventTouchUpInside];
    [rightView addSubview:btn1];
    rightView.backgroundColor = [UIColor blueColor];
    
    // btn.x = 5;
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightView];;
    


}
-(void)clickBack
{


}
-(void)cbtn1Back
{
    [self.navigationController popViewControllerAnimated:YES];
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
