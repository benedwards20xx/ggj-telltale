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
									return ".";
								} else {
									return "I know it’s good! Tender and sweet!|1. Just kidding! It tastes like feet!|2. It was so good. I feel complete!.|3. Compared to most, it can’t compete.|4. Meh. Three out of Ten.";
								}
							} else if (dialogueChoice.charAt(1) == "2") {
								if (dialogueChoice.length > 2) {
									return "Past Question 1.2j";
								} else {
									return "You disgust me! You’re a twit!|1. I ate your ‘wich. Now go eat s***!|2. You’ll lose this fight. Why not just quit?|3. I said sorry. What don’t you get?|4. Okay, honestly? Too far.";
								}
							} else if (dialogueChoice.charAt(1) == "3") {
								if (dialogueChoice.length > 2) {
									return "Past Question 1.3f";
								} else {
									return "You disgust me! You’re a twit!|1. I ate your ‘wich. Now go eat -!|2. You’ll lose this fight. Why not just quit?|3. I said sorry. What don’t you get?|4. Okay, honestly? Too far.";
								}
							} else if (dialogueChoice.charAt(1) == "4") {
								if (dialogueChoice.length > 2) {
									return "Past Question 1.4a";
								} else {
									return "You disgust me! You’re a twit!|1. I ate your ‘wich. Now go eat -!|2. You’ll lose this fight. Why not just quit?|3. I said sorry. What don’t you get?|4. Okay, honestly? Too far.";
								}
							} else if (dialogueChoice.charAt(1) == "5") {
								if (dialogueChoice.length > 2) {
									return "Past Question 1.5a";
								} else {
									return "Question 1.5d";
								}
							}
						} else {
							return "You are a fool! That snack was mine!|1. Well it was good. Tasted devine!|2. Just like the meat you are a swine!|3. Would you like cheese with that whine?|4. Can we have sex? It’s almost nine!";
						}
					} else if (dialogueChoice.charAt(0) == "2") {
						if (dialogueChoice.length > 1) {
							if (dialogueChoice.charAt(1) == "1") {
								if (dialogueChoice.length > 2) {
									return "Past Question 2.1";
								} else {
									return "You disgust me! You’re a twit!|1. I ate your ‘wich. Now go eat -!|2. You’ll lose this fight. Why not just quit?|3. I said sorry. What don’t you get?|4. Okay, honestly? Too far.";
								}
							} else if (dialogueChoice.charAt(1) == "2") {
								if (dialogueChoice.length > 2) {
									return "Past Question 2.2";
								} else {
									return "I know it’s good! Tender and sweet!|1. Just kidding! It tastes like feet!|2. It was so good. I feel complete!.|3. Compared to most, it can’t compete.|4. Meh. Three out of Ten.";
								}
							} else if (dialogueChoice.charAt(1) == "3") {
								if (dialogueChoice.length > 2) {
									return "Past Question 2.3";
								} else {
									return "I don’t believe you, lying man!| 1. Oh come now, what is this, C-SPAN?|2. Don't make me smack you with this pan!|3. I hate your face! How's that?|4. This player sucks! It's the best I can!";
								}
							} else if (dialogueChoice.charAt(1) == "4") {
								if (dialogueChoice.length > 2) {
									return "Past Question 2.4";
								} else {
									return "I don’t believe you, lying man!| 1. Oh come now, what is this, C-SPAN?|2. Don't make me smack you with this pan!|3. I hate your face! How's that?|4. This player sucks! It's the best I can!";
								}
							} else if (dialogueChoice.charAt(1) == "5") {
								if (dialogueChoice.length > 2) {
									return "Past Question 2.5";
								} else {
									return "Question 2.5";
								}
							}
						} else {
							return "You lying dog! You ate my snack!|1. I haven't pooped. You want it back?|2. Well it was good! You have a knack!|3. I didn't know! Cut me some slack!|4. I so did not! You don't know jack!";
						}
					} else if (dialogueChoice.charAt(0) == "3") {
						if (dialogueChoice.length > 1) {
							if (dialogueChoice.charAt(1) == "1") {
								if (dialogueChoice.length > 2) {
									return "Past Question 3.1";
								} else {
									return "You disgust me! You’re a twit!|1. I ate your ‘wich. Now go eat -!|2. You’ll lose this fight. Why not just quit?|3. I said sorry. What don’t you get?|4. Okay, honestly? Too far.";
								}
							} else if (dialogueChoice.charAt(1) == "2") {
								if (dialogueChoice.length > 2) {
									return "Past Question 2.2";
								} else {
									return "I know it’s good! Tender and sweet!|1. Just kidding! It tastes like feet!|2. It was so good. I feel complete!.|3. Compared to most, it can’t compete.|4. Meh. Three out of Ten.";
								}
							} else if (dialogueChoice.charAt(1) == "3") {
								if (dialogueChoice.length > 2) {
									return "Past Question 2.3";
								} else {
									return "I don’t believe you, lying man!| 1. Oh come now, what is this, C-SPAN?|2. Don't make me smack you with this pan!|3. I hate your face! How's that?|4. This player sucks! It's the best I can!";
								}
							} else if (dialogueChoice.charAt(1) == "4") {
								if (dialogueChoice.length > 2) {
									return "Past Question 2.4";
								} else {
									return "I don’t believe you, lying man!| 1. Oh come now, what is this, C-SPAN?|2. Don't make me smack you with this pan!|3. I hate your face! How's that?|4. This player sucks! It's the best I can!";
								}
							} else if (dialogueChoice.charAt(1) == "5") {
								if (dialogueChoice.length > 2) {
									return "Past Question 3.5";
								} else {
									return "Question 3.5";
								}
							}
						} else {
							return "You are a fool! That snack was mine!|1. Well it was good. Tasted devine!|2. Just like the meat you are a swine!|3. Would you like cheese with that whine?|4. Can we have sex? It’s almost nine!";
						}
					} else if (dialogueChoice.charAt(0) == "4") {
						if (dialogueChoice.length > 1) {
							if (dialogueChoice.charAt(1) == "1") {
								if (dialogueChoice.length > 2) {
									return "Past Question 4.1";
								} else {
									return "You disgust me! You’re a twit!|1. I ate your ‘wich. Now go eat -!|2. You’ll lose this fight. Why not just quit?|3. I said sorry. What don’t you get?|4. Okay, honestly? Too far.";
								}
							} else if (dialogueChoice.charAt(1) == "2") {
								if (dialogueChoice.length > 2) {
									return "Past Question 2.2";
								} else {
									return "I know it’s good! Tender and sweet!|1. Just kidding! It tastes like feet!|2. It was so good. I feel complete!.|3. Compared to most, it can’t compete.|4. Meh. Three out of Ten.";
								}
							} else if (dialogueChoice.charAt(1) == "3") {
								if (dialogueChoice.length > 2) {
									return "Past Question 2.3";
								} else {
									return "I don’t believe you, lying man!| 1. Oh come now, what is this, C-SPAN?|2. Don't make me smack you with this pan!|3. I hate your face! How's that?|4. This player sucks! It's the best I can!";
								}
							} else if (dialogueChoice.charAt(1) == "4") {
								if (dialogueChoice.length > 2) {
									return "Past Question 2.4";
								} else {
									return "I don’t believe you, lying man!| 1. Oh come now, what is this, C-SPAN?|2. Don't make me smack you with this pan!|3. I hate your face! How's that?|4. This player sucks! It's the best I can!";
								}
							} else if (dialogueChoice.charAt(1) == "5") {
								if (dialogueChoice.length > 2) {
									return "Past Question 4.5";
								} else {
									return "Question 4.5";
								}
							}
						} else {
							return "You lying dog! You ate my snack!|1. I haven't pooped. You want it back?|2. Well it was good! You have a knack!|3. I didn't know! Cut me some slack!|4. I so did not! You don't know jack!";
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
					return "Hold it right there! You eat my ‘wich?|1. Of course I did, now shut up, b***h!|2. No I didn’t. Which Sandwich? Which?|3. I did eat it. It was so rich!|4. Ummm....no?";
				}
			} else if (interactionChoice == "heart") {
				if (dialogueChoice.length > 0) {
					if (dialogueChoice.charAt(0) == "1" || dialogueChoice.charAt(0) == "2" || dialogueChoice.charAt(0) == "3") {
						if (dialogueChoice.length > 1) {
							if (dialogueChoice.charAt(1) == "1") {
								if (dialogueChoice.length > 2) {
									return ".";
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
							return "This is so great! Wait, here’s a note! “Of all the girls, you float my boat! You mean the world to me dear-SUE?!?!| 1. Oops, wrong box! I mean…love you?|2. Well now you know I cheat on you!|3. That’s not your name? Wait…who are you?!?|4.	Poop...";
						}
					} else if (dialogueChoice.charAt(0) == "4") {
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
							return "You are an ass! Wait, here’s a note! “Of all the girls, you float my boat! You mean the world to me dear-SUE?!?!| 1. Oops, wrong box! I mean…love you?|2. Well now you know I cheat on you!|3. That’s not your name? Wait…who are you?!?|4.	Poop...";
						}
					} 
					/*else if (dialogueChoice.charAt(0) == "3") {
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
					}*/
					return "find Question :" + dialogueChoice;
				} else {
					return "What do you want? Just leave me be!|1. I got a choc’late box for thee!|2. A box of sweets for my sweetie!|3. My love, you mean the world to me!|4. Here are some choc’lates, fatty. ";
				}
			} else if (interactionChoice == "police") {
				if (dialogueChoice.length > 0) {
					if (dialogueChoice.charAt(0) == "1" || dialogueChoice.charAt(0) == "3" || dialogueChoice.charAt(0) == "4") {
						if (dialogueChoice.length > 1) {
							if (dialogueChoice.charAt(1) == "1") {
								if (dialogueChoice.length > 2) {
									return ".";
								} else {
									return "Where is your wife? Show her to me!|1. I cannot do that, verily.|2. She is asleep, unfortunately.|3. She is as dead as dead can be.|4. I murdered her. Now let me be!";
								}
							} else if (dialogueChoice.charAt(1) == "2") {
								if (dialogueChoice.length > 2) {
									return "Past Question 1.2";
								} else {
									return "DUBSTEP?!?! THAT’S MY JAM!|1. Dance party!.|2. Dance party son.|Dance party?|3. Dance party eh?";
								}
							} else if (dialogueChoice.charAt(1) == "3") {
								if (dialogueChoice.length > 2) {
									return "Past Question 1.3";
								} else {
									return "I cannot tell. Anything to say?|1. I murdered my wife today.|2. I do not. Now on your way!|3. Ummmmm... good day?|4. DIE COPPER!";
								}
							} else if (dialogueChoice.charAt(1) == "4") {
								if (dialogueChoice.length > 2) {
									return "Past Question 1.4";
								} else {
									return "What is with this bribery?|1. I killed my wife. Now let me be!|2. My wife’s as dead as dead can be.|3. I have done nothing. Honestly!|4. DIE COPPER!";
								}
							} else {
								return "hopefully";
							}
						} else {
							return "I heard a woman scream this night!|1. That was my wife, we had a fight.|2. That’s my TV. I’m blasting dubstep tonight!|3. What would cause such a fright?|4. Here’s 50 bucks. You heard nothin’…right?";
						}
					} else if (dialogueChoice.charAt(0) == "2") {
						if (dialogueChoice.length > 1) {
							if (dialogueChoice.charAt(1) == "1") {
								if (dialogueChoice.length > 2) {
									return "Past Question 2.1";
								} else {
									return "Shark Week, huh? Tell me the truth!|1. Tonight I have been most uncouth.|2. DIE COPPER!|3. I killed my wife! Oh sweet dear Ruth!|4. You kinda look like John Wilkes Booth!";
								}
							} else if (dialogueChoice.charAt(1) == "2") {
								if (dialogueChoice.length > 2) {
									return "Past Question 2.2";
								} else {
									return "Confess what? State your crime!|1. I killed my wife! I’ll do my time!|2. YOU’LL NEVER TAKE ME ALIVE, COPPER!|3. Oh nothing, sir. Look at the time!|4. I don’t have one! You’re out of line!";
								}
							} else if (dialogueChoice.charAt(1) == "3") {
								if (dialogueChoice.length > 2) {
									return "Past Question 2.3";
								} else {
									return "What do you mean? State your crime!|1. I killed my wife! I’ll do my time!|2. Yesterday I stole a dime!|3. I cannot take these blasted rhymes.|4. DIE COPPER!";
								}
							} else if (dialogueChoice.charAt(1) == "4") {
								if (dialogueChoice.length > 2) {
									return "Past Question 2.4";
								} else {
									return "A killing streak? What do you mean?|1. It means I have a floor to clean.|2. DIE COPPER!|3. DYE COPPER!|4. Tonight I have been very mean!";
								}
							}
						} else {
							return "Killed who, sir? I heard a shriek!|1. That was me. It’s...uh...Shark Week!|2. I’ll confess! I can’t stand it…I’m weak!|3. That was my wife. Her future’s…bleak.|4. That’s me on a killing streak!";
						}
					} 
					return "find Question :" + dialogueChoice;
				} else {
					return "Pardon me. Good evening sir!|1. What can I do for you, officer?|2. How’d you know that I killed her?|3. Hello chief! Please do enter!|4. Oh Sh**! It’s the po-po!";
				}
			} else {
				return "Non-sandwich convo|1. Nothing|2. Nothing";
			}
		}
	}
}