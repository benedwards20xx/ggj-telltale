package telltaleGGJ 
{
	import telltaleGGJ.PlayState;
	
	public class Choices 
	{
		public var interactionChoice:String;
		
		public function Choices() {
			interactionChoice = "";
		}
		
		public function getInteractionChoice():String {
			return interactionChoice;
		}
		
		public function setInteractionChoice(choice:String):void {
			interactionChoice = choice;
		}
		
		public function findQuestion(dialogueChoice:String):String {		
			if (interactionChoice == "sandwich") {
				if (dialogueChoice.length > 0) {
					if (dialogueChoice.charAt(0) == "1") {
						if (dialogueChoice.length > 1) {
							if (dialogueChoice.charAt(1) == "1") {
								if (dialogueChoice.length > 2) {
									return "Well you're a douchebag.";
								} else {
									return "Well thanks, now I don't have anything to eat on my break from work.|1. You can go eat some shit.|2. It was delicious.|3. You ain't my real dad.|4. Do you want me to make you another sandwich?";
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
							return "What?! There was a note on the fridge!|1. I didn't see it.|2. I'm sorry!|3. You ain't my real dad.|4. I can't read good.";
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
									return "Past Question 4.5";
								} else {
									return "Question 4.5";
								}
							}
						} else {
							return "Question 4";
						}
					} else if (dialogueChoice.charAt(0) == "5") {
						if (dialogueChoice.length > 1) {
							if (dialogueChoice.charAt(1) == "1") {
								if (dialogueChoice.length > 2) {
									return "Past Question 5.1";
								} else {
									return "Question 5.1";
								}
							} else if (dialogueChoice.charAt(1) == "2") {
								if (dialogueChoice.length > 2) {
									return "Past Question 5.2";
								} else {
									return "Question 5.2";
								}
							} else if (dialogueChoice.charAt(1) == "3") {
								if (dialogueChoice.length > 2) {
									return "Past Question 5.3";
								} else {
									return "Question 5.3";
								}
							} else if (dialogueChoice.charAt(1) == "4") {
								if (dialogueChoice.length > 2) {
									return "Past Question 5.4";
								} else {
									return "Question 5.4";
								}
							} else if (dialogueChoice.charAt(1) == "5") {
								if (dialogueChoice.length > 2) {
									return "Past Question 5.5";
								} else {
									return "Question 5.5";
								}
							}
						} else {
							return "Well speak up!|1. Yes|2. No|3. What sandwich?|4. Don't give me that lip boy!";
						}
					}
					return "find Question :" + dialogueChoice;
				} else {
					return "Did you eat my sandwich?|1. Yes|2. No|3. Poop|4. What sandwich?";
				}
			} else if (interactionChoice == "heart") {
				if (dialogueChoice.length > 0) {
					if (dialogueChoice.charAt(0) == "1") {
						if (dialogueChoice.length > 1) {
							if (dialogueChoice.charAt(1) == "1") {
								if (dialogueChoice.length > 2) {
									return "Well you're a douchebag.";
								} else {
									return "Well thanks, now I don't have anything to eat on my break from work.|1. You can go eat some shit.|2. It was delicious.|3. You ain't my real dad.|4. Do you want me to make you another sandwich?";
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
							return "What?! There was a note on the fridge!|1. I didn't see it.|2. I'm sorry!|3. You ain't my real dad.|4. I can't read good.";
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
									return "Past Question 4.5";
								} else {
									return "Question 4.5";
								}
							}
						} else {
							return "Question 4";
						}
					} else if (dialogueChoice.charAt(0) == "5") {
						if (dialogueChoice.length > 1) {
							if (dialogueChoice.charAt(1) == "1") {
								if (dialogueChoice.length > 2) {
									return "Past Question 5.1";
								} else {
									return "Question 5.1";
								}
							} else if (dialogueChoice.charAt(1) == "2") {
								if (dialogueChoice.length > 2) {
									return "Past Question 5.2";
								} else {
									return "Question 5.2";
								}
							} else if (dialogueChoice.charAt(1) == "3") {
								if (dialogueChoice.length > 2) {
									return "Past Question 5.3";
								} else {
									return "Question 5.3";
								}
							} else if (dialogueChoice.charAt(1) == "4") {
								if (dialogueChoice.length > 2) {
									return "Past Question 5.4";
								} else {
									return "Question 5.4";
								}
							} else if (dialogueChoice.charAt(1) == "5") {
								if (dialogueChoice.length > 2) {
									return "Past Question 5.5";
								} else {
									return "Question 5.5";
								}
							}
						} else {
							return "Well speak up!|1. Yes|2. No|3. What sandwich?|4. Don't give me that lip boy!";
						}
					}
					return "find Question :" + dialogueChoice;
				} else {
					return "Did you eat my heart?|1. Yes|2. No|3. Poop|4. What sandwich?";
				}
			} else if (interactionChoice == "police") {
				if (dialogueChoice.length > 0) {
					if (dialogueChoice.charAt(0) == "1") {
						if (dialogueChoice.length > 1) {
							if (dialogueChoice.charAt(1) == "1") {
								if (dialogueChoice.length > 2) {
									return "Well you're a douchebag.";
								} else {
									return "Well thanks, now I don't have anything to eat on my break from work.|1. You can go eat some shit.|2. It was delicious.|3. You ain't my real dad.|4. Do you want me to make you another sandwich?";
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
							return "What?! There was a note on the fridge!|1. I didn't see it.|2. I'm sorry!|3. You ain't my real dad.|4. I can't read good.";
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
									return "Past Question 4.5";
								} else {
									return "Question 4.5";
								}
							}
						} else {
							return "Question 4";
						}
					} else if (dialogueChoice.charAt(0) == "5") {
						if (dialogueChoice.length > 1) {
							if (dialogueChoice.charAt(1) == "1") {
								if (dialogueChoice.length > 2) {
									return "Past Question 5.1";
								} else {
									return "Question 5.1";
								}
							} else if (dialogueChoice.charAt(1) == "2") {
								if (dialogueChoice.length > 2) {
									return "Past Question 5.2";
								} else {
									return "Question 5.2";
								}
							} else if (dialogueChoice.charAt(1) == "3") {
								if (dialogueChoice.length > 2) {
									return "Past Question 5.3";
								} else {
									return "Question 5.3";
								}
							} else if (dialogueChoice.charAt(1) == "4") {
								if (dialogueChoice.length > 2) {
									return "Past Question 5.4";
								} else {
									return "Question 5.4";
								}
							} else if (dialogueChoice.charAt(1) == "5") {
								if (dialogueChoice.length > 2) {
									return "Past Question 5.5";
								} else {
									return "Question 5.5";
								}
							}
						} else {
							return "Well speak up!|1. Yes|2. No|3. What sandwich?|4. Don't give me that lip boy!";
						}
					}
					return "find Question :" + dialogueChoice;
				} else {
					return "Did you eat my police?|1. Yes|2. No|3. Poop|4. What sandwich?";
				}
			} else {
				return "Non-sandwich convo|1. Nothing|2. Nothing";
			}
		}
	}
}