//
//  tableVC.m
//  collectionViewTasks
//
//  Created by Abdul Jaffer on 06/01/22.
//

#import "tableVC.h"
#import "tblVwCell.h"
#import "CollectionViewCell.h"




@interface tableVC (){
   
}



@end



@implementation tableVC


@synthesize tblVw;


- (void)viewDidLoad {
    [super viewDidLoad];
    tblVw.delegate = self;
    tblVw.dataSource = self;
    tblVw.tableFooterView = [[UIView alloc]init];
    [self registerCells];

    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    [flowLayout setItemSize:CGSizeMake(200, 230)];
    flowLayout.minimumInteritemSpacing = 0;
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    tblVwCell *cell;
    [cell.collectionView setCollectionViewLayout:flowLayout];
    

//    [tblVw registerClass:[UICollectionViewCell class] forCellReuseIdentifier:@"collectionViewCell"];
}





-(void)registerCells{
    
    UINib *tblCell = [UINib nibWithNibName:@"tblVwCell" bundle:nil];
    [tblVw registerNib:tblCell forCellReuseIdentifier:@"tblVwCell"];
    
    UINib *collCell = [UINib nibWithNibName:@"CollectionViewCell" bundle:nil];
    [tblVw registerNib:collCell forCellReuseIdentifier:@"CollectionViewCell"];

    
    [tblVw reloadData];

}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
        
    
    if (section == 0){
        return @"IOS";
    }
    
    else if(section == 1){
        return @"ANDROID";
    }
    else if(section == 2){
        return @"WEB";
    }
    
    return @"";
    
        

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    tblVwCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tblVwCell" forIndexPath:indexPath];
    
//    UINib *collVwCell = [UINib nibWithNibName:@"CollectionViewCell" bundle:nil];
//    [cell.collectionView registerNib:collVwCell forCellWithReuseIdentifier:@"CollectionViewCell"];
    
    
    cell.collectionView.delegate = self;
    cell.collectionView.dataSource = self;
    cell.collectionView.tag = indexPath.row;


    return cell;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 250;
}
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    tblVwCell *cell2;
    [[cell2 collectionView]reloadData];
    
    
}


/*COLLECTION VIEW*/

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return 5;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *collectionVwCell;
    
    CollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"CollectionViewCell" forIndexPath:indexPath];
    NSString * str = [NSString stringWithFormat:@"%ld",(long)indexPath.row];    
    
    cell.lblIos.text = str  ;
    return cell;
    
    
    return collectionVwCell;
    
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    return CGSizeMake(300, 300);
}


@end
