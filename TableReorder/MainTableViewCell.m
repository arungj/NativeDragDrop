//
//  MainTableViewCell.m
//  TableReorder
//
//  Created by Arun Jasmine on 1/31/17.
//  Copyright © 2017 Arun Jasmine. All rights reserved.
//

#import "MainTableViewCell.h"

@implementation MainTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    NSLog(@"simple comment");
    // Configure the view for the selected state
}

@end
