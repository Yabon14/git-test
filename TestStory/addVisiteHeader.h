


#import <UIKit/UIKit.h>

@interface addVisiteHeader : UIView
 
@property (nonatomic,strong) IBOutlet UIButton * addDeleteButton;
@property (nonatomic,strong) IBOutlet UIButton * cancelDeleteButton;
@property (nonatomic,strong) IBOutlet UIButton * validateDeleteButton;
@property (nonatomic,strong) IBOutlet UIView * addVisiteView;
@property (nonatomic,strong) IBOutlet UIView * cancelOrValidateView;
@property (nonatomic,strong) IBOutlet UILabel * position;
@property (nonatomic,strong) IBOutlet NSLayoutConstraint* addDeleteButtonWidth;
@end
