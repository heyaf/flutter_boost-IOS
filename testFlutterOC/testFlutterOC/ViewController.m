//
//  ViewController.m
//  testFlutterOC
//
//  Created by mac on 2022/2/17.
//

#import "ViewController.h"
#import <flutter_boost/FlutterBoost.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.whiteColor;
    
    UIButton *btn = [UIButton buttonWithType:0];
    btn.frame = CGRectMake(0, 0, 100, 100);
    btn.center = self.view.center;
    btn.backgroundColor = UIColor.redColor;
    [btn addTarget:self action:@selector(btnClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}
-(void)btnClicked{
    FlutterBoost *flutterboost = [FlutterBoost instance];
    [flutterboost open:@"flutterPage" arguments:@{@"animated":@(YES)} completion:^(BOOL boola) {
            
    }];
    
    
}


@end
