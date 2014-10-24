#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize{
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
    
}

-(void)update:(CCTime)delta{
    // put update code here
}

// put new methods here
-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event{
//this will get called every time the player touches the screen
    [character flap];
}
/*-(void)doSomething{
    NSLog(@"Hello World!");
}
-(int)doSomethingWithAString: (NSString*)myString{
    return [myString length]*10;
}

 //error on this code
 (NSArray *)addThisStringToAnArray:(NSString*)firstString(NSString*)secondString:(NSString*)thirdString{
 return [NSArray arrayWithObjects: firstString, secondString, thirdString, nil];
 }
 */
@end
