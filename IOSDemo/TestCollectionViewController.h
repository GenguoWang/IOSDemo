//
//  TestCollectionViewController.h
//  IOSDemo
//
//  Created by mark on 15/2/2.
//  Copyright (c) 2015年 mark. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MWPhotoBrowser.h"

@interface TestCollectionViewController : UICollectionViewController
@property NSMutableArray *photos;

- (NSUInteger)numberOfPhotosInPhotoBrowser:(MWPhotoBrowser *)photoBrowser;
- (id <MWPhoto>)photoBrowser:(MWPhotoBrowser *)photoBrowser photoAtIndex:(NSUInteger)index;
@end
