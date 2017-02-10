//
//  ViewController.m
//  CustomSheet
//
//  Created by Frayda on 10/2/17.
//  Copyright © 2017 72.iJF4Ever. All rights reserved.
//

#import "ViewController.h"
#import "CustomSheetView.h"

@interface ViewController ()<CustomSheetViewDelegate>{
    NSArray * ar;
    UILabel *titleLbl;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width/2-60, 180, 120, 40)];
    [self.view addSubview:btn];
    [btn setTitle:@"show" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClicked) forControlEvents:UIControlEventTouchUpInside];
    titleLbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 250, [[UIScreen mainScreen] bounds].size.width, 50)];
    [self.view addSubview:titleLbl];
    titleLbl.textAlignment = NSTextAlignmentCenter;
    titleLbl.textColor = [UIColor blackColor];
}

- (void)btnClicked{
    ar = @[@"west world",@"Santa Clarita Diet",@"shield"];
//    CustomSheetView *sheet = [[CustomSheetView alloc] initWithBottomBtn:1 leftPoint:1 rightTitleData:ar];
    CustomSheetView *sheet = [[CustomSheetView alloc] initWithBottomBtn:0 leftPoint:0 rightTitleData:ar];
//    CustomSheetView *sheet = [[CustomSheetView alloc] initWithBottomBtn:1 leftPoint:0 rightTitleData:ar];
//    CustomSheetView *sheet = [[CustomSheetView alloc] initWithBottomBtn:0 leftPoint:1 rightTitleData:ar];
    sheet.delegate = self;
    [self.view addSubview:sheet];
}
- (void)actionSheetDidSelect:(NSInteger)index{
    if (index==72) {
        titleLbl.text = @"you clicked cancel";
    }else{
        titleLbl.text = [NSString stringWithFormat:@"you clicked %@",ar[index]];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
