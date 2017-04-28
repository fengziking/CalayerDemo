//
//  ViewController17.m
//  Amition
//
//  Created by 刘建明 on 17/4/20.
//  Copyright © 2017年 余浩. All rights reserved.
//

#import "ViewController17.h"

@interface ViewController17 ()

@end

@implementation ViewController17

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *view = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 200, 30)];
    view.backgroundColor = [UIColor redColor];
    view.text = @"我可以是标签";
    //view.layer.mask = [[CALayer alloc]init];
    
    [self.view addSubview:view];
    
    [self setupAnimationWithStartRect:CGRectMake(100, 0, 0, CGRectGetHeight(view.frame)) endRect:CGRectMake(0, 0, CGRectGetWidth(view.frame), CGRectGetHeight(view.frame)) object:view duration:0.5];
}
//设置动画
-(void)setupAnimationWithStartRect:(CGRect)startRect endRect:(CGRect)endRect object:(UIView *)view duration:(NSTimeInterval)duration {
    
    UIBezierPath *beginPath = [UIBezierPath bezierPathWithRect:startRect];
    
    UIBezierPath *endPath = [UIBezierPath bezierPathWithRect:endRect];
    // UIBezierPath *mask = [UIBezierPath bezierPathWithRoundedRect:<#(CGRect)#> byRoundingCorners:<#(UIRectCorner)#> cornerRadii:<#(CGSize)#>];
    CAShapeLayer *quickMask = [[CAShapeLayer alloc]init];
    quickMask.path = endPath.CGPath;
    quickMask.fillColor = [UIColor whiteColor].CGColor;
    view.layer.mask = quickMask;
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"path"];
    animation.duration = duration;
    animation.beginTime = CACurrentMediaTime();
    animation.fromValue = (__bridge id _Nullable)(beginPath.CGPath);
    animation.toValue = (__bridge id _Nullable)(endPath.CGPath);
    [quickMask addAnimation:animation forKey:@"path"];
    
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
