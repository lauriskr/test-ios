//
//  MainViewController.m
//  test-ios
//
//  Created by lauris on 4/24/14.
//  Copyright (c) 2014 greenhouse. All rights reserved.
//

#import "MainViewController.h"
#import "AdditivesListTableViewController.h"

@interface MainViewController ()

@property (nonatomic, strong) IBOutlet UIButton *scanBarcodeButton;
@property (nonatomic, strong) IBOutlet UILabel *sillyLabel;

- (IBAction)buttonClicked:(id)sender;

@end

@implementation MainViewController

- (id)init
{
    self = [super initWithNibName:@"MainViewController" bundle:nil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //    Add localized string from resource file
    [_sillyLabel setText:NSLocalizedString(@"Silly", nil)];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonClicked:(id)sender
{
    MSLog(@"%.2f", _scanBarcodeButton.frame.size.height);
    MSLog(@"scanBarcodeButton clicked");
    
    NSString *barcode = [self scanBarcode];
    if (barcode)
    {
        AdditivesListTableViewController *controller = [[AdditivesListTableViewController alloc] init];
        [self.navigationController pushViewController: controller animated:YES];
    }
    else
    {
        MSLog(@"Invalid barcode");
    }
}

- (NSString *) scanBarcode
{
    return @"testbarcodewooooo";
}

@end
