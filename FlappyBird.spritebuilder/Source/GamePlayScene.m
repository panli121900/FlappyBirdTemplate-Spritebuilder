#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
//    [self addObstacle];
    timeSinceObstacle = 0.0f;
}

-(void)update:(CCTime)delta
{
    // put update code here
    // increment timeSinceObstacle every time this update method is run (60 times a second)
    // after 2 seconds, add obstacle and clear timer
    timeSinceObstacle += delta;
//    if (timeSinceObstacle > 2.0f)
//    {
//        [self addObstacle];
//        timeSinceObstacle = 0.0f;
//    }
}

// put new methods here
- (void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event {
    // this will get called every time the player touches the screen
    [character flap];
}
@end
