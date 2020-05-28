//
//  ViewControllerWithTables.m
//  TestIos
//
//  Created by Alexandr Mednikov on 26/05/2020.
//  Copyright © 2020 Alexandr Mednikov. All rights reserved.
//

#import "ViewControllerWithTables.h"
#import "Phone.h"

@implementation phoneCell

@synthesize phoneName;
@synthesize phoneImage;
@synthesize phoneDescription;

@end

@interface ViewControllerWithTables () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *table;

@end

@implementation ViewControllerWithTables

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Table desu";
    self.phones = [NSMutableArray arrayWithCapacity:20];
    Phone *phone = [[Phone alloc] init];
    phone.phoneName = @"HONOR 10i 128Gb";
    phone.phoneDescription = @"ОС Android 9, экран: 6.21\", 2340×1080, процессор: Kirin 710F, 2200МГц, 8-ми ядерный, FM-радио, GPS, ГЛОНАСС, чехол в комплекте, оперативная память: 4Гб, встроенная память: 128Гб";
    phone.phoneImageName = @"honor10i";
    [self.phones addObject:phone];
    phone = [[Phone alloc] init];
    phone.phoneName = @"XIAOMI Redmi Note 8 Pro 6/64Gb";
    phone.phoneDescription = @"ОС Android 9.0, экран: 6.53\", IPS, 2340×1080, процессор: MediaTek Helio G90T, 2000МГц, 8-ми ядерный, FM-радио, GPS, ГЛОНАСС, время работы в режиме разговора, до: 24ч, в режиме ожидания, до: 260ч, чехол в комплекте, оперативная память: 6Гб";
    phone.phoneImageName = @"redmiNote8Pro";
    [self.phones addObject:phone];
    phone = [[Phone alloc] init];
    phone.phoneName = @"APPLE iPhone XR 64Gb, MRY42RU/A";
    phone.phoneDescription = @"ОС iPhone iOS 13, экран: 6.1\", IPS, 1792×828, процессор: Apple A12 Bionic, , GPS, ГЛОНАСС, с защитой от пыли и влаги, время работы в режиме разговора, до: 25ч, встроенная память: 64Гб";
    phone.phoneImageName = @"iPhoneXR";
    [self.phones addObject:phone];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    Phone *phone = [self.phones objectAtIndex:indexPath.row];
    phoneCell *cell = (phoneCell *) [tableView dequeueReusableCellWithIdentifier:@"phoneCell"];
    cell.phoneName.text = phone.phoneName;
    cell.phoneDescription.text = phone.phoneDescription;
    cell.phoneImage.image = [UIImage imageNamed:phone.phoneImageName];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.phones.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


@end
