package ru
{
	
	public class LanguageApp
	{
		private static var instance:LanguageApp;
		private static var _langStr:String = "en";
		
		public static var BTN_NEW_GAME:String;
		public static var BTN_RESTART:String;
		public static var BTN_FINAL:String;
		public static var BTN_SAVE:String;
		public static var BTN_BACK:String;
		public static var BTN_OPTIONS:String;
		public static var BTN_HOW_PLAY:String;
		public static var BTN_DEFAULT:String;
		public static var BTN_CONTINUE:String;
		public static var BTN_MIX:String;
		public static var BTN_IN_ORDER:String;
		public static var BTN_OK:String;
		public static var BTN_CANCEL:String;
		public static var BTN_DELETE_ALL:String;
		
		public static var TITLE_OPTIONS:String;
		public static var TITLE_HOW_RIGHTLY:String;
		public static var TITLE_YOUR_MOVES:String;
		public static var TITLE_SHOW_END:String;
		public static var TITLE_SIDE:String;
		public static var TITLE_SAVE:String;
		
		public static var TITLE_BEGIN_POS:String;
		public static var TITLE_BEGIN_POS_W:String;
		
		public static var TITLE_FINAL_POS:String;
		public static var TITLE_FINAL_POS_FEEFTEN:String;
		public static var TITLE_FINAL_POS_RGBY:String;
		
		public static var TITLE_COUNT_SIDE:String;
		public static var TITLE_LEVEL_FEEFTEN:String;
		public static var TITLE_LEVEL_RGBY:String;
		public static var TITLE_INSTR:String;
		
		public static var TITLE_MOVE_CHIPS:String;
		public static var HOR_VER:String;
		public static var ROTATION:String;
		public static var DIAGONAL:String;
		
		public static var TITLE_:String;
		
		public static var BTN_INSTUCTION:String;
		public static var INSTR_RGBY_1:String;
		public static var INSTR_RGBY_2:String;
		
		public static var INSTR_FEEFTEN_1:String;
		public static var INSTR_FEEFTEN_2:String;
		
		public function LanguageApp()
		{
			setLanguage(_langStr);
		}
		
		public static function getInstance():LanguageApp
		{
			return instance == null ? new LanguageApp() : instance;
		}
		
		static public function setLanguage(paramStr:String):void
		{
			switch (paramStr)
			{
			case "en": 
				BTN_NEW_GAME = "New Game";
				BTN_RESTART = "Anew - Play first";
				BTN_FINAL = "Final";
				BTN_SAVE = "Save";
				BTN_BACK = "Move back";
				BTN_OPTIONS = "Options";
				BTN_HOW_PLAY = "How to play";
				BTN_DEFAULT = "Default";
				BTN_CONTINUE = "Continue";
				BTN_MIX = "Mix";
				BTN_IN_ORDER = "In order";
				BTN_OK = "Apply";
				BTN_CANCEL = "Cancel";
				BTN_DELETE_ALL = "Delete all";
				
				TITLE_OPTIONS = "Options";
				TITLE_HOW_RIGHTLY = "How rightly to play";
				TITLE_YOUR_MOVES = "Your moves";
				TITLE_SHOW_END = "This target location.\nYou always see the start location.\nThe start and end location must coincide.";
				
				TITLE_SIDE = "Set side\n";
				TITLE_SAVE = "Save game";
				
				TITLE_BEGIN_POS = "Own construction\nthe initial location";
				TITLE_BEGIN_POS_W = "The initial position * * * * * *\n* * * * * * Move the chip";
				
				TITLE_FINAL_POS = "Final location";
				TITLE_FINAL_POS_FEEFTEN = "* * * * * * The final position\nMove the chip * * * * * *";
				TITLE_FINAL_POS_RGBY = "The final position\nChoose the color  * * * * * *  Move the chip";
				
				TITLE_COUNT_SIDE = "Position preference\n";
				TITLE_LEVEL_FEEFTEN = "Number of moves - the difficulty level\n min = 1   #   max = ";
				
				TITLE_LEVEL_RGBY = "Type move chips\nThe difficulty level";
				TITLE_INSTR = "Instruction";
				
				TITLE_MOVE_CHIPS = "Type move chips\n\n\nNumber of moves - the difficulty level\n\nmin = 1   #   max = ";
				HOR_VER = "horizontal -\nvertical";
				ROTATION = "rotation";
				DIAGONAL = "diagonal";
				
				INSTR_RGBY_1 = "<br><p align='center'><font face='Arial, Helvetica, sans-serif' size='18'><p align='center'>To start the game, mix the tiles - </p><p align='center'>press button 'New Game'</p><br><p align='center'>You always see the initial position.</p><p align='center'><br>Move chips.</p><p align='center'><br><font face='Arial, Helvetica, sans-serif' size='18'>The start and end locations<br> should be the same.</font></p>";
				INSTR_RGBY_2 = '<br><p align="center"><font face="Arial, Helvetica, sans-serif" size="18">To move the tiles,<br>use the arrow keys and <strong><b>WASD</b></p><p align="center"><br>The use of keys and buttons<br><br>New game - <b>N</b><br><br>Reset - <b>M</b><br><br>Back move - <b>B</b><br><br>Anew - <b>R</b><br><br>Hide or show line-hint - <b>SpaceBar</b></strong><br><br>Watch the Finals - <b>F</b><br><br>Options - <b>O</b></font></p>';
				
				INSTR_FEEFTEN_1 = "<br><p align='center'><font face='Arial, Helvetica, sans-serif' size='18'><p align='center'>To start the game, mix the tiles - </p><p align='center'>press button 'New Game'</p><br><p align='center'>You always see the initial position.</p><p align='center'><br>Move chips.</p><p align='center'><br><font face='Arial, Helvetica, sans-serif' size='18'>The start and end locations<br> should be the same.</font></p>";
				INSTR_FEEFTEN_2 = '<br><p align="center"><font face="Arial, Helvetica, sans-serif" size="18">To move the tiles,<br>use the arrow keys and <strong><b>WASD</b></p><p align="center"><br>The use of keys and buttons<br><br>New game - <b>N</b><br><br>Reset - <b>M</b><br><br>Back move - <b>B</b><br><br>Anew - <b>R</b><br><br>Hide or show line-hint - <b>SpaceBar</b></strong><br><br>Watch the Finals - <b>F</b><br><br>Options - <b>O</b></font></p>';
				break;
			
			case "ru": 
				BTN_NEW_GAME = "Новая игра";
				BTN_RESTART = "Заново";
				BTN_FINAL = "Конечное";
				BTN_SAVE = "Сохранить";
				BTN_BACK = "Ход назад";
				BTN_OPTIONS = "Опции";
				BTN_HOW_PLAY = "Как играть";
				BTN_DEFAULT = "По порядку";
				BTN_CONTINUE = "Продолжить";
				BTN_MIX = "Перемешать";
				BTN_IN_ORDER = "По порядку";
				BTN_OK = "Применить";
				BTN_CANCEL = "Отмена";
				BTN_DELETE_ALL = "Удалить всё";
				
				TITLE_OPTIONS = "Настройки";
				TITLE_HOW_RIGHTLY = "Как правильно";
				TITLE_YOUR_MOVES = "Ходы игрока";
				TITLE_SHOW_END = "Это конечное расположение\nВы всегда видите начальное расположение\nНачальное и конечное расположения\n" + "вначале игры  не совпадают\nПеремещайте фишки на начальном\nНачальное и конечное расположение\nдолжны совпадать."
				
				TITLE_BEGIN_POS = "Собственное\n построение\n начальная позиция";
				TITLE_BEGIN_POS_W = "Начальное расположение * * * * * *\n* * * * * * Передвиньте фишку";
				
				TITLE_FINAL_POS = "Финальное положение";
				TITLE_FINAL_POS_FEEFTEN = "Финальное положение * * * * *\n* * * * * Передвиньте фишку";
				TITLE_FINAL_POS_RGBY = "Финальное положение\nВыберите цвет  -  Передвиньте фишку";
				
				TITLE_SIDE = "Количество рядов\n";
				TITLE_SAVE = "Сохраните игру";
				
				TITLE_COUNT_SIDE = "Количество рядов\n";
				TITLE_LEVEL_FEEFTEN = "Количество ходов - уровень сложности\nmin = 1   #   max = ";
				TITLE_LEVEL_RGBY = "Тип передвижений\n Уровень сложности";
				TITLE_INSTR = "Инструкция";
				
				TITLE_MOVE_CHIPS = "Тип передвижений фишек\n\nКоличество ходов - уровень сложности\n\nmin = 1   #   max = ";
				
				HOR_VER = "горизонталь -\nвертикаль";
				ROTATION = "поворот";
				DIAGONAL = "диагональ";
				
				INSTR_RGBY_1 = "<font face='Arial, Helvetica, sans-serif' size='18'><p align='center'><br><br><b>Цветные передвижки</b></p><br><p align='center'>Головоломка, представляющая собой</p><p align='center'>набор квадратных цветных фишек.</p><br><p align='center'>Каждая фишка имеет свой цвет</p><br><br><p align='center'>Цель игры - путём передвижения</p><p align='center'>упорядочить цвет фишек,</p><p align='center'>таким образом,</p><p align='center'>чтобы их начальный цвет</p><p align='center'>совпадал с заданным</p><br></p><p align='center'>для писем разработчику</br><br>maxitime22@gmail.com</font>";
				INSTR_RGBY_2 = "<font face='Arial, Helvetica, sans-serif' size='16'><p align='center'><br><b>Использование клавиш</b></p><br><p align='center'>Для передвижения фишек - <b>стрелки</b> и <b>WASD</b></p><br><p align='center'><b>КНОПКИ</b></p><br><p align='center'>Новая игра  - <b>N</b></p><br><p align='center'>Заново  - <b>R</b></p><br><p align='center'>Конечное  - <b>F</p><br><p align='center'>Назад  - <b>B</b></p><br><p align='center'>Опции  - <b>O</b></p><br><p align='center'>По умолчанию  - <b>M</b></p><br><p align='center'>Убрать - показать белую полосу<br> и стрелку - <b>SpaceBar</b></p></font>";
				
				INSTR_FEEFTEN_1 = "<font face='Arial, Helvetica, sans-serif' size='16'><p align='center'><b>Пятнашки</b></p><br><p align='center'>Головоломка, представляющая собой</p><p align='center'>набор квадратных фишек.</p><br><p align='center'>Каждая фишка имеет своё число</p><br><p align='center'>Все фишки заключены в коробку</p><p align='center'>При размещении фишек</p><p align='center'>в коробке остается одно пустое место</p><p align='center'>размером с одну фишку, которое можно</p><p align='center'>использовать для перемещения фишки</p><p align='center'>внутри коробки.</p><br><p align='center'>Цель игры - упорядочить размещение</p><p align='center'>фишек в коробке, таким образом,</p><p align='center'>чтобы их начальное расположение</p><p align='center'>совпадало с конечным</p><br><p align='center'>По умолчанию расположение упорядочено.</p><p align='center'>таким образом. слева-напрво, сверху-вниз.</p></font>";
				INSTR_FEEFTEN_2 = "<font face='Arial, Helvetica, sans-serif' size='16'><p align='center'><br><b>Использование клавиш</b></p><br><p align='center'>Для передвижения фишек - стрелки или <b>WASD</b></p><br><p align='center'><b>КНОПКИ</b></p><br><p align='center'>Новая игра  - <b>N</b></p><br><p align='center'>Заново  - <b>R</b></p><br><p align='center'>Конечное  - <b>F</p><br><p align='center'>Назад  - <b>B</b></p><br><p align='center'>Опции  - <b>O</b></p><br><p align='center'>По умолчанию  - <b>M</b></p><br><p align='center'>Убрать - показать квадрат - <b>SpaceBar</b></p></font>";
				break;
			
			default: 
				break;
			}
		}
		
		static public function get langStr():String
		{
			return _langStr;
		}
		
		static public function set langStr(value:String):void
		{
			_langStr = value;
			setLanguage(_langStr);
		}
	
	}

}

