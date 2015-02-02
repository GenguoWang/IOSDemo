//
//  TestCollectionViewController.m
//  IOSDemo
//
//  Created by mark on 15/2/2.
//  Copyright (c) 2015年 mark. All rights reserved.
//
#import "UIImageView+WebCache.h"
#import "TestCollectionViewController.h"
#import "CollectionCell.h"
@interface TestCollectionViewController ()

@end

@implementation TestCollectionViewController

static NSString * const reuseIdentifier = @"CollectionCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    [self.collectionView registerClass:[CollectionCell class] forCellWithReuseIdentifier:reuseIdentifier];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {    return 30;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionCell *cell = (CollectionCell*)([collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath]);
    
    cell.backgroundColor = [UIColor blueColor];
    [cell.image sd_setImageWithURL:[NSURL URLWithString:@"http://www.baidu.com/img/bdlogo.png"]];
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/
- (NSUInteger)numberOfPhotosInPhotoBrowser:(MWPhotoBrowser *)photoBrowser {
    NSLog(@"try11");
    return self.photos.count;
}

- (id <MWPhoto>)photoBrowser:(MWPhotoBrowser *)photoBrowser photoAtIndex:(NSUInteger)index {
    NSLog(@"try12");
    if (index < self.photos.count)
        return [self.photos objectAtIndex:index];
    return nil;
}
- (void) collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"select");
    //UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    //UIViewController   * detail = [storyBoard instantiateViewControllerWithIdentifier:@"Main"];
    self.photos = [NSMutableArray array];
    //[_photos addObject:[MWPhoto photoWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"sing" ofType:@"png"]]]];
    [_photos addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://www.baidu.com/img/bdlogo.png"]]];
    [_photos addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://www.baidu.com/img/bdlogo.png"]]];
    MWPhotoBrowser *browser = [[MWPhotoBrowser alloc] initWithDelegate:self];
    //browser.displayActionButton = displayActionButton;
    //browser.displayNavArrows = displayNavArrows;
    //browser.displaySelectionButtons = displaySelectionButtons;
    //browser.alwaysShowControls = displaySelectionButtons;
    browser.zoomPhotosToFill = YES;
#if __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_7_0
    browser.wantsFullScreenLayout = YES;
#endif
    //browser.enableGrid = enableGrid;
    //browser.startOnGrid = startOnGrid;
    browser.enableSwipeToDismiss = YES;
    [browser setCurrentPhotoIndex:0];
    [self.navigationController pushViewController:browser animated:YES];
    //[self.navigationController pushViewController:detail animated:YES];
}

@end
