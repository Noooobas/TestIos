//
//  ViewControllerWithTables.m
//  TestIos
//
//  Created by Alexandr Mednikov on 26/05/2020.
//  Copyright © 2020 Alexandr Mednikov. All rights reserved.
//

#import "ViewControllerWithTables.h"

@implementation phoneCell

@synthesize phoneName;
@synthesize phoneImage;
@synthesize phoneDescription;

@end

@interface ViewControllerWithTables () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *table;

@end

@implementation ViewControllerWithTables
@synthesize allTech;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Table desu";
    self.phones = [NSMutableArray arrayWithCapacity:20];
    self.tvs = [NSMutableArray arrayWithCapacity:20];
    self.consoles = [NSMutableArray arrayWithCapacity:20];
    self.allTech = [NSMutableArray arrayWithCapacity:20];
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
    [self.allTech addObject: self.phones];
    TV *tv = [[TV alloc] init];
    tv.tvName = @"LED телевизор LG 43UK6200PLA Ultra HD 4K";
    tv.tvImageName = @"lg";
    [self.tvs addObject:tv];
    tv = [[TV alloc] init];
    tv.tvName = @"LED телевизор SAMSUNG UE43NU7090UXRU Ultra HD 4K";
    tv.tvImageName = @"samsung";
    [self.tvs addObject:tv];
    [self.allTech addObject:_tvs];
    Console *console = [[Console alloc] init];
    console.consoleName = @"Sony Playstation 4";
    console.videoID = @"Jw8HCFZkBds";
    [self.consoles addObject:console];
    console = [[Console alloc] init];
    console.consoleName = @"Nintendo Switch";
    console.videoID = @"Mf5uik5fgIaI";
    [self.consoles addObject:console];
    [self.allTech addObject:self.consoles];
        
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
    switch (indexPath.section) {
        case 0: {
            Phone *phone = (Phone*)self.allTech[indexPath.section][indexPath.row];
            phoneCell *cell = (phoneCell *) [tableView dequeueReusableCellWithIdentifier:@"phoneCell"];
            cell.phoneName.text = phone.phoneName;
            cell.phoneDescription.text = phone.phoneDescription;
            cell.phoneImage.image = [UIImage imageNamed:phone.phoneImageName];
            return cell;
            break;
        }
        case 1:{
            TV *tv = (TV*)self.allTech[indexPath.section][indexPath.row];
            TvCell *cell = (TvCell*)[tableView dequeueReusableCellWithIdentifier:@"tvCell"];
            cell.tvName.text = tv.tvName;
            cell.tvImage.image =[UIImage imageNamed:tv.tvImageName];
            return cell;
        }
        case 2:{
            Console *console = (Console*)self.allTech[indexPath.section][indexPath.row];
            consoleCell *cell = (consoleCell*)[tableView dequeueReusableCellWithIdentifier:@"consoleCell"];
            cell.consoleName.text = console.consoleName;
            [cell.consoleVideoPlayer loadWithVideoId:console.videoID];
            return cell;
        }
        default:
            return nil;
            break;
    }
 
}



- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return ((NSMutableArray*)self.allTech[section]).count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.allTech.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    switch (section) {
        case 0:
            return @"Телефоны";
            break;
        case 1:
            return @"Телевизоры";
        case 2:
            return @"Игровые консоли";
        default:
            return @"oopsie";
            break;
    }
}

@end
