

/* These variables will be used to keep track of character sprites
sprite1 refers to dana 
0: Empty
1: Neutral
2: Happy
3: Uncomfortable
4: Angry

sprite2 refers to kimmy 
0: Empty
1: Neutral
2: Happy
3: Uncomfortable
4: Crying

blythe 
0: Empty
1: Blythe Neutral
2: Blythe Happy
3: Blythe Angry

linda
0: Empty
1: Linda Neutral
2: Linda Happy
3: Linda Uncomfortable

janey
0: Empty
1: Janey Neutral
2: Janey Happy
3: Janey Uncomfortable

speak refers to whoever is speaking
0: Dana
1: Kimmy
2: Blythe
3: Janey
4: Linda
5: Nobody

encounter refers to what music / shaders to use 
0: Intro
1: playground
2: Blythe
3: Janey
4: Linda
5: Game
6: GameOver

encounterchange indicates whether or not an encounter is changing
0: Yes changing
1: No, not changing
*/

VAR dana = 0
VAR kimmy = 0
VAR blythe = 0
VAR linda = 0
VAR janey = 0
VAR speak = 0
VAR encounter = 0
VAR encounterchange = 0

        ~ dana = 2
        ~ kimmy = 2
        ~ encounter = 0
        ~ encounterchange = 0
        You have found a friend in town. 
        
        Her name is Dana! 
        
        She wants to hang out with you!
        + [Let's go to the playground!]
        -> Playground
        
    
=== Playground ===
The playground is always exciting! 
    ~ dana = 1
    ~ kimmy = 1
    ~ blythe = 0
    ~ linda = 0
    ~ janey = 0
    ~ speak = 5
    ~ encounter = 1
    ~ encounterchange = 0
    + {not BlytheGame} [Talk to Blythe] -> Blythe
    + {not BlytheFriend}{BlytheGame} [Talk to Blythe again] -> BlytheFriend
    
    + {not JaneyGame}[Talk to Janey] -> Janey
    + {not JaneyFriend}{JaneyGame}[Talk to Janey again] -> JaneyFriend
    
    + {not LindaGame}[Talk to Linda] -> Linda
    + {not LindaFriend}{LindaGame}[Talk to Linda again] -> LindaFriend
    
    + {LindaFriend}{JaneyFriend}{BlytheFriend} [Guess we made friends with everyone] -> EndofDay

    
    // Blythe's Dialogue
        === Blythe ===
                    ~ dana = 1
                    ~ kimmy = 3
                    ~ blythe = 1
                    ~ encounter = 2
                     ~ encounterchange = 0
                    
                    // Kimmy: 
                            P-please go away... 
                            ~ speak = 1 
                    + [ Dana stood up for me though ] -> SupportKimmy
                    
                = SupportKimmy
                    // Dana: 
                            Blythe, knock it off! 
                            ~ dana = 3
                            ~ speak = 0
                            ~ encounterchange = 1
                            I’m a babysitter so you can’t bug me anymore, got it? 
                            ~ dana = 4
                            + [...] -> BlytheMad
                    
                = BlytheMad
                        // Blythe: 
                            Poor Dana. Poor Kimmy. 
                            ~ dana = 3
                            ~ blythe = 2
                            ~ speak = 2
                            You can’t get away from me! 
                            ~ blythe = 3
                            I’m the bicycle lord.
                            ~ blythe = 2
                            I’ll only stop following you if you play a game with me. 
                            ~ blythe = 1
                    + [Dana seemed really unhappy] -> RefuseGame
                    
                = RefuseGame
                    // Dana: 
                            No.
                            ~ dana = 4
                            ~ speak = 0
                    // Blythe: 
                            Yes.
                            ~ speak = 2
                    // Dana: 
                            Fine.
                            ~ dana = 3
                            ~ speak = 0
                    // Blythe: 
                            That’s right.
                            ~ blythe = 2
                            ~ speak = 2
                    + [And so we played a game] -> BlytheGame
            
        === BlytheFriend ===
                    ~ dana = 1
                    ~ kimmy = 1
                    ~ blythe = 2
                    ~ encounter = 2
                     ~ encounterchange = 0
                    
                    // Kimmy: 
                            I didn’t know bullies liked games.
                            ~ speak = 1
                    // Blythe: 
                            Shut up, Kimmy.
                            ~ speak = 2 
                            ~ blythe = 3
                            ~ dana = 3
                            ~ kimmy = 3
                            I’m not thaaaat evil.
                            ~ blythe = 1
                            I found a newt this morning and slipped it into Janey’s purse... 
                            but I could have dropped it down her dress… 
                            ...but I’m nice, I wouldn’t do that.
                            ~ blythe = 2
                    + [That still sounded pretty mean...] -> ConfrontBlythe
                    
                = ConfrontBlythe
                    // Dana: 
                            That’s… neither of those options are nice, Blythe.
                            ~ speak = 0
                            ~ blythe = 1
                            ~ encounterchange = 1
                    // Blythe: 
                            I just like to mess with girls.  
                            ~ speak = 2
                            ~ blythe = 2
                            But I take games seriously.
                            ~ blythe = 1
                            So you better play with me some more, you little brat.
                            ~ blythe = 3
                    + [And then Dana stood up for me...] -> ProtectKimmy
                
                = ProtectKimmy
                    // Dana: 
                            Don’t talk that way to Kimmy!
                            ~ dana = 4
                            ~ speak = 0
                            You’re mean to girls. I’ve seen you chasing girls around the neighborhood
                            It’s bad and you’re going to get in trouble with the adults
                            ~ blythe = 1
                            + [ Is Blythe frowning? ] -> BlytheFrown
                
                = BlytheFrown
                    // Blythe: 
                            Quiet Kimmy alone and tied up on the porch.. 
                            ~ blythe = 2
                            ~ speak = 2
                            How much did you pay Dana to be your friend anyways?
                            ~ dana = 3
                    // Kimmy: 
                            I don’t have any friends.
                            ~ kimmy = 4
                            ~ speak = 1
                    + [ But then Dana said something really surprising... ] -> DeclareFriendship
                    
                = DeclareFriendship
                    // Dana: 
                            I’m her friend and babysitter, but it’s none of your business anyways.
                            ~ dana = 2
                            ~ kimmy = 3
                            ~ speak = 0
                            ~ blythe = 1
                    // Kimmy: 
                            ...
                    + [ It was like she knew me... ] -> FaceBlythe
                
                = FaceBlythe
                    // Dana: 
                            Don’t be mean to Kimmy, or I’ll really get mad. 
                            ~ dana = 3
                            I’ll… tell your mom that you were being rude!
                            ~ dana = 4
                    // Blythe: 
                            Haha, yeah right.
                            ~ dana = 3
                            ~ blythe = 2
                            ~ speak = 2
                            I’ll be nice but only if you and Kimmy play more games with me.
                    + [ I don't want to play games with her! ] -> Reject
                
                = Reject
                    // Dana: 
                            Uh, no. 
                            ~ dana = 4
                            ~ speak = 0
                            ~ blythe = 1
                            We might play games with you, but not just so you’ll be nice. 
                            Maybe we can teach you some manners.
                        + [ Yeah, she needs manners! ] -> BlytheManners
                = BlytheManners
                            I’m gonna win, win, win!
                            ~ blythe = 2
                            ~ speak = 2
                    + [ Let's head back to the Playground ] -> Playground
            
            
        === BlytheGame ===
                     ~ encounter = 5
                     ~ dana = 1
                     ~ kimmy = 2
                     ~ blythe = 1
                      ~ encounterchange = 0
                    Some time passes...
                    
                    // Blythe: 
                            I love that game. Haha, what a rush.
                            ~ blythe = 2
                            ~ speak = 2
                    + [Express Surprise] -> ExpressSurprise
                
                = ExpressSurprise 
                    // Dana: 
                            Well… that was nice. 
                            ~ dana = 2
                            ~ speak = 0
                            ~ encounterchange = 1
                            I’m surprised you hadn’t played before though, Blythe.
                            ~ dana = 1
                            ~ blythe = 1
                            You always brag about how good you are at games, and how you know so many.
                            
                    + [ It'd be really cool to know a lot of games] -> KnowGames
                = KnowGames
                    // Kimmy: 
                            I wanna know more games than Blythe!
                            ~ kimmy = 2
                            ~ speak = 1
                    + [ Support Kimmy ] -> SupportKimmy1
                    
                = SupportKimmy1
                    // Dana: 
                            Haha, that’s the spirit!
                            ~ dana = 2
                            ~ speak = 0
                    // Blythe: 
                            Pfft. Good luck. 
                            ~ blythe = 3
                            ~ speak = 2
                            I’m gonna go catch bugs later. That’s better than games.
                            ~ blythe = 1
                    + [ Let's head back to the Playground ] -> Playground
            
            
    
    // Janey's Dialogue
        === Janey ===
                ~ encounter = 3
                 ~ encounterchange = 0
                ~ dana = 1
                ~ kimmy = 1
                ~ janey = 1
                
                // Dana: 
                        Hey Janey, how are you? 
                        ~ speak = 0
                        ~ dana = 2
                // Janey: 
                        You know the Grenada movie theatre? 
                        ~ speak = 3
                        ~ dana = 1
                        ~ kimmy = 3
                        I got a summer job there. 
                        ~ janey = 2
                        I started last week.
                        ~ janey = 1
                + [Hey, I've been there] -> KimmyExcited
                
            = KimmyExcited
                // Kimmy: 
                        Wow… my mom took me there once...
                        ~ speak = 1
                        ~ kimmy = 1
                        ~ encounterchange = 1
                // Janey: 
                        What did you see? I go to the movies a lot, so I bet I saw it too.
                        ~ speak = 3
                        ~ janey = 2
                // Kimmy: 
                        Oh… we saw the movie with the… 
                        ~ speak = 1
                        ~ kimmy = 3
                        ~ janey = 1
                        Uh... the fairy godmother and the shoe…
                // Janey: 
                        Cinderella?
                        ~ speak = 3
                        ~ janey = 2
                        ~ kimmy = 1
                + [I saw another movie too!] -> KimmyConvo
            
            = KimmyConvo
                // Kimmy: 
                        Yeah... and we saw Mary Poppins.
                        ~ kimmy = 2
                        ~ speak = 1
                        ~ dana = 2
                        ~ janey = 1
                // Janey: 
                        I saw that at The Grenada too. 
                        ~ speak = 3
                        ~ janey = 2
                        ~ dana = 1
                        ~ kimmy = 1
                        It was so great.
                + [It's so cool that she works there] -> InquireJaney
                
            = InquireJaney
                // Dana: 
                        If we go see a movie there, where would we find you?
                        ~ speak = 0
                        ~ janey = 1
                        ~ dana = 2
                // Janey: 
                        I’m at the snack counter, but I’m too little to be a cashier. 
                        ~ speak = 3
                        ~ dana = 1
                        I’m helping make popcorn… just until I’m old enough to do something more serious.
                        ~ janey = 3
                // Kimmy: 
                        I love popcorn!
                        ~ speak = 1
                        ~ kimmy = 2
                        ~ janey = 1
                        ~ dana = 2
                + [Janey seems pretty proud of herself] -> JaneyProud
            
            = JaneyProud
                // Janey: 
                        Yeah, it’s pretty awesome to be at the snack counter. 
                        ~ speak = 3
                        ~ janey = 2
                        ~ dana = 1
                        I love popcorn. I can have free soda whenever I want, too.
                        
                        + [ Dana got excited! ] -> DanaExcited
            = DanaExcited
                // Dana: 
                        I also have a summer job!
                        ~ speak = 0
                        ~ janey = 1
                        I’m babysitting Kimmy! 
                        ~ dana = 2
                        I wasn’t planning on working, but I think it’s great.
                    + [I wish I had a job...] -> WishJob
            = WishJob
                // Janey: 
                        My mom said a summer job is important.
                        ~ speak = 3
                        ~ dana = 1
                        I didn’t want her to think I was lazy, and I love movies!
                        ~ janey = 2
                        So I got my cousin to help me get the job. He sells tickets there.
                        ~ janey = 1
                + [Dana is such a hard worker] -> NoLazy
                
            = NoLazy
                // Dana: 
                        I’m glad I won’t be lazy this summer. 
                        ~ speak = 0
                        ~ dana = 2
                        I think I’m getting too old to be lazy. I mean, I’m going into the 5th grade.
                        ~ dana = 1
                // Janey: 
                        Yeah, it’s more fun to be out with people who aren’t just teachers and classmates too.
                        ~ speak = 3
                        By the way, I’m not working today. Wanna play together?
                        ~ janey = 2
                + [Play Game with Janey] -> JaneyGame
                + [I don't want to play] -> NoGame
        
            = NoGame
                // Janey: 
                        Oh, alright. I guess I'll see you around.
                        ~ speak = 3
                        ~ janey = 3
                // Dana: 
                        Bye!
                        ~ speak = 0
                        ~ dana = 1
                        ~ kimmy = 1
                // Kimmy: 
                        Bye!
                        ~ speak = 1
                    
                + [ Let's head back to the Playground ] -> Playground



        === JaneyFriend ===
                ~ encounter = 5
                ~ dana = 1
                ~ kimmy = 1
                ~ janey = 1
                 ~ encounterchange = 0
                 
                // Dana: 
                        Say… do you think you’ll ever try joining the school theatre, Janey? 
                        ~ speak = 0
                        ~ dana = 2
                        I was thinking of auditioning for a play next year…
                        ~ dana = 3
                // Janey: 
                        I could, but my mom’s YWCA theatre group is… better.
                        ~ speak = 3
                        ~ dana = 1
                // Kimmy: 
                        I like seeing the plays at school. 
                        ~ speak = 1
                        ~ kimmy = 2
                        ~ dana = 2
                        Can we be in one together, Dana?
                + [I hope she says yes] -> AnswerKimmy1
                
            = AnswerKimmy1
                // Dana: 
                        I know, I wish we were in school together. 
                        ~ speak = 0
                        ~ dana = 2
                        ~ encounterchange = 1
                        But I’m at Cheverus, not Lincoln Elementary. 
                        ~ dana = 1
                        ~ kimmy = 3
                        I can’t be in a play at a school I don’t go to.
                        ~ dana = 3
                // Kimmy: 
                        Oh… are you at Cheverus too, Janey?
                        ~ speak = 1
                        ~ kimmy = 1
                        ~ dana = 1
                // Janey: 
                        Yes, I am. Both my parents went to Catholic school too.
                        ~ janey = 2
                        ~ speak = 3
                        ~ kimmy = 3
                + [That stinks] -> UnhappyKimmy
            
            = UnhappyKimmy
                // Kimmy: 
                        I go to Lincoln Elementary School.
                        ~ speak = 1
                        ~ kimmy = 1
                        ~ janey = 1
                // Janey: 
                        You should audition for your school’s play, Kimmy. 
                        ~ speak = 3
                        ~ janey = 2
                        ~ kimmy = 2
                        ~ dana = 2
                        You’re cute so I bet you’d get a good part. 
                        ~ janey = 1
                        Probably a love interest.
                        ~ kimmy = 1
                        ~ janey = 2
                        ~ dana = 3
                // Kimmy: 
                        ... A love interest?
                        ~ kimmy = 3
                        ~ janey = 1
                        ~ speak = 1
                + [Why is Janey saying this!?!] -> CrazyJaney
            
            = CrazyJaney
                // Janey: 
                        Cute girls usually get cast as love interests. 
                        ~ speak = 3
                        ~ janey = 2
                        ~ kimmy = 1
                        ~ dana = 1
                        You know, like a Juliet. Or a Tzeitel.
                        ~ janey = 1
                // Kimmy: 
                        I wouldn’t want a big part… or a… a love part...
                        ~ kimmy = 3
                        ~ speak = 1
                + [Agh god can she stop?] -> ConversationChange
            
            = ConversationChange
                // Dana: 
                        Me neither! 
                        ~ speak = 0
                        ~ kimmy = 1
                        ~ dana = 3
                        I think I’d get stage fright normally, but especially if I had to be romantic with some boy.
                // Janey: 
                        The romantic parts are the most fun--you might even get to do a stage kiss.
                        ~ janey = 2
                        ~ speak = 3
                        ~ dana = 1
                // Kimmy: 
                        Maybe theatre isn’t fun after all…
                        ~ kimmy = 3
                        ~ janey = 1
                        ~ speak = 1
                        ~ dana = 3
                + [ I don't want to kiss anyone... ] -> CrushDreams
            
            = CrushDreams
                // Janey: 
                        Kimmy, it is! 
                        ~ speak = 3
                        ~ janey = 2
                        ~ dana = 1
                        I know you’re… a bit of a loner, so it’d probably be good for you to do theatre. 
                        ~ kimmy = 1
                        ~ janey = 3
                        You’d learn how to be more social.
                        ~ kimmy = 3
                        ~ janey = 2
                + [ I'm not good at being "social" ] -> KimmyDefend
            
            = KimmyDefend
                // Dana: 
                        Kimmy’s not a loner! 
                        ~ speak = 0
                        ~ dana = 4
                        ~ janey = 3
                        You're making lots of friends today, right Kimmy? 
                        ~ kimmy = 1
                        ~ dana = 2
                        We’re going to play with everyone!
                // Kimmy: 
                        ...yes.
                        ~ kimmy = 3
                        ~ speak = 1
                        ~ dana = 1
                // Dana: 
                        Also, it’s ok to want to be alone sometimes. 
                        ~ speak = 0
                        ~ dana = 2
                        ~ janey = 1
                        But, everyone needs friends.
                        ~ kimmy = 1
                        ~ dana = 1
                + [ I don't know...] -> KimmyConfused
            
            = KimmyConfused
                // Kimmy: 
                        I don’t… know. Maybe.
                        ~ speak = 1
                // Janey: 
                        Hah! You want friends, Kimmy. All kids do.
                        ~ speak = 3
                        ~ janey = 2
                // Kimmy:
                        Not everyone is nice though...
                        ~ janey = 1
                        ~ speak = 1
                // Janey: 
                        I just think it’s sad to be a loner, so…
                        ~ speak = 3
                        ~ janey = 3
                        ~ dana = 3
                + [Am I sad?] -> UpsetKimmy1
                
            = UpsetKimmy1
                // Kimmy: 
                        ...
                        ~ speak = 5
                        ~ kimmy = 3
                + [Someone... please talk..] -> AwkwardSilence
            
            = AwkwardSilence
                // Janey: 
                        …well if you ever want to do some theatre, just let me know.
                        ~ speak = 3
                        ~ dana = 1
                        Or just get a job when you’re a bit older, I guess. 
                        ~ kimmy = 1
                        ~ janey = 1
                        You won’t be lonely if you’re working hard.
                        ~ janey = 2
                // Kimmy: 
                        Ok…
                        ~ speak = 1
                + [ Let's head back to the Playground ] -> Playground
            
            
        === JaneyGame ===
                ~ encounter = 5
                ~ dana = 2
                ~ kimmy = 2
                ~ janey = 2
                 ~ encounterchange = 0
                 
                // Dana: 
                        That’s it! Good job Janey, you picked that up fast!
                        ~ speak = 0
                // Janey: 
                        My dad says I’m a fast learner. 
                        ~ dana = 1
                        ~ kimmy = 1
                        ~ speak = 3
                        I can even beat Anthony at Tic Tac Toe sometimes.
                + [A... fast learner??] -> UpsetKimmy
            
            = UpsetKimmy
                // Kimmy: 
                        I don’t think I’m a fast learner...
                        ~ kimmy = 3
                        ~ dana = 3
                        ~ janey = 3
                        ~ speak = 1
                        ~ encounterchange = 1
                // Dana: 
                        I think you are! You’re great, Kimmy.
                        ~ dana = 2
                        ~ janey = 1
                        ~ kimmy = 1
                        ~ speak = 0
                // Janey: 
                        Don’t worry, you’re sharper than Jimmy at the very least…
                        ~ dana = 1 
                        ~ janey = 2
                        ~ speak = 3
                // Kimmy: 
                        Oh...
                        ~ speak = 1
                        ~ kimmy = 3
                        ~ dana = 3
                        ~ janey = 1
                + [That sounded kind of mean...] -> Reprimand
                
            = Reprimand
                // Dana: 
                        That’s not very nice, Janey.
                        ~ speak = 0
                        ~ janey = 3
                        ~ dana = 4
                // Janey: 
                        You’re so little, Kimmy, it’s ok. You have time. 
                        ~ speak = 3
                        ~ janey = 1
                        ~ dana = 3
                        ~ kimmy = 1
                        Get a job like Dana and I and you’ll feel smarter in no time.
                        ~ janey = 2
                // Kimmy: 
                        I want to be smart and big like you two…
                        ~ kimmy = 3
                        ~ janey = 1
                        ~ dana = 1
                        ~ speak = 1
                // Dana: 
                        Let’s make you some friends first. You can worry about jobs later.
                        ~ speak = 0
                        ~ dana = 2
                // Kimmy: 
                        Ok...
                        ~ speak = 1
                        ~ kimmy = 2
                        ~ janey = 2
                + [ Let's head back to the Playground ] -> Playground
        
        
        
        
        
    // Linda's Dialogue
        === Linda ===
                ~ encounter = 4
                ~ dana = 1
                ~ kimmy = 2
                ~ linda = 3
                 ~ encounterchange = 0
                 
                // Kimmy: 
                        Hi Linda... I haven’t seen you in a while.
                        ~ speak = 1
                        ~ encounterchange = 1
                // Linda: 
                        I went to visit my auntie right when school ended.
                        ~ speak = 4
                + [Then Dana said hi...] -> ConversationEnter
                
            = ConversationEnter
                // Dana: 
                        Hi, Linda. Do you know Kimmy?
                        ~ speak = 0
                // Linda: 
                        We’re neighbors.
                        ~ speak = 4
                // Kimmy: 
                        Did you go far away?
                        ~ speak = 1
                // Linda: 
                        Auntie’s in Boston.
                        ~ speak = 4
                // Kimmy: 
                        That sounds far...
                        ~ speak = 1
                + [She must travel a lot...] -> ReassureKimmy
            
            = ReassureKimmy
                // Dana: 
                        It’s not so far. You can even ride your bike there. 
                        ~ speak = 0
                        Sometimes my sisters and I go. 
                        We like to go explore all the clothes shops. Like Filene's.
                + [ Then Linda said...] -> LindaSaidd
            = LindaSaidd
                // Linda: 
                        I don’t really go shopping, unless it’s for stuffed animals.
                        ~ speak = 4
                // Kimmy: 
                        Dana is babysitting me, so she can go shopping with the quarters my mom gives her!
                        ~ speak = 1
                // Linda: 
                        Oh, having a job is good. 
                        ~ speak = 4
                        + [ Linda will speak her truth ] -> LindaTruth
                = LindaTruth
                        When I’m a little older I want to get one at an animal shelter or something. 
                        I like playing with dogs.
                // Kimmy: 
                        I love dogs.
                        ~ speak = 1
                        + [Lets play some games!] -> GameLinda
                = GameLinda
                // Dana:
                        We’re looking for people to play games with. 
                        ~ speak = 0
                        Want to play a game with us, Linda?
                // Linda: 
                        I guess so. 
                        ~ speak = 4
                        I was playing with Donna earlier, but I could play some more.
                + [ Play Game with Linda ] -> LindaGame
                + [ Let's head back to the Playground ] -> Playground
        
        
        
        === LindaGame ===
                ~ encounter = 5
                ~ dana = 1
                ~ kimmy = 2
                ~ linda = 3
                 ~ encounterchange = 0
                
                // Dana: 
                        We did it!
                        ~ speak = 0
                // Linda: 
                        I usually only play games with my dad or brothers, but that was fun.
                        ~ speak = 4
                + [ She actually played with me... ] -> KimmySmile
            
            = KimmySmile
                // Kimmy: 
                        Th--thanks for playing with us, Linda.
                        ~ speak = 1
                        ~ encounterchange = 1
                // Linda: 
                        I’m going to visit my auntie again in a few weeks, so I’ll see if maybe she’ll want to learn this game!
                        ~ speak = 4
                        ... thanks for teaching it to me.
                + [She thanked us...] -> ThankLinda
                
            = ThankLinda
                // Dana: 
                        Oh, thank you Linda. You’re a good student!
                        ~ speak = 0
                // Linda: 
                        I like to learn stuff. 
                        ~ speak = 4
                        I’m glad it’s summer break though… we never get assigned anything fun in school. 
                        But my auntie gave me some biology books to read and it’s really fun.
                + [What is.. biology?] -> ConfusedKimmy
            
            = ConfusedKimmy
                // Kimmy: 
                        What’s… biology?
                        ~ speak = 1
                // Linda: 
                        It’s about studying living stuff like plants and animals, and people sometimes too.
                        ~ speak = 4
                // Dana: 
                        I hope I get to take biology soon. 
                        ~ speak = 0
                        I like math and science classes a lot.
                // Kimmy: 
                        If I could study dogs, I think I’d be happy...
                        ~ speak = 1
                + [Let's head back to the Playground] -> Playground



        === LindaFriend ===
                ~ encounter = 4
                ~ dana = 1
                ~ kimmy = 2
                ~ linda = 3
                 ~ encounterchange = 0
                 
                // Dana: 
                    Where does your auntie do her biology stuff?
                    ~ speak = 0
                // Linda: 
                    She works with animals at Stoneham Zoo.
                    ~ speak = 4
                + [ A zoo? ] -> ExpressEnthusiasm
            
            = ExpressEnthusiasm
                // Dana: 
                    Whoa! That place is amazing!
                    ~ speak = 0
                    ~ encounterchange = 1
                // Kimmy: 
                    What’s a zoo?
                    ~ speak = 1
                // Linda: 
                    You’ve really never been to a zoo, Kimmy?
                    ~ speak = 4
                // Kimmy: 
                    No…
                    ~ speak = 1
                + [Dana answered my question] -> AnswerKimmy
                
            =AnswerKimmy
                // Dana: 
                    It’s ok, Kimmy. A zoo is a place where you can see wild animals. 
                    ~ speak = 0
                    Like elephants and stuff.
                // Kimmy: 
                    I thought that’s what a circus was?
                    ~ speak = 1
                // Linda: 
                    Animals in a circus are more like performers. They do tricks and stuff.
                    ~ speak = 4
                    Animals in a zoo are studied by scientists, like my aunt.
                + [Elephants are an animal] -> ExpressConcern
                
            = ExpressConcern
                // Dana: 
                    I think I’d get a little nervous around the bigger animals. 
                    ~ speak = 0
                    I’d want to work with the small ones--like penguins.
                + [ Linda seems excited! ] -> LindaExcited
            = LindaExcited
                    She loves it. 
                    ~ speak = 4
                    But she’s stressed a lot too. 
                    She’s working on her degree in Biology right now at college and she’s really busy.
                + [She sounds amazing...] -> KimmyResponse
                
            = KimmyResponse
                //  Kimmy: 
                    Your auntie sounds amazing… 
                    ~ speak = 1
                    I don’t even know what I want to do when I grow up.
                    + [ Linda is so confident ] -> LindaConfident
            = LindaConfident
                // Linda: 
                    My auntie told me not to pick my career until I’m older, because I might find something else I like to do in high school. 
                    ~ speak = 4
                    But I think I’ll still want to work with animals like she does.
                + [I wonder what my mom does...] -> GetIntoConversation
                
            = GetIntoConversation
                // Dana: 
                    My dad is an engineer, so sometimes I think that would be an interesting job, but I like a lot of other things too. 
                    ~ speak = 0
                    I love fashion.
                    + [ I like candy...] -> KimmyCandy
            = KimmyCandy
                // Kimmy: 
                    I like… candy. 
                    ~ speak = 1
                    I wonder if I can make candy when I grow up…
                // Linda: 
                    Auntie says I can do anything, so I bet you can make candy. 
                    ~ speak = 4
                    That’s someone’s job somewhere.
                + [And then Dana said something really shocking] -> ShareDream
                
            = ShareDream
                // Dana: 
                    Actually, I think I want to be a mom.
                    ~ speak = 0
                // Kimmy: 
                    I love moms.
                    ~ speak = 1
                // Linda: 
                    I want to be a dog mom.
                    ~ speak = 4
                + [Dana looked uncomfortable] -> ExpressIncorrectOpinion
                
            = ExpressIncorrectOpinion
                // Dana: 
                    I’m afraid of dogs…
                    ~ speak = 0
                // Linda: 
                    Dogs are just as afraid of you. 
                    ~ speak = 4
                    If you’re nice to them, you have nothing to worry about.
                    + [Dana seems worried] -> DanaWorried
                = DanaWorried
                // Dana: 
                    What if one is chasing me?
                    ~ speak = 0
                // Linda: 
                    If a dog chases me, I stop and pet it.
                    ~ speak = 4
                + [I love dogs...] -> KimmyOpinion
                
            = KimmyOpinion
                // Kimmy: 
                    There’s no mean dogs...
                    ~ speak = 1
                // Dana: 
                    I got chased once and had to climb a tree to escape… 
                    ~ speak = 0
                    I guess I’ll try petting next time.
                + [Let's head back to the Playground] 
                -> Playground
                
    === EndofDay ===
        ~ encounter = 6
         ~ encounterchange = 1
        We made friends with everyone! Hurray! -> DONE
        
        
        
        
        
        
    // This is the end of the text adventure. I hope everyone had fun!