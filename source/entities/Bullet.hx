package entities;

import entities.Player.MoveDirection;
import flixel.FlxSprite;
import flixel.FlxG;
import flixel.FlxObject;

/**
 * ...
 * @author Deddy
 */
class Bullet extends FlxSprite
{
	//variable umum
	private var attackPower:Int = 10;
	
	private var movementSpeed:Int = 190;
	
	private var moveDirection:MoveDirection;
	

	public function new(X:Float=0, Y:Float=0, moveDirections:MoveDirection) 
	{
		super(X, Y);
		
		moveDirection = moveDirections;
		//makeGraphic(4, 4);
		
		//loadGraphic(AssetPaths.battlecity__png, true, 8, 16);
		//setFacingFlip(FlxObject.LEFT, false, false);
		//setFacingFlip(FlxObject.RIGHT, true, false);
		
		//animation.add("up", [340, 340], 6, false);
		//animation.add("left", [341, 341], 6, false);
		//animation.add("down", [342, 342], 6, false);
		//animation.add("right", [343, 343], 6, false);
		
		//drag.x = drag.y = 1600;
		//
		//scale.x = 1.9;
		//scale.y = 1.9;
	}
	
	override public function update():Void 
	{
		trace(moveDirection);
		if (moveDirection == MoveDirection.UP)
		{
			y -= movementSpeed * FlxG.elapsed;
			//animation.play("up");
		}
		else if (moveDirection == MoveDirection.LEFT)
		{
			x -= movementSpeed * FlxG.elapsed;
			//animation.play("left");
		}
		else if (moveDirection == MoveDirection.DOWN)
		{
			y += movementSpeed * FlxG.elapsed;
			//animation.play("down");
		}
		else if (moveDirection == MoveDirection.RIGHT)
		{
			x += movementSpeed * FlxG.elapsed;
			//animation.play("right");
		}
		
		if (x > FlxG.width || x < 0 || y > FlxG.height || y < 0)
		{
			this.kill();
		}
		
		super.update();
	}
	
}