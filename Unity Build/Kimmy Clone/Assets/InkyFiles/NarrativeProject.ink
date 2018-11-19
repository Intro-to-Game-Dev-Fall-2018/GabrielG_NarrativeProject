// Intro Scenario
        You have found a young child while wandering about town. You rush home to tell your mom the good news!
        + [Go Home]
        -> Arriving_Home
        + [Skip to Town Map]
        -> Map_Selection
        
        === Arriving_Home
                Late 1960s, Massachusetts.
                
                Your mom is standing on the porch.
                
                + [Talk to Mom]
                -> Mom1
        
        === Mom1
                Dana: Mom! Look! God sent me a baby!
                Mom: ...Excuse me?
                Dana: Her name is Kimmy!
                -> Kimmy1
        
            = Kimmy1
                + [It seems that Kimmy has something to say.]
                Kimmy: ...
                -> Nope
        
        = Nope
        * {X} [...] -> Y
        * {not X} [...] -> X
        
        = X
                Mom: That… No, Dana. God did not send you a baby.
                Dana: What do you mean…? You said God sends people babies sometimes! You told me that.
                Mom: Well… nevermind what I said. It doesn’t apply to you. God isn’t about to send you a baby anytime soon, trust me.
                + [Assert Truth] -> AssertTruth
            = AssertTruth
                Dana: What! Why? I wished for a baby, and he granted my wish. Isn’t it obvious?
                Mom: Where did you find this little girl? Honey, where’s your house?
                -> Kimmy1
        
        = Y
                Mom: Kimmy, can you tell me where your parents are?
                Kimmy: I can go home later if I want…
                Dana: Well maybe God didn’t send her, but she came out of nowhere! Kimmy, you just… appeared, right? Where did you come from?
                Kimmy: Ferry Street... I untied myself from the porch so I could go for a walk…
                +[How strange] -> Odd
        
            = Odd
                Mom: It’s ok dear, let’s go to your house Kimmy… you said it’s on Ferry Street? Your parents are probably worried.
                
                +[Head to Kimmy's house] -> Kimmy_House_Scene
        
        = Kimmy_House_Scene
                Dana: I’m sorry… I thought God sent me a baby and I got so excited…
                Kimmy's Mom: Oh, don’t worry. Thank you for finding Kimmy and walking her home. What's your name, dear?
                + [Introduce Self] -> Introduction
            = Introduction
                Dana: I’m Dana…
                Kimmy's Mom: I don’t know many kids as responsible as you, walking Kimmy all the way home. I hope you two can be friends. I know Kimmy could learn a lot from you.
                Kimmy: My… friend?
                + [Be Kimmy's Friend] -> Befriend
            = Befriend
                Dana: Yes! I’d love to be friends, Kimmy. Can I come by and play with you tomorrow?
                Kimmy's Mom: I’ve been looking for a babysitter, actually. Her grandma was helping with that before, but she… well, she can’t anymore.
                Kimmy's Mom: Kimmy’s normally alright in her harness on the porch, but she’s getting a little old for that…
                Kimmy's Mom: If you’d like to play with Kimmy tomorrow, I’d be happy to pay you a quarter to keep an eye on her.
                + [Take the Job!] -> Accept
            = Accept
                Dana: Wow! Yes, please! I’d love to!
                Kimmy's Mom: My work schedule is a little… hectic. It’d be great to have you by in the morning.
                Dana: I’ll be here first thing! Wow, I didn’t expect to land a job today. Thanks so much!
                + [Ask Mom for Permission] -> MomPermission
            = MomPermission
                Mom: Well, that all sounds good to me. A summer job will be a nice way to keep busy. Now then, let’s leave this nice family to their dinner.
                + [Say Goodbye] -> Goodbye
            = Goodbye
                Dana: Ok. Bye bye Kimmy, and Mrs...?
                Kimmy's Mom: Mrs. Munro. Again, thank you for giving Kimmy a hand. It was nice meeting you, Mrs. Navarro.
                Mom: Likewise.
                Kimmy: Bye bye.
                + [Head back Home] -> HeadOut
            = HeadOut
                You head back home. You have trouble sleeping because you are so excited to hang out with Kimmy Tomorrow. 
                Next morning, bright and early, you meet Kimmy outside her house!
                + [Talk to Kimmy] -> KimmyTalk
            = KimmyTalk
                Dana: Mornin’ Kimmy! I’m here to babysit, like I promised! Is your mom around?
                Kimmy: My mommy’s not inside. She left already.
                + [Ask Kimmy what to do] -> AskKimmy
            = AskKimmy
                Dana: Oh, ok… Um, well… Is there anything you’d like to do today, Kimmy?
                Kimmy: No… I don’t know.
                Dana: That’s ok, do you have a friend you’d like to visit?
                Kimmy: No...
                Dana: Should we watch TV or something in your house?
                Kimmy: We don’t have a TV. My dad is in there too, so we should go play somewhere else. He’s busy.
                + [Come up with a brand new idea!] -> NewIdea
            = NewIdea
                Dana: Ok then! Want to walk around and play some games with the other kids?
                Kimmy: Other kids…?
                Dana: You know, the neighborhood kids. Like Donna. Isn’t she your age? You’re both going to be in Kindergarten, right?
                Kimmy: Oh, yeah… I don’t think Donna is my friend though, so she probably wouldn’t want to play...
                + [Make Kimmy Feel Better] -> KimmyFeelBetter
            = KimmyFeelBetter
                Dana: Well, let’s go become her friend! There's lots of other kids around, too. Like Anthony. I know him from school.
                Dana: Come on, let’s go!
                Kimmy: ...!
                + [Head out to Town] -> Town
        = Town
                It's time for a day of adventure with Kimmy. What to do next?
                -> Map_Selection


// This is the map selection screen
=== Map_Selection ===
This is the town map! So many places for Kimmy and I to go!
    + [Go Downtown]
        Guess we'll go downtown today!
        -> Downtown
        
    + [Go to Kimmy's House]
        Maybe we should check in with Kimmy's parents!
        -> Kimmy_House
        
    + [Go to the Playground]
        Let's go play!
        -> Playground
        
    + [Go Home]
        I'm feeling tired, let's go home!
        -> Home


// Kimmy's House is where Kimmy lives hahahaha
=== Kimmy_House ===
Maybe I should check in with Kimmy's parents again.

    + [Talk to Dean] -> Dean

    + {not Gameplay} [Talk to Donna] -> Donna
    + {Gameplay} [Talk to Donna again!] -> Donna_Friend_Success
    
    + [Go back to Map] -> Map_Selection


    = Dean
            Dean: Hey, Kid.
            Dana: Hi, Dean. This is Kimmy. I’m babysitting her now.
            Dean: Well lookit that, aren’t you all grown up. You gettin’ paid?
            + [Answer] -> Answer
        = Answer
            Kimmy: My mom pays Dana a quarter a day.
            Dana: That’s right! I’m here to buy some things… I mean, I haven’t gotten paid yet. This is my first day. But I have some money saved up!
            Dean: Hah, I wish I had that kinda discipline. I blew my budget on fabric last week.
            + [Share Plans] -> PlanShare
        = PlanShare
            Dana: I need to save up money. For college, you know! My mom would get so mad if I didn’t plan ahead.
            Dean: Hah! Your mom’s got the right idea. I wish I’d saved up for college.
            + [Inquire] -> Inquire
        = Inquire
            Dana: So what did you spend all your money on? Your sewing classes?
            Dean: Nah, that’s over. I’m workin’ on some Halloween costumes for my cousins… and some new pants for myself. You know, gotta apply those skills somehow.
            Kimmy: I didn’t know people made clothes!
            + [Seriously Kimmy?] -> KimmySurprise
        = KimmySurprise 
            Dean: They do, Kimmy, they do. I make sweaters, dresses, hats--you name it.
            Dana: You should sell your clothes at Jordan Marsh! That’s where I always find the nicest clothes.
            Dean: Hah! That’s a long ways off for me. But maybe someday… anyways, what can I get for ya?
            
            + [ Check Store ] -> Store
            + [ Return to Kimmy's House ] -> Kimmy_House
            
            = Store
                
                + { not BuyGame} [ Buy Game ] 
                      -> BuyGame
                      
                + { BuyGame } [ Buy Game ] 
                        -> AlreadyBought
                        
                + [ Leave ] -> Leave
                
                    = Leave
                        Dana: Cya Later!
                        + [ Return to Kimmy's House ] -> Kimmy_House
                    
                    = BuyGame
                        Alright, I'll take this game!
                        -> Store
                    = AlreadyBought
                        I already bought a game!
                        -> Store
   
    
    = Donna
            Kimmy: Hi Donna.
            Donna: What happened, Kimmy? Did you untie yourself from the porch again?
            Kimmy: ...
            + [ Help Kimmy Out ] -> HelpKimmy
        = HelpKimmy
            Dana: Hi Donna! I’m babysitting Kimmy now, so--
            Donna: So you untied Kimmy from the porch? Better not let her parents catch you.
            + [ Defend Kimmy ] -> DefendKimmy
        = DefendKimmy
            Dana: First of all, I’m her babysitter. Second, she’s perfectly able to untie herself. She’s too old for that thing now, even her mom thinks so.
            Donna: She should probably stay on her porch. We’re the same age, but my mom takes me everywhere so I won’t get lost. I bet Kimmy would get lost if she wandered too far.
            Dana: I don’t know about that. Anyways, I was just going to ask if you wanna play with us... but I feel like you're being mean to Kimmy.
            Donna: Oh, no. I'm just being honest!
            + [ Ask to Play Game ] -> AskDonna
        = AskDonna
            Dana: Ok... well, I hope you two can get along, since you're neighbors... want to play a game with us?
            Donna: Well, I’m trying to avoid Harold so it’s probably good to look busy. He keeps trying to tell me that my ears look childish. He is so snobby.
            Kimmy: I like your ears.
            Donna: Oh, thanks. They’re new. Anyways, I wanna play a new game.
            + [Play Game] -> Gameplay
            + [Some other Time] -> NoGamePlay
        = Gameplay
            You play an exciting game with Donna!
            Donna: Wow! This was a lot of fun! We should play again sometime!
            + [ Return to Kimmy's House ] -> Kimmy_House
        = NoGamePlay
            Donna: Oh, okay, some other time then!
            + [ Return to Kimmy's House ] -> Kimmy_House
        
    = Donna_Friend_Success
            Donna: ...Are you gonna walk to Jordan Marsh? That’s where my babysitter used to take me.
            + [ Answer Donna ] -> AnswerDonna
        = AnswerDonna
            Dana: Maybe! Kimmy doesn't seem to know too many people around town though, so I think we should save big trips for later.
            Donna: Playing is fine, but isn’t it boring sometimes? I need more friends  who will go with me to Jordan Marsh. I like going shopping there. I hide in the clothes racks sometimes.
            Kimmy: Dad took me there once. He needed a new leather jacket. But then he bought another new guitar and mom got mad when we came home.
            + [Comment] -> Comment
        = Comment
            Dana: Haha, your dad is so weird.
            Donna: I don’t see your dad around much anymore, but I guess that’s because I’m not out on the porch like I used to be.
            Kimmy: Donna used to be in a harness outside, like me.
            Donna: Yeah I used to wear a harness attached to the front door when my mom was cooking or doing laundry. It was so embarrassing.
            Donna: My mom said I’m too big for the harness. I go bike riding a lot now. I went by myself to Jordan Marsh yesterday and got these ears…
            + [ Compliment Ears ] -> ComplimentEars
        = ComplimentEars
            Kimmy: I like them.
            Dana: I like riding my bike to Jordan Marsh too! Sometimes I’ll buy a ribbon if I save up.
            Kimmy: I’ve never worn a ribbon.
            Dana: Wow! Really? I can get you one, Kimmy, don’t worry.
            + [Refuse Ribbon] -> RefuseRibbon
        = RefuseRibbon
            Kimmy: No thank you, I’m not supposed to spend any money. I don’t have any anyways.
            Dana: I’ll save up and get you one!
            Donna: Kimmy, you would look nice in a ribbon. Cat ears too probably.
            Kimmy: …Maybe.
            + [ Return to Kimmy's House ] -> Kimmy_House
            
        
        

=== Playground ===
The playground is always exciting! Ugh, it's the Bicycle queen.

    + {not BlytheGame} [Talk to Blythe] -> Blythe
    + {BlytheGame} [Talk to Blythe again] -> BlytheFriend
    
    + {not JaneyGame}[Talk to Janey] -> Janey
    + {JaneyGame}[Talk to Janey again] -> JaneyFriend
    
    + {not LindaGame}[Talk to Linda] -> Linda
    + {LindaGame}[Talk to Linda again] -> LindaFriend
    
    + {LindaGame}{JaneyGame}{BlytheGame} [Guess we made friends with everyone] -> Map_Selection
    + [Go back to Map] -> Map_Selection

    
    // Blythe's Dialogue
        = Blythe
                    Kimmy looks really frightened of Blythe.
                    
                    Kimmy: P-please go away...
                    + [ Support Kimmy ] -> SupportKimmy
                = SupportKimmy
                    Dana: Blythe, knock it off! I’m a babysitter so you can’t bug me anymore, got it?
                    Blythe: Poor Dana. Poor Kimmy. You can’t get away from me! I’m the bicycle lord.
                    Blythe: I’ll only stop following you if you play a game with me.
                    + [Refuse Game] -> RefuseGame
                = RefuseGame
                    Dana: No.
                    Blythe: Yes.
                    Dana: Fine.
                    Blythe: That’s right.
                    + [Play Game] -> BlytheGame
            
        = BlytheFriend
                    Kimmy: I didn’t know bullies liked games.
                    Blythe: Shut up, Kimmy.
                    Blythe: I’m not thaaaat evil. I found a newt this morning and slipped it into Janey’s purse, but I could have dropped it down her dress… but I’m nice, I wouldn’t do that.
                    + [Confront Blythe] -> ConfrontBlythe
                = ConfrontBlythe
                    Dana: That’s… neither of those options are nice, Blythe.
                    Blythe: I just like to mess with girls. But I take games seriously. So you better play with me some more, you little brat.
                    + [Protect Kimmy] -> ProtectKimmy
                = ProtectKimmy
                    Dana: Don’t talk that way to Kimmy!
                    Dana: You’re mean to girls. I’ve seen you chasing girls around the neighborhood. It’s bad and you’re going to get in trouble with the adults.
                    Blythe: Quiet Kimmy alone and tied up on the porch.. How much did you pay Dana to be your friend anyways?
                    Kimmy: I don’t have any friends.
                    + [ Declare Friendship ] -> DeclareFriendship
                = DeclareFriendship
                    Dana: I’m her friend and babysitter, but it’s none of your business anyways.
                    Kimmy: ...
                    + [ Face Blythe ] -> FaceBlythe
                = FaceBlythe
                    Dana: Don’t be mean to Kimmy, or I’ll really get mad. I’ll… tell your mom that you were being rude!
                    Blythe: Haha, yeah right. I’ll be nice but only if you and Kimmy play more games with me.
                    + [ Reject ] -> Reject
                = Reject
                    Dana: Uh, no. We might play games with you, but not just so you’ll be nice. Maybe we can teach you some manners.
                    Blythe: I’m gonna win, win, win!
                    + [ Return to Playground ] -> Playground
            
        = BlytheGame
                    Some time passes...
                    
                    Blythe: I love that game. Haha, what a rush.
                    + [Express Surprise] -> ExpressSurprise
                = ExpressSurprise
                    Dana: Well… that was nice. I’m surprised you hadn’t played before though, Blythe. You always brag about how good you are at games, and how you know so many.
                    Kimmy: I wanna know more games than Blythe!
                    + [ Support Kimmy ] -> SupportKimmy1
                = SupportKimmy1
                    Dana: Haha, that’s the spirit!
                    Blythe: Pfft. Good luck. I’m gonna go catch bugs later. That’s better than games.
                    + [ Return to Playground ] -> Playground
            
            
    
    
    // Janey's Dialogue
        = Janey
                Dana: Hey Janey, how are you?
                Janey: You know the Grenada movie theatre? I got a summer job there. I started last week.
                + [Kimmy seems excited] -> KimmyExcited
            = KimmyExcited
                Kimmy: Wow… my mom took me there once...
                Janey: What did you see? I go to the movies a lot, so I bet I saw it too.
                Kimmy: Oh… we saw the movie with the… Uh... the fairy godmother and the shoe…
                Janey: Cinderella?
                + [ Kimmy is talking all on her own...] -> KimmyConvo
            = KimmyConvo
                Kimmy: Yeah... and we saw Mary Poppins.
                Janey: I saw that at The Grenada too. It was so great.
                + [Inquire about Janey] -> InquireJaney
            = InquireJaney
                Dana: If we go see a movie there, where would we find you?
                Janey: I’m at the snack counter, but I’m too little to be a cashier. I’m helping make popcorn… just until I’m old enough to do something more serious.
                Kimmy: I love popcorn!
                + [Janey seems pretty proud of herself] -> JaneyProud
            = JaneyProud
                Janey: Yeah, it’s pretty awesome to be at the snack counter. I love popcorn. I can have free soda whenever I want, too.
                + [Show off Job] -> ShowOffJob
            = ShowOffJob
                Dana: I also have a summer job! I’m babysitting Kimmy! I wasn’t planning on working, but I think it’s great.
                Janey: My mom said a summer job is important. I didn’t want her to think I was lazy, and I love movies so I got my cousin to help me get the job. He sells tickets there.
                + [I won't be lazy] -> NoLazy
            = NoLazy
                Dana: I’m glad I won’t be lazy this summer. I think I’m getting too old to be lazy. I mean, I’m going into the 5th grade.
                Janey: Yeah, it’s more fun to be out with people who aren’t just teachers and classmates too.
                Janey: By the way, I’m not working today. Wanna play together?
                + [Play Game with Janey] -> JaneyGame
                + [Don't play] -> NoGame
        
        = NoGame
            Janey: Oh, alright. I guess I'll see you around.
            + [ Return to Playground ] -> Playground
            
        = JaneyFriend
                Dana: Say… do you think you’ll ever try joining the school theatre, Janey? I was thinking of auditioning for a play next year…
                Janey: I could, but my mom’s YWCA theatre group is… better.
                Kimmy: I like seeing the plays at school. Can we be in one together, Dana?
                + [Answer] -> AnswerKimmy1
            = AnswerKimmy1
                Dana: I know, I wish we were in school together. But I’m at Cheverus, not Lincoln Elementary. I can’t be in a play at a school I don’t go to.
                Kimmy: Oh… are you at Cheverus too, Janey?
                Janey: Yes, I am. Both my parents went to Catholic school too.
                + [Kimmy seems unhappy] -> UnhappyKimmy
            = UnhappyKimmy
                Kimmy: I go to Lincoln Elementary School.
                Janey: You should audition for your school’s play, Kimmy. You’re cute so I bet you’d get a good part. Probably a love interest.
                Kimmy: ... A love interest?
                + [Why is Janey saying this!?!] -> CrazyJaney
            = CrazyJaney
                Janey: Cute girls usually get cast as love interests. You know, like a Juliet. Or a Tzeitel.
                Kimmy: I wouldn’t want a big part… or a… a love part...
                + [Change conversation] -> ConversationChange
            = ConversationChange
                Dana: Me neither! I think I’d get stage fright normally, but especially if I had to be romantic with some boy.
                Janey: The romantic parts are the most fun--you might even get to do a stage kiss.
                Kimmy: Maybe theatre isn’t fun after all…
                + [ Did Janey crush her dreams? ] -> CrushDreams
            = CrushDreams
                Janey: Kimmy, it is! I know you’re… a bit of a loner, so it’d probably be good for you to do theatre. You’d learn how to be more social.
                + [ Defend Kimmy ] -> KimmyDefend
            = KimmyDefend
                Dana: Kimmy’s not a loner! You're making lots of friends today, right Kimmy? We’re going to play with everyone!
                Kimmy: ...yes.
                Dana: Also, it’s ok to want to be alone sometimes. But, everyone needs friends.
                + [Kimmy doesn't know what to say...] -> KimmyConfused
            = KimmyConfused
                Kimmy: I don’t… know. Maybe.
                Janey: Hah! You want friends, Kimmy. All kids do.
                Kimmy: Not everyone is nice though...
                Janey: I just think it’s sad to be a loner, so…
                + [Kimmy is upset] -> UpsetKimmy1
            = UpsetKimmy1
                Kimmy: ...
                + [ This is an awkward silence] -> AwkwardSilence
            = AwkwardSilence
                Janey: …well if you ever want to do some theatre, just let me know.
                Janey: Or just get a job when you’re a bit older, I guess. You won’t be lonely if you’re working hard.
                Kimmy: Ok…
                + [ Return to Playground ] -> Playground
            
        = JaneyGame
                Dana: That’s it! Good job Janey, you picked that up fast!
                Janey: My dad says I’m a fast learner. I can even beat Anthony at Tic Tac Toe sometimes.
                + [Kimmy seems upset] -> UpsetKimmy
            = UpsetKimmy
                Kimmy: I don’t think I’m a fast learner...
                Dana: I think you are! You’re great, Kimmy.
                Janey: Don’t worry, you’re sharper than Jimmy at the very least…
                Kimmy: Oh...
                + [Reprimand Janey] -> Reprimand
            = Reprimand
                Dana: That’s not very nice, Janey.
                Janey: You’re so little, Kimmy, it’s ok. You have time. Get a job like Dana and I and you’ll feel smarter in no time.
                Kimmy: I want to be smart and big like you two…
                + [ Slow Down ] -> SlowDown
            = SlowDown
                Dana: Let’s make you some friends first. You can worry about jobs later.
                Kimmy: Ok...
                + [ Return to Playground ] -> Playground
        
        
        
    // Linda's Dialogue
        = Linda
                Kimmy: Hi Linda... I haven’t seen you in a while.
                Linda: I went to visit my auntie right when school ended.
                + [Enter Conversation] -> ConversationEnter
            = ConversationEnter
                Dana: Hi, Linda. Do you know Kimmy?
                Linda: We’re neighbors.
                Kimmy: Did you go far away?
                Linda: Auntie’s in Boston.
                Kimmy: That sounds far...
                + [Reassure Kimmy] -> ReassureKimmy
            = ReassureKimmy
                Dana: It’s not so far. You can even ride your bike there. Sometimes my sisters and I go. We like to go explore all the clothes shops. Like Filene's.
                Linda: I don’t really go shopping, unless it’s for stuffed animals.
                Kimmy: Dana is babysitting me, so she can go shopping with the quarters my mom gives her!
                + [Kimmy is proud of me!] -> Proud
            = Proud
                Linda: Oh, having a job is good. When I’m a little older I want to get one at an animal shelter or something. I like playing with dogs.
                Kimmy: I love dogs.
                Dana: We’re looking for people to play games with. Want to play a game with us, Linda?
                Linda: I guess so. I was playing with Donna earlier, but I could play some more.
                + [ Play Game with Linda ] -> LindaGame
                + [ Leave to playground ] -> Playground
        
        = LindaGame
            Dana: We did it!
            Linda: I usually only play games with my dad or brothers, but that was fun.
            + [ Kimmy wants to say something! ] -> KimmySmile
            = KimmySmile
                Kimmy: Th--thanks for playing with us, Linda.
                Linda: I’m going to visit my auntie again in a few weeks, so I’ll see if maybe she’ll want to learn {3}... thanks for teaching it to me.
                + [Thank Linda] -> ThankLinda
            = ThankLinda
                Dana: Oh, thank you Linda. You’re a good student!
                Linda: I like to learn stuff. I’m glad it’s summer break though… we never get assigned anything fun in school. But my auntie gave me some biology books to read and it’s really fun.
                + [Kimmy seems confused] -> ConfusedKimmy
            = ConfusedKimmy
                Kimmy: What’s… biology?
                Linda: It’s about studying living stuff like plants and animals, and people sometimes too.
                Dana: I hope I get to take biology soon. I like math and science classes a lot.
                Kimmy: If I could study dogs, I think I’d be happy...
                -> Playground
            
        = LindaFriend
            Dana: Where does your auntie do her biology stuff?
            Linda: She works with animals at Stoneham Zoo.
            + [ Express Enthusiasm ] -> ExpressEnthusiasm
            = ExpressEnthusiasm
                Dana: Whoa! That place is amazing!
                Kimmy: What’s a zoo?
                Linda: You’ve really never been to a zoo, Kimmy?
                Kimmy: No…
                + [Answer Kimmy] -> AnswerKimmy
            =AnswerKimmy
                Dana: It’s ok, Kimmy. A zoo is a place where you can see wild animals. Like elephants and stuff.
                Kimmy: I thought that’s what a circus was?
                Linda: Animals in a circus are more like performers. They do tricks and stuff.
                Linda: Animals in a zoo are studied by scientists, like my aunt.
                + [Express Concern] -> ExpressConcern
            = ExpressConcern
                Dana: I think I’d get a little nervous around the bigger animals. I’d want to work with the small ones--like penguins.
                Linda: She loves it. But she’s stressed a lot too. She’s working on her degree in Biology right now at college and she’s really busy.
                + [Kimmy seems really excited] -> KimmyResponse
            = KimmyResponse
                Kimmy: Your auntie sounds amazing… I don’t even know what I want to do when I grow up.
                Linda: My auntie told me not to pick my career until I’m older, because I might find something else I like to do in high school. But I think I’ll still want to work with animals like she does.
                + [Get into the conversation] -> GetIntoConversation
            = GetIntoConversation
                Dana: My dad is an engineer, so sometimes I think that would be an interesting job, but I like a lot of other things too. I love fashion.
                Kimmy: I like… candy. I wonder if I can make candy when I grow up…
                Linda: Auntie says I can do anything, so I bet you can make candy. That’s someone’s job somewhere.
                + [Share Dream] -> ShareDream
            = ShareDream
                Dana: Actually, I think I want to be a mom.
                Kimmy: I love moms.
                Linda: I want to be a dog mom.
                + [Express an Incorrect Opinion] -> ExpressIncorrectOpinion
            = ExpressIncorrectOpinion
                Dana: I’m afraid of dogs…
                Linda: Dogs are just as afraid of you. If you’re nice to them, you have nothing to worry about.
                Dana: What if one is chasing me?
                Linda: If a dog chases me, I stop and pet it.
                + [Kimmy has an opinion] -> KimmyOpinion
            = KimmyOpinion
                Kimmy: There’s no mean dogs...
                Dana: I got chased once and had to climb a tree to escape… I guess I’ll try petting next time.
                -> Playground


=== Downtown ===
Downtown is always bustling with so many people. Who should we talk with first?

    + [Talk to Comic Boy] -> Comic_Boy
    + [Talk to Excited Girl] -> Excited_Girl
    + [Talk to Scarf Man] -> Scarf_Man
    + [Go back to Map] -> Map_Selection
    = Comic_Boy
        This person doesn't want to talk to you right now. Maybe you should go to another part of town.
        -> Downtown

    = Excited_Girl
        This person doesn't want to talk to you right now. Maybe you should go to another part of town.
        -> Downtown
        

    = Scarf_Man
        This person doesn't want to talk to you right now. Maybe you should go to another part of town.
        -> Downtown
        

=== Home ===
You arrive back home. I wonder if Mom is cooking anything yummy! You can see a few people mulling about.

    + [Talk to Mom] -> Dana_Mom
    + [Talk to Harvey] -> Harvey
    + [Go back to Map] -> Map_Selection
    = Dana_Mom
          This person doesn't want to talk to you right now. Maybe you should go to another part of town.
        -> Home
    
    = Harvey
        This person doesn't want to talk to you right now. Maybe you should go to another part of town.
        -> Home

