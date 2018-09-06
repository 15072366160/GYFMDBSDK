//
//  ViewController.m
//  GYFMDBDemo
//
//  Created by Paul on 2018/9/6.
//  Copyright © 2018年 Paul. All rights reserved.
//

#import "ViewController.h"

#import <GYFMDBSDK/GYFMDBManager.h>

@interface ViewController ()

@end

static NSString * const TableName = @"TableName";

static NSString * const Name = @"name";
static NSString * const Age  = @"age";
static NSString * const Sex  = @"sex";
static NSString * const Sid  = @"id";

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BOOL isCreate = [GYFMDBManager createTable:TableName fieldDict:@{Name:GYFMDB_TEXT,Age:GYFMDB_INTEGER,Sex:GYFMDB_BOOL}];
    if (isCreate) {
        NSLog(@"****GYFMDBSDK****: 创建表成功");
    }else{
        NSLog(@"****GYFMDBSDK****: 创建表失败");
    }
    
    [GYFMDBManager insertData:TableName fieldDict:@{Name:@"GYFMDBManager数据库",Age:@12,Sex:@(true)}];
    BOOL isInsert = [GYFMDBManager insertData:TableName fieldDict:@{Name:@"GYFMDBManager数据库",Age:@12,Sex:@(true)}];
    if (isInsert) {
        NSLog(@"****GYFMDBSDK****: 数据插入成功");
    }else{
        NSLog(@"****GYFMDBSDK****: 数据插入失败");
    }
    
    NSArray *arr = [GYFMDBManager selectedData:TableName fieldKyes:@[Name,Age,Sex]];
    NSLog(@"****GYFMDBSDK****:arr = %@",arr);
    
    BOOL isUpdate = [GYFMDBManager updateData:TableName filedDict:@{Name:@"Name修改测试"} key:Sid value:@1];
    if (isUpdate) {
        NSLog(@"****GYFMDBSDK****: 修改数据成功");
    }else{
        NSLog(@"****GYFMDBSDK****: 修改数据失败");
    }
    
    NSArray *arr1 = [GYFMDBManager selectedData:TableName fieldKyes:@[Name,Age,Sex]];
    NSLog(@"****GYFMDBSDK****:arr = %@",arr1);
    
    BOOL isDeleted = [GYFMDBManager deletedData:TableName key:Sid value:@2];
    if (isDeleted) {
        NSLog(@"****GYFMDBSDK****: 删除数据成功");
    }else{
        NSLog(@"****GYFMDBSDK****: 删除数据失败");
    }
    
    NSArray *arr2 = [GYFMDBManager selectedData:TableName fieldKyes:@[Name,Age,Sex]];
    NSLog(@"****GYFMDBSDK****:arr = %@",arr2);
    
    BOOL isDeleted1 = [GYFMDBManager deletedTable:TableName];
    if (isDeleted1) {
        NSLog(@"****GYFMDBSDK****: 删除表成功");
    }else{
        NSLog(@"****GYFMDBSDK****: 删除表失败");
    }
    
    NSArray *arr3 = [GYFMDBManager selectedData:TableName fieldKyes:@[Name,Age,Sex]];
     NSLog(@"****GYFMDBSDK****:arr = %@",arr3);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
