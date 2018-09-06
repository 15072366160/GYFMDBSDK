# GYFMDBSDK
基于FMDB简单封装数据库的创建及增删改查功能。

###第一步
```objectivec
pod 'GYFMDBSDK',' ~> 0.0.1'
```

###第二步
AppDelegate.m文件引入头文件 

```objectivec
#import <GYFMDBSDK/GYFMDBManager.h>
```
didFinishLaunchingWithOptions 初始化 GYFMDBManager

```objectivec
[GYFMDBManager shared];
```

###第三步
```objectivec
数据库字段基本类型

static NSString * const GYFMDB_BOOL     = @"BOOL NOT NULL";     // BOOL数值
static NSString * const GYFMDB_INTEGER  = @"INTEGER NOT NULL";  // 大整数值
static NSString * const GYFMDB_FLOAT    = @"FLOAT NOT NULL";    // 单精度浮点数值
static NSString * const GYFMDB_DOUBLE   = @"DOUBLE NOT NULL";   // 双精度浮点数值
static NSString * const GYFMDB_BLOB     = @"BLOB NOT NULL";     // 二进制形式的长文本数据
static NSString * const GYFMDB_TINYTEXT = @"TINYTEXT NOT NULL"; // 短文本字符串
static NSString * const GYFMDB_TEXT     = @"TEXT NOT NULL";     // 长文本数据
```

使用方法
```objectivec
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

    // 创建表
    BOOL isCreate = [GYFMDBManager createTable:TableName fieldDict:@{Name:GYFMDB_TEXT,Age:GYFMDB_INTEGER,Sex:GYFMDB_BOOL}];
    if (isCreate) {
        NSLog(@"****GYFMDBSDK****: 创建表成功");
    }else{
        NSLog(@"****GYFMDBSDK****: 创建表失败");
    }
    
    // 插入数据
    BOOL isInsert = [GYFMDBManager insertData:TableName fieldDict:@{Name:@"GYFMDBManager数据库",Age:@12,Sex:@(true)}];
    if (isInsert) {
        NSLog(@"****GYFMDBSDK****: 数据插入成功");
    }else{
        NSLog(@"****GYFMDBSDK****: 数据插入失败");
    }
    
    // 修改数据
    BOOL isUpdate = [GYFMDBManager updateData:TableName filedDict:@{Name:@"Name修改测试"} key:Sid value:@1];
    if (isUpdate) {
        NSLog(@"****GYFMDBSDK****: 修改数据成功");
    }else{
        NSLog(@"****GYFMDBSDK****: 修改数据失败");
    }
    
    // 查询数据
    NSArray *arr = [GYFMDBManager selectedData:TableName fieldKyes:@[Name,Age,Sex]];
    NSLog(@"****GYFMDBSDK****:arr = %@",arr);
    
    // 删除数据
    BOOL isDeleted = [GYFMDBManager deletedData:TableName key:Sid value:@2];
    if (isDeleted) {
        NSLog(@"****GYFMDBSDK****: 删除数据成功");
    }else{
        NSLog(@"****GYFMDBSDK****: 删除数据失败");
    }
    
    // 删除表
    BOOL isDeleted1 = [GYFMDBManager deletedTable:TableName];
    if (isDeleted1) {
        NSLog(@"****GYFMDBSDK****: 删除表成功");
    }else{
        NSLog(@"****GYFMDBSDK****: 删除表失败");
    }
}

@end


```