/*		function textHelp1():void
   {
   locStr = "<font face='Arial, Helvetica, sans-serif' size='16'><p align='center'><br><b>Использование клавиш</b></p><br><p align='center'>Для передвижения фишек - <b>стрелки</b> и <b>WASD</b></p><br><p align='center'><b>КНОПКИ</b></p><br><p align='center'>Новая игра  - <b>N</b></p><br><p align='center'>Заново  - <b>R</b></p><br><p align='center'>Конечное  - <b>F</p><br><p align='center'>Назад  - <b>B</b></p><br><p align='center'>Опции  - <b>O</b></p><br><p align='center'>По умолчанию  - <b>M</b></p><br><p align='center'>Убрать - показать белую полосу<br> и стрелку - <b>SpaceBar</b></p></font>";
   textInstr.htmlText = locStr;
   }

   function textHelp2():void
   {
   locStr = "<font face='Arial, Helvetica, sans-serif' size='18'><p align='center'><br><br><b>Цветные передвижки</b></p><br><p align='center'>Головоломка, представляющая собой</p><p align='center'>набор квадратных цветных фишек.</p><br><p align='center'>Каждая фишка имеет свой цвет</p><br><br><p align='center'>Цель игры - путём передвижения</p><p align='center'>упорядочить цвет фишек,</p><p align='center'>таким образом,</p><p align='center'>чтобы их начальный цвет</p><p align='center'>совпадал с заданным</p><br></p><p align='center'>для писем разработчику</br><br>maxitime22@gmail.com</font>";
   textInstr.htmlText = locStr;
   }

   function textHelp3():void
   {
   locStr = "<font face='Arial, Helvetica, sans-serif' size='16'><br><p align='center'>Для начала игры перемешайте все фишки</p><br><p align='center'><b>Назначение кнопок</b></p><br><p align='center'><b>Новая игра</b> - для перемешивания фишек.</p><br><p align='center'><b>Заново</b> - востанавливает текущее положение.</p><br><p align='center'><b>Конечное</b> - нажмите не отпуская</p><p align='center'>и вы увидите конечное расположение.</p><br><p align='center'><b>Сбросить</b> - устанавливает положение по умолчанию.</p><br><p align='center'><b>Назад</b> - возвращает положение на один ход назад.</p><br><p align='center'>В настройках вы можете создать</p><p align='center'>собственное положение фишек</p><p align='center'>и количество рядов на поле.</p><br></font>"
   textInstr.htmlText = locStr;
   }

   function textHelp4():void
   {
   locStr = "<font face='Arial, Helvetica, sans-serif' size='16'><p align='center'><br><br><br><b>Настройка сторон</b></p><br><p align='center'>На вкладке <b>Количество рядов</b></p><p align='center'>Вы можете настроить</p><p align='center'>количество фишек в одной стороне,</p><p align='center'>горизонтальной или вертикальной.</p><br><p align='center'>Количестово фишек в одной стороне</p><p align='center'>может быть от двух до шести.</p></font>"
   textInstr.htmlText = locStr;
   }

   function textHelp5():void
   {
   locStr = "<font face='Arial, Helvetica, sans-serif' size='16'><p align='center'><br><br><br><b>Собственное построение</b></p><br><p align='center'>Вы можете создать своё</p><p align='center'>построение фишек на поле.</p><br><p align='center'>Для этого в настройках выберите</p><p align='center'>вкладку <b>Собственное положение</b></p><br><p align='center'>Здесь есть настройка</p><p align='center'>начального и конечного положения</p><br><p align='center'>Захватите левой кнопкой фишку</p><p align='center'>и переместите её на новое положение</p><br><p align='center'>После настройки, нажмите на кнопку</p><p align='center'><b>ГОТОВО</b> либо <b>ОТМЕНА</b></p><br></font>"
   textInstr.htmlText = locStr;
   }

   function textHelp6():void
   {
   locStr = "<font face='Arial, Helvetica, sans-serif' size='16'><p align='center'><br><br><br><b>Собственные цвета фишек</b></p><br> Вы можете изменить цвет фишек на поле.</p><br><p align='center'>Для этого в настройках выберите вкладку</p><br><p align='center'><b>Измените цвет фишек</b></p><br><p align='center'>Здесь вы можете задать собственный цвет фишек</p><br><p align='center'>Сначала в нижней части выберите цвет.</p><br><p align='center'>И далее нажимайте на фишки на поле.</p><br><p align='center'>Их цвет должен изменится.</p><br><p align='center'>И нажмите на кнопку <b>ОК</b> либо <b>ОТМЕНА</b></font>";
   textInstr.htmlText = locStr;
   }

   function textHelp7():void
   {
   locStr = "<font face='Arial, Helvetica, sans-serif' size='16'><p align='center'><br><br><br><b>Настройка типа передвижений фишек</b></p><br><p align='center'>Передвижение фишек может быть</p><br><p align='center'>вертикально-горизонтальным.</p><br><p align='center'>диагональным или поворотом.</p><br><p align='center'>На вкладке   <b>Тип передвижек</b></p><br><p align='center'>выберите тип передвижений</p><br><p align='center'>И нажмите <b>ОК</b> либо <b>ОТМЕНА</b></p><br><p align='center'></font>";
   textInstr.htmlText = locStr;
   }

   /////////////////////////////////////////////////////////////////////////////
   // + "\n" + ""+ "\n" + ""
   function textHelp1():void
   {
   locStr = "<font face='Arial, Helvetica, sans-serif' size='16'><p align='center'><br><b>Использование клавиш</b></p><br><p align='center'>Для передвижения фишек - стрелки или <b>WASD</b></p><br><p align='center'><b>КНОПКИ</b></p><br><p align='center'>Новая игра  - <b>N</b></p><br><p align='center'>Заново  - <b>R</b></p><br><p align='center'>Конечное  - <b>F</p><br><p align='center'>Назад  - <b>B</b></p><br><p align='center'>Опции  - <b>O</b></p><br><p align='center'>По умолчанию  - <b>M</b></p><br><p align='center'>Убрать - показать красный квадрат - <b>SpaceBar</b></p></font>";
   textInstr.htmlText = locStr;
   }

   function textHelp2():void
   {
   locStr = "<font face='Arial, Helvetica, sans-serif' size='16'><p align='center'><b>Пятнашки</b></p><br><p align='center'>Головоломка, представляющая собой</p><p align='center'>набор квадратных фишек.</p><br><p align='center'>Каждая фишка имеет своё число</p><br><p align='center'>Все фишки заключены в коробку</p><p align='center'>При размещении фишек</p><p align='center'>в коробке остается одно пустое место</p><p align='center'>размером с одну фишку, которое можно</p><p align='center'>использовать для перемещения фишки</p><p align='center'>внутри коробки.</p><br><p align='center'>Цель игры - упорядочить размещение</p><p align='center'>фишек в коробке, таким образом,</p><p align='center'>чтобы их начальное расположение</p><p align='center'>совпадало с конечным</p><br><p align='center'>По умолчанию расположение упорядочено.</p><p align='center'>таким образом. слева-напрво, сверху-вниз.</p></font>";
   textInstr.htmlText = locStr;
   }

   function textHelp3():void
   {
   locStr = "<font face='Arial, Helvetica, sans-serif' size='16'><br><p align='center'>Для начала игры перемешайте все фишки</p><br><p align='center'><b>Назначение кнопок</b></p><br><p align='center'><b>Новая игра</b> - для перемешивания фишек.</p><br><p align='center'><b>Заново</b> - востанавливает текущее положение.</p><br><p align='center'><b>Конечное</b> - нажмите не отпуская</p><p align='center'>и вы увидите конечное расположение.</p><br><p align='center'><b>Сбросить</b> - устанавливает положение по умолчанию.</p><br><p align='center'><b>Назад</b> - возвращает положение на один ход назад.</p><br><p align='center'>В настройках вы можете создать</p><p align='center'>собственное положение фишек</p><p align='center'>и количество рядов на поле.</p><br></font>"
   textInstr.htmlText = locStr;
   }

   function textHelp4():void
   {
   locStr = "<font face='Arial, Helvetica, sans-serif' size='16'><p align='center'><br><br><br><b>Настройка сторон</b></p><br><p align='center'>На вкладке <b>Количество рядов</b></p><p align='center'>Вы можете настроить</p><p align='center'>количество фишек в одной стороне,</p><p align='center'>горизонтальной или вертикальной.</p><br><p align='center'>Количестово фишек в одной стороне</p><p align='center'>может быть от двух до шести.</p></font>"
   textInstr.htmlText = locStr;
   }

   function textHelp5():void
   {
   locStr = "<font face='Arial, Helvetica, sans-serif' size='16'><p align='center'><br><br><br><b>Собственное построение</b></p><br><p align='center'>Вы можете создать своё</p><p align='center'>построение фишек на поле.</p><br><p align='center'>Для этого в настройках выберите</p><p align='center'>вкладку <b>Собственное положение</b></p><br><p align='center'>Здесь есть настройка</p><p align='center'>начального и конечного положения</p><br><p align='center'>Захватите левой кнопкой фишку</p><p align='center'>и переместите её на новое положение</p><br><p align='center'>После настройки, нажмите на кнопку</p><p align='center'><b>ГОТОВО</b> либо <b>ОТМЕНА</b></p><br></font>"
   textInstr.htmlText = locStr;
   }*/