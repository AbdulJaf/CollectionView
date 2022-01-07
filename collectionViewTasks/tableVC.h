//
//  tableVC.h
//  collectionViewTasks
//
//  Created by Abdul Jaffer on 06/01/22.
//

#import <UIKit/UIKit.h>




@interface tableVC : UIViewController<UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UITableView *tblVw;




@end

