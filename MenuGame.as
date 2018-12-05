package
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import ru.LanguageApp;
	import ru.LoaderSWF;
	import ru.ValueApp;
	import ru.controls.ButonsGame;
	import ru.controls.TextLabel;
	
	public class MenuGame extends Sprite
	{
		[Embed(source = "../lib/fon.jpg")]
		private var fon:Class;
		[Embed(source = "../lib/a1EN.png")]
		private var a1:Class;
		[Embed(source = "../lib/a2EN.png")]
		private var a2:Class;
		[Embed(source = "../lib/b1EN.png")]
		private var b1:Class;
		[Embed(source = "../lib/b2EN.png")]
		private var b2:Class;
		
		public var mainApp:MainApp;
		public var btnChoiseGame:Sprite;
		public var btnBackMenu:Sprite;
		private var textApp:TextLabel;
		private var textFeeften:TextLabel;
		private var textRgby:TextLabel;
		private var bmBtn:Bitmap;
		private var bmdBtn:BitmapData;
		private var btnLang:ButonsGame;
		private var btnFiften:btnFifteen;
		private var btnRGB:btnRGBY;
		
		public function MenuGame(paramSpr:MainApp)
		{
			mainApp = paramSpr;
			mainApp.addChild(this);
			Selectlang.getInstance();
			LanguageApp.getInstance();
			drawBtn();
			btnAdd();
		}
		
		private function drawBtn():void
		{
			textApp = new TextLabel(22);
			
			var bm:Bitmap = new fon();
			var bmd:BitmapData = new BitmapData(660, 710);
			bmd = bm.bitmapData;
			graphics.beginBitmapFill(bmd);
			graphics.drawRect(0, 0, 660, 710);
			graphics.endFill();
			
			btnChoiseGame = new Sprite();
			btnChoiseGame.x = 125;
			btnChoiseGame.y = 6;
			btnChoiseGame.addEventListener(MouseEvent.ROLL_OVER, onOverA);
			btnChoiseGame.addEventListener(MouseEvent.ROLL_OUT, onOutA);
			btnChoiseGame.buttonMode = true;
			btnChoiseGame.mouseChildren = false;
			drawBM(btnChoiseGame, a1);
			
			btnBackMenu = new Sprite();
			btnBackMenu.x = 125;
			btnBackMenu.y = 6;
			btnBackMenu.addEventListener(MouseEvent.ROLL_OVER, onOverB);
			btnBackMenu.addEventListener(MouseEvent.ROLL_OUT, onOutB);
			btnBackMenu.buttonMode = true;
			btnBackMenu.mouseChildren = false;
			drawBM(btnBackMenu, b1);
			
			btnFiften = new btnFifteen();
			btnFiften.buttonMode = true;
			btnFiften.x = 120;
			btnFiften.y = 130;
			
			btnRGB = new btnRGBY();
			btnRGB.buttonMode = true;
			btnRGB.x = 300;
			btnRGB.y = 130;
			
			textFeeften = new TextLabel(22);
			textFeeften.text = "Fifteen";
			textFeeften.setLabel(150, 100, 100, 30);
			
			textRgby = new TextLabel(22);
			textRgby.text = "RGBY";
			textRgby.setLabel(320, 100, 100, 30);
			
			btnLang = new ButonsGame("Set language")
			btnLang.x = 230;
			btnLang.y = 320;
			
			addChild(btnChoiseGame);
			addChild(btnBackMenu);
			addChild(btnFiften);
			addChild(btnRGB);
			addChild(btnLang);
			
			addEventListener(MouseEvent.CLICK, BTN_Click);
		}
		
		public function btnAdd():void
		{
			removeChild(btnBackMenu);
			addChild(btnChoiseGame);
			addChild(btnFiften);
			addChild(btnRGB);
			addChild(textFeeften);
			addChild(textRgby);
			addChild(btnLang);
		}
		
		public function btnRemove():void
		{
			addChild(btnBackMenu);
			removeChild(btnChoiseGame);
			removeChild(btnFiften);
			removeChild(btnRGB);
			removeChild(textFeeften);
			removeChild(textRgby);
			removeChild(btnLang);
		}
		
		private function BTN_Click(event:MouseEvent):void
		{
			switch (event.target)
			{
			case btnFiften: 
				btnRemove();
				textApp.text = "Fifteen";
				ValueApp.typeGame = "ClassicFifteen";
				btnBackMenu.addChild(textApp);
				textApp.setLabel(220, 10, 100, 30);
				LoaderSWF.getInstance().loadingSwf(ValueApp.typeGame);
				break;
			
			case btnRGB: 
				btnRemove();
				textApp.text = "RGBY";
				ValueApp.typeGame = "MoveRYGB";
				btnBackMenu.addChild(textApp);
				textApp.setLabel(220, 10, 100, 30);
				LoaderSWF.getInstance().loadingSwf(ValueApp.typeGame);
				break;
			
			case btnBackMenu: 
				btnAdd();
				LoaderSWF.getInstance().loaderUnload();
				break
			
			case btnLang: 
				Selectlang.init(this);
				break
			
			default: 
				break;
			}
		}
		
		private function onOutA(event:MouseEvent):void
		{
			drawBM(btnChoiseGame, a1);
		}
		
		private function onOverA(event:MouseEvent):void
		{
			drawBM(btnChoiseGame, a2);
		}
		
		private function onOutB(event:MouseEvent):void
		{
			drawBM(btnBackMenu, b1);
		}
		
		private function onOverB(event:MouseEvent):void
		{
			drawBM(btnBackMenu, b2);
		}
		
		private function drawBM(paramSpr:Sprite, param:Class):void
		{
			paramSpr.graphics.clear();
			bmBtn = new param();
			bmdBtn = new BitmapData(400, 56);
			bmdBtn = bmBtn.bitmapData;
			paramSpr.graphics.beginBitmapFill(bmdBtn);
			paramSpr.graphics.drawRect(0, 0, 400, 56);
		}
	}

}