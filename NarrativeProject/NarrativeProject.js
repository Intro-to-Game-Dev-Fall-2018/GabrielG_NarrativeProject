var storyContent = ﻿{"inkVersion":18,"root":[["^You have found a young child while wandering about town. You rush home to tell your mom the good news!","\n","ev","str","^Go Home","/str","/ev",{"*":"0.c-0","flg":4},"ev","str","^Skip to Town Map","/str","/ev",{"*":"0.c-1","flg":4},{"c-0":["\n",{"->":"Arriving_Home"},{"->":"0.g-0"},{"#f":7}],"c-1":["\n",{"->":"Map_Selection"},{"->":"0.g-0"},{"#f":7}],"g-0":["done",{"#f":7}]}],"done",{"Arriving_Home":[["^Late 1960s, Massachusetts.","\n","^Your mom is standing on the porch.","\n","ev","str","^Talk to Mom","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["\n",{"->":"Mom1"},{"#f":7}]}],{"#f":3}],"Mom1":["^Dana: Mom! Look! God sent me a baby!","\n","^Mom: ...Excuse me?","\n","^Dana: Her name is Kimmy!","\n",{"->":".^.Kimmy1"},{"Kimmy1":[["ev","str","^It seems that Kimmy has something to say.","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["\n","^Kimmy: ...","\n",{"->":"Mom1.Nope"},{"#f":7}]}],{"#f":3}],"Nope":[["ev","str","^...","/str",{"CNT?":"Mom1.X"},"/ev",{"*":".^.c-0","flg":21},"ev","str","^...","/str",{"CNT?":"Mom1.X"},"!","/ev",{"*":".^.c-1","flg":21},{"c-0":["^ ",{"->":"Mom1.Y"},"\n",{"#f":7}],"c-1":["^ ",{"->":"Mom1.X"},"\n",{"#f":7}]}],{"#f":3}],"X":[["^Mom: That… No, Dana. God did not send you a baby.","\n","^Dana: What do you mean…? You said God sends people babies sometimes! You told me that.","\n","^Mom: Well… nevermind what I said. It doesn’t apply to you. God isn’t about to send you a baby anytime soon, trust me.","\n","ev","str","^Assert Truth","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":"Mom1.AssertTruth"},"\n",{"#f":7}]}],{"#f":3}],"AssertTruth":["^Dana: What! Why? I wished for a baby, and he granted my wish. Isn’t it obvious?","\n","^Mom: Where did you find this little girl? Honey, where’s your house?","\n",{"->":"Mom1.Kimmy1"},{"#f":3}],"Y":[["^Mom: Kimmy, can you tell me where your parents are?","\n","^Kimmy: I can go home later if I want…","\n","^Dana: Well maybe God didn’t send her, but she came out of nowhere! Kimmy, you just… appeared, right? Where did you come from?","\n","^Kimmy: Ferry Street... I untied myself from the porch so I could go for a walk…","\n","ev","str","^How strange","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":"Mom1.Odd"},"\n",{"#f":7}]}],{"#f":3}],"Odd":[["^Mom: It’s ok dear, let’s go to your house Kimmy… you said it’s on Ferry Street? Your parents are probably worried.","\n","ev","str","^Head to Kimmy's house","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":"Mom1.Kimmy_House_Scene"},"\n",{"#f":7}]}],{"#f":3}],"Kimmy_House_Scene":[["^Dana: I’m sorry… I thought God sent me a baby and I got so excited…","\n","^Kimmy's Mom: Oh, don’t worry. Thank you for finding Kimmy and walking her home. What's your name, dear?","\n","ev","str","^Introduce Self","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":"Mom1.Introduction"},"\n",{"#f":7}]}],{"#f":3}],"Introduction":[["^Dana: I’m Dana…","\n","^Kimmy's Mom: I don’t know many kids as responsible as you, walking Kimmy all the way home. I hope you two can be friends. I know Kimmy could learn a lot from you.","\n","^Kimmy: My… friend?","\n","ev","str","^Be Kimmy's Friend","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":"Mom1.Befriend"},"\n",{"#f":7}]}],{"#f":3}],"Befriend":[["^Dana: Yes! I’d love to be friends, Kimmy. Can I come by and play with you tomorrow?","\n","^Kimmy's Mom: I’ve been looking for a babysitter, actually. Her grandma was helping with that before, but she… well, she can’t anymore.","\n","^Kimmy's Mom: Kimmy’s normally alright in her harness on the porch, but she’s getting a little old for that…","\n","^Kimmy's Mom: If you’d like to play with Kimmy tomorrow, I’d be happy to pay you a quarter to keep an eye on her.","\n","ev","str","^Take the Job!","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":"Mom1.Accept"},"\n",{"#f":7}]}],{"#f":3}],"Accept":[["^Dana: Wow! Yes, please! I’d love to!","\n","^Kimmy's Mom: My work schedule is a little… hectic. It’d be great to have you by in the morning.","\n","^Dana: I’ll be here first thing! Wow, I didn’t expect to land a job today. Thanks so much!","\n","ev","str","^Ask Mom for Permission","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":"Mom1.MomPermission"},"\n",{"#f":7}]}],{"#f":3}],"MomPermission":[["^Mom: Well, that all sounds good to me. A summer job will be a nice way to keep busy. Now then, let’s leave this nice family to their dinner.","\n","ev","str","^Say Goodbye","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":"Mom1.Goodbye"},"\n",{"#f":7}]}],{"#f":3}],"Goodbye":[["^Dana: Ok. Bye bye Kimmy, and Mrs...?","\n","^Kimmy's Mom: Mrs. Munro. Again, thank you for giving Kimmy a hand. It was nice meeting you, Mrs. Navarro.","\n","^Mom: Likewise.","\n","^Kimmy: Bye bye.","\n","ev","str","^Head back Home","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":"Mom1.HeadOut"},"\n",{"#f":7}]}],{"#f":3}],"HeadOut":[["^You head back home. You have trouble sleeping because you are so excited to hang out with Kimmy Tomorrow.","\n","^Next morning, bright and early, you meet Kimmy outside her house!","\n","ev","str","^Talk to Kimmy","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":"Mom1.KimmyTalk"},"\n",{"#f":7}]}],{"#f":3}],"KimmyTalk":[["^Dana: Mornin’ Kimmy! I’m here to babysit, like I promised! Is your mom around?","\n","^Kimmy: My mommy’s not inside. She left already.","\n","ev","str","^Ask Kimmy what to do","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":"Mom1.AskKimmy"},"\n",{"#f":7}]}],{"#f":3}],"AskKimmy":[["^Dana: Oh, ok… Um, well… Is there anything you’d like to do today, Kimmy?","\n","^Kimmy: No… I don’t know.","\n","^Dana: That’s ok, do you have a friend you’d like to visit?","\n","^Kimmy: No...","\n","^Dana: Should we watch TV or something in your house?","\n","^Kimmy: We don’t have a TV. My dad is in there too, so we should go play somewhere else. He’s busy.","\n","ev","str","^Come up with a brand new idea!","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":"Mom1.NewIdea"},"\n",{"#f":7}]}],{"#f":3}],"NewIdea":[["^Dana: Ok then! Want to walk around and play some games with the other kids?","\n","^Kimmy: Other kids…?","\n","^Dana: You know, the neighborhood kids. Like Donna. Isn’t she your age? You’re both going to be in Kindergarten, right?","\n","^Kimmy: Oh, yeah… I don’t think Donna is my friend though, so she probably wouldn’t want to play...","\n","ev","str","^Make Kimmy Feel Better","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":"Mom1.KimmyFeelBetter"},"\n",{"#f":7}]}],{"#f":3}],"KimmyFeelBetter":[["^Dana: Well, let’s go become her friend! There's lots of other kids around, too. Like Anthony. I know him from school.","\n","^Dana: Come on, let’s go!","\n","^Kimmy: ...!","\n","ev","str","^Head out to Town","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":"Mom1.Town"},"\n",{"#f":7}]}],{"#f":3}],"Town":["^It's time for a day of adventure with Kimmy. What to do next?","\n",{"->":"Map_Selection"},{"#f":3}],"#f":3}],"Map_Selection":[["^This is the town map! So many places for Kimmy and I to go!","\n","ev","str","^Go Downtown","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^Go to Kimmy's House","/str","/ev",{"*":".^.c-1","flg":4},"ev","str","^Go to the Playground","/str","/ev",{"*":".^.c-2","flg":4},"ev","str","^Go Home","/str","/ev",{"*":".^.c-3","flg":4},{"c-0":["\n","^Guess we'll go downtown today!","\n",{"->":"Downtown"},{"#f":7}],"c-1":["\n","^Maybe we should check in with Kimmy's parents!","\n",{"->":"Kimmy_House"},{"#f":7}],"c-2":["\n","^Let's go play!","\n",{"->":"Playground"},{"#f":7}],"c-3":["\n","^I'm feeling tired, let's go home!","\n",{"->":"Home"},{"#f":7}]}],{"#f":3}],"Kimmy_House":[["^Maybe I should check in with Kimmy's parents again.","\n","ev","str","^Talk to Dean","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^Talk to Donna","/str",{"CNT?":".^.^.Gameplay"},"!","/ev",{"*":".^.c-1","flg":5},"ev","str","^Talk to Donna again!","/str",{"CNT?":".^.^.Gameplay"},{"CNT?":".^.^.Donna_Friend_Success"},"!","&&","/ev",{"*":".^.c-2","flg":5},"ev","str","^Go back to Map","/str","/ev",{"*":".^.c-3","flg":4},{"c-0":["^ ",{"->":".^.^.^.Dean"},"\n",{"#f":7}],"c-1":["^ ",{"->":".^.^.^.Donna"},"\n",{"#f":7}],"c-2":["^ ",{"->":".^.^.^.Donna_Friend_Success"},"\n",{"#f":7}],"c-3":["^ ",{"->":"Map_Selection"},"\n",{"#f":7}]}],{"Dean":[["^Dean: Hey, Kid.","\n","^Dana: Hi, Dean. This is Kimmy. I’m babysitting her now.","\n","^Dean: Well lookit that, aren’t you all grown up. You gettin’ paid?","\n","ev","str","^Answer","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.Answer"},"\n",{"#f":7}]}],{"#f":3}],"Answer":[["^Kimmy: My mom pays Dana a quarter a day.","\n","^Dana: That’s right! I’m here to buy some things… I mean, I haven’t gotten paid yet. This is my first day. But I have some money saved up!","\n","^Dean: Hah, I wish I had that kinda discipline. I blew my budget on fabric last week.","\n","ev","str","^Share Plans","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.PlanShare"},"\n",{"#f":7}]}],{"#f":3}],"PlanShare":[["^Dana: I need to save up money. For college, you know! My mom would get so mad if I didn’t plan ahead.","\n","^Dean: Hah! Your mom’s got the right idea. I wish I’d saved up for college.","\n","ev","str","^Inquire","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.Inquire"},"\n",{"#f":7}]}],{"#f":3}],"Inquire":[["^Dana: So what did you spend all your money on? Your sewing classes?","\n","^Dean: Nah, that’s over. I’m workin’ on some Halloween costumes for my cousins… and some new pants for myself. You know, gotta apply those skills somehow.","\n","^Kimmy: I didn’t know people made clothes!","\n","ev","str","^Seriously Kimmy?","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.KimmySurprise"},"\n",{"#f":7}]}],{"#f":3}],"KimmySurprise":[["^Dean: They do, Kimmy, they do. I make sweaters, dresses, hats--you name it.","\n","^Dana: You should sell your clothes at Jordan Marsh! That’s where I always find the nicest clothes.","\n","^Dean: Hah! That’s a long ways off for me. But maybe someday… anyways, what can I get for ya?","\n","ev","str","^ Check Store ","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^ Return to Kimmy's House ","/str","/ev",{"*":".^.c-1","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.Store"},"\n",{"#f":7}],"c-1":["^ ",{"->":".^.^.^.^"},"\n",{"#f":7}]}],{"#f":3}],"Store":[["ev","str","^ Buy Game ","/str",{"CNT?":".^.^.^.BuyGame"},"!","/ev",{"*":".^.c-0","flg":5},"ev","str","^ Buy Game ","/str",{"CNT?":".^.^.^.BuyGame"},"/ev",{"*":".^.c-1","flg":5},"ev","str","^ Leave ","/str","/ev",{"*":".^.c-2","flg":4},{"c-0":["^ ","\n",{"->":".^.^.^.^.BuyGame"},{"#f":7}],"c-1":["^ ","\n",{"->":".^.^.^.^.AlreadyBought"},{"#f":7}],"c-2":["^ ",{"->":".^.^.^.^.Leave"},"\n",{"#f":7}]}],{"#f":3}],"Leave":[["^Dana: Cya Later!","\n","ev","str","^ Return to Kimmy's House ","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^"},"\n",{"#f":7}]}],{"#f":3}],"BuyGame":["^Alright, I'll take this game!","\n",{"->":".^.^.Store"},{"#f":3}],"AlreadyBought":["^I already bought a game!","\n",{"->":".^.^.Store"},{"#f":3}],"Donna":[["^Kimmy: Hi Donna.","\n","^Donna: What happened, Kimmy? Did you untie yourself from the porch again?","\n","^Kimmy: ...","\n","ev","str","^ Help Kimmy Out ","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.HelpKimmy"},"\n",{"#f":7}]}],{"#f":3}],"HelpKimmy":[["^Dana: Hi Donna! I’m babysitting Kimmy now, so--","\n","^Donna: So you untied Kimmy from the porch? Better not let her parents catch you.","\n","ev","str","^ Defend Kimmy ","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.DefendKimmy"},"\n",{"#f":7}]}],{"#f":3}],"DefendKimmy":[["^Dana: First of all, I’m her babysitter. Second, she’s perfectly able to untie herself. She’s too old for that thing now, even her mom thinks so.","\n","^Donna: She should probably stay on her porch. We’re the same age, but my mom takes me everywhere so I won’t get lost. I bet Kimmy would get lost if she wandered too far.","\n","^Dana: I don’t know about that. Anyways, I was just going to ask if you wanna play with us... but I feel like you're being mean to Kimmy.","\n","^Donna: Oh, no. I'm just being honest!","\n","ev","str","^ Ask to Play Game ","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.AskDonna"},"\n",{"#f":7}]}],{"#f":3}],"AskDonna":[["^Dana: Ok... well, I hope you two can get along, since you're neighbors... want to play a game with us?","\n","^Donna: Well, I’m trying to avoid Harold so it’s probably good to look busy. He keeps trying to tell me that my ears look childish. He is so snobby.","\n","^Kimmy: I like your ears.","\n","^Donna: Oh, thanks. They’re new. Anyways, I wanna play a new game.","\n","ev","str","^Play Game","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^Some other Time","/str","/ev",{"*":".^.c-1","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.Gameplay"},"\n",{"#f":7}],"c-1":["^ ",{"->":".^.^.^.^.NoGamePlay"},"\n",{"#f":7}]}],{"#f":3}],"Gameplay":[["^You play an exciting game with Donna!","\n","^Donna: Wow! This was a lot of fun! We should play again sometime!","\n","ev","str","^ Return to Kimmy's House ","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^"},"\n",{"#f":7}]}],{"#f":3}],"NoGamePlay":[["^Donna: Oh, okay, some other time then!","\n","ev","str","^ Return to Kimmy's House ","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^"},"\n",{"#f":7}]}],{"#f":3}],"Donna_Friend_Success":[["^Donna: ...Are you gonna walk to Jordan Marsh? That’s where my babysitter used to take me.","\n","ev","str","^ Answer Donna ","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.AnswerDonna"},"\n",{"#f":7}]}],{"#f":3}],"AnswerDonna":[["^Dana: Maybe! Kimmy doesn't seem to know too many people around town though, so I think we should save big trips for later.","\n","^Donna: Playing is fine, but isn’t it boring sometimes? I need more friends  who will go with me to Jordan Marsh. I like going shopping there. I hide in the clothes racks sometimes.","\n","^Kimmy: Dad took me there once. He needed a new leather jacket. But then he bought another new guitar and mom got mad when we came home.","\n","ev","str","^Comment","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.Comment"},"\n",{"#f":7}]}],{"#f":3}],"Comment":[["^Dana: Haha, your dad is so weird.","\n","^Donna: I don’t see your dad around much anymore, but I guess that’s because I’m not out on the porch like I used to be.","\n","^Kimmy: Donna used to be in a harness outside, like me.","\n","^Donna: Yeah I used to wear a harness attached to the front door when my mom was cooking or doing laundry. It was so embarrassing.","\n","^Donna: My mom said I’m too big for the harness. I go bike riding a lot now. I went by myself to Jordan Marsh yesterday and got these ears…","\n","ev","str","^ Compliment Ears ","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.ComplimentEars"},"\n",{"#f":7}]}],{"#f":3}],"ComplimentEars":[["^Kimmy: I like them.","\n","^Dana: I like riding my bike to Jordan Marsh too! Sometimes I’ll buy a ribbon if I save up.","\n","^Kimmy: I’ve never worn a ribbon.","\n","^Dana: Wow! Really? I can get you one, Kimmy, don’t worry.","\n","ev","str","^Refuse Ribbon","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.RefuseRibbon"},"\n",{"#f":7}]}],{"#f":3}],"RefuseRibbon":[["^Kimmy: No thank you, I’m not supposed to spend any money. I don’t have any anyways.","\n","^Dana: I’ll save up and get you one!","\n","^Donna: Kimmy, you would look nice in a ribbon. Cat ears too probably.","\n","^Kimmy: …Maybe.","\n","ev","str","^ Return to Kimmy's House ","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^"},"\n",{"#f":7}]}],{"#f":3}],"#f":3}],"Playground":[["^The playground is always exciting! Ugh, it's the Bicycle queen.","\n","ev","str","^Talk to Blythe","/str",{"CNT?":".^.^.BlytheGame"},"!","/ev",{"*":".^.c-0","flg":5},"ev","str","^Talk to Blythe again","/str",{"CNT?":".^.^.BlytheGame"},{"CNT?":".^.^.BlytheFriend"},"!","&&","/ev",{"*":".^.c-1","flg":5},"ev","str","^Talk to Janey","/str",{"CNT?":".^.^.JaneyGame"},"!","/ev",{"*":".^.c-2","flg":5},"ev","str","^Talk to Janey again","/str",{"CNT?":".^.^.JaneyGame"},{"CNT?":".^.^.JaneyFriend"},"!","&&","/ev",{"*":".^.c-3","flg":5},"ev","str","^Talk to Linda","/str",{"CNT?":".^.^.LindaGame"},"!","/ev",{"*":".^.c-4","flg":5},"ev","str","^Talk to Linda again","/str",{"CNT?":".^.^.LindaGame"},{"CNT?":".^.^.LindaFriend"},"!","&&","/ev",{"*":".^.c-5","flg":5},"ev","str","^Guess we made friends with everyone","/str",{"CNT?":".^.^.LindaGame"},{"CNT?":".^.^.JaneyGame"},"&&",{"CNT?":".^.^.BlytheGame"},"&&","/ev",{"*":".^.c-6","flg":5},"ev","str","^Go back to Map","/str","/ev",{"*":".^.c-7","flg":4},{"c-0":["^ ",{"->":".^.^.^.Blythe"},"\n",{"#f":7}],"c-1":["^ ",{"->":".^.^.^.BlytheFriend"},"\n",{"#f":7}],"c-2":["^ ",{"->":".^.^.^.Janey"},"\n",{"#f":7}],"c-3":["^ ",{"->":".^.^.^.JaneyFriend"},"\n",{"#f":7}],"c-4":["^ ",{"->":".^.^.^.Linda"},"\n",{"#f":7}],"c-5":["^ ",{"->":".^.^.^.LindaFriend"},"\n",{"#f":7}],"c-6":["^ ",{"->":"Map_Selection"},"\n",{"#f":7}],"c-7":["^ ",{"->":"Map_Selection"},"\n",{"#f":7}]}],{"Blythe":[["^Kimmy looks really frightened of Blythe.","\n","^Kimmy: P-please go away...","\n","ev","str","^ Support Kimmy ","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.SupportKimmy"},"\n",{"#f":7}]}],{"#f":3}],"SupportKimmy":[["^Dana: Blythe, knock it off! I’m a babysitter so you can’t bug me anymore, got it?","\n","^Blythe: Poor Dana. Poor Kimmy. You can’t get away from me! I’m the bicycle lord.","\n","^Blythe: I’ll only stop following you if you play a game with me.","\n","ev","str","^Refuse Game","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.RefuseGame"},"\n",{"#f":7}]}],{"#f":3}],"RefuseGame":[["^Dana: No.","\n","^Blythe: Yes.","\n","^Dana: Fine.","\n","^Blythe: That’s right.","\n","ev","str","^Play Game","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.BlytheGame"},"\n",{"#f":7}]}],{"#f":3}],"BlytheFriend":[["^Kimmy: I didn’t know bullies liked games.","\n","^Blythe: Shut up, Kimmy.","\n","^Blythe: I’m not thaaaat evil. I found a newt this morning and slipped it into Janey’s purse, but I could have dropped it down her dress… but I’m nice, I wouldn’t do that.","\n","ev","str","^Confront Blythe","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.ConfrontBlythe"},"\n",{"#f":7}]}],{"#f":3}],"ConfrontBlythe":[["^Dana: That’s… neither of those options are nice, Blythe.","\n","^Blythe: I just like to mess with girls. But I take games seriously. So you better play with me some more, you little brat.","\n","ev","str","^Protect Kimmy","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.ProtectKimmy"},"\n",{"#f":7}]}],{"#f":3}],"ProtectKimmy":[["^Dana: Don’t talk that way to Kimmy!","\n","^Dana: You’re mean to girls. I’ve seen you chasing girls around the neighborhood. It’s bad and you’re going to get in trouble with the adults.","\n","^Blythe: Quiet Kimmy alone and tied up on the porch.. How much did you pay Dana to be your friend anyways?","\n","^Kimmy: I don’t have any friends.","\n","ev","str","^ Declare Friendship ","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.DeclareFriendship"},"\n",{"#f":7}]}],{"#f":3}],"DeclareFriendship":[["^Dana: I’m her friend and babysitter, but it’s none of your business anyways.","\n","^Kimmy: ...","\n","ev","str","^ Face Blythe ","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.FaceBlythe"},"\n",{"#f":7}]}],{"#f":3}],"FaceBlythe":[["^Dana: Don’t be mean to Kimmy, or I’ll really get mad. I’ll… tell your mom that you were being rude!","\n","^Blythe: Haha, yeah right. I’ll be nice but only if you and Kimmy play more games with me.","\n","ev","str","^ Reject ","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.Reject"},"\n",{"#f":7}]}],{"#f":3}],"Reject":[["^Dana: Uh, no. We might play games with you, but not just so you’ll be nice. Maybe we can teach you some manners.","\n","^Blythe: I’m gonna win, win, win!","\n","ev","str","^ Return to Playground ","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^"},"\n",{"#f":7}]}],{"#f":3}],"BlytheGame":[["^Some time passes...","\n","^Blythe: I love that game. Haha, what a rush.","\n","ev","str","^Express Surprise","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.ExpressSurprise"},"\n",{"#f":7}]}],{"#f":3}],"ExpressSurprise":[["^Dana: Well… that was nice. I’m surprised you hadn’t played before though, Blythe. You always brag about how good you are at games, and how you know so many.","\n","^Kimmy: I wanna know more games than Blythe!","\n","ev","str","^ Support Kimmy ","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.SupportKimmy1"},"\n",{"#f":7}]}],{"#f":3}],"SupportKimmy1":[["^Dana: Haha, that’s the spirit!","\n","^Blythe: Pfft. Good luck. I’m gonna go catch bugs later. That’s better than games.","\n","ev","str","^ Return to Playground ","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^"},"\n",{"#f":7}]}],{"#f":3}],"Janey":[["^Dana: Hey Janey, how are you?","\n","^Janey: You know the Grenada movie theatre? I got a summer job there. I started last week.","\n","ev","str","^Kimmy seems excited","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.KimmyExcited"},"\n",{"#f":7}]}],{"#f":3}],"KimmyExcited":[["^Kimmy: Wow… my mom took me there once...","\n","^Janey: What did you see? I go to the movies a lot, so I bet I saw it too.","\n","^Kimmy: Oh… we saw the movie with the… Uh... the fairy godmother and the shoe…","\n","^Janey: Cinderella?","\n","ev","str","^ Kimmy is talking all on her own...","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.KimmyConvo"},"\n",{"#f":7}]}],{"#f":3}],"KimmyConvo":[["^Kimmy: Yeah... and we saw Mary Poppins.","\n","^Janey: I saw that at The Grenada too. It was so great.","\n","ev","str","^Inquire about Janey","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.InquireJaney"},"\n",{"#f":7}]}],{"#f":3}],"InquireJaney":[["^Dana: If we go see a movie there, where would we find you?","\n","^Janey: I’m at the snack counter, but I’m too little to be a cashier. I’m helping make popcorn… just until I’m old enough to do something more serious.","\n","^Kimmy: I love popcorn!","\n","ev","str","^Janey seems pretty proud of herself","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.JaneyProud"},"\n",{"#f":7}]}],{"#f":3}],"JaneyProud":[["^Janey: Yeah, it’s pretty awesome to be at the snack counter. I love popcorn. I can have free soda whenever I want, too.","\n","ev","str","^Show off Job","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.ShowOffJob"},"\n",{"#f":7}]}],{"#f":3}],"ShowOffJob":[["^Dana: I also have a summer job! I’m babysitting Kimmy! I wasn’t planning on working, but I think it’s great.","\n","^Janey: My mom said a summer job is important. I didn’t want her to think I was lazy, and I love movies so I got my cousin to help me get the job. He sells tickets there.","\n","ev","str","^I won't be lazy","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.NoLazy"},"\n",{"#f":7}]}],{"#f":3}],"NoLazy":[["^Dana: I’m glad I won’t be lazy this summer. I think I’m getting too old to be lazy. I mean, I’m going into the 5th grade.","\n","^Janey: Yeah, it’s more fun to be out with people who aren’t just teachers and classmates too.","\n","^Janey: By the way, I’m not working today. Wanna play together?","\n","ev","str","^Play Game with Janey","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^Don't play","/str","/ev",{"*":".^.c-1","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.JaneyGame"},"\n",{"#f":7}],"c-1":["^ ",{"->":".^.^.^.^.NoGame"},"\n",{"#f":7}]}],{"#f":3}],"NoGame":[["^Janey: Oh, alright. I guess I'll see you around.","\n","ev","str","^ Return to Playground ","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^"},"\n",{"#f":7}]}],{"#f":3}],"JaneyFriend":[["^Dana: Say… do you think you’ll ever try joining the school theatre, Janey? I was thinking of auditioning for a play next year…","\n","^Janey: I could, but my mom’s YWCA theatre group is… better.","\n","^Kimmy: I like seeing the plays at school. Can we be in one together, Dana?","\n","ev","str","^Answer","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.AnswerKimmy1"},"\n",{"#f":7}]}],{"#f":3}],"AnswerKimmy1":[["^Dana: I know, I wish we were in school together. But I’m at Cheverus, not Lincoln Elementary. I can’t be in a play at a school I don’t go to.","\n","^Kimmy: Oh… are you at Cheverus too, Janey?","\n","^Janey: Yes, I am. Both my parents went to Catholic school too.","\n","ev","str","^Kimmy seems unhappy","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.UnhappyKimmy"},"\n",{"#f":7}]}],{"#f":3}],"UnhappyKimmy":[["^Kimmy: I go to Lincoln Elementary School.","\n","^Janey: You should audition for your school’s play, Kimmy. You’re cute so I bet you’d get a good part. Probably a love interest.","\n","^Kimmy: ... A love interest?","\n","ev","str","^Why is Janey saying this!?!","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.CrazyJaney"},"\n",{"#f":7}]}],{"#f":3}],"CrazyJaney":[["^Janey: Cute girls usually get cast as love interests. You know, like a Juliet. Or a Tzeitel.","\n","^Kimmy: I wouldn’t want a big part… or a… a love part...","\n","ev","str","^Change conversation","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.ConversationChange"},"\n",{"#f":7}]}],{"#f":3}],"ConversationChange":[["^Dana: Me neither! I think I’d get stage fright normally, but especially if I had to be romantic with some boy.","\n","^Janey: The romantic parts are the most fun--you might even get to do a stage kiss.","\n","^Kimmy: Maybe theatre isn’t fun after all…","\n","ev","str","^ Did Janey crush her dreams? ","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.CrushDreams"},"\n",{"#f":7}]}],{"#f":3}],"CrushDreams":[["^Janey: Kimmy, it is! I know you’re… a bit of a loner, so it’d probably be good for you to do theatre. You’d learn how to be more social.","\n","ev","str","^ Defend Kimmy ","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.KimmyDefend"},"\n",{"#f":7}]}],{"#f":3}],"KimmyDefend":[["^Dana: Kimmy’s not a loner! You're making lots of friends today, right Kimmy? We’re going to play with everyone!","\n","^Kimmy: ...yes.","\n","^Dana: Also, it’s ok to want to be alone sometimes. But, everyone needs friends.","\n","ev","str","^Kimmy doesn't know what to say...","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.KimmyConfused"},"\n",{"#f":7}]}],{"#f":3}],"KimmyConfused":[["^Kimmy: I don’t… know. Maybe.","\n","^Janey: Hah! You want friends, Kimmy. All kids do.","\n","^Kimmy: Not everyone is nice though...","\n","^Janey: I just think it’s sad to be a loner, so…","\n","ev","str","^Kimmy is upset","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.UpsetKimmy1"},"\n",{"#f":7}]}],{"#f":3}],"UpsetKimmy1":[["^Kimmy: ...","\n","ev","str","^ This is an awkward silence","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.AwkwardSilence"},"\n",{"#f":7}]}],{"#f":3}],"AwkwardSilence":[["^Janey: …well if you ever want to do some theatre, just let me know.","\n","^Janey: Or just get a job when you’re a bit older, I guess. You won’t be lonely if you’re working hard.","\n","^Kimmy: Ok…","\n","ev","str","^ Return to Playground ","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^"},"\n",{"#f":7}]}],{"#f":3}],"JaneyGame":[["^Dana: That’s it! Good job Janey, you picked that up fast!","\n","^Janey: My dad says I’m a fast learner. I can even beat Anthony at Tic Tac Toe sometimes.","\n","ev","str","^Kimmy seems upset","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.UpsetKimmy"},"\n",{"#f":7}]}],{"#f":3}],"UpsetKimmy":[["^Kimmy: I don’t think I’m a fast learner...","\n","^Dana: I think you are! You’re great, Kimmy.","\n","^Janey: Don’t worry, you’re sharper than Jimmy at the very least…","\n","^Kimmy: Oh...","\n","ev","str","^Reprimand Janey","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.Reprimand"},"\n",{"#f":7}]}],{"#f":3}],"Reprimand":[["^Dana: That’s not very nice, Janey.","\n","^Janey: You’re so little, Kimmy, it’s ok. You have time. Get a job like Dana and I and you’ll feel smarter in no time.","\n","^Kimmy: I want to be smart and big like you two…","\n","ev","str","^ Slow Down ","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.SlowDown"},"\n",{"#f":7}]}],{"#f":3}],"SlowDown":[["^Dana: Let’s make you some friends first. You can worry about jobs later.","\n","^Kimmy: Ok...","\n","ev","str","^ Return to Playground ","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^"},"\n",{"#f":7}]}],{"#f":3}],"Linda":[["^Kimmy: Hi Linda... I haven’t seen you in a while.","\n","^Linda: I went to visit my auntie right when school ended.","\n","ev","str","^Enter Conversation","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.ConversationEnter"},"\n",{"#f":7}]}],{"#f":3}],"ConversationEnter":[["^Dana: Hi, Linda. Do you know Kimmy?","\n","^Linda: We’re neighbors.","\n","^Kimmy: Did you go far away?","\n","^Linda: Auntie’s in Boston.","\n","^Kimmy: That sounds far...","\n","ev","str","^Reassure Kimmy","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.ReassureKimmy"},"\n",{"#f":7}]}],{"#f":3}],"ReassureKimmy":[["^Dana: It’s not so far. You can even ride your bike there. Sometimes my sisters and I go. We like to go explore all the clothes shops. Like Filene's.","\n","^Linda: I don’t really go shopping, unless it’s for stuffed animals.","\n","^Kimmy: Dana is babysitting me, so she can go shopping with the quarters my mom gives her!","\n","ev","str","^Kimmy is proud of me!","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.Proud"},"\n",{"#f":7}]}],{"#f":3}],"Proud":[["^Linda: Oh, having a job is good. When I’m a little older I want to get one at an animal shelter or something. I like playing with dogs.","\n","^Kimmy: I love dogs.","\n","^Dana: We’re looking for people to play games with. Want to play a game with us, Linda?","\n","^Linda: I guess so. I was playing with Donna earlier, but I could play some more.","\n","ev","str","^ Play Game with Linda ","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^ Leave to playground ","/str","/ev",{"*":".^.c-1","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.LindaGame"},"\n",{"#f":7}],"c-1":["^ ",{"->":".^.^.^.^"},"\n",{"#f":7}]}],{"#f":3}],"LindaGame":[["^Dana: We did it!","\n","^Linda: I usually only play games with my dad or brothers, but that was fun.","\n","ev","str","^ Kimmy wants to say something! ","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.KimmySmile"},"\n",{"#f":7}]}],{"#f":3}],"KimmySmile":[["^Kimmy: Th--thanks for playing with us, Linda.","\n","^Linda: I’m going to visit my auntie again in a few weeks, so I’ll see if maybe she’ll want to learn ","ev",3,"out","/ev","^... thanks for teaching it to me.","\n","ev","str","^Thank Linda","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.ThankLinda"},"\n",{"#f":7}]}],{"#f":3}],"ThankLinda":[["^Dana: Oh, thank you Linda. You’re a good student!","\n","^Linda: I like to learn stuff. I’m glad it’s summer break though… we never get assigned anything fun in school. But my auntie gave me some biology books to read and it’s really fun.","\n","ev","str","^Kimmy seems confused","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.ConfusedKimmy"},"\n",{"#f":7}]}],{"#f":3}],"ConfusedKimmy":["^Kimmy: What’s… biology?","\n","^Linda: It’s about studying living stuff like plants and animals, and people sometimes too.","\n","^Dana: I hope I get to take biology soon. I like math and science classes a lot.","\n","^Kimmy: If I could study dogs, I think I’d be happy...","\n",{"->":".^.^"},{"#f":3}],"LindaFriend":[["^Dana: Where does your auntie do her biology stuff?","\n","^Linda: She works with animals at Stoneham Zoo.","\n","ev","str","^ Express Enthusiasm ","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.ExpressEnthusiasm"},"\n",{"#f":7}]}],{"#f":3}],"ExpressEnthusiasm":[["^Dana: Whoa! That place is amazing!","\n","^Kimmy: What’s a zoo?","\n","^Linda: You’ve really never been to a zoo, Kimmy?","\n","^Kimmy: No…","\n","ev","str","^Answer Kimmy","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.AnswerKimmy"},"\n",{"#f":7}]}],{"#f":3}],"AnswerKimmy":[["^Dana: It’s ok, Kimmy. A zoo is a place where you can see wild animals. Like elephants and stuff.","\n","^Kimmy: I thought that’s what a circus was?","\n","^Linda: Animals in a circus are more like performers. They do tricks and stuff.","\n","^Linda: Animals in a zoo are studied by scientists, like my aunt.","\n","ev","str","^Express Concern","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.ExpressConcern"},"\n",{"#f":7}]}],{"#f":3}],"ExpressConcern":[["^Dana: I think I’d get a little nervous around the bigger animals. I’d want to work with the small ones--like penguins.","\n","^Linda: She loves it. But she’s stressed a lot too. She’s working on her degree in Biology right now at college and she’s really busy.","\n","ev","str","^Kimmy seems really excited","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.KimmyResponse"},"\n",{"#f":7}]}],{"#f":3}],"KimmyResponse":[["^Kimmy: Your auntie sounds amazing… I don’t even know what I want to do when I grow up.","\n","^Linda: My auntie told me not to pick my career until I’m older, because I might find something else I like to do in high school. But I think I’ll still want to work with animals like she does.","\n","ev","str","^Get into the conversation","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.GetIntoConversation"},"\n",{"#f":7}]}],{"#f":3}],"GetIntoConversation":[["^Dana: My dad is an engineer, so sometimes I think that would be an interesting job, but I like a lot of other things too. I love fashion.","\n","^Kimmy: I like… candy. I wonder if I can make candy when I grow up…","\n","^Linda: Auntie says I can do anything, so I bet you can make candy. That’s someone’s job somewhere.","\n","ev","str","^Share Dream","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.ShareDream"},"\n",{"#f":7}]}],{"#f":3}],"ShareDream":[["^Dana: Actually, I think I want to be a mom.","\n","^Kimmy: I love moms.","\n","^Linda: I want to be a dog mom.","\n","ev","str","^Express an Incorrect Opinion","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.ExpressIncorrectOpinion"},"\n",{"#f":7}]}],{"#f":3}],"ExpressIncorrectOpinion":[["^Dana: I’m afraid of dogs…","\n","^Linda: Dogs are just as afraid of you. If you’re nice to them, you have nothing to worry about.","\n","^Dana: What if one is chasing me?","\n","^Linda: If a dog chases me, I stop and pet it.","\n","ev","str","^Kimmy has an opinion","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.KimmyOpinion"},"\n",{"#f":7}]}],{"#f":3}],"KimmyOpinion":["^Kimmy: There’s no mean dogs...","\n","^Dana: I got chased once and had to climb a tree to escape… I guess I’ll try petting next time.","\n",{"->":".^.^"},{"#f":3}],"#f":3}],"Downtown":[["^Downtown is always bustling with so many people. Who should we talk with first?","\n","ev","str","^Talk to Comic Boy","/str",{"CNT?":".^.^.Comic_Boy"},"!","/ev",{"*":".^.c-0","flg":5},"ev","str","^Talk to Excited Girl","/str",{"CNT?":".^.^.Excited_Girl"},"!","/ev",{"*":".^.c-1","flg":5},"ev","str","^Talk to Scarf Man","/str",{"CNT?":".^.^.Scarf_Man"},"!","/ev",{"*":".^.c-2","flg":5},"ev","str","^Go back to Map","/str","/ev",{"*":".^.c-3","flg":4},{"c-0":["^ ",{"->":".^.^.^.Comic_Boy"},"\n",{"#f":7}],"c-1":["^ ",{"->":".^.^.^.Excited_Girl"},"\n",{"#f":7}],"c-2":["^ ",{"->":".^.^.^.Scarf_Man"},"\n",{"#f":7}],"c-3":["^ ",{"->":"Map_Selection"},"\n",{"#f":7}]}],{"Comic_Boy":["^This person doesn't want to talk to you right now. Maybe you should go to another part of town.","\n",{"->":".^.^"},{"#f":3}],"Excited_Girl":["^This person doesn't want to talk to you right now. Maybe you should go to another part of town.","\n",{"->":".^.^"},{"#f":3}],"Scarf_Man":["^This person doesn't want to talk to you right now. Maybe you should go to another part of town.","\n",{"->":".^.^"},{"#f":3}],"#f":3}],"Home":[["^You arrive back home. I wonder if Mom is cooking anything yummy! You can see a few people mulling about.","\n","ev","str","^Talk to Mom","/str",{"CNT?":"Home.Dana_Mom"},"!","/ev",{"*":".^.c-0","flg":5},"ev","str","^Talk to Harvey","/str",{"CNT?":"Home.Harvey"},"!","/ev",{"*":".^.c-1","flg":5},"ev","str","^Go back to Map","/str","/ev",{"*":".^.c-2","flg":4},{"c-0":["^ ",{"->":"Home.Dana_Mom"},"\n",{"#f":7}],"c-1":["^ ",{"->":"Home.Harvey"},"\n",{"#f":7}],"c-2":["^ ",{"->":"Map_Selection"},"\n",{"#f":7}]}],{"Dana_Mom":["^This person doesn't want to talk to you right now. Maybe you should go to another part of town.","\n",{"->":"Home"},{"#f":3}],"Harvey":["^This person doesn't want to talk to you right now. Maybe you should go to another part of town.","\n",{"->":"Home"},{"#f":3}],"#f":3}],"#f":3}],"listDefs":{}};