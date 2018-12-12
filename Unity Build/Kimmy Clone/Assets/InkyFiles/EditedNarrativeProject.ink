

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

        ~ dana = 0
        ~ kimmy = 3
        ~ speak = 1
        ~ encounter = 0
        ~ encounterchange = 0
        You have found a friend in town. 
        ~ kimmy = 1
        ~ encounterchange = 1
        Her name is Dana! 
        ~ dana = 1
        She wants to hang out with you!
        ~ kimmy = 2
        ~ dana = 2
        + [Let's go to the playground!]

        -> Playground
        
    
=== Playground ===
    ~ encounter = 1
    ~ encounterchange = 0
    ~ dana = 1
    ~ kimmy = 1
    ~ blythe = 0
    ~ linda = 0
    ~ janey = 0
    ~ speak = 5
The playground is always exciting! 
    ~ encounterchange = 1
Who should we talk to?

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
                     ~ speak = 1 
                    
                    // Kimmy: 
                            P-please go away... 
                            ~ encounterchange = 1
                            ~ speak = 0
                    // Dana: 
                            ~ dana = 3
                            ~ speak = 0
                            Blythe, knock it off! 
                            ~ dana = 4
                            I’m a babysitter so you can’t bug me anymore, got it? 
                    
                    // Blythe: 
                            ~ speak = 2
                            ~ dana = 3
                            ~ blythe = 2
                            Poor Dana. Poor Kimmy. 
                            ~ blythe = 3
                            You can’t get away from me! 
                            ~ blythe = 2
                            I’m the bicycle lord.
                            ~ blythe = 1
                            I’ll only stop following you if you play a game with me. 
                    // Dana: 
                            ~ dana = 4
                            ~ speak = 0
                            No.
                    // Blythe: 
                            ~ speak = 2
                            ~ blythe = 2
                            Yes.
                    // Dana: 
                            ~ dana = 3
                            ~ speak = 0
                            Fine.
                    // Blythe: 
                            ~ blythe = 2
                            ~ speak = 2
                            That’s right.
                    + [And so we played a game] -> BlytheGame
            
        === BlytheFriend ===
                    ~ dana = 1
                    ~ kimmy = 1
                    ~ blythe = 2
                    ~ encounter = 2
                    ~ encounterchange = 0
                    
                    // Kimmy: 
                            ~ speak = 1
                            I didn’t know bullies liked games.
                            ~ encounterchange = 1
                    // Blythe: 
                            ~ speak = 2 
                            ~ blythe = 3
                            ~ dana = 3
                            ~ kimmy = 3
                            Shut up, Kimmy.
                            ~ blythe = 1
                            I’m not thaaaat evil.
                            I found a newt this morning and slipped it into Janey’s purse... 
                            but I could have dropped it down her dress… 
                            ~ blythe = 2
                            ...but I’m nice, I wouldn’t do that.
                     
                    // Dana: 
                            ~ speak = 0
                            ~ blythe = 1
                            That’s… neither of those options are nice, Blythe.
                    // Blythe: 
                          
                            ~ speak = 2
                            ~ blythe = 2
                            I just like to mess with girls. 
                            ~ blythe = 1
                            But I take games seriously.
                            ~ blythe = 3
                            So you better play with me some more, you little brat.
                    // Dana: 
                            ~ dana = 4
                            ~ speak = 0
                            Don’t talk that way to Kimmy!
                            You’re mean to girls. I’ve seen you chasing girls around the neighborhood
                               ~ blythe = 1
                            It’s bad and you’re going to get in trouble with the adults
                    // Blythe: 
                             ~ blythe = 2
                            ~ speak = 2
                            Quiet Kimmy alone and tied up on the porch.. 
                            ~ dana = 3
                            How much did you pay Dana to be your friend anyways?
                    // Kimmy: 
                            ~ kimmy = 4
                            ~ speak = 1
                            I don’t have any friends.
                    // Dana: 
                            ~ dana = 2
                            ~ kimmy = 3
                            ~ speak = 0
                            ~ blythe = 1
                            I’m her friend and babysitter, but it’s none of your business anyways.
                    // Kimmy: 
                            ~ speak = 1
                            ...
                    // Dana: 
                            ~ speak = 0
                            ~ dana = 3
                            Don’t be mean to Kimmy, or I’ll really get mad. 
                            ~ dana = 4
                            I’ll… tell your mom that you were being rude!
                            
                    // Blythe: 
                            ~ dana = 3
                            ~ blythe = 2
                            ~ speak = 2
                            Haha, yeah right.
                            I’ll be nice but only if you and Kimmy play more games with me.
                    // Dana: 
                            ~ dana = 4
                            ~ speak = 0
                            ~ blythe = 1
                            Uh, no. 
                            We might play games with you, but not just so you’ll be nice. 
                            Maybe we can teach you some manners.
                            ~ blythe = 2
                            ~ speak = 2
                            I’m gonna win, win, win!
                    + [ To the Playground ] -> Playground
            
            
        === BlytheGame ===
                     ~ encounter = 5
                     ~ dana = 1
                     ~ kimmy = 2
                     ~ blythe = 2
                     ~ encounterchange = 0
                    ~ speak = 2
                    
                    // Blythe: 
                            I love that game. Haha, what a rush.
                            ~ encounterchange = 1
                    // Dana: 
                           
                            ~ dana = 2
                            ~ speak = 0
                            Well… that was nice. 
                           
                            ~ dana = 1
                            ~ blythe = 1
                            I’m surprised you hadn’t played before though, Blythe.
                            You always brag about how good you are at games, and how you know so many.
                    // Kimmy: 
                            
                            ~ kimmy = 2
                            ~ speak = 1
                            I wanna know more games than Blythe!
                    // Dana: 
                            
                            ~ dana = 2
                            ~ speak = 0
                            Haha, that’s the spirit!
                    // Blythe: 
                            ~ blythe = 3
                            ~ speak = 2
                            Pfft. Good luck. 
                            ~ blythe = 1
                            I’m gonna go catch bugs later. That’s better than games.
                            
                    + [ To the Playground ] -> Playground
            
            
    
    // Janey's Dialogue
        === Janey ===
                ~ encounter = 3
                ~ encounterchange = 0
                ~ kimmy = 1
                ~ janey = 1
                
                // Dana: 
                        ~ speak = 0
                        ~ dana = 1
                        Hey Janey, how are you? 
                        ~ encounterchange = 1
                // Janey: 
                        ~ speak = 3
                        ~ dana = 1
                        ~ kimmy = 3
                        You know the Grenada movie theatre? 
                        ~ janey = 2
                        I got a summer job there. 
                        ~ janey = 1
                        I started last week.
                // Kimmy: 
                        ~ speak = 1
                        ~ kimmy = 1
                        Wow… my mom took me there once...
                // Janey: 
                        ~ speak = 3
                        ~ janey = 2
                        What did you see? 
                        I go to the movies a lot, so I bet I saw it too.
                // Kimmy: 
                        Oh… we saw the movie with the… 
                        ~ speak = 1
                        ~ kimmy = 3
                        ~ janey = 1
                        Oh… we saw the movie with the… 
                        Uh... the fairy godmother and the shoe…
                // Janey: 
                        ~ speak = 3
                        ~ janey = 2
                        ~ kimmy = 1
                        Cinderella?
                // Kimmy: 
                        ~ kimmy = 2
                        ~ speak = 1
                        ~ dana = 2
                        ~ janey = 1
                        Yeah... and we saw Mary Poppins.
                // Janey: 
                        ~ speak = 3
                        ~ janey = 2
                        ~ dana = 1
                        ~ kimmy = 1
                        I saw that at The Grenada too. 
                        It was so great.
                // Dana: 
                        ~ speak = 0
                        ~ janey = 1
                        ~ dana = 2
                        If we go see a movie there, where would we find you?
                // Janey: 
                        ~ speak = 3
                        ~ dana = 1
                        I’m at the snack counter, but I’m too little to be a cashier.
                        ~ janey = 3
                        I’m helping make popcorn… just until I’m old enough to do something more serious.
                // Kimmy: 
                        ~ speak = 1
                        ~ kimmy = 2
                        ~ janey = 1
                        ~ dana = 2
                        I love popcorn!
                // Janey: 
                        ~ speak = 3
                        ~ janey = 1
                        ~ dana = 1
                        ~ kimmy = 1
                        Yeah, it’s pretty awesome to be at the snack counter. 
                        ~ janey = 2
                        I love popcorn. I can have free soda whenever I want, too.
                // Dana:
                        ~ speak = 0
                        ~ janey = 1
                        I also have a summer job!
                        ~ dana = 2
                        I’m babysitting Kimmy! 
                        I wasn’t planning on working, but I think it’s great.
                // Janey: 
                        ~ speak = 3
                        ~ dana = 1
                        My mom said a summer job is important.
                         ~ janey = 2
                        I didn’t want her to think I was lazy, and I love movies!
                         ~ janey = 1
                        So I got my cousin to help me get the job. He sells tickets there.
                // Dana: 
                        ~ speak = 0
                        ~ dana = 2
                        I’m glad I won’t be lazy this summer.
                         ~ dana = 1
                        I think I’m getting too old to be lazy. I mean, I’m going into the 5th grade.
                // Janey: 
                        ~ speak = 3
                        Yeah, it’s more fun to be out with people who aren’t just teachers and classmates too.
                         ~ janey = 2
                        By the way, I’m not working today. Wanna play together?
                + [Play Game with Janey] -> JaneyGame
                + [I don't want to play] -> NoGame
        
            = NoGame
                // Janey: 
                        ~ speak = 3
                        ~ janey = 3
                        Oh, alright. I guess I'll see you around.
                // Dana: 
                        ~ speak = 0
                        ~ dana = 1
                        ~ kimmy = 1
                         Bye!
                // Kimmy: 
                        ~ speak = 1
                        Bye!
                    
                + [ To the Playground ] -> Playground



        === JaneyFriend ===
                ~ encounter = 5
                ~ dana = 2
                ~ speak = 0
                ~ kimmy = 1
                ~ janey = 1
                 ~ encounterchange = 0
                 
                // Dana: 
                        Say… do you think you’ll ever try joining the school theatre, Janey? 
                        ~ encounterchange = 1
                        ~ dana = 3
                        I was thinking of auditioning for a play next year…
                // Janey: 
                        ~ speak = 3
                        ~ dana = 1
                        I could, but my mom’s YWCA theatre group is… better.
                // Kimmy: 
                        ~ speak = 1
                        ~ kimmy = 2
                        ~ dana = 2
                        I like seeing the plays at school. 
                        Can we be in one together, Dana?
                // Dana: 
                        ~ speak = 0
                        ~ dana = 2
                        I know, I wish we were in school together. 
                        ~ dana = 1
                        ~ kimmy = 3
                        But I’m at Cheverus, not Lincoln Elementary. 
                        ~ dana = 3
                        I can’t be in a play at a school I don’t go to.
                // Kimmy: 
                        ~ speak = 1
                        ~ kimmy = 1
                        ~ dana = 1
                        Oh… are you at Cheverus too, Janey?
                // Janey: 
                        ~ janey = 2
                        ~ speak = 3
                        ~ kimmy = 3
                        Yes, I am. Both my parents went to Catholic school too.
                // Kimmy: 
                        ~ speak = 1
                        ~ kimmy = 1
                        ~ janey = 1
                        I go to Lincoln Elementary School.
                // Janey: 
                        ~ speak = 3
                        ~ janey = 2
                        ~ kimmy = 2
                        ~ dana = 2
                        You should audition for your school’s play, Kimmy. 
                        ~ janey = 1
                        You’re cute so I bet you’d get a good part. 
                        ~ kimmy = 1
                        ~ janey = 2
                        ~ dana = 3
                        Probably a love interest.
                // Kimmy: 
                        ~ kimmy = 3
                        ~ janey = 1
                        ~ speak = 1
                        ... A love interest?
                // Janey: 
                        ~ speak = 3
                        ~ janey = 2
                        ~ kimmy = 1
                        ~ dana = 1
                        Cute girls usually get cast as love interests. 
                        ~ janey = 1
                        You know, like a Juliet. Or a Tzeitel.
                // Kimmy: 
                        ~ kimmy = 3
                        ~ speak = 1
                        I wouldn’t want a big part… or a… a love part...
                // Dana: 
                        ~ speak = 0
                        ~ kimmy = 1
                        ~ dana = 3
                        Me neither! 
                        I think I’d get stage fright normally, but especially if I had to be romantic with some boy.
                // Janey: 
                        ~ janey = 2
                        ~ speak = 3
                        ~ dana = 1
                        The romantic parts are the most fun
                        You might even get to do a stage kiss.
                // Kimmy: 
                        ~ kimmy = 3
                        ~ janey = 1
                        ~ speak = 1
                        ~ dana = 3
                        Maybe theatre isn’t fun after all…
                // Janey: 
                        ~ speak = 3
                        ~ janey = 2
                        ~ dana = 1
                        Kimmy, it is! 
                        ~ kimmy = 1
                        ~ janey = 3
                        I know you’re… a bit of a loner, so it’d probably be good for you to do theatre. 
                        ~ kimmy = 3
                        ~ janey = 2
                        You’d learn how to be more social.
                // Dana: 
                        ~ speak = 0
                        ~ dana = 4
                        ~ janey = 3
                        Kimmy’s not a loner! 
                        ~ kimmy = 1
                        ~ dana = 2
                        You're making lots of friends today, right Kimmy? 
                        We’re going to play with everyone!
                // Kimmy: 
                        ~ kimmy = 3
                        ~ speak = 1
                        ~ dana = 1
                        ...yes.
                // Dana: 
                        ~ speak = 0
                        ~ dana = 2
                        ~ janey = 1
                        Also, it’s ok to want to be alone sometimes. 
                        ~ kimmy = 1
                        ~ dana = 1
                        But, everyone needs friends.
                // Kimmy: 
                        ~ speak = 1
                        I don’t… know. Maybe.
                // Janey: 
                        ~ speak = 3
                        ~ janey = 2
                        Hah! You want friends, Kimmy. All kids do.
                // Kimmy:
                        ~ janey = 1
                        ~ speak = 1
                        Not everyone is nice though...
                // Janey: 
                        ~ speak = 3
                        ~ janey = 3
                        ~ dana = 3
                        I just think it’s sad to be a loner, so…
                // Kimmy: 
                        ~ speak = 5
                        ~ kimmy = 3
                        ...
                + [Someone... please talk..] -> AwkwardSilence
            
            = AwkwardSilence
                // Janey: 
                        ~ speak = 3
                        ~ dana = 1
                        …well if you ever want to do some theatre, just let me know.
                        ~ kimmy = 1
                        ~ janey = 1
                        Or just get a job when you’re a bit older, I guess. 
                        ~ janey = 2
                        You won’t be lonely if you’re working hard.
                // Kimmy: 
                        ~ speak = 1
                        ~ kimmy = 3
                        Ok…
                + [ Let's head back to the Playground ] -> Playground
            
            
        === JaneyGame ===
                ~ encounter = 5
                ~ dana = 2
                ~ speak = 0
                ~ kimmy = 2
                ~ janey = 2
                 ~ encounterchange = 0
                 
                // Dana: 
                        That’s it! Good job Janey, you picked that up fast!
                        ~ encounterchange = 1
                // Janey:
                        ~ dana = 1
                        ~ kimmy = 1
                        ~ speak = 3
                        My dad says I’m a fast learner. 
                        I can even beat Anthony at Tic Tac Toe sometimes.
                // Kimmy: 
                        ~ kimmy = 3
                        ~ dana = 3
                        ~ janey = 3
                        ~ speak = 1
                        I don’t think I’m a fast learner...
                // Dana: 
                        ~ dana = 2
                        ~ janey = 1
                        ~ kimmy = 1
                        ~ speak = 0
                        I think you are! You’re great, Kimmy.
                // Janey: 
                        ~ dana = 1 
                        ~ janey = 2
                        ~ speak = 3
                        Don’t worry, you’re sharper than Jimmy at the very least…
                // Kimmy: 
                        ~ speak = 1
                        ~ kimmy = 3
                        ~ dana = 3
                        ~ janey = 1
                        Oh...
                // Dana: 
                        ~ speak = 0
                        ~ janey = 3
                        ~ dana = 4
                        That’s not very nice, Janey.
                // Janey: 
                        ~ speak = 3
                        ~ janey = 1
                        ~ dana = 3
                        ~ kimmy = 1
                        You’re so little, Kimmy, it’s ok. You have time. 
                        ~ janey = 2
                        Get a job like Dana and I and you’ll feel smarter in no time.
                // Kimmy: 
                        ~ kimmy = 3
                        ~ janey = 1
                        ~ dana = 1
                        ~ speak = 1
                        I want to be smart and big like you two…
                // Dana: 
                        ~ speak = 0
                        ~ dana = 2
                        Let’s make you some friends first. You can worry about jobs later.
                // Kimmy: 
                        ~ speak = 1
                        ~ kimmy = 2
                        ~ janey = 2
                        Ok...
                + [ Let's head back to the Playground ] -> Playground
        
        
        
        
        
    // Linda's Dialogue
        === Linda ===
                ~ encounter = 4
                ~ dana = 1
                ~ kimmy = 2
                ~ linda = 1
                ~ speak = 1
                 ~ encounterchange = 0
                 
                // Kimmy: 
                        Hi Linda... I haven’t seen you in a while.
                        ~ encounterchange = 1
                // Linda: 
                        ~ speak = 4
                        ~ linda = 3
                        I went to visit my auntie right when school ended.
                // Dana: 
                        ~ speak = 0
                        ~ dana = 2
                        Hi, Linda. Do you know Kimmy?
                // Linda: 
                        ~ speak = 4
                        ~ linda = 1
                        ~ kimmy = 3
                        ~ dana = 1
                        We’re neighbors.
                // Kimmy: 
                        ~ speak = 1
                        ~ kimmy = 1
                        Did you go far away?
                // Linda: 
                        ~ speak = 4
                        Auntie’s in Boston.
                // Kimmy: 
                        ~ speak = 1
                        ~ kimmy = 3
                        That sounds far...
                // Dana: 
                        ~ speak = 0
                        It’s not so far. You can even ride your bike there. 
                        ~ kimmy = 1
                        Sometimes my sisters and I go. 
                        ~ dana = 2
                        We like to go explore all the clothes shops. Like Filene's.
                // Linda: 
                        ~ speak = 4
                        ~ dana = 1
                        ~ linda = 2
                        I don’t really go shopping, unless it’s for stuffed animals.
                // Kimmy: 
                        ~ speak = 1
                        ~ kimmy = 2
                        ~ linda = 1
                        Dana is babysitting me, so she can go shopping with the quarters my mom gives her!
                // Linda: 
                        ~ speak = 4
                        Oh, having a job is good. 
                        ~ kimmy = 1
                        ~ dana = 2
                        When I’m a little older I want to get one at an animal shelter or something. 
                        ~ linda = 2
                        I like playing with dogs.
                // Kimmy: 
                        ~ speak = 1
                        ~ dana = 1
                        ~ kimmy = 2
                        ~ linda = 1
                        I love dogs.
                // Dana:
                        ~ speak = 0
                        ~ dana = 2
                        ~ kimmy = 1
                        We’re looking for people to play games with. 
                        ~ kimmy = 2
                        ~ dana = 1
                        Want to play a game with us, Linda?
                // Linda: 
                        ~ speak = 4
                        ~ kimmy = 1
                        I guess so. 
                        ~ dana = 2
                        ~ kimmy = 2
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
                        ~ encounterchange = 1
                // Linda: 
                        ~ speak = 4
                        ~ linda = 2
                        ~ dana = 2
                        I usually only play games with my dad or brothers, but that was fun.
                // Kimmy: 
                        ~ speak = 1
                        ~ linda = 1
                        ~ kimmy = 3
                        Th--thanks for playing with us, Linda.
                // Linda: 
                        ~ speak = 4
                        ~ linda = 2
                        ~ dana = 1
                        I’m going to visit my auntie again in a few weeks, so I’ll see if maybe she’ll want to learn this game!
                        ~ linda = 3
                        ~ kimmy = 1
                        ... thanks for teaching it to me.
                // Dana: 
                        ~ speak = 0
                        ~ linda = 1
                        Oh, thank you Linda. You’re a good student!
                // Linda: 
                        ~ speak = 4
                        ~ linda = 2
                        I like to learn stuff. 
                        ~ linda = 1
                        I’m glad it’s summer break though… we never get assigned anything fun in school. 
                        ~ linda = 2
                        But my auntie gave me some biology books to read and it’s really fun!
                // Kimmy: 
                        ~ kimmy = 3
                        ~ speak = 1
                        What’s… biology?
                // Linda: 
                       ~ linda = 1
                       ~ kimmy = 1
                        ~ speak = 4
                         It’s about studying living stuff like plants and animals, and people sometimes too.
                // Dana: 
                        ~ dana = 1
                        ~ speak = 0
                        I hope I get to take biology soon. 
                        ~ dana = 2
                        ~ linda = 2
                        I like math and science classes a lot.
                // Kimmy: 
                        ~ kimmy = 2
                        ~ speak = 1
                        If I could study dogs, I think I’d be happy...
                + [Let's head back to the Playground] -> Playground


        === LindaFriend ===
                ~ encounter = 4
                ~ dana = 1
                ~ kimmy = 1
                ~ linda = 3
                ~ speak = 0
                 ~ encounterchange = 0
                 
                // Dana: 
                    Where does your auntie do her biology stuff?
                    ~ encounterchange = 1
                // Linda: 
                    ~ linda = 1
                    ~ speak = 4
                    She works with animals at Stoneham Zoo.
                // Dana: 
                    ~ dana = 2
                    ~ speak = 0
                    Whoa! That place is amazing!
                // Kimmy: 
                    ~ dana = 1
                    ~ kimmy = 2
                    ~ speak = 1
                    What’s a zoo?
                // Linda: 
                    ~ kimmy = 1
                    ~ speak = 4
                    You’ve really never been to a zoo, Kimmy?
                // Kimmy: 
                    ~ speak = 1
                    ~ kimmy = 3
                    No…
                // Dana: 
                    ~ dana = 2
                    ~ speak = 0
                    It’s ok, Kimmy. A zoo is a place where you can see wild animals. 
                    Like elephants and stuff.
                // Kimmy: 
                    ~ kimmy = 1
                    ~ speak = 1
                    I thought that’s what a circus was?
                // Linda: 
                    ~ linda = 3
                    ~ speak = 4
                    ~ kimmy = 3
                    Animals in a circus are more like performers. They do tricks and stuff.
                    ~ linda = 1
                    Animals in a zoo are studied by scientists, like my aunt.
                // Dana: 
                    ~ dana = 3
                    ~ speak = 0
                    I think I’d get a little nervous around the bigger animals.
                    ~ dana = 1
                    ~ kimmy = 1
                    I’d want to work with the small ones--like penguins.
                // Linda
                    ~ speak = 4
                    She loves it. 
                    ~ linda = 3
                    But she’s stressed a lot too. 
                    ~ dana = 3
                    ~ kimmy = 3
                    She’s working on her degree in Biology right now at college and she’s really busy.
                //  Kimmy: 
                    ~ kimmy = 2
                    ~ linda = 1
                    ~ dana = 1
                    ~ speak = 1
                    Your auntie sounds amazing… 
                    ~ kimmy = 3
                    I don’t even know what I want to do when I grow up.
                // Linda: 
                    ~ linda = 1
                    ~ speak = 4
                    My auntie told me not to pick my career until I’m older, because I might find something else I like to do in high school. 
                    ~ linda = 2
                    ~ kimmy = 1
                    But I think I’ll still want to work with animals like she does.
                // Dana: 
                    ~ linda = 1
                    ~ speak = 0
                    My dad is an engineer, so sometimes I think that would be an interesting job, but I like a lot of other things too. 
                    ~ dana = 2
                    I love fashion.
                // Kimmy: 
                    ~ kimmy = 2
                    ~ speak = 1
                    ~ dana = 1
                    I like… candy. 
                    ~ kimmy = 1
                    I wonder if I can make candy when I grow up…
                // Linda: 
                    ~ linda = 2
                    ~ speak = 4
                    Auntie says I can do anything, so I bet you can make candy. 
                    That’s someone’s job somewhere.
                // Dana: 
                    ~ dana = 2
                    ~ linda = 1
                    ~ speak = 0
                    Actually, I think I want to be a mom.
                // Kimmy: 
                    ~ kimmy = 2
                    ~ speak = 1
                    I love moms.
                // Linda: 
                    ~ linda = 2
                    ~ dana = 1
                    ~ speak = 4
                    I want to be a dog mom.
                // Dana: 
                    ~ dana = 3
                    ~ linda = 1
                    ~ kimmy = 1
                    ~ speak = 0
                    I’m afraid of dogs…
                // Linda: 
                    ~ linda = 3
                    ~ speak = 4
                    Dogs are just as afraid of you. 
                    ~ linda = 1
                    ~ dana = 1
                    If you’re nice to them, you have nothing to worry about.
                // Dana: 
                    ~ dana = 3
                    ~ speak = 0
                    What if one is chasing me?
                // Linda: 
                    ~ linda = 2
                    ~ speak = 4
                    If a dog chases me, I stop and pet it.
                // Kimmy: 
                    ~ linda = 1
                    ~ kimmy = 2
                    ~ speak = 1
                    ~ dana = 1
                    There’s no mean dogs...
                // Dana: 
                    ~ dana = 3
                    ~ speak = 0
                    I got chased once and had to climb a tree to escape… 
                    ~ dana = 2
                    I guess I’ll try petting next time.
                + [Let's head back to the Playground] 
                -> Playground
                
    === EndofDay ===
        ~ encounter = 6
        ~ speak = 1
         ~ encounterchange = 0
        We made friends with everyone! Hurray!
        ~ encounterchange = 1
        Press Escape to Restart! -> DONE
        
        
    // This is the end of the text adventure. I hope everyone had fun!