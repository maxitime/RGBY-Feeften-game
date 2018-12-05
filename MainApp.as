package
{
	import flash.display.MovieClip;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import ru.LoaderSWF;
	
	public class MainApp extends MovieClip
	{
		private var barMenu:MenuGame;
		
		public function MainApp()
		{
			if (stage)
				init();
			else
				addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.SHOW_ALL;
			barMenu = new MenuGame(this);
			LoaderSWF.getInstance().loaderSWF(this);
		}
	}
}