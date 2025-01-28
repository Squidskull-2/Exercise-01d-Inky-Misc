/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/

VAR time = -1 //  0 morning, 1 noon, 2 night

-> waking_up

== waking_up ==
You open your eyes and find yourself laying down in the middle of an empty town.
+ [Get up] -> center

== center ==
Looking upwards shows a dark expanse, but not of the sky. You can make out the structural supports of a roof through the help of small lights disguised as stars.
A nearby clocktower chimes, and as you look at it's face you can tell that it is { advance_time() }.
Surrounding you are several shops. Each has its own neon sign above the door showing the name of the shop.
{&|You see a handful of {not conversation:people|robots} walking around, oblivious to your confusion.|Several {not conversation:people|robots} are streaming throughout all the shops, whose neon signs are now brightly lit.}
+ [Approach the nearest shop] -> tinkers
+ {time > 0} [Talk to the {not conversation:people|robots}] -> conversation
* [Go back to sleep] -> sleep

== tinkers ==
As you get closer to the shop, you see the name of the shop is Tinkers.
{time == 0: It's empty inside, but you can vaguely make out some shapes of shelves. It's too dark to see what's on the shelves.}
{time != 0: With the help of the street lights, you can see inside. {time == 1: Nobody is there, but|People are moving in and out of the shop and} you can make out the shapes of screws, bolts, and mechanical tools on the shelves.}
+ [Go back to the center of town] -> center
+ {time != 0} [Enter Tinkers] -> in_tinkers

== in_tinkers ==
You enter Tinkers, and you hear a very loud and very quick "Meow!" 
Suddenly, a kitten wearing a yellow vest with the word "Twix" stitched into it runs up to you and stares at you.
You see someone's shadow moving behind one of the shelves, presumably the owner. 
Unless Twix is the owner of Tinkers.
+ [Call out to shadow] -> conversation
+ [Pet Twix] -> twix_happy
+ [Leave Tinkers] -> tinkers

== twix_happy ==
Twix lets out a little purr, making you feel happy inside.
So far Twix is the best thing to ever happen to you.
-> in_tinkers

== conversation ==
You try to talk to the {person|robot}, but they give no response.
{Upon further inspection, you discover that they aren't actually human, unlike you. They have televisions, radios, and other boxy electronic devices for heads. It confuses you greatly.|}
The robot twists a knob on (what you think is) its face, and an image of a smiley face appears on the screen.
It waves goodbye to you, and you move on with this new information.
+ [Continue trying to talk to the robot] -> conversation
+ [Head back to the center] -> center

== sleep ==
You decide to just go back to sleep so you don't have to deal with any of this anymore.
You lay down on the ground, close your eyes, and prepare to wake back up in your cozy bed.
+ [Dream] -> waking_up
+ [Don't dream] -> bed

== bed ==
You open your eyes and find yourself laying down in the middle of an empty town.
-> bed_cont

== bed_cont ==
Wait, no you don't!
You find yourself in your bed! Your cozy bed in your cozy home!
You're free!
-> twix_return

== twix_return ==
As you are filled with joy, you hear a meow.
You don't have a cat.
Suddenly, {in_tinkers:Twix|a kitten wearing a yellow vest with the word "Twix" stitched into it} jumps into your arms!
Twix is glad to be back with you.
But are you back home? Or somewhere that just seems like your home?
-> END

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }   
    
    {    
        - time == 0:
            ~ return "morning"
        
        - time == 1:
            ~ return "noon"
        
        - time == 2:
            ~ return "night"
    
    }
        
    ~ return time
    