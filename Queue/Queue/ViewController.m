//
//  ViewController.m
//  Queue
//
//  Created by Sanjeev Bharti on 3/18/15.
//  Copyright (c) 2015 Sanjeev Bharti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (Node *)createNewNodeWithData:(NSInteger)data ;

@end

@implementation ViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    
    int n = 10 ;
    while (n-- > 0) [self enqueOperationWithData:n];
   
    NSLog(@"\n\n Traverse Elements");
    [self traverseDataInQueueWithNode:front];

    NSLog(@"\n\n Dequeue Elements");
    [self dequeOperation];
    
    NSLog(@"\n\n Traverse Elements");
    [self traverseDataInQueueWithNode:front];
 
    NSLog(@"\n\n Again Dequeue Elements");
    [self dequeOperation];
    
    NSLog(@"\n\n New Traverse Elements");
    [self traverseDataInQueueWithNode:front];
    
    NSLog(@"Insert new element");
    [self enqueOperationWithData:20] ;
    
    NSLog(@"\n\n New Traverse Elements");
    [self traverseDataInQueueWithNode:front];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark - Queue operations

//method to insert element to queue
- (void)enqueOperationWithData:(NSInteger)data {
    
    if (rear == NULL)
        rear = front = [self createNewNodeWithData:data];
    else {
        
        Node *_node = [self createNewNodeWithData:data];
        rear.next = _node ;
        rear = _node ;
        // we need to release memory of _node as well
    }
}

//method to delete element from queue
- (void)dequeOperation {
    
    if (front == NULL) NSLog(@"Queue is empty");
    else {
        NSLog(@"Delete element = %ld",(long)front.data);
        
        front = front.next ;
    }
}

//traversal method
- (void)traverseDataInQueueWithNode:(Node *)node {
    
    if (node == NULL) {
        return ;
    } else {
        NSLog(@"Node value = %li",(long)node.data);
        [self traverseDataInQueueWithNode:node.next];
    }
}

#pragma mark -
#pragma mark - Private Methods

- (Node *)createNewNodeWithData:(NSInteger)data {
    
    Node *_node = [[Node alloc] init];
    _node.data  = data ;
    _node.next  = NULL ;
    return _node ;
}



@end
