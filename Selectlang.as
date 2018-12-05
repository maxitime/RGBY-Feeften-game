package
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import ru.LanguageApp;
	import ru.SourceApp;
	import ru.ValueApp;
	import ru.events.EventGame;
	
	public class Selectlang
	{
		private static var instance:Selectlang;
		private static var sprParent:Sprite;
		public static var spr:Sprite;
		private static var XX:int = 0;
		private static var tempLangStr:String;
		
		public function Selectlang()
		{
			spr = new Sprite();
		}
		
		public static function getInstance():Selectlang
		{
			return instance == null ? new Selectlang() : instance;
		}
		
		public static function init(param:Sprite):void
		{
			sprParent = param;
			tempLangStr = LanguageApp.langStr;
			drawSh();
			spr.name = tempLangStr;
			drawFlag("ru", SourceApp.FLAG_RU);
			drawFlag("en", SourceApp.FLAG_EN);
			sprParent.addChild(spr);
			spr.addEventListener(MouseEvent.CLICK, shClick);
		}
		
		private static function drawSh():void
		{
			spr.graphics.clear();
			spr.graphics.beginFill(ValueApp.COLOR2, 0.4);
			spr.graphics.drawRect(0, 0, ValueApp.WIDTH_APP, ValueApp.HEIGHT_APP);
			spr.graphics.endFill();
			spr.graphics.lineStyle(5, 0x244353);
			spr.graphics.beginFill(0xE7FDFE);
			spr.graphics.drawRect(200, 160, 270, 290);
			spr.graphics.endFill();
			spr.x = 0;
			spr.y = 0;
		}
		
		private static function drawFlag(paramStr:String, paramCl:Class):void
		{
			var bm:Bitmap = new paramCl();
			var bmd:BitmapData = new BitmapData(80, 80);
			bmd = bm.bitmapData;
			var flag:Sprite = new Sprite();
			flag.name = paramStr;
			//flag.graphics.lineStyle(1);
			flag.graphics.beginBitmapFill(bmd, null, false);
			flag.graphics.drawRect(0, 0, 80, 80);
			flag.graphics.endFill();
			flag.x = 235 + XX;
			flag.y = 235;
			XX = XX + 125;
			spr.addChild(flag);
			
			var textForm:TextFormat = new TextFormat();
			textForm.size = 24;
			textForm.align = "center";
			textForm.bold = true;
			textForm.font = "Arial";
			var locTF:TextField = new TextField();
			//locTF.border = true;
			//locTF.borderColor = 0x000000;
			//locTF.background = true;
			//locTF.backgroundColor = 0xEDF2F8;
			locTF.textColor = 0x1C2E40;
			locTF.defaultTextFormat = textForm;
			locTF.text = paramStr;
			locTF.width = 32;
			locTF.height = 32;
			locTF.x = 24;
			locTF.y = 0;
			flag.addChild(locTF);
		}
		
		private static function shClick(event:MouseEvent):void
		{
			if (tempLangStr != event.target.name)
			{
				ru.LanguageApp.langStr = event.target.name;
				spr.dispatchEvent(new EventGame(EventGame.CHANGE_LANG));
			}
			var numCh:int = spr.numChildren;
			var i:int = 0;
			if (numCh > 0)
			{
				var aa:int = numCh - 1;
				for (i = 0; i < numCh; i++)
				{
					spr.removeChildAt(aa);
					aa--;
				}
			}
			
			XX = 0;
			spr.removeEventListener(MouseEvent.CLICK, shClick);
			sprParent.removeChild(spr);
		}
	
	}

}