// IntroScenario
        You have found a young child while wandering about town. You rush home to tell your mom the good news!
        //+ [Go Home]
        //-> Arriving_Home
        + [Let's go have fun at the playground!]
        -> Playground
        

= Playground 
The playground is always exciting! Ugh, it's the Bicycle queen.

    + {not BlytheGame} [Talk to Blythe] -> Blythe
    + {BlytheGame} [Talk to Blythe again] -> BlytheFriend
    
    + {not JaneyGame}[Talk to Janey] -> Janey
    + {JaneyGame}[Talk to Janey again] -> JaneyFriend
    
    + {not LindaGame}[Talk to Linda] -> Linda
    + {LindaGame}[Talk to Linda again] -> LindaFriend
    
    + {LindaGame}{JaneyGame}{BlytheGame} [Guess we made friends with everyone] -> Playground
    + [Go Home for the Day] -> Playground

    
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
                + [Let's return to the playground] 
                -> Playground