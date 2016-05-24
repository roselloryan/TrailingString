//
//  main.m
//  TrailingString


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *line = @"Hell,San Jose";
        
        NSArray *sepArray = [line componentsSeparatedByString:@","];
        
        NSString *stringToSerach = [sepArray objectAtIndex:0];
        NSString *stringToSearchFor = [sepArray objectAtIndex:1];
        
        if (stringToSerach.length >= stringToSearchFor.length) {
        
            NSRange rangeWhereStringShouldBe = NSMakeRange(stringToSerach.length - stringToSearchFor.length, stringToSearchFor.length);
            
            if ([[stringToSerach substringWithRange:rangeWhereStringShouldBe] isEqualToString:stringToSearchFor]) {
                NSLog(@"[stringToSerach substringWithRange:rangeWhereStringShouldBe]:%@",[stringToSerach substringWithRange:rangeWhereStringShouldBe]);
                NSLog(@"stringToSearchFor: %@", stringToSearchFor);
                NSLog(@"1");
            }
            else {
                NSLog(@"[stringToSerach substringWithRange:rangeWhereStringShouldBe]:%@",[stringToSerach substringWithRange:rangeWhereStringShouldBe]);
                NSLog(@"stringToSearchFor: %@", stringToSearchFor);
                NSLog(@"0");
            }
        }
        
        else {
            NSLog(@"0");
        }
        
    }
    return 0;
}
