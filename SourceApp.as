package ru
{
	
	public class SourceApp
	{
		private static var instance:SourceApp;
		[Embed(source = "../../lib/fon.jpg")]
		public static const FON:Class;
		[Embed(source = "../../lib/fonGame.jpg")]
		public static const FON_GAME:Class;
		[Embed(source = "../../lib/fonCustom.jpg")]
		public static const FON_CUSTOM:Class;
		[Embed(source = "../../lib/fonOptions.jpg")]
		public static const FON_OPTIONS:Class;
		[Embed(source = "../../lib/showEnd.jpg")]
		public static const SHOW_END:Class;
		[Embed(source = "../../lib/gameOver.jpg")]
		public static const OVER_GAME:Class;
		
		[Embed(source = "../../lib/revert.png")]
		public static const REVERT:Class;
		[Embed(source = "../../lib/gorver.png")]
		public static const GOR_VER:Class;
		[Embed(source = "../../lib/diag.png")]
		public static const DIAG:Class;
		[Embed(source = "../../lib/df2.png")]
		public static const BTN_DIA:Class;
		
		[Embed(source = "../../lib/flag/en.png")]
		public static const FLAG_EN:Class;
		[Embed(source = "../../lib/flag/ru.png")]
		public static const FLAG_RU:Class;
		
		public function SourceApp()
		{
			instance = this;
		}
		
		public static function getInstance():SourceApp
		{
			return instance == null ? new SourceApp() : instance;
		}
	}
}