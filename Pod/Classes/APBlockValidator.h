//
// Created by Nickolay Sheika on 3/15/16.
// Copyright (c) 2016 Nickolay Sheika. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APValidator.h"



@interface APBlockValidator : APValidator


@property(nonatomic, copy) BOOL (^validationBlock)(id validationObject);

@end