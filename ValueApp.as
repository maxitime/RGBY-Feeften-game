package ru
{	
	public class ValueApp
	{
		public static const WIDTH_APP:int = 660;
		public static const HEIGHT_APP:int = 710;
		public static const WIDTH_CELL:int = 68;
		public static var sideHor_XX:int = 4;
		public static var sideVer_YY:int = 4;
		public static var zeroCell:int = sideHor_XX * sideVer_YY;
		public static var amountCells:int = sideHor_XX * sideVer_YY;
		
		public static var typeGame:String = "";//MoveRYGB ClassicFifteen
		public static var typeCell:String = ""; //cellColor  cellColorEasy cellCifra  cellWhiteBlack cellCifraEasy
		public static var typeMove:String = "rotate";//  rotate  slide	diagonal free
		//public static var step:int = ValueApp.amountCells / 2;
		public static var rotateXX:int = 2;
		public static var rotateYY:int = 2;
		//public static var countFree:int = 3;
		public static var step:uint = 8;
		
		public static var cellsBeginArr:Array = [];
		public static var cellsFinalArr:Array = [];
		public static var positionHor_XXArr:Array = [];
		public static var positionVer_YYArr:Array = [];
		
		public static const COLOR1:uint = 0x364E69;
		public static const COLOR2:uint = 0x002851;
		public static const COLOR3:uint = 0x83A4CB;
		public static const COLOR4:uint = 0x164167;
		public static const COLOR5:uint = 0xA0BFDE;
		public static const COLOR6:uint = 0x50728F;
		public static const COLOR7:uint = 0xDEE7F3;
		public static const COLOR8:uint = 0x3280CD;
		public static const COLOR9:uint = 0x2D6D9D;
		public static const COLOR10:uint = 0xB6D1ED;
		public static const COLOR11:uint = 0x2D70A2;
		
		public static const COLOR1_RED:uint = 0xff042c;
		public static const COLOR2_RED:uint = 0xA6000D;
		
		public static const COLOR1_YELLOW:uint = 0xf9d600;
		public static const COLOR2_YELLOW:uint = 0x7D7A00;
		
		public static const COLOR1_GREEN:uint = 0x00ff39;
		public static const COLOR2_GREEN:uint = 0x005B20;
		
		public static const COLOR1_BLUE:uint = 0x00a0f9;
		public static const COLOR2_BLUE:uint = 0x004788;
		
		public static const COLOR1_FIOLET:uint = 0xa87bfd;
		public static const COLOR2_FIOLET:uint = 0x210077;
		
		public static const COLOR1_WHITE:uint = 0xFFFFFF;
		public static const COLOR2_WHITE:uint = 0xC8C8C8;
		
		public static const COLOR1_GRAY:uint = 0xCACACA;
		public static const COLOR2_GRAY:uint = 0x5D5D5D;
		
		public static const COLOR1_BLACK:uint = 0x303030;
		public static const COLOR2_BLACK:uint = 0x000000;
		
		public static const COLOR1_ORANGE:uint = 0xFF6F04;
		public static const COLOR2_ORANGE:uint = 0x723910;
		
		public static const COLOR1_GOL:uint = 0x06FDFD;
		public static const COLOR2_GOL:uint = 0x00889B;
		
		/////////////////////////////////////////////////////////		
		
		public static const COLOR3_RED:uint = 0xE8716A;
		public static const COLOR4_RED:uint = 0xC84040;
		
		public static const COLOR3_YELLOW:uint = 0xDCCF32;
		public static const COLOR4_YELLOW:uint = 0x9D911E;
		
		public static const COLOR3_GREEN:uint = 0x59C872;
		public static const COLOR4_GREEN:uint = 0x256B3E;
		
		public static const COLOR3_BLUE:uint = 0x59A0D0;
		public static const COLOR4_BLUE:uint = 0x2C4A78;
		
		public static const COLOR3_FIOLET:uint = 0xBEA9EB;
		public static const COLOR4_FIOLET:uint = 0x533782;
		
		public static const COLOR3_WHITE:uint = 0xFFFFFF;
		public static const COLOR4_WHITE:uint = 0xA0A0A0;
		
		public static const COLOR3_GRAY:uint = 0xD4D4D4;
		public static const COLOR4_GRAY:uint = 0x535353;
		
		public static const COLOR3_BLACK:uint = 0x6A6A6A;
		public static const COLOR4_BLACK:uint = 0x1A1A1A;
		
		public static const COLOR3_ORANGE:uint = 0xEE924D;
		public static const COLOR4_ORANGE:uint = 0x814D2E;
		
		public static const COLOR3_GOL:uint = 0x67DFE2;
		public static const COLOR4_GOL:uint = 0x346B70;
		
		private static var instance:ValueApp;
		
		public function ValueApp()
		{
			instance = this;
		}
		
		public static function getInstance():ValueApp
		{
			return instance == null ? new ValueApp() : instance;
		}
	}
}