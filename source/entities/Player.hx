package entities;

import flixel.FlxSprite;
import flixel.FlxG;
import flixel.ui.FlxButton;
import flixel.ui.FlxVirtualPad;
import flixel.FlxObject;

/**
 * ...
 * @author Deddy
 */
enum MoveDirection {
	UP;
	DOWN;
	LEFT;
	RIGHT;
	}
	
class Player extends FlxSprite
{
	//tilesize of character
	private static inline var TILE_SIZE:Int = 8;
	
	//movement speed (per frame)
	private static inline var MOVEMENT_SPEED:Int = 50;
	
	//flag movement
	public var moveToNextTile:Bool;
	
	//current move direction
	public var moveDirection:MoveDirection;
	
	/*#if mobile
	private var _virtualPad:FlxVirtualPad;
	#end*/

	public function new(X:Float=0, Y:Float=0) 
	{
		super(X, Y);
		
		loadGraphic(AssetPaths.battlecity__png, true, 16, 16);
		setFacingFlip(FlxObject.LEFT, false, false);
		setFacingFlip(FlxObject.RIGHT, true, false);
		
		animation.add("up", [0, 1], 6, false);
		animation.add("down", [4, 5], 6, false);
		animation.add("left", [2, 3], 6, false);
		animation.add("right", [6, 7], 6, false);
		drag.x = drag.y = 1600;
		
		scale.x = 1.9;
		scale.y = 1.9;
		
		//setSize(8, 14);
		//offset.set(4, 2);
	}
	
	override public function update():Void 
	{
		super.update();
		
		
		//check input
		if (FlxG.keys.anyPressed(["DOWN", "S"])) 
		{
			y += MOVEMENT_SPEED * FlxG.elapsed;
					animation.play("down");
			
		}
		else if (FlxG.keys.anyPressed(["UP", "W"]))
		{
			y -= MOVEMENT_SPEED * FlxG.elapsed;
					animation.play("up");
		}
		else if (FlxG.keys.anyPressed(["LEFT", "A"]))
		{
			x -= MOVEMENT_SPEED * FlxG.elapsed;
					animation.play("left");
		}
		else if (FlxG.keys.anyPressed(["RIGHT", "D"]))
		{
			x += MOVEMENT_SPEED * FlxG.elapsed;
					animation.play("right");
		}
	}

}