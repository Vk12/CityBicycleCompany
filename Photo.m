//
//  Photo.m
//  City Bicycle Co.
//
//  Created by Vala Kohnechi on 11/26/14.
//  Copyright (c) 2014 MVA. All rights reserved.
//

#import "Photo.h"

@implementation Photo

@dynamic productPhoto;

-(void)productImageWithCompletionBlock:(void (^)(UIImage *))completionBlock
{
    [self.productPhoto getDataInBackgroundWithBlock:^(NSData *data, NSError *error) {
        completionBlock([UIImage imageWithData:data]);
    }];
}
@end
