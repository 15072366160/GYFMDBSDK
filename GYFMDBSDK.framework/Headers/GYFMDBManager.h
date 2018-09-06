//
//  GYFMDBManager.h
//  GYFMDBSDK
//
//  Created by Paul on 2018/9/6.
//  Copyright © 2018年 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString * const GYFMDB_BOOL     = @"BOOL NOT NULL";     // BOOL数值
static NSString * const GYFMDB_INTEGER  = @"INTEGER NOT NULL";  // 大整数值
static NSString * const GYFMDB_FLOAT    = @"FLOAT NOT NULL";    // 单精度浮点数值
static NSString * const GYFMDB_DOUBLE   = @"DOUBLE NOT NULL";   // 双精度浮点数值
static NSString * const GYFMDB_BLOB     = @"BLOB NOT NULL";     // 二进制形式的长文本数据
static NSString * const GYFMDB_TINYTEXT = @"TINYTEXT NOT NULL"; // 短文本字符串
static NSString * const GYFMDB_TEXT     = @"TEXT NOT NULL";     // 长文本数据

@interface GYFMDBManager : NSObject

/**
 实例化 GYFMDBManager 单利
 */
+ (instancetype)shared;

/**
 创建表
 @param tableName 表名字
 @param fieldDict 表中字段 key：字段 value：字段数据类型
 @return 返回是否创建成功
 */
+ (BOOL)createTable:(NSString *)tableName fieldDict:(NSDictionary *)fieldDict;

/**
 插入数据
 @param tableName 表名字
 @param fieldDict 表中字段 key：字段 value：字段值
 @return 返回是否插入成功
 */
+ (BOOL)insertData:(NSString *)tableName fieldDict:(NSDictionary *)fieldDict;

/**
 修改数据
 @param tableName 表名字
 @param fieldDict 表中字段 key：字段 value：字段值 例如：key = id value = 1
 @param key 筛选的字段
 @param value 筛选的字段的值
 @return 返回是否修改成功
 */
+ (BOOL)updateData:(NSString *)tableName filedDict:(NSDictionary *)fieldDict key:(NSString *)key value:(id)value;

/**
 查询数据
 @param tableName 表名字
 @param fieldKyes 表中字段数组
 @return 返回字段对应的数组
 */
+ (NSArray <NSDictionary *>*)selectedData:(NSString *)tableName fieldKyes:(NSArray <NSString *>*)fieldKyes;

/**
 删除数据
 @param tableName 表名字
 @param key 表中字段 例如：id
 @param value 字段对应的值 例如：1
 @return 返回是否删除成功
 */
+ (BOOL)deletedData:(NSString *)tableName key:(NSString *)key value:(id)value;

/**
删除表
 @param tableName 表名字
 @return 返回是否删除成功
 */
+ (BOOL)deletedTable:(NSString *)tableName;

@end
