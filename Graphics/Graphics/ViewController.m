//
//  ViewController.m
//  Graphics
//
//  Created by Vitaliy on 25.06.2020.
//  Copyright © 2020 Vitaliy. All rights reserved.
//

#import "ViewController.h"
#import "MyCanvas.h"

@interface ViewController ()

@property CGFloat contentScaleFactor;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    MyCanvas *myView = [[MyCanvas alloc]
                        initWithFrame:self.view.bounds];
        myView.backgroundColor = [UIColor colorWithWhite:0 alpha:0];
        myView.autoresizingMask = UIViewAutoresizingFlexibleWidth |                                 UIViewAutoresizingFlexibleHeight |
                              UIViewAutoresizingFlexibleTopMargin |
                              UIViewAutoresizingFlexibleLeftMargin |
                              UIViewAutoresizingFlexibleRightMargin |
                              UIViewAutoresizingFlexibleBottomMargin;
    
        [self.view addSubview:myView];
   
    UILabel *areYouReady = [[UILabel alloc] initWithFrame:CGRectMake(130, 140, 140, 21)]; //создаем объект, который будет являться нашим View
    areYouReady.textColor = [UIColor blackColor]; //задаем цвет текста
    areYouReady.backgroundColor = [UIColor colorWithWhite:0 alpha:0]; //создаем прозрачный фон
    areYouReady.text = @"Are you ready?";
    [myView addSubview:areYouReady]; //добавляем наш текст в иерархию View
    
    
    UIButton *buttonStart = [UIButton buttonWithType:UIButtonTypeCustom];

    [buttonStart setTitle:@"START" forState:UIControlStateNormal];
    buttonStart.backgroundColor = [UIColor systemOrangeColor];
    
    [buttonStart setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    buttonStart.frame = CGRectMake(40.0, 500.0, 300.0, 55.0);
    buttonStart.layer.cornerRadius = 20;
    // shadow
    buttonStart.layer.shadowColor = [UIColor grayColor].CGColor;
    buttonStart.layer.shadowOffset = CGSizeMake(0.f,1.f);
    buttonStart.layer.masksToBounds = NO;
    buttonStart.layer.shadowOpacity = 1.f;
    [myView addSubview:buttonStart];

}


@end
