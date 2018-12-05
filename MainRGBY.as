package ru
{
	import ru.LanguageApp;
	import ru.ValueApp;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.StatusEvent;
	import ru.BasicWindow;
	import ru.GridCells;
	import ru.gameRGBY.options.WindowOptions;
	import ru.gameRGBY.playGame.ControllerKey;
	import ru.gameRGBY.playGame.WindowGame;
	
	public class MainRGBY extends Sprite
	{
		private var currentWind:BasicWindow;
		private var controllerKey:ControllerKey;
		private var windowGame:WindowGame;
		private var windowOptions:WindowOptions;
		
		public function MainRGBY():void
		{
			this.addEventListener(Event.ADDED_TO_STAGE, startGame);
			this.addEventListener(Event.REMOVED_FROM_STAGE, removeGame);
		}
		
		private function startGame(event:Event):void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, startGame);
			ValueApp.getInstance();
			ValueApp.sideHor_XX = 4;
			ValueApp.sideVer_YY = 4;
			ValueApp.amountCells = ValueApp.sideHor_XX * ValueApp.sideVer_YY;
			ValueApp.step = 8;
			StepPlus.getInstance();
			LanguageApp.getInstance();
			windowGame = new WindowGame();
			windowOptions = new WindowOptions();
			currentWind = windowGame;
			currentWind.windAdd(this);
			onFocus();
			controllerKey = new ControllerKey(windowGame);
			addListeners();
		}
		
		private function gameStatus(event:StatusEvent):void
		{
			switch (event.level)
			{
			case "gotoDefaultGame": 
			{
				windowGame.newDefaultGame();
				GridCells.isMoving = false;
				changeScreen(windowGame);
				onFocus();
				break;
			}
			
			case "gotoCustomGame": 
			{
				windowGame.newCustomGame();
				GridCells.isMoving = false;
				changeScreen(windowGame);
				onFocus();
				break;
			}
			
			case "gotoAppInstall": 
			{
				windowGame.newGameAppInstall();
				GridCells.isMoving = false;
				changeScreen(windowGame);
				onFocus();
				break;
			}
			
			case "gotoBackGame": 
			{
				windowGame.gameContinue();
				GridCells.isMoving = false;
				changeScreen(windowGame);
				onFocus();
				break;
			}
			
			case "gotoOptions": 
			{
				windowOptions.textSide();
				changeScreen(windowOptions);
				break;
			}
			
			case "gotoStageFocus": 
			{
				onFocus();
				break;
			}
			
			/*			case "gotoSaveGame":
			   {
			   LoaderSWF.getInstance().loadingSaveSwf();
			   break;
			   }*/
			
			default: 
				break
			}
		}
		
		private function changeScreen(newScreen:BasicWindow):void
		{
			currentWind.windRemove(this);
			currentWind = newScreen;
			currentWind.windAdd(this);
		}
		
		private function onFocus():void
		{
			this.stage.focus = windowGame;
		}
		
		private function addListeners():void
		{
			windowGame.addEventListener(StatusEvent.STATUS, gameStatus);
			windowOptions.addEventListener(StatusEvent.STATUS, gameStatus);
		}
		
		private function removeGame(event:Event):void
		{
			this.removeEventListener(Event.REMOVED_FROM_STAGE, removeGame);
			windowGame.removeEventListener(StatusEvent.STATUS, gameStatus);
			windowOptions.removeEventListener(StatusEvent.STATUS, gameStatus);
			controllerKey.removeList();
			windowGame.removeList();
			windowOptions.removeList();
			currentWind.windRemove(this);
		}
	}
}