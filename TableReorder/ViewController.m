//
//  ViewController.m
//  TableReorder
//
//  Created by Arun Jasmine on 1/31/17.
//  Copyright © 2017 Arun Jasmine. All rights reserved.
//

#import "ViewController.h"
#import "MainTableViewCell.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
- (IBAction)editAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *mainTableview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MainTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.label.text = [NSString stringWithFormat:@"Label %ld", indexPath.row+1];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    return UITableViewCellEditingStyleNone;
}

- (BOOL)tableView:(UITableView *)tableview shouldIndentWhileEditingRowAtIndexPath:(NSIndexPath *)indexPath {
    return NO;
}

- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath {
    
}

- (IBAction)editAction:(id)sender {
    [_mainTableview setEditing:YES animated:YES];
}

@end
