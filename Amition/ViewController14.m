//
//  ViewController14.m
//  Amition
//
//  Created by 余浩 on 17/3/4.
//  Copyright © 2017年 余浩. All rights reserved.
//

#import "ViewController14.h"
#import "ViewController15.h"

@interface ViewController14 (){
    
        UIImageView *_imageView;
}

@end

@implementation ViewController14
-(void)clickBack

{
    ViewController15 *vc = [[ViewController15 alloc]init];
    vc.title = @"15";
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

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    //UITouch *touch=touches.anyObject;
    //CGPoint location= [touch locationInView:self.view];
    
    /*关键帧动画
     options:
     */
    [UIView animateKeyframesWithDuration:5.0 delay:0 options: UIViewAnimationOptionCurveLinear| UIViewAnimationOptionCurveLinear animations:^{
        //第二个关键帧（准确的说第一个关键帧是开始位置）:从0秒开始持续50%的时间，也就是5.0*0.5=2.5秒
        [UIView addKeyframeWithRelativeStartTime:0.0 relativeDuration:0.5 animations:^{
            _imageView.center=CGPointMake(80.0, 220.0);
        }];
        //第三个关键帧，从0.5*5.0秒开始，持续5.0*0.25=1.25秒
        [UIView addKeyframeWithRelativeStartTime:0.5 relativeDuration:0.25 animations:^{
            _imageView.center=CGPointMake(45.0, 300.0);
        }];
        //第四个关键帧：从0.75*5.0秒开始，持所需5.0*0.25=1.25秒
        [UIView addKeyframeWithRelativeStartTime:0.75 relativeDuration:0.25 animations:^{
            _imageView.center=CGPointMake(55.0, 400.0);
        }];
        
    } completion:^(BOOL finished) {
        NSLog(@"Animation end.");
    }];
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
