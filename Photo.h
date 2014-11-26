//
//  Photo.h
//  City Bicycle Co.
//
//  Created by Vala Kohnechi on 11/26/14.
//  Copyright (c) 2014 MVA. All rights reserved.
//

#import <Parse/Parse.h>
#import <Parse/PFObject+Subclass.h>
@interface Photo : PFObject

@property PFFile *productPhoto;

- (void) productImageWithCompletionBlock:(void(^)(UIImage *))completionBlock;
@end
