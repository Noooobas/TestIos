//
//  SwtichViewContoller.m
//  TestIos
//
//  Created by Alexandr Mednikov on 20/05/2020.
//  Copyright © 2020 Alexandr Mednikov. All rights reserved.
//

#import "SwtichViewContoller.h"

@interface SwtichViewContoller ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *selector;
@property (weak, nonatomic) IBOutlet UIButton *tellBtn;
@property (weak, nonatomic) IBOutlet UILabel *truthLabel;


@end

@implementation SwtichViewContoller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)returnBtn:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)tellBtnPressed:(id)sender {
    
    self.truthLabel.text = [NSString stringWithFormat:@"Recently, you pressed \"Tell me\" button\n with %.ld fact selected",(self.selector.selectedSegmentIndex+1)];
}


@end
