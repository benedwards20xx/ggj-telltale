package telltaleGGJ 
{
	import telltaleGGJ.PlayState;
	
	public class Choices 
	{
		public var interactionChoice:String;
		public var initSandwichChoice:Array;
		public var secondSandwichChoice:Array;
		public var thirdSandwichChoice:Array;
		
		public function Choices(interaction:String) 
		{
			interactionChoice = interaction;
			//if (interactionChoice == "sandwich") {
				
			//}
		}
		
		public function findQuestion(dialogueChoice:String):String {
			//textMain.text = "find Question";
			return "find Question";
		}
		
		public function findResponse(dialogueChoice:String):String {
			return "find Response";
		}
		
	}

}