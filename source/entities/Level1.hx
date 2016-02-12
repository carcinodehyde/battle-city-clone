package entities;

import flixel.addons.editors.tiled.TiledMap;
import flixel.group.FlxGroup;
import flixel.tile.FlxTilemap;
import flixel.FlxG;

/**
 * ...
 * @author Deddy
 */
class Level1 extends TiledMap
{
	//path
	private inline static var c_PATH_LEVEL_TILESHEETS = "assets/images/";
	
	//group
	public var foregroundTiles:FlxGroup;
	public var backgroundTiles:FlxGroup;
	private var collidableTileLayers:Array<FlxTilemap>;
	
	public function new(tiledLevel:Dynamic) 
	{
		super(tiledLevel);
		
		foregroundTiles = new FlxGroup();
		backgroundTiles = new FlxGroup();
		
		
		FlxG.camera.setBounds(0, 0, fullWidth, fullHeight, true);
		
		for (tileLayers in layers) 
		{
			var tileSheetName = tileLayers.properties.get("tileset");
			
			
		}
	}
	
}