//
//  ViewControllerWithTables.m
//  TestIos
//
//  Created by Alexandr Mednikov on 26/05/2020.
//  Copyright © 2020 Alexandr Mednikov. All rights reserved.
//

#import "ViewControllerWithTables.h"

@interface ViewControllerWithTables () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *table;

@end

@implementation ViewControllerWithTables

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Table desu";
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
    if (indexPath.row == 0 ){
        UITableViewCell *cellWithImage = [tableView dequeueReusableCellWithIdentifier:@"cellWithImage"];
    cellWithImage.imageView.image = [UIImage imageNamed:@"image1"];
        cellWithImage.textLabel.text = @"I have image, lol";
    return cellWithImage;
    }
    else if (indexPath.row == 1)
    {
        UITableViewCell *commonCell = [tableView dequeueReusableCellWithIdentifier:@"commonCell"];
        commonCell.textLabel.text = @"This is common cell";
        return commonCell;
    }
    else {
        UITableViewCell *largeCell = [tableView dequeueReusableCellWithIdentifier:@"largeCell"];
        largeCell.textLabel.text = @"i just have a large size :(";
        return largeCell;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 2)
    return 300;
    else
        return 50;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}




@end
