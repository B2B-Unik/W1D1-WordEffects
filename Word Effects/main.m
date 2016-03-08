//
//  main.m
//  Word Effects
//
//  Created by Sergio Martinez on 2016-03-07.
//  Copyright © 2016 Sergio Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while (TRUE) {
            // 255 unit long array of characters
            char inputChars[255];
            
            printf("Input a string: ");
            
            // Limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            // Print as a C string
            printf("Your string is %s\n", inputChars);
            
            // Convert char array to an NSString Object
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            // Create an array by separating by string \n
            NSArray *myArray = [inputString componentsSeparatedByString:@"\n"];
            NSString *myString = [myArray firstObject];
            
            NSInteger myInteger = [myString integerValue];
            if (myInteger == 0) {
                // Convert to uppercase
                NSString *upcaseString = [myString uppercaseString];
                // Convert to lowercase
                NSString *lowcaseString = [myString lowercaseString];
                // Append actual string with eh?
                NSString *newEhString = [[myArray firstObject] stringByAppendingString:@" eh?"];
                NSString *dashedString = [myString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                
                
                if ([myString hasSuffix:@"?"]) {
                    NSLog(@"I don't know");
                } else if ([myString hasSuffix:@"!"]) {
                    NSLog(@"Whoa, calm down!");
                }
                // Print NSString object
                NSLog(@"Input was: %@", myString);
                // Print NSString object in uppercase
                NSLog(@"Uppercase is: %@", upcaseString);
                // Print NSString object in lowercase
                NSLog(@"Lowercase is: %@", lowcaseString);
                // Print NSString appended with eh?
                NSLog(@"%@", newEhString);
                // Print NSString by replacing spaces with -
                NSLog(@"%@", dashedString);
            }
            if (myInteger != 0) {
                NSLog(@"You have entered the number: %lu", myInteger);
            }
            
            
        }
        
    }
    return 0;
}
