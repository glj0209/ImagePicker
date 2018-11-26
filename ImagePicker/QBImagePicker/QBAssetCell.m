//
//  QBAssetCell.m
//  QBImagePicker
//
//  Created by Katsuma Tanaka on 2015/04/03.
//  Copyright (c) 2015 Katsuma Tanaka. All rights reserved.
//

#import "QBAssetCell.h"

@interface QBAssetCell ()

@property (weak, nonatomic) IBOutlet UIView *overlayView;

@property (unsafe_unretained, nonatomic) IBOutlet UIButton *chooseButton;
@end

@implementation QBAssetCell

- (void)setSelected:(BOOL)selected
{
    [super setSelected:selected];
    
    // Show/hide overlay view
//    self.overlayView.hidden = !(selected && self.showsOverlayViewWhenSelected);
    self.overlayView.hidden = YES;
    
    self.chooseButton.hidden = selected;
    self.nuLabel.hidden = !selected;
}

@end
