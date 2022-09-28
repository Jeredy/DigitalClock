//
//  ViewController.h
//  DigitalClock
//
//  Created by André Almeida on 2022-09-28.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *time;
}

@property (strong, nonatomic) IBOutlet UIView *view;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImage;
@property (weak, nonatomic) IBOutlet UIView *settingsView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *clockColorSeg;
@property (weak, nonatomic) IBOutlet UISegmentedControl *backgroundColorSeg;
@property (weak, nonatomic) IBOutlet UISegmentedControl *backgroundImageSeg;
@property (weak, nonatomic) IBOutlet UIButton *settingsButton;

- (IBAction)settings:(id)sender;
- (IBAction)clockColor:(id)sender;
- (IBAction)backgroundColor:(id)sender;
- (IBAction)backgroundImage:(id)sender;


@end

