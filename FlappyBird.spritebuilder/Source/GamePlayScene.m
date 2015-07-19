#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
    timesinceLastObsticle = 0.0F;
    
}

-(void)update:(CCTime)delta
{
    // put update code here
    
    timesinceLastObsticle += delta;
    
    if(timesinceLastObsticle > 2.0F){
        [self addObstacle];
        
        timesinceLastObsticle = 0.0F;
    }
}

// put new methods here

- (void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event{
    //This will be called every time the player touches screen
    [character flap];
}

@end
