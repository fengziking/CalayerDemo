
//
//  ViewController16.m
//  Amition
//
//  Created by 刘建明 on 17/4/20.
//  Copyright © 2017年 余浩. All rights reserved.
//

#import "ViewController16.h"
#import "ViewController17.h"

@interface ViewController16 (){
    
}
@property(nonatomic,strong)UIView *someView;
@property(nonatomic,strong)UIView *view1;
@property(nonatomic,strong)UIView *view2;

@end

@implementation ViewController16
-(void)clickBack

{
    ViewController17 *vc = [[ViewController17 alloc]init];
    vc.title = @"17";
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.someView = [[UIView alloc] initWithFrame:CGRectMake(20, 40, 100, 100)];
    self.someView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.someView];
    
    _view1 = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 50, 50)];
    _view1.backgroundColor = [UIColor redColor];
    _view1.alpha = 0;
    [self.view addSubview:_view1];
    
    _view2 = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 50, 50)];
    _view2.backgroundColor = [UIColor blueColor];
    [self.someView addSubview:_view2];
}
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
//    [UIView transitionWithView:self.someView duration:2.5 options:UIViewAnimationOptionTransitionFlipFromBottom animations:^{
//        _view2.alpha = 0;
//        self.someView.center = CGPointMake(200, 400);
//        _view1.alpha = 1;
//    } completion:^(BOOL finished) {
//        
//    }];
//    
    [UIView transitionFromView:self.someView toView:_view1 duration:3 options:(UIViewAnimationOptionTransitionFlipFromTop) completion:^(BOOL finished) {
        _view2.alpha = 0;
       // self.someView.center = CGPointMake(200, 400);
        _view1.alpha = 1;
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
