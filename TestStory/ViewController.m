//
//  ViewController.m
//  TestStory
//
//  Created by Airweb on 20/01/2015.
//  Copyright (c) 2015 Airweb. All rights reserved.
//

#import "ViewController.h"
#import "addVisiteHeader.h"
#import <CoreText/CoreText.h>

@interface ViewController ()
@property (nonatomic, retain) IBOutlet UILabel* myLabel;
@property (nonatomic, retain) addVisiteHeader* addV;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton* b = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    b.backgroundColor = [UIColor redColor];
    [self.view addSubview:b];
    [b addTarget:self action:@selector(changeSize) forControlEvents:UIControlEventTouchUpInside];
    
    NSArray* addVArr = [[NSBundle mainBundle] loadNibNamed:@"addVisiteHeader" owner:self options:nil];
    _addV = [addVArr objectAtIndex:0];
    _addV.center = CGPointMake(600, 200);
    [self.view addSubview:_addV];
    
    if (isRegistered)
    {
        NSLog(@"isgranted = YES");
        
    }
    else{
        NSLog(@"isgranted = NO");
    }
    
    
    NSString *paddedNumber = [NSString stringWithFormat:@"%0*d", 4, 45];
    NSString *squareTest = [NSString stringWithFormat:@"Surface : %d ㎡", 45];
    UIFont *font = [UIFont fontWithName:_myLabel.font.familyName size:_myLabel.font.pointSize * 0.75];
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:@"1,000 m3"];
    NSDictionary *attributes = @{(id)kCTSuperscriptAttributeName : @(1),
                                 (id)NSFontAttributeName         : font};
    [string addAttributes:attributes range:NSMakeRange(7, 1)];
    _myLabel.attributedText = string;
    
    int num = 45435437;
    
    NSString* formattedOutput = [NSNumberFormatter localizedStringFromNumber:@(num) numberStyle:NSNumberFormatterDecimalStyle];
    formattedOutput = [formattedOutput stringByReplacingOccurrencesOfString:@"," withString:@" "];
    NSLog(@"formattedOutput : %@", formattedOutput);
}

-(void)changeSize{
    CGRect frame = _addV.frame;
    frame.size.width = frame.size.width * 0.5f;
    [_addV setFrame:frame];
    [_addV setNeedsDisplay];
    [_addV setNeedsLayout];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
