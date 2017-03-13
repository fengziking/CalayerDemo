//
//  ViewController11.m
//  Amition
//
//  Created by 余浩 on 17/3/4.
//  Copyright © 2017年 余浩. All rights reserved.
//

#import "ViewController11.h"
#import "ViewController13.h"

@interface ViewController11 (){
    
        UIImageView *_imageView;
}

@end

@implementation ViewController11
-(void)clickBack

{
    ViewController13 *vc = [[ViewController13 alloc]init];
    vc.title = @"13";
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置背景
    UIImage *backgroundImage=[UIImage imageNamed:@"photo"];
    self.view.backgroundColor=[UIColor colorWithPatternImage:backgroundImage];
    
    //创建图像显示控件
    _imageView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"photo"]];
    _imageView.center=CGPointMake(50, 150);
    [self.view addSubview:_imageView];

}
#pragma mark 点击事件
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch=touches.anyObject;
    CGPoint location= [touch locationInView:self.view];
    //方法1：block方式
    /*开始动画，UIView的动画方法执行完后动画会停留在重点位置，而不需要进行任何特殊处理
     duration:执行时间
     delay:延迟时间
     options:动画设置，例如自动恢复、匀速运动等
     completion:动画完成回调方法
     */
    //    [UIView animateWithDuration:5.0 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
    //        _imageView.center=location;
    //    } completion:^(BOOL finished) {
    //        NSLog(@"Animation end.");
    //    }];
    
    //方法2：静态方法
    //开始动画
    [UIView beginAnimations:@"KCBasicAnimation" context:nil];
    [UIView setAnimationDuration:5.0];
    //[UIView setAnimationDelay:1.0];//设置延迟
    //[UIView setAnimationRepeatAutoreverses:NO];//是否回复
    //[UIView setAnimationRepeatCount:10];//重复次数
    //[UIView setAnimationStartDate:(NSDate *)];//设置动画开始运行的时间
    //[UIView setAnimationDelegate:self];//设置代理
    //[UIView setAnimationWillStartSelector:(SEL)];//设置动画开始运动的执行方法
    //[UIView setAnimationDidStopSelector:(SEL)];//设置动画运行结束后的执行方法
    
    _imageView.center=location;
    
    
    //开始动画
    [UIView commitAnimations];
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
