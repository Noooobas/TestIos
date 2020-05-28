//
//  Phone.h
//  TestIos
//
//  Created by Alexandr Mednikov on 28/05/2020.
//  Copyright © 2020 Alexandr Mednikov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Phone : NSObject

@property (nonatomic,copy) NSString *phoneName;
@property (nonatomic,copy) NSString *phoneDescription;
@property (nonatomic,copy) NSString *phoneImageName;

@end

NS_ASSUME_NONNULL_END
