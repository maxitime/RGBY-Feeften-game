package ru
{
	import flash.display.Sprite;
	import ru.StepPlus;
	import ru.ValueApp;
	import ru.clips.Cell;
	import ru.events.EventGame;
	
	public class GridCells
	{
		private static var instance:GridCells;
		public static var placeCells:Sprite;
		public static var cellZero:Cell;
		public static var backCells:Sprite;
		public static var isMoving:Boolean = false;
		
		public function GridCells()
		{
			instance = this;
			placeCells = new Sprite();
			backCells = new Sprite();
			//buildCells();
			addListPlay();
		}
		
		public static function getInstance():GridCells
		{
			return instance == null ? new GridCells() : instance;
		}
		
		public static function buildCells():void
		{
			placeCells.graphics.clear();
			placeCells.graphics.beginFill(0, .01);
			placeCells.graphics.drawRect(0, 0, (ValueApp.sideHor_XX * ValueApp.WIDTH_CELL), (ValueApp.sideVer_YY * ValueApp.WIDTH_CELL));
			placeCells.x = 225 - ValueApp.sideHor_XX * ValueApp.WIDTH_CELL / 2;
			placeCells.y = 225 - ValueApp.sideVer_YY * ValueApp.WIDTH_CELL / 2;
		}
		
		private static function onMoveEnd(event:EventGame):void
		{
			if (checkLocation())
			{
				isMoving = false;
			}
			else
			{
				removeListPlay();
				placeCells.dispatchEvent(new EventGame(EventGame.OVER_GAME));
			}
			
			function checkLocation():Boolean
			{
				var nn:int = 0;
				var locBoolean:Boolean;
				if (StepPlus.stepInt == 0)
				{
					locBoolean = true;
					return locBoolean
				}
				var locCell:Cell;
				for (var i:int = 0; i < ValueApp.amountCells; i++)
				{
					locCell = placeCells.getChildAt(i) as Cell;
					
					if (locCell.value == ValueApp.cellsFinalArr[nn])
					{
						locBoolean = false
					}
					else
					{
						locBoolean = true;
						return locBoolean
					}
					nn++
				}
				return locBoolean
			}
		}
		
		public static function makeArr():void
		{
			var locCell:Cell;
			for (var u:int = 0; u < ValueApp.amountCells; u++)
			{
				locCell = backCells.getChildAt(u) as Cell;
				ValueApp.cellsBeginArr[u] = locCell.value;
			}
			placeCells.dispatchEvent(new EventGame(EventGame.READY_CELLS));
		}
		
		public static function addListPlay():void
		{
			placeCells.addEventListener(EventGame.MOVE_END, onMoveEnd);
			isMoving = false;
		}
		
		public static function removeListPlay():void
		{
			placeCells.removeEventListener(EventGame.MOVE_END, onMoveEnd);
		}
	}

}