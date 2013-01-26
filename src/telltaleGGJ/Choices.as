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
		}
		
		public function getInteractionChoice():String {
			return interactionChoice;
		}
		
		public function findQuestion(dialogueChoice:String):String {			
			//return options here if first dialogue choice
			if (dialogueChoice.charAt(0) == "1") {
				if (dialogueChoice.length > 1) {
					if (dialogueChoice.charAt(1) == "1") {
						if (dialogueChoice.length > 2) {
							return "Past Question 1.1";
						} else {
							return "Question 1.1";
						}
					} else if (dialogueChoice.charAt(1) == "2") {
						if (dialogueChoice.length > 2) {
							return "Past Question 1.2";
						} else {
							return "Question 1.2";
						}
					} else if (dialogueChoice.charAt(1) == "3") {
						if (dialogueChoice.length > 2) {
							return "Past Question 1.3";
						} else {
							return "Question 1.3";
						}
					} else if (dialogueChoice.charAt(1) == "4") {
						if (dialogueChoice.length > 2) {
							return "Past Question 1.4";
						} else {
							return "Question 1.4";
						}
					} else if (dialogueChoice.charAt(1) == "5") {
						if (dialogueChoice.length > 2) {
							return "Past Question 1.5";
						} else {
							return "Question 1.5";
						}
					}
				} else {
					return "Question 1, Response 1.1, Response 1.2, Response 1.3, Response 1.4, Response 1.5";
				}
			} else if (dialogueChoice.charAt(0) == "2") {
				if (dialogueChoice.length > 1) {
					if (dialogueChoice.charAt(1) == "1") {
						if (dialogueChoice.length > 2) {
							return "Past Question 2.1";
						} else {
							return "Question 2.1";
						}
					} else if (dialogueChoice.charAt(1) == "2") {
						if (dialogueChoice.length > 2) {
							return "Past Question 2.2";
						} else {
							return "Question 2.2";
						}
					} else if (dialogueChoice.charAt(1) == "3") {
						if (dialogueChoice.length > 2) {
							return "Past Question 2.3";
						} else {
							return "Question 2.3";
						}
					} else if (dialogueChoice.charAt(1) == "4") {
						if (dialogueChoice.length > 2) {
							return "Past Question 2.4";
						} else {
							return "Question 2.4";
						}
					} else if (dialogueChoice.charAt(1) == "5") {
						if (dialogueChoice.length > 2) {
							return "Past Question 2.5";
						} else {
							return "Question 2.5";
						}
					}
				} else {
					return "Question 2";
				}
			} else if (dialogueChoice.charAt(0) == "3") {
				if (dialogueChoice.length > 1) {
					if (dialogueChoice.charAt(1) == "1") {
						if (dialogueChoice.length > 2) {
							return "Past Question 3.1";
						} else {
							return "Question 3.1";
						}
					} else if (dialogueChoice.charAt(1) == "2") {
						if (dialogueChoice.length > 2) {
							return "Past Question 3.2";
						} else {
							return "Question 3.2";
						}
					} else if (dialogueChoice.charAt(1) == "3") {
						if (dialogueChoice.length > 2) {
							return "Past Question 3.3";
						} else {
							return "Question 3.3";
						}
					} else if (dialogueChoice.charAt(1) == "4") {
						if (dialogueChoice.length > 2) {
							return "Past Question 3.4";
						} else {
							return "Question 3.4";
						}
					} else if (dialogueChoice.charAt(1) == "5") {
						if (dialogueChoice.length > 2) {
							return "Past Question 3.5";
						} else {
							return "Question 3.5";
						}
					}
				} else {
					return "Question 3";
				}
			} else if (dialogueChoice.charAt(0) == "4") {
				if (dialogueChoice.length > 1) {
					if (dialogueChoice.charAt(1) == "1") {
						if (dialogueChoice.length > 2) {
							return "Past Question 4.1";
						} else {
							return "Question 4.1";
						}
					} else if (dialogueChoice.charAt(1) == "2") {
						if (dialogueChoice.length > 2) {
							return "Past Question 4.2";
						} else {
							return "Question 4.2";
						}
					} else if (dialogueChoice.charAt(1) == "3") {
						if (dialogueChoice.length > 2) {
							return "Past Question 4.3";
						} else {
							return "Question 4.3";
						}
					} else if (dialogueChoice.charAt(1) == "4") {
						if (dialogueChoice.length > 2) {
							return "Past Question 4.4";
						} else {
							return "Question 4.4";
						}
					} else if (dialogueChoice.charAt(1) == "5") {
						if (dialogueChoice.length > 2) {
							return "Past Question 5.5";
						} else {
							return "Question 5.5";
						}
					}
				} else {
					return "Question 4";
				}
			} else if (dialogueChoice.charAt(0) == "5") {
				if (dialogueChoice.length > 1) {
					if (dialogueChoice.charAt(1) == "1") {
						if (dialogueChoice.length > 2) {
							return "Past Question 1.1";
						} else {
							return "Question 1.1";
						}
					} else if (dialogueChoice.charAt(1) == "2") {
						if (dialogueChoice.length > 2) {
							return "Past Question 1.2";
						} else {
							return "Question 1.2";
						}
					} else if (dialogueChoice.charAt(1) == "3") {
						if (dialogueChoice.length > 2) {
							return "Past Question 1.3";
						} else {
							return "Question 1.3";
						}
					} else if (dialogueChoice.charAt(1) == "4") {
						if (dialogueChoice.length > 2) {
							return "Past Question 1.4";
						} else {
							return "Question 1.4";
						}
					} else if (dialogueChoice.charAt(1) == "5") {
						if (dialogueChoice.length > 2) {
							return "Past Question 1.5";
						} else {
							return "Question 1.5";
						}
					}
				} else {
					return "Question 5";
				}
			}
			return "find Question :" + dialogueChoice;
		}
		
		public function findResponse(dialogueChoice:String):String {
			return "find Response";
		}
		
	}

}