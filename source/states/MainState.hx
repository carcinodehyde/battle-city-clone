package states;

import entities.Player;
import flixel.FlxState;
import flixel.tile.FlxTilemap;
import openfl.Assets;
import flixel.FlxG;
/**
 * ...
 * @author Deddy
 */
class MainState extends FlxState
{


	
	override public function create():Void 
	{
		//hide mouse
		FlxG.mouse.visible = false;
		//add map
		var tileMap:FlxTilemap = new FlxTilemap();
		var mapData:String = Assets.getText("assets/images/tile.csv");
		var mapTilePath:String = "assets/images/battlecity.png";
		tileMap.loadMap(mapData, mapTilePath, 16, 16);
		add(tileMap);
		
		var player = new Player(100, 100);
		add(player);
		super.create();
	}
	
	override public function destroy():Void 
	{
		super.destroy();
	}
	
	override public function update():Void 
	{
		super.update();
	}
	
}