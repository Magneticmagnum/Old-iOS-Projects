//
//  BIDViewController.m
//  Persona 4 Arena
//
//  Created by NoreeTech on 8/21/12.
//  Copyright (c) 2012 NoreeTech. All rights reserved.
//

#import "BIDViewController.h"
#import "BIDDetailViewController.h"

@interface BIDViewController ()

@end

@implementation BIDViewController
@synthesize states,datasource;

-(void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle
- (void)viewDidLoad
{
    [self setupArray];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)setupArray{
    states = [[NSMutableDictionary alloc] init];
    
    [states setObject:@"Lansing" forKey:@"Michigan"];
    [states setObject:@"Sacremento" forKey:@"California"];
    [states setObject:@"Albany" forKey:@"New York"];
    [states setObject:@"Phoenix" forKey:@"Arizona"];
    [states setObject:@"Tulsa" forKey:@"Oklahoma"];
    
    datasource = [[NSMutableArray alloc] initWithArray:[states allKeys]];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 5;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.states = nil;
    self.datasource = nil;
    // Release any retained subviews of the main view.
}


-(UITableViewCell*)tableView: (UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier =@"Cell";
    
    UITableViewCell *cell = (UITableViewCell *) [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    //cell background image
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:cell.frame];
    UIImage *image = [UIImage imageNamed:@"tableCell.png"];
    imageView.image = image;
    cell.backgroundView = imageView;
    [[cell textLabel] setBackgroundColor:[UIColor clearColor]];
    [[cell detailTextLabel] setBackgroundColor:[UIColor clearColor]];
    
    cell.textLabel.text = [datasource objectAtIndex:indexPath.row];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    BIDDetailViewController *detail = [self.storyboard instantiateViewControllerWithIdentifier:@"detail"];
    detail.state = [datasource objectAtIndex:indexPath.row];
    detail.capital = [states objectForKey:detail.state];
    [self.navigationController pushViewController:detail animated:YES];
}

// Table view cell height
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 62;
}

@end
