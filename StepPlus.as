package ru
{
	import ru.ValueApp;
	import flash.display.Shape;
	import flash.display.Sprite;
	import ru.controls.TextLabel;
	
	public class StepPlus
	{
		private static var instance:StepPlus;
		public static var stepText:TextLabel;
		public static var stepInt:int;
		public static var howPlayText:TextLabel;
		public static var rect:Shape;
		
		public function StepPlus()
		{
			buildTF();
		}
		
		public static function getInstance():StepPlus
		{
			return instance == null ? new StepPlus() : instance;
		}
		
		private static function buildTF():void
		{
			stepText = new TextLabel(22);
			stepText.setLabel(165, 480, 55, 26);
			
			howPlayText = new TextLabel(22);
			howPlayText.setLabel(235, 480, 55, 26);
			
			rect = new Shape();
			addRect(0x40B566);
			rect.x = 240;
			rect.y = 480;
		}
		
		public static function addRect(param:uint):void
		{
			rect.graphics.clear();
			rect.graphics.beginFill(param, .2);
			rect.graphics.lineStyle(1, ValueApp.COLOR3, .4);
			rect.graphics.moveTo(0, 30);
			rect.graphics.lineTo(0, 0);
			rect.graphics.lineTo(45, 0);
			rect.graphics.lineStyle(2, ValueApp.COLOR2, .6);
			rect.graphics.lineTo(45, 30);
			rect.graphics.lineTo(0, 30);
			rect.graphics.endFill();
			rect.graphics.lineStyle(0);
		}
		
		public static function addStepPlus(param:Sprite):void
		{
			param.addChild(stepText);
			param.addChild(howPlayText);
		}
		
		public static function setHPText(param:uint):void
		{
			var strHP:String = param.toString();
			howPlayText.text = strHP;
		}
		
		public static function changeStepText(param:String):void
		{
			switch (param)
			{
			case "null": 
				stepInt = 0;
				break;
			case "minus": 
				stepInt--;
				break;
			case "plus": 
				stepInt++;
				break;
			}
			var locStr:String = stepInt.toString();
			stepText.text = locStr;
			
			if (stepInt <= ValueApp.step)
			{
				addRect(0x40B566);
			}
			else addRect(0xF42B2B);
		}
		
		public static function nullText():void
		{
			changeStepText("null");
			setHPText(0);
		}
	}

}