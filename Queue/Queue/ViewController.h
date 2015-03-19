//
//  ViewController.h
//  Queue
//
//  Created by sanjeev bharti on 3/18/15.
//  Copyright (c) 2015 sanjeev bharti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Node.h"

@interface ViewController : UIViewController {
    
    Node    *front ; // deletion will always takes place at front
    Node    *rear  ; // insertion will always takes place at rear
    
}

@property (nonatomic,weak) IBOutlet UILabel *lblQueue ;

//method to insert element to queue
- (void)enqueOperationWithData:(NSInteger)data ;

//method to delete element from queue
- (void)dequeOperation ;

//traversal method
- (void)traverseDataInQueueWithNode:(Node *)node ;

@end

