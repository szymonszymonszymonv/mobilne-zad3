//
//  ViewController.m
//  zadd1
//
//  Created by student on 15/11/2021.
//  Copyright © 2021 JG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UIButton *informationButton;
@property (nonatomic, weak) IBOutlet UIImageView *image;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_image setImage:[UIImage imageNamed:NSLocalizedString(@"image", nil)]];
    [_informationButton setTitle:NSLocalizedString(@"Information", nil) forState:UIControlStateNormal];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction) clickButton {
    UIAlertController *alertDialog= [UIAlertController alertControllerWithTitle:NSLocalizedString(@"Information", nil)
                                                                        message:[NSString stringWithFormat:NSLocalizedString(@"The faculty is running %i programs on graduate and undergraduate level.",nil),4]
                                    preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *defaultAction=[UIAlertAction actionWithTitle:@"OK"
                                   style:UIAlertActionStyleDefault
                                 handler:^(UIAlertAction *action
                                           ){}];
     [alertDialog addAction:defaultAction];
     [self presentViewController:alertDialog animated:YES completion:nil];
}


@end
