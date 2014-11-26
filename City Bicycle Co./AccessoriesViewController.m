//
//  AccessoriesViewController.m
//  City Bicycle Co.
//
//  Created by Vala Kohnechi on 11/24/14.
//  Copyright (c) 2014 MVA. All rights reserved.
//

#import "AccessoriesViewController.h"

@interface AccessoriesViewController ()
<UICollectionViewDelegate,UICollectionViewDataSource,UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UIButton *addToCart;
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *widthLayOutConstraint;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UISegmentedControl *sizeSegmentedController;
@property (strong, nonatomic) IBOutlet UISegmentedControl *colorSegmentedControl;
@property (strong, nonatomic) IBOutlet UITextField *quantityTextField;

@end

@implementation AccessoriesViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(void)viewDidAppear:(BOOL)animated
{
    self.widthLayOutConstraint.constant = self.scrollView.frame.size.width;
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
