//
//  ToDoItem.m
//  ToDoList
//
//  Created by Morgante Pell on 4/5/15.
//  Copyright (c) 2015 Morgante Pell. All rights reserved.
//

#import "ToDoItem.h"

@implementation ToDoItem

- (void)toggleCompleted {
    self.completed = !self.completed;
}

@end
