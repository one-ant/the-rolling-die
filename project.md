This file is the high level specifications to describe what should be
developed, what has been developed, and considerations for how to
contribute and how to use this library.


We intend to define two classes:
* Die, representing an object consisting of numbered sides of which, upon rolling the die, one is selected. The die is intended to be equally weighted, so that the selection of a side is "entirely" random. We may have to distinguish between a die with an even number of sides and a die with an odd number of sides, and the distribution of values for the numbered sides. We could also wonder if the case of a die with sides marked with values other than numbers (attributes of a character, for instance) should be included.
* Dice (or DiceCup, or DiceRolls, tbd), representing a set of dice, as individually defined above. This set of variable size can be rolled a variable number of times.
** For each roll, it is possible to operate a selection among the resulting values (assuming that they are numbers, for now): out of x values, the max(y), min(y), or median(y) values. This will require user input.
** For each roll, it is also possible to "freeze" a number of dice, and reroll only some of them. This will also require user input.
