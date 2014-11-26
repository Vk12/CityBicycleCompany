//
//  Bicycle.h
//  City Bicycle Co.
//
//  Created by Vala Kohnechi on 11/26/14.
//  Copyright (c) 2014 MVA. All rights reserved.
//

#import <Parse/Parse.h>
#import <Parse/PFObject+Subclass.h>

@interface Bicycle : PFObject

@property NSArray *wheelsetColor;
@property NSString *coordinatePosition;
@property NSString *description;
@property NSArray *handleBars;
@property BOOL *hasAluminumAlloy;
@property BOOL *hasRearBreak;
@property BOOL *isOnSale;
@property NSString *name;
@property NSNumber *originalPrice;
@property NSString *pedalStrap;
@property NSNumber *quantity;
@property NSString *saleDetail;
@property NSNumber *salePrice;
@property NSArray *size;

@end
