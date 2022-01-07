//
//  tblVwCell.m
//  collectionViewTasks
//
//  Created by Abdul Jaffer on 07/01/22.
//

#import "tblVwCell.h"

@implementation tblVwCell


@synthesize collectionView;


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    UINib *collCell = [UINib nibWithNibName:@"CollectionViewCell" bundle:nil];
    [collectionView registerNib:collCell forCellWithReuseIdentifier:@"CollectionViewCell"];

}




- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}






@end
