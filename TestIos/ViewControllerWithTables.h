//
//  ViewControllerWithTables.h
//  TestIos
//
//  Created by Alexandr Mednikov on 26/05/2020.
//  Copyright © 2020 Alexandr Mednikov. All rights reserved.
//

#import "ViewController.h"
#import "Phone.h"
#import "TV.h"
#import "TvCell.h"
#import "consoleCell.h"
#import "Console.h"

NS_ASSUME_NONNULL_BEGIN

@interface ViewControllerWithTables : ViewController

@property (strong,nonatomic) NSMutableArray *phones;
@property (strong, nonatomic) NSMutableArray *tvs;
@property (strong,nonatomic) NSMutableArray *consoles;
@property (strong,nonatomic) NSMutableArray *allTech;

@end

@interface phoneCell:UITableViewCell
 
@property (weak, nonatomic) IBOutlet UILabel *phoneName;
@property (weak, nonatomic) IBOutlet UIImageView *phoneImage;
@property (weak, nonatomic) IBOutlet UILabel *phoneDescription;

@end

NS_ASSUME_NONNULL_END
