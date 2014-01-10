//
//  ViewController.m
//  ModalChangeEx01
//
//  Created by SDT-1 on 2014. 1. 10..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"
#import "ModalViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	if([@"ModalSegue" isEqualToString:segue.identifier]) {
		ModalViewController *mvc = segue.destinationViewController;
		
		mvc.msg = self.mainTf.text;
	}
}



- (IBAction)showModal1:(id)sender {
	[self performSegueWithIdentifier:@"ModalSegue" sender:self];
}
- (IBAction)showModal2:(id)sender {
	UIStoryboard *sb = self.storyboard;
	ModalViewController *mc = [sb instantiateViewControllerWithIdentifier:@"modalVC"];
	mc.msg = self.mainTf.text;
	
	[self presentViewController:mc animated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end



















