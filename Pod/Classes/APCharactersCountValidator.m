//
// Created by Nickolay Sheika on 05.12.15.
// Copyright (c) 2015 Alterplay. All rights reserved.
//

#import "APCharactersCountValidator.h"



@implementation APCharactersCountValidator


- (NSUInteger)minCount
{
    if (! _minCount) {
        _minCount = 0;
    }
    return _minCount;
}

- (NSUInteger)maxCount
{
    if (! _maxCount) {
        _maxCount = NSUIntegerMax;
    }
    return _maxCount;
}


- (void)validate
{
    if (! self.validationObject) {
        self.validationState = APValidatorState_Undefined;
        return;
    }

    if (! [self.validationObject isKindOfClass:[NSString class]]) {
        [NSException raise:NSInternalInconsistencyException
                    format:@"%@ validationObject should be NSString!",
                           NSStringFromClass([self class])];
    }

    NSString *validationObject = self.validationObject;
    NSUInteger length = validationObject.length;

    if (length == 0) {
        self.validationState = self.isRequired ? APValidatorState_NotValid : APValidatorState_Undefined;
    }
    else {
        BOOL valid = length >= self.minCount && length <= self.maxCount;
        self.validationState = valid ? APValidatorState_Valid : APValidatorState_NotValid;
    }
}


@end