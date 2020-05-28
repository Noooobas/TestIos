//
//  consoleCell.h
//  TestIos
//
//  Created by Alexandr Mednikov on 28/05/2020.
//  Copyright © 2020 Alexandr Mednikov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YTPlayerView.h"

NS_ASSUME_NONNULL_BEGIN

@interface consoleCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *consoleName;
@property (strong, nonatomic) IBOutlet YTPlayerView *consoleVideoPlayer;

@end

NS_ASSUME_NONNULL_END
