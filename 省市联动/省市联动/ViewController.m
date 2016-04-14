//
//  ViewController.m
//  省市联动
//
//  Created by  江苏 on 16/4/14.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"
#import "City.h"
@interface ViewController ()<UIPickerViewDelegate,UIPickerViewDataSource>
@property(nonatomic,strong)UIPickerView* pickerView;
@property(strong,nonatomic)NSArray* citys;
@property(nonatomic)int index;
@end

@implementation ViewController

-(NSArray *)citys{
    if (_citys==nil) {
        _citys=[City citys];
    }
    return _citys;
}

-(UIPickerView *)pickerView{
    if (_pickerView==nil) {
        _pickerView=[[UIPickerView alloc]initWithFrame:CGRectMake(0, 80, 320, 300)];
        _pickerView.delegate=self;
        _pickerView.dataSource=self;
        [self.view addSubview:_pickerView];
    }
    return _pickerView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self pickerView];
}

#pragma mark-pickerViewDataSource

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if (component==0) {
        return self.citys.count;
    }else{
        return [self.citys[self.index] cities].count;
    }
}

#pragma mark-pickerViewDelegate

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if (component==0) {
        return [self.citys[row] name];
    }else{
        return [self.citys[self.index] cities][row];
    }
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if (component==0) {
        self.index=(int)row;
        [pickerView reloadComponent:1];
    }
}
@end
