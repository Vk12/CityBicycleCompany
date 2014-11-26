//
//  WheelSetViewController.m
//  City Bicycle Co.
//
//  Created by Vala Kohnechi on 11/24/14.
//  Copyright (c) 2014 MVA. All rights reserved.
//

#import "WheelSetViewController.h"

@interface WheelSetViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) IBOutlet UIButton *addToCart;

@end

@implementation WheelSetViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 0;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
