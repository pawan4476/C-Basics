//
//  main.m
//  Basics
//
//  Created by Nagam Pawan on 9/7/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import <Foundation/Foundation.h>
#define PI 3.14
#define RAD_TO_DEG(radians) (radians * (180.0/PI))
typedef unsigned char ColorComponent;
typedef  struct{
    unsigned char red;
    unsigned char blue;
    unsigned char green;
} Colour;
typedef enum{
    PORCHE,
    BMW,
    OODI,
    FERARI
    
}CarNames;


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        //Variables
        double speedoMeter = 147.5097;
        int distance = (int) speedoMeter;
    
        NSLog(@"you have driven %.1f miles\n", speedoMeter);
        NSLog(@"You have driven %d miles\n", distance);
        
        //Arthimetic Operations
        
        NSLog(@"6 + 2 = %d", 6+2);
        NSLog(@"10 - 6 = %d", 10-6);
        NSLog(@"8 * 9 = %d", 8*9);
        NSLog(@" 246 / 2 = %d", 246/2);
        NSLog(@"10 %% 5 = %d", 10%5);
        
        int i = 0;
        NSLog(@"%d",i);
        i++;
        NSLog(@"%d",i);
        i++;
        NSLog(@"%d",i);
        i++;
        //Conditions
        
        int modelYear = 2012;
//        printf("Enter the modelYear");
//        scanf("%d", &modelYear);
        if (modelYear < 2013) {
            NSLog(@"Your device is a iphone 5s");
        }
        else if (modelYear <= 2015){
            NSLog(@"Your device is iphone 6 or 6s");
        }
        else if (modelYear == 2016){
            NSLog(@"Your device is iphone 6s Plus");
        }
        else{
            NSLog(@"Your device is iphone 4s");
        }
        
        //Switch Case
        switch (modelYear) {
            case 2007:
                NSLog(@"Yours mac is macpro dual core");
                break;
                case 2009:
                NSLog(@"Yours mac is macpro i3");
                break;
                case 2012:
                NSLog(@"Yours mac is macAir");
                break;
                case  2016:
                NSLog(@"Yours mac is macLight");
                break;
                
            default:
                NSLog(@"Unidentified mac");
                break;
        }
        //While loop
        int year = 1995;
        int j = 0;
        while (j < 11) {
            if (j == 15) {
                NSLog(@"Abort the while loop");
                break;
            }
            NSLog(@"The year is %d",year+j);
            j++;
        }
        //For Loop
        for (j = 0; j <= 10; j++) {
            if (j == 3) {
                NSLog(@"abort for loop");
                continue;
            }
            NSLog(@"the year of pass is %d",year+j);
            
        }
        NSArray *models = @[@"Ford", @"Honda", @"Nissan", @"Porsche"];
        for (id model in models) {
            NSLog(@"%@", model);
        }
        //Macros
        double angle = PI/2;
        NSLog(@"%f",RAD_TO_DEG(angle));
        
        //TypeDef
        ColorComponent red = 70;
        ColorComponent black = 80;
        ColorComponent white = 10;
        NSLog(@"Your paint composition is (R: %hhu, B: %hhu,W: %hhu)",red,black,white);
        
        //Struct
        Colour carColor = {150,120,164};
        NSLog(@"Car color is (R: %hhu, B: %hhu, G: %hhu)", carColor.red, carColor.blue, carColor.green);
        
        //Enum
        CarNames myCar = PORCHE;
        switch (myCar) {
            case PORCHE:
            case OODI:
                NSLog(@"You like Higher end Cars");
                break;
            case BMW:
            case FERARI:
                NSLog(@"You like Sports cars");
                break;
                
            default:
                break;
        }
        
        //Primitive Array
        int years[5] = {23, 24, 26, 28, 30};
        years[0] = 22;
        for (int i = 0; i < 5; i++) {
            NSLog(@"The year at index is %d is %d", i, years[i]);
        }
        
        //Pointers
        int yrs = 1993;
        int *pointer;
        pointer = &yrs;
        NSLog(@"%d", *pointer);
        *pointer = 2000;
        NSLog(@"%d",yrs);
        
        char model[5] = {'H', 'O', 'N', 'D', 'a'};
        char *modelPointer = &model[0];
        for (int i =0; i < 5; i++) {
            NSLog(@"Value at memory address %p is %c", modelPointer, *modelPointer);
            modelPointer++;
        }
        NSLog(@"The first letter is %c", *(modelPointer - 5));
        
        //Null Pointer
        int yrs1 = 1996;
        int *pointer1 = &yrs1;
        NSLog(@"%d", *pointer1);
        pointer1 = NULL;
        
        //Void Pointer
        int yrs2 = 1997;
        void *genericPointer = &yrs2;
        int *intPointer = (int *)genericPointer;
        NSLog(@"%d", *intPointer);
        
    }
    
    return 0;
}
