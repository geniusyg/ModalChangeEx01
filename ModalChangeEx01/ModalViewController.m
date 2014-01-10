//
//  ModalViewController.m
//  ModalChangeEx01
//
//  Created by SDT-1 on 2014. 1. 10..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ModalViewController.h"
#import "ViewController.h"

@interface ModalViewController ()
@property (weak, nonatomic) IBOutlet UITextField *modalTf;

@end

@implementation ModalViewController
- (IBAction)closeModalVC:(id)sender {
	ViewController *vc = (ViewController *)self.presentingViewController;
	
	vc.mainTf.text = self.modalTf.text;
	
	[self dismissViewControllerAnimated:YES completion:nil];
	
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	
	self.modalTf.text = self.msg;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
