//
//  ViewController.m
//  City Bicycle Co.
//
//  Created by Vala Kohnechi on 11/24/14.
//  Copyright (c) 2014 MVA. All rights reserved.
//

#import "ProductViewController.h"
#import "Photo.h"
#import <Parse/Parse.h>
#import <ParseUI/ParseUI.h>
#import "BicycleCollectionViewCustomCell.h"
@interface ProductViewController () <UICollectionViewDataSource,UICollectionViewDelegate>
@property (strong, nonatomic) IBOutlet UIButton *shoppingCartButton;
@property (strong, nonatomic) IBOutlet UIButton *gearButton;
@property (strong, nonatomic) IBOutlet UICollectionView *productCollectionView;
@property (strong, nonatomic) IBOutlet UIButton *straptsButton;
@property (strong, nonatomic) IBOutlet UIButton *shirtsButton;
@property (strong, nonatomic) IBOutlet UIButton *hatsButton;
@property (strong, nonatomic) IBOutlet UIButton *wheelsButton;
@property NSArray *bicycleImagesArray;
@end

@implementation ProductViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self refreshDetail];
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.bicycleImagesArray.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    BicycleCollectionViewCustomCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    PFObject *photo = self.bicycleImagesArray[indexPath.row];
    cell.imageView.image = photo[@"productPhoto"];
    return cell;
    
}


//- (void) downloadImages:(UIRefreshControl *)refreshControl;
//
//{
//    self.bicycleImagesArray = [@[]mutableCopy];
//    PFQuery *queryImages = [PFQuery queryWithClassName:@"Photo"];
//    [queryImages orderByAscending:@"createdAt"];
//    [queryImages where]
//}


- (void) refreshDetail
{
    PFQuery *query = [PFQuery queryWithClassName:@"Photo"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (error) {
            NSLog(@"Ur nan m8");
        }else{
            self.bicycleImagesArray = objects;
            [self.productCollectionView reloadData];
        }
    }];
}




@end
