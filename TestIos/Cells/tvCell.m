//
//  tvCell.m
//  TestIos
//
//  Created by Alexandr Mednikov on 28/05/2020.
//  Copyright © 2020 Alexandr Mednikov. All rights reserved.
//

#import "tvCell.h"

@implementation tvCell

@synthesize tvName;
@synthesize tvImage;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
