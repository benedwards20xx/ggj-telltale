package telltaleGGJ
{
	import flash.display.Graphics;
	import org.flixel.*;
	import flash.utils.*;
	import telltaleGGJ.Choices;
 
	public class PlayState extends FlxState
	{	
		public var level:FlxTilemap;
		
		public var textMain:FlxText;
		public var text1:FlxText;
		public var text2:FlxText;
		public var text3:FlxText;
		public var text4:FlxText;
		public var doorText:FlxText;
		public var stairText:FlxText;
		public var deskText:FlxText;
		public var wifeText:FlxText;
		public var textPrompt:FlxText;
		
		public var player:FlxSprite;
		public var wife:FlxSprite;
		public var textRect:FlxSprite;
		public var doorway:FlxSprite;
		public var staircase:FlxSprite;
		public var fridge:FlxSprite;
		public var fridgeText:FlxText;
		public var sandwich:FlxSprite;
		public var cabinet:FlxSprite;
		public var clock:FlxSprite;
		public var bed:FlxSprite;
		public var couch:FlxSprite;
		public var timerBar:FlxSprite;
		public var heart:FlxSprite;
		public var desk:FlxSprite;
		public var deadWife:FlxSprite;
		public var cop:FlxSprite;
		
		public var startInteractionTimer:FlxTimer;
		public var conversationTimer:FlxTimer;
		public var inBetweenTimer:FlxTimer;
		public var gameOverTimer:FlxTimer;
		
		public var heartSound:FlxSound;
		
		public var canInteract:Boolean;
		public var canInputResponse:Boolean;
		public var conversationStarted:Boolean;
		public var inBetween:Boolean;
		public var eatSandwich:Boolean;
		public var hasHeart:Boolean;
		public var gaveWifeHeart:Boolean;
		public var wifeDead:Boolean;
		
		public var choiceSelections:String;
		
		public var curRoom:int;
		public var prevRoom:int;
		public var timerVal:int;
		
		public var choices:Choices;
		 
		[Embed(source = "GGJ_EdgarSprite.png")] public var imgPlayer:Class;
		[Embed(source = "GGJ_FridgeSprite.png")] public var imgFridge:Class;
		[Embed(source = "SANDWICH.png")] public var imgSandwich:Class;
		[Embed(source = "GGJ_WifeSprite.png")] public var imgWife:Class;
		[Embed(source = "GGJ_CopSprite.png")] public var imgCop:Class;
		[Embed(source = "GGJ_DeskSprite.png")] public var imgDesk:Class;
		[Embed(source = "GGJ_HeartSprite.png")] public var imgHeart:Class;
		[Embed(source = "GGJ_WifeDeadSprite.png")] public var imgWifeDead:Class;
		[Embed(source = "GGJ_CabinetSprite.png")] public var imgCabinet:Class;
		[Embed(source = "GGJ_ClockSprite.png")] public var imgClock:Class;
		[Embed(source = "GGJ_BedSprite.png")] public var imgBed:Class;
		[Embed(source = "GGJ_CouchSprite.png")] public var imgCouch:Class;
		
		[Embed(source="RealisticHeartbeat.mp3")] private var heartbeat:Class;

		override public function create():void
		{		
			var data:Array = new Array(
			1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
			1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
			level = new FlxTilemap();
			level.loadMap(FlxTilemap.arrayToCSV(data,80), FlxTilemap.ImgAutoAlt, 0, 0, FlxTilemap.ALT);
			add(level);
			
			prevRoom = 0;
			curRoom = 1;
			timerVal = 1;
			
			loadRoomOne();
			
			textRect = new FlxSprite(0, 330);
			textRect.makeGraphic(640, 160, 0xff000000);
			add(textRect);
			
			textMain = new FlxText(0, 350, 640);
			textMain.alignment = "center";
			textMain.color = FlxG.RED;
			textMain.text = "You are hungry. Maybe you should check the kitchen for something to eat."
			add(textMain);
			
			text1 = new FlxText(0, 370, 640);
			text1.alignment = "center";
			add(text1);
			
			text2 = new FlxText(0, 390, 640);
			text2.alignment = "center";
			add(text2);
			
			text3 = new FlxText(0, 410, 640);
			text3.alignment = "center";
			add(text3);
			
			text4 = new FlxText(0, 430, 640);
			text4.alignment = "center";
			add(text4);
			
			choiceSelections = new String;
			choiceSelections = "";
			
			choices = new Choices();
			
			canInputResponse = false;
			conversationStarted = false;
			inBetween = false;
			canInteract = true;
			eatSandwich = false;
			hasHeart = false;
			gaveWifeHeart = false;
			wifeDead = false;
			
			startInteractionTimer = new FlxTimer();
			conversationTimer = new FlxTimer();
			inBetweenTimer = new FlxTimer();
			gameOverTimer = new FlxTimer();
		}
		
		override public function update():void
		{
			player.acceleration.x = 0;
			if(FlxG.keys.LEFT || FlxG.keys.A)
				player.acceleration.x = -player.maxVelocity.x*4;
			if(FlxG.keys.RIGHT || FlxG.keys.D)
				player.acceleration.x = player.maxVelocity.x*4;
			//if(FlxG.keys.SPACE && player.isTouching(FlxObject.FLOOR))
			//	player.velocity.y = -player.maxVelocity.y/2;
			
			if (FlxG.keys.justReleased("ENTER") || FlxG.keys.justReleased("SPACE")) {
				if (canInteract) {
					if (FlxG.overlap(player, fridge) && curRoom == 2 && !eatSandwich) {
						startInteraction("sandwich");
					} else if (FlxG.overlap(player, desk) && curRoom == 3 && eatSandwich && !hasHeart) {
						startInteraction("heart");
					//} else if (FlxG.overlap(player, wife) && curRoom == 4 && eatSandwich && hasHeart) { 
						//hasHeart = false;
						//startConversation("heart");
					} else if (FlxG.overlap(player, doorway)) {
						if (curRoom == 1) {
							prevRoom = 1;
							loadRoomTwo();
						} else if (curRoom == 2) {
							prevRoom = 2;
							loadRoomOne();
						} else if (curRoom == 3) {
							prevRoom = 3;
							loadRoomFour();
						} else if (curRoom == 4) {
							prevRoom = 4;
							loadRoomThree();
						}	
					} else if (FlxG.overlap(player, staircase)) {
						if (curRoom == 2) {
							prevRoom = 2;
							loadRoomThree();
						} else if (curRoom == 3) {
							prevRoom = 3;
							loadRoomTwo();
						}
					}
				}
			} 
			
			if (canInputResponse && !conversationStarted && choices.getInteractionChoice() == "sandwich") {
				if (FlxG.keys.justReleased("ONE") || FlxG.keys.justReleased("NUMPADONE")) {
					text1.color = FlxG.RED;
					eatSandwich = true;
					canInteract = false;
					clearAllBut(1);
					remove(sandwich);
					inBetweenConversation();
				} else if (FlxG.keys.justReleased("TWO") || FlxG.keys.justReleased("NUMPADTWO")) {
					text2.color = FlxG.RED;
					eatSandwich = false;
					canInteract = true;
					remove(sandwich);
					choices.setInteractionChoice("");
					clearText();
					textMain.text = "You are still hungry...";
				}
			} else if (canInputResponse && !conversationStarted && choices.getInteractionChoice() == "heart") {
				if (FlxG.keys.justReleased("ONE") || FlxG.keys.justReleased("NUMPADONE")) {
					text1.color = FlxG.RED;
					hasHeart = true;
					canInteract = true;
					//clearAllBut(1);
					clearText();
					remove(heart);
					textMain.text = "You picked up the heart-shaped box of chocolates!";
					remove(deskText);
					//inBetweenConversation();
				} else if (FlxG.keys.justReleased("TWO") || FlxG.keys.justReleased("NUMPADTWO")) {
					text2.color = FlxG.RED;
					hasHeart = false;
					canInteract = true;
					remove(heart);
					choices.setInteractionChoice("");
					clearText();
					textMain.text = "Well I don't know of anything else she  might like...";
				}
			} else if (canInputResponse && conversationStarted) {
				//&& !conversationTimer.finished) {
				if (choiceSelections.length < 3) {
					if (FlxG.keys.justReleased("ONE") || FlxG.keys.justReleased("NUMPADONE")) {
						text1.color = FlxG.RED;
						choiceSelections += 1;
						clearAllBut(1);
						inBetweenConversation();
					} else if (FlxG.keys.justReleased("TWO") || FlxG.keys.justReleased("NUMPADTWO")) {
						text2.color = FlxG.RED;
						choiceSelections += 2;
						clearAllBut(2);
						inBetweenConversation();
					} else if (FlxG.keys.justReleased("THREE") || FlxG.keys.justReleased("NUMPADTHREE")) {
						text3.color = FlxG.RED;
						choiceSelections += 3;
						clearAllBut(3);
						inBetweenConversation();
					} else if (FlxG.keys.justReleased("FOUR") || FlxG.keys.justReleased("NUMPADFOUR")) {
						text4.color = FlxG.RED;
						choiceSelections += 4;
						clearAllBut(4);
						inBetweenConversation();
					}
				} else if (choiceSelections.length >= 3) {
					endConversation();
				}
			}
			
			if (inBetweenTimer.finished && !canInteract && choices.getInteractionChoice() == "sandwich") {
				startConversation("sandwich");
			} else if (inBetweenTimer.finished && choices.getInteractionChoice() == "heart") {
				startConversation("heart");
			} else if (inBetweenTimer.finished && choices.getInteractionChoice() == "police") {
				startConversation("police");
			}
			
			if (gameOverTimer.finished) {
				remove(level);
				remove(textRect);
				FlxG.bgColor = FlxG.BLACK;
				textPrompt = new FlxText(0, 100, FlxG.width);
				textPrompt.alignment = "center";
				textPrompt.color = FlxG.WHITE;
				textPrompt.text = "Game Over - Global Game Jam 2013 - Ben Edwards, Nick Lytle";
				add(textPrompt);
			}
			
			super.update();
			FlxG.collide(level, player);
		}
		
		public function removeAllThings():void {
			remove(fridge);
			remove(fridgeText);
			remove(desk);
			remove(deskText);
			remove(doorway);
			remove(doorText);
			remove(staircase);
			remove(stairText);
			remove(sandwich);
			remove(heart);
			remove(wife);
			remove(wifeText);
			remove(player);
			remove(deadWife);
			remove(textPrompt);
			remove(cop);
			remove(bed);
			remove(couch);
			remove(cabinet);
			remove(clock);
		}
		
		public function loadRoomOne():void {
			removeAllThings();
			FlxG.bgColor = 0xfffdfa66;
			
			curRoom = 1;
			
			doorway = new FlxSprite(612, 168);
			doorway.makeGraphic(20, 160, 0xff97683c);
			add(doorway);
			
			doorText = new FlxText(doorway.x - 25, doorway.y - 20, 60);
			doorText.color = FlxG.BLACK;
			doorText.text = "Kitchen";
			add(doorText);
			
			couch = new FlxSprite(200, 258);
			couch.loadGraphic(imgCouch, false, false, 200, 72);
			add(couch);
			
			if (prevRoom == 2) {
				player = new FlxSprite(560, 185);
				if (wifeDead) {
					remove(deadWife);
					cop = new FlxSprite(100, 184);
					//wife.makeGraphic(60, 144, FlxG.BLUE);
					cop.loadGraphic(imgCop, false, false, 60, 144);
					add(cop);
					inBetween = true;
					canInputResponse = false;
					inBetweenTimer = new FlxTimer();
					inBetweenTimer.start(1);
					canInteract = false;
				}
			} else if (prevRoom == 0) {
				player = new FlxSprite(10, 185);
				textPrompt = new FlxText(0, 100, FlxG.width);
				textPrompt.alignment = "center";
				textPrompt.color = FlxG.BLACK;
				textPrompt.text = "Use LEFT and RIGHT (or A and D) to move, SPACE or ENTER to interact, and 1 through 4 to choose dialogue choices.";
				add(textPrompt);
			}
			addPlayerToRoom();
		}
		
		public function loadRoomTwo():void {
			FlxG.bgColor = 0xffffbcbc;
			
			removeAllThings();
			
			curRoom = 2;
			
			fridge = new FlxSprite(520, 168);
			fridge.loadGraphic(imgFridge, false, false, 78, 160);
			add(fridge);
			
			if (!eatSandwich) {
				fridgeText = new FlxText(fridge.x, fridge.y - 20, 80);
				fridgeText.color = FlxG.BLACK;
				fridgeText.text = "Fridge";
				add(fridgeText);
			}
			
			doorway = new FlxSprite(8, 168);
			doorway.makeGraphic(20, 160, 0xff97683c);
			add(doorway);
			
			doorText = new FlxText(doorway.x + 8, doorway.y - 20, 80);
			doorText.color = FlxG.BLACK;
			doorText.text = "Living Room";
			add(doorText);
			
			staircase = new FlxSprite(120, 168);
			staircase.makeGraphic(80, 160, FlxG.BLACK);
			add(staircase);
			stairText = new FlxText(staircase.x + 6, staircase.y - 20, 80);
			stairText.color = FlxG.BLACK;
			stairText.text = "Upstairs";
			add(stairText);
			
			if (prevRoom == 3) {
				player = new FlxSprite(staircase.x, 185);
				if (gaveWifeHeart) {
					deadWife = new FlxSprite(360, 278);
					deadWife.loadGraphic(imgWifeDead, false, false, 144, 60);
					add(deadWife);
					textMain.text = "You hear some knocking at the front door. Uh oh it might be the police...";
					startInteraction("police");
				}
			} else if (prevRoom == 1) {
				player = new FlxSprite(10, 185);
			}
			player.loadGraphic(imgPlayer, false, false, 60, 144);
			addPlayerToRoom();
		}
		
		public function loadRoomThree():void {
			FlxG.bgColor = 0xff34d140;
			
			removeAllThings();
			
			curRoom = 3;
			
			doorway = new FlxSprite(8, 168);
			doorway.makeGraphic(20, 160, 0xff97683c);
			add(doorway);
			
			doorText = new FlxText(doorway.x + 8, doorway.y - 20, 80);
			doorText.color = FlxG.BLACK;
			doorText.text = "Bedroom";
			add(doorText);
			
			staircase = new FlxSprite(120, 168);
			staircase.makeGraphic(80, 160, FlxG.BLACK);
			add(staircase);
			stairText = new FlxText(staircase.x + 6, staircase.y - 20, 80);
			stairText.color = FlxG.BLACK;
			stairText.text = "Downstairs";
			add(stairText);
			
			desk = new FlxSprite(460, 184);
			desk.loadGraphic(imgDesk, false, false, 150, 145);
			add(desk);
			
			clock = new FlxSprite(300, 148);
			clock.loadGraphic(imgClock, false, false, 80, 180);
			add(clock);
			
			if (eatSandwich && !hasHeart) {
				textMain.color = FlxG.RED;
				textMain.text = "Maybe I should try to do something to make it up to her...";
				
				deskText = new FlxText(desk.x, desk.y + 20, 80);
				deskText.color = FlxG.BLACK;
				deskText.text = "Desk";
				add(deskText);
			}
			
			if (prevRoom == 4 && gaveWifeHeart && !wifeDead) {
				FlxG.shake(0.05, 2);
				wifeDead = true;
				textMain.color = FlxG.RED;
				textMain.text = "Woops, you opened the door and knocked her down the stairs";
			}
		
			if (prevRoom == 2) { 
				player = new FlxSprite(staircase.x, 185);
			} else if (prevRoom == 4) {
				player = new FlxSprite(10, 185);
			}
			player.loadGraphic(imgPlayer, false, false, 60, 144);
			addPlayerToRoom();
		}
		
		public function loadRoomFour():void {
			FlxG.bgColor = 0xffbdbeff;
			
			removeAllThings();
			
			curRoom = 4;
			
			doorway = new FlxSprite(612, 168);
			doorway.makeGraphic(20, 160, 0xff97683c);
			add(doorway);
			
			doorText = new FlxText(doorway.x - 25, doorway.y - 20, 60);
			doorText.color = FlxG.BLACK;
			doorText.text = "Study";
			add(doorText);
			
			bed = new FlxSprite(12, 185);
			bed.loadGraphic(imgBed, false, false, 200, 148);
			add(bed);
			
			cabinet = new FlxSprite(350, 158);
			cabinet.loadGraphic(imgCabinet, false, false, 105, 170);
			add(cabinet);
			
			if (!gaveWifeHeart) {
				if (eatSandwich) {
					wife = new FlxSprite(100, 184);
					wife.loadGraphic(imgWife, false, false, 60, 144);
					add(wife);
					if (hasHeart) {
						inBetween = true;
						canInputResponse = false;
						inBetweenTimer = new FlxTimer();
						inBetweenTimer.start(1);
						canInteract = false;
					}
				} 
			}
			
			player = new FlxSprite(560, 185);
			addPlayerToRoom();
		}
		
		public function addPlayerToRoom():void {
			player.loadGraphic(imgPlayer, false, false, 60, 144);
			player.maxVelocity.x = 120;
			player.maxVelocity.y = 200;
			player.acceleration.y = 200;
			player.drag.x = player.maxVelocity.x * 4;
			add(player);
		}
		
		public function clearText():void {
			text1.text = "";
			text2.text = "";
			text3.text = "";
			text4.text = "";
			textMain.text = "";
		}
		
		public function clearAllBut(x:int):void {
			if (x != 1) {
				text1.text = "";
			}
			if (x != 2) {
				text2.text = "";
			}
			if (x != 3) {
				text3.text = "";
			}
			if (x != 4) {
				text4.text = "";
			}
		}
		
		public function startInteraction(interaction:String):void {
			choices.setInteractionChoice(interaction);
			canInteract = false;
			textMain.color = FlxG.RED;
			if (interaction == "sandwich") {
				textMain.text = "There is a sandwich in the fridge, will you eat it?";
				text1.color = FlxG.WHITE;
				text1.text = "1. Eat it!";
				text2.color = FlxG.WHITE;
				text2.text = "2. Leave it alone";
				canInputResponse = true;
				remove(sandwich);
				sandwich = new FlxSprite();
				sandwich.loadGraphic(imgSandwich, false, false, 198, 107);
				sandwich.x = FlxG.width  * 3 / 4 - sandwich.width / 2;
				sandwich.y = 370;
				add(sandwich);
			} else if (interaction == "heart") {
				textMain.text = "There is a box of chocolates in the desk, pick them up?"
				text1.color = FlxG.WHITE;
				text1.text = "1. Get them chocolates!";
				text2.color = FlxG.WHITE;
				text2.text = "2. Leave them alone";
				canInputResponse = true;
				remove(heart);
				heart = new FlxSprite();
				heart.loadGraphic(imgHeart, false, false, 140, 112);
				heart.x = FlxG.width  * 7 / 8 - heart.width / 2;
				heart.y = 360;
				add(heart);
			} else if (interaction == "police") {
				canInteract = true;
			}
		}
		
		public function startConversation(conversation:String):void {
			conversationStarted = true;
			inBetweenTimer.stop();
			if (conversation == "sandwich") {
				remove(wife);
				wife = new FlxSprite(100, 184);
				wife.loadGraphic(imgWife, false, false, 60, 144);
				add(wife);
				inBetweenTimer.stop();
			} else if (conversation == "police") {
				FlxG.playMusic(heartbeat);
			}
			
			canInputResponse = true;
			var i:int;
			var tempResponseString:String = ""; 
			textMain.color = FlxG.BLUE;
			tempResponseString = choices.findQuestion(choiceSelections).split("|")[0];
			if (tempResponseString)
				textMain.text = tempResponseString;
			text1.color = FlxG.WHITE;
			tempResponseString = choices.findQuestion(choiceSelections).split("|")[1]
			if (tempResponseString)
				text1.text = tempResponseString;
			text2.color = FlxG.WHITE;
			tempResponseString = choices.findQuestion(choiceSelections).split("|")[2]
			if (tempResponseString)
				text2.text = tempResponseString;
			text3.color = FlxG.WHITE;
			tempResponseString = choices.findQuestion(choiceSelections).split("|")[3]
			if (tempResponseString)
				text3.text = tempResponseString;
			text4.color = FlxG.WHITE;
			tempResponseString = choices.findQuestion(choiceSelections).split("|")[4]
			if (tempResponseString)
				text4.text = tempResponseString;
		}
		
		public function endConversation():void {
			inBetweenTimer.stop();
			inBetweenTimer = new FlxTimer();
			canInputResponse = false;
			clearText();
			canInteract = true;
			conversationStarted = false;
			if (choices.getInteractionChoice() == "sandwich") {
				textMain.color = FlxG.BLUE;
				textMain.text = "WAHHH";
				remove(fridgeText);
				remove(wife);
				choiceSelections = "";
			} else if (choices.getInteractionChoice() == "heart") {
				textMain.color = FlxG.BLUE;
				textMain.text = "I'M LEAVING";
				gaveWifeHeart = true;
				remove(wifeText);
				remove(wife);
				choiceSelections = "";
			} else if (choices.getInteractionChoice() == "police") {
				if (choiceSelections.charAt(choiceSelections.length - 1) == "1") {
					textMain.color = FlxG.BLUE;
					textMain.text = "You bastard";
					
				}
				gameOverTimer.start(timerVal * 2);
				removeAllThings();
			}
		}
		
		public function inBetweenConversation():void {
			inBetween = true;
			canInputResponse = false;
			inBetweenTimer.start(timerVal);
		}
	}
}