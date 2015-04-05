//
//  AddToDoItemViewController.m
//  ToDoList
//
//  Created by Morgante Pell on 3/31/15.
//  Copyright (c) 2015 Morgante Pell. All rights reserved.
//

#import "AddToDoItemViewController.h"

@interface AddToDoItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end

@implementation AddToDoItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if (sender != self.saveButton || self.textField.text.length < 1) {
        return;
    }
    
    self.toDoItem = [[ToDoItem alloc] init];
    self.toDoItem.itemName = self.textField.text;
    self.toDoItem.completed = NO;
}

@end
