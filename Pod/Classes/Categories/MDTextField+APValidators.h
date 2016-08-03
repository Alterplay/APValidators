//
//  Created by Gábor Makó on 30/07/16.
//

#import <Foundation/Foundation.h>
#import "MDTextField.h"

@class APValidator;

@interface MDTextField (APValidators)

@property (nonatomic, strong) IBOutlet APValidator *validator;

@end
