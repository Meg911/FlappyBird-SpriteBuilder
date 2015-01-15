#import "GamePlayScene.h"
#import "Hero.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize{
    character = (Hero*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
    timeSinceObstacle = 0.0f;
    
}

-(void)update:(CCTime)delta{
    // increment thee time since the last obstacle was added
    timeSinceObstacle += delta;//delta equals 1/60th of a second
    //check to see if 2 seconds have passed
    if (timeSinceObstacle > 2.0f) {
        //add new obstacle
        [self addObstacle];
        //reset the timer
        timeSinceObstacle = 0.0f;
    }
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
