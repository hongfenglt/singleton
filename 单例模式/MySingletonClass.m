/**
 *                 Created by 洪峰 on 15/8/13.
 *                 Copyright (c) 2015年 洪峰. All rights reserved.
 *
 *                #####################################################
 *                #                                                   #
 *                #                       _oo0oo_                     #
 *                #                      o8888888o                    #
 *                #                      88" . "88                    #
 *                #                      (| -_- |)                    #
 *                #                      0\  =  /0                    #
 *                #                    ___/`---'\___                  #
 *                #                  .' \\|     |# '.                 #
 *                #                 / \\|||  :  |||# \                #
 *                #                / _||||| -:- |||||- \              #
 *                #               |   | \\\  -  #/ |   |              #
 *                #               | \_|  ''\---/''  |_/ |             #
 *                #               \  .-\__  '-'  ___/-. /             #
 *                #             ___'. .'  /--.--\  `. .'___           #
 *                #          ."" '<  `.___\_<|>_/___.' >' "".         #
 *                #         | | :  `- \`.;`\ _ /`;.`/ - ` : | |       #
 *                #         \  \ `_.   \_ __\ /__ _/   .-` /  /       #
 *                #     =====`-.____`.___ \_____/___.-`___.-'=====    #
 *                #                       `=---='                     #
 *                #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~   #
 *                #                                                   #
 *                #               佛祖保佑         永无BUG              #
 *                #                                                   #
 *                #####################################################
 *
 *                 新浪微博:http://weibo.com/hongfenglt
 *                 博客地址:http://blog.csdn.net/hongfengkt
 */
//                 单例模式
//                 MySingletonClass.m
//

#import "MySingletonClass.h"

@implementation MySingletonClass

//用来保存唯一的单例对象  static 作用是保证_instance仅作用于当前文件,防止外界拿到修改
static id _instance;

// 提供快速创建方法
+ (instancetype)sharedMySingletonClass
{
    if (nil == _instance) { //防止多次加锁

        @synchronized(self){ //加锁防止多个线程同时进来操作
            
            if (nil == _instance) { //防止多次创建
                
                _instance = [[self alloc] init]; //调用alloc方法
            }
        }
    }
    
    return _instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    if (nil == _instance) { //防止多次加锁
        
        @synchronized(self){ //加锁防止多个线程同时进来操作
            
            if (nil == _instance) { //防止多次创建
                
                _instance = [super allocWithZone:zone]; //调用父类方法
            }
        }
    }
    
    return _instance;
}
// 因为如果通过copy来创建对象，必须是先有一个对象，所以可以直接返回_instance
// 另外如果通过copy来创建对象，必须实现NSCopying协议,所以如果你敲下面代码没有提示的话，先去遵守协议
- (id)copyWithZone:(NSZone *)zone
{
    return _instance;
}

@end
