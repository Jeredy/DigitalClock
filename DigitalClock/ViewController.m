//
//  ViewController.m
//  DigitalClock
//
//  Created by André Almeida on 2022-09-28.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self updateTimer];
    
    time = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
    
    self.settingsView.hidden = YES;
    self.settingsButton.alpha = 0.25;
    
    self.settingsView.layer.cornerRadius = 5;
    self.settingsButton.layer.cornerRadius = 5;

}

-(void)updateTimer {
    NSDateFormatter *timeFormat = [[NSDateFormatter alloc] init];
    
    [timeFormat setDateFormat:@"HH:mm:ss"];
    self.label.text = [timeFormat stringFromDate: [NSDate date]];
}


- (IBAction)backgroundImage:(id)sender {
    
    self.backgroundImage.hidden = NO;
    
    if (self.backgroundImageSeg.selectedSegmentIndex == 0) {
        self.backgroundImage.image = [UIImage imageNamed:@"Background1"];
    }
    
    if (self.backgroundImageSeg.selectedSegmentIndex == 1) {
        self.backgroundImage.image = [UIImage imageNamed:@"Background2"];
    }
    
    if (self.backgroundImageSeg.selectedSegmentIndex == 2) {
        self.backgroundImage.image = [UIImage imageNamed:@"Background3"];
    }
    
    if (self.backgroundImageSeg.selectedSegmentIndex == 3) {
        self.backgroundImage.image = [UIImage imageNamed:@"Background4"];
    }
}

- (IBAction)backgroundColor:(id)sender {
    
    self.backgroundImage.hidden = YES;
    
    if (self.backgroundColorSeg.selectedSegmentIndex == 0) {
        self.view.backgroundColor = [UIColor blackColor];
    }
    
    if (self.backgroundColorSeg.selectedSegmentIndex == 1) {
        self.view.backgroundColor = [UIColor whiteColor];
    }
    
    if (self.backgroundColorSeg.selectedSegmentIndex == 2) {
        self.view.backgroundColor = [UIColor yellowColor];
    }
    
    if (self.backgroundColorSeg.selectedSegmentIndex == 3) {
        self.view.backgroundColor = [UIColor blueColor];
    }
}

- (IBAction)clockColor:(id)sender {
    if (self.clockColorSeg.selectedSegmentIndex == 0) {
        self.label.textColor = [UIColor whiteColor];
    }
    
    if (self.clockColorSeg.selectedSegmentIndex == 1) {
        self.label.textColor = [UIColor blackColor];
    }
    
    if (self.clockColorSeg.selectedSegmentIndex == 2) {
        self.label.textColor = [UIColor greenColor];
    }
    
    if (self.clockColorSeg.selectedSegmentIndex == 3) {
        self.label.textColor = [UIColor redColor];
    }
}

- (IBAction)settings:(id)sender {
    
    if (self.settingsView.hidden == YES) {
        self.settingsView.hidden = NO;
        self.settingsButton.alpha = 1.0;
        [self.settingsButton setTitle:@"Hide Settings" forState:UIControlStateNormal];
    } else {
        self.settingsView.hidden = YES;
        self.settingsButton.alpha = 0.25;
        [self.settingsButton setTitle:@"Show Settings" forState:UIControlStateNormal];
    }
}
@end
