//
//  ViewController12.m
//  Amition
//
//  Created by 余浩 on 17/3/4.
//  Copyright © 2017年 余浩. All rights reserved.
//

#import "ViewController12.h"
#import "ViewController11.h"

#define IMAGE_COUNT 10
@interface ViewController12 (){
    
    CALayer *_layer;
    int _index;
    NSMutableArray *_images;
}

@end

@implementation ViewController12
-(void)clickBack
{
    ViewController11 *vc = [[ViewController11 alloc]init];
    vc.title = @"12";
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    //设置背景
    self.view.layer.contents=(id)[UIImage imageNamed:@"photo"].CGImage;
    
    //创建图像显示图层
    _layer=[[CALayer alloc]init];
    _layer.bounds=CGRectMake(0, 0, 87, 32);
    _layer.position=CGPointMake(160, 284);
    [self.view.layer addSublayer:_layer];
    
    //由于鱼的图片在循环中会不断创建，而10张鱼的照片相对都很小
    //与其在循环中不断创建UIImage不如直接将10张图片缓存起来
    _images=[NSMutableArray array];
    for (int i=0; i<10; ++i) {
        NSString *imageName=[NSString stringWithFormat:@"photo"];
        UIImage *image=[UIImage imageNamed:imageName];
        [_images addObject:image];
    }
    
    
    //定义时钟对象
    CADisplayLink *displayLink=[CADisplayLink displayLinkWithTarget:self selector:@selector(step)];
    //添加时钟对象到主运行循环
    [displayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
}
#pragma mark 每次屏幕刷新就会执行一次此方法(每秒接近60次)
-(void)step{
    //定义一个变量记录执行次数
    static int s=0;
    //每秒执行6次
    if (++s%10==0) {
        NSString *imageName=[NSString stringWithFormat:@"photo"];
//        UIImage *image=_images[_index];
        UIImage *image=[UIImage imageNamed:imageName];

        _layer.contents=(id)image.CGImage;//更新图片
        _index=(_index+1)%IMAGE_COUNT;
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
