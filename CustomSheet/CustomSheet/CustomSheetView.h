//
//  CustomSheetView.h
//  CustomSheet
//
//  Created by Frayda on 10/2/17.
//  Copyright © 2017 72.iJF4Ever. All rights reserved.
//

#import <UIKit/UIKit.h> 
#define IPHONE5     [[UIScreen mainScreen] bounds].size.height >( double )565 && [[UIScreen mainScreen] bounds].size.height <( double )600
#define IPHONE6     [[UIScreen mainScreen] bounds].size.height >( double )660 && [[UIScreen mainScreen] bounds].size.height <( double )700
#define IPHONE6P    [[UIScreen mainScreen] bounds].size.height >( double )730 && [[UIScreen mainScreen] bounds].size.height <( double )800

@protocol CustomSheetViewDelegate <NSObject>

- (void)actionSheetDidSelect:(NSInteger)index;

@end
@interface CustomSheetView : UIView{
    CGSize textSize;
}
@property (nonatomic,weak) id<CustomSheetViewDelegate>delegate;

- (CustomSheetView*)initWithBottomBtn:(NSInteger)btnTitle leftPoint:(NSInteger)type rightTitleData:(NSArray*)rightTitles;
@end
