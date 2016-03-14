//
//  ViewController.m
//  dropit
//
//  Created by wxc on 16/3/14.
//  Copyright © 2016年 wxc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak,nonatomic) IBOutlet UIView *gameview;
@property (strong,nonatomic) UIDynamicAnimator * animator;
@property (strong,nonatomic) UIGravityBehavior * gravity;
@property (strong,nonatomic) UICollisionBehavior * collider;
@end

@implementation ViewController

//-(UIDynamicAnimator *)animator{
//    if (!_animator) {
//        _animator = [[UIDynamicAnimator alloc]initWithReferenceView:self.gameview];
//    }
//    return _animator;
//}
//
//-(UIGravityBehavior *)gravity{
//    if (_gravity) {
//        _gravity = [[UIGravityBehavior alloc]init];
//        _gravity.magnitude = 0.9;
//        [self.animator addBehavior:_gravity];
//    }
//    return _gravity;
//}
//
//-(UICollisionBehavior *)collider{
//    if (_collider) {
//        _collider = [[UICollisionBehavior alloc]init];
//        _collider.translatesReferenceBoundsIntoBoundary = YES;
//        [self.animator addBehavior:_collider];
//        
//    }
//    return _collider;
//}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)tap:(UITapGestureRecognizer *)sender {
    [self drop];
}

static const CGSize DROP_SIZE = {40,40};

/*
 *添加drop box
 */
-(void) drop{
    CGRect frame;
    frame.origin = CGPointZero;
    frame.size = DROP_SIZE;
    int x = (arc4random())% (int)self.gameview.bounds.size.width/DROP_SIZE.width;
    frame.origin.x = x*DROP_SIZE.width;
    UIView * drop_view = [[UIView alloc]initWithFrame:frame];
    drop_view.backgroundColor = [self randomcolor];
    [self.gameview addSubview:drop_view];
    
//    [self.gravity addItem:drop_view];
//    [self.collider addItem:drop_view];
    
    self.animator = [[UIDynamicAnimator alloc]initWithReferenceView:self.gameview];
    self.gravity =[[UIGravityBehavior alloc]init];
      [self.gravity addItem:drop_view];
    self.collider = [[UICollisionBehavior alloc]init];
     [self.collider addItem:drop_view];
    self.collider.translatesReferenceBoundsIntoBoundary = YES;
    [self.animator addBehavior:self.gravity];
    [self.animator addBehavior:self.collider];
   
}

-(UIColor *)randomcolor{
    switch (arc4random()%5) {
        case 0: return [UIColor greenColor];
         case 1: return [UIColor blueColor];
         case 2: return [UIColor orangeColor];
         case 3: return [UIColor redColor];
         case 4: return [UIColor purpleColor];
    }
    return [UIColor blackColor];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
