package ru
{
	import flash.display.Sprite;
	
	public class LoaderSWF
	{
		private static var instance:LoaderSWF;
		private var loadSWF:Sprite;
		private var mainApp:MainApp;
		
		public function LoaderSWF()
		{
			instance = this;
		}
		
		public static function getInstance():LoaderSWF
		{
			return instance == null ? new LoaderSWF() : instance;
		}
		
		public function loaderSWF(paramSpr:MainApp):void
		{
			mainApp = paramSpr;
		}
		
		public function loadingSwf(param:String):void
		{
			switch (param)
			{
			case "ClassicFifteen": 
				var feeften:MainFifteen = new MainFifteen();
				loadSWF = feeften;
				break;
			
			case "MoveRYGB":
				
				var rgby:MainRGBY = new MainRGBY();
				loadSWF = rgby;
				break;
			
			default: 
				break;
			}
			mainApp.addChild(loadSWF);
			loadSWF.x = 120;
			loadSWF.y = 80;
		}
		
		public function loaderUnload():void
		{
			if (mainApp.contains(loadSWF))
				mainApp.removeChild(loadSWF);
		}
	}
}