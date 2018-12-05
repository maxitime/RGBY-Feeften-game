package ru
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	
	public class BasicWindow extends Sprite
	{
		public function BasicWindow(paramFon:Class)
		{
			super();
			var fonBM:Bitmap = new paramFon();
			var fonBMD:BitmapData = new BitmapData(450, 600);
			fonBMD = fonBM.bitmapData;
			graphics.beginBitmapFill(fonBMD);
			graphics.drawRect(0, 0, 450, 600);
			graphics.endFill();
		}
		
		public function windAdd(param:Sprite):void
		{
			param.addChild(this);
		}
		
		public function windRemove(param:Sprite):void
		{
			param.removeChild(this);
		}
		
		public function removeList():void
		{
		}
	}
}