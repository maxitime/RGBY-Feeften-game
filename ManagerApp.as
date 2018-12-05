package ru
{
	import flash.display.Sprite;
	
	public class ManagerApp
	{
		private static var instance:ManagerApp;
		
		public function ManagerApp()
		{
			instance = this;
		}
		
		public static function getInstance():ManagerApp
		{
			return instance == null ? new ManagerApp() : instance;
		}
		
		public static function copyArr(paramArr1:Array, paramArr2:Array):void//  Копирование массива
		{
			clearArr(paramArr1);
			var i:int = 0;
			for (i = 0; i < ValueApp.amountCells; i++)
			{
				paramArr1[i] = paramArr2[i];
			}
		}
		
		public static function clearArr(paramArr:Array):void//Очищение массива
		{
			var ln:uint = paramArr.length;
			var i:int = 0;
			for (i = 0; i < ln; i++)
			{
				paramArr.pop();
			}
		}
		
		public static function removeAllChildren(paramSpr:Sprite):void// Удаление с поля всех фишек
		{
			var numCh:int = paramSpr.numChildren;
			var i:int = 0;
			if (numCh > 0)
			{
				var aa:int = numCh - 1;
				for (i = 0; i < numCh; i++)
				{
					paramSpr.removeChildAt(aa);
					aa--;
				}
			}
		}
	
	}

}