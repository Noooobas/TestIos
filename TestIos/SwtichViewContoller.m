//
//  SwtichViewContoller.m
//  TestIos
//
//  Created by Alexandr Mednikov on 20/05/2020.
//  Copyright © 2020 Alexandr Mednikov. All rights reserved.
//

#import "SwtichViewContoller.h"

@interface SwtichViewContoller ()

@end

@implementation SwtichViewContoller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)returnBtn:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
