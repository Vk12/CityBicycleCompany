//
//  ViewController.m
//  City Bicycle Co.
//
//  Created by Vala Kohnechi on 11/24/14.
//  Copyright (c) 2014 MVA. All rights reserved.
//

#import "ProductViewController.h"

@interface ProductViewController () <UICollectionViewDataSource,UICollectionViewDelegate>
@property (strong, nonatomic) IBOutlet UIButton *shoppingCartButton;
@property (strong, nonatomic) IBOutlet UIButton *gearButton;
@property (strong, nonatomic) IBOutlet UICollectionView *productCollectionView;
@property (strong, nonatomic) IBOutlet UIButton *straptsButton;
@property (strong, nonatomic) IBOutlet UIButton *shirtsButton;
@property (strong, nonatomic) IBOutlet UIButton *hatsButton;
@property (strong, nonatomic) IBOutlet UIButton *wheelsButton;

@end

@implementation ProductViewController

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








@end
