//
//  ZDTransitionMasterViewController.m
//  218_ViewControllerTransitionsDemo
//
//  Created by 0day on 13-10-18.
//  Copyright (c) 2013年 dayzh. All rights reserved.
//

#import "ZDTransitionMasterViewController.h"

#import "ZDNormailDetailViewController.h"

@interface ZDTransitionMasterViewController ()

@property (nonatomic, strong) NSArray   *transitions;

@end

@interface ZDTransitionMasterViewController (Transitions)

- (void)pushDefault;
- (void)presentDefault;
- (void)customPresentation;

@end

@implementation ZDTransitionMasterViewController (Transitions)

- (void)pushDefault {
    ZDNormailDetailViewController *detailViewController = [[ZDNormailDetailViewController alloc] init];
    [self.navigationController pushViewController:detailViewController animated:YES];
}

- (void)presentDefault {
    ZDNormailDetailViewController *detailViewController = [[ZDNormailDetailViewController alloc] init];
    [self.navigationController presentViewController:detailViewController animated:YES completion:nil];
}

- (void)customPresentation {
    CGRect windowBounds = [UIScreen mainScreen].bounds;
    CGRect detailViewFrame = CGRectInset(windowBounds, 30, 80);
    
    ZDNormailDetailViewController *detailViewController = [[ZDNormailDetailViewController alloc] init];
    detailViewController.modalPresentationStyle = UIModalPresentationCustom;
    detailViewController.transitioningDelegate = self;
    detailViewController.view.frame = detailViewFrame;
    [self.navigationController presentViewController:detailViewController animated:YES completion:nil];
}

@end

@implementation ZDTransitionMasterViewController

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.transitions = @[
                             @"Default Push",
                             @"Default Present",
                             @"UIModalPresentationsCustom Demo"
                             ];
    }
    
    return self;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.transitions.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"TransitionCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = self.transitions[indexPath.row];
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case 0:
            [self pushDefault];
            break;
        case 1:
            [self presentDefault];
            break;
        case 2:
            [self customPresentation];
            break;
        default:
            break;
    }
}

#pragma mark - UIViewControllerTransitioningDelegate

/**
- (id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    
}

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {

}
 */

@end
