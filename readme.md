About
===

This is an old repo I wrote as part of a job interview many moons ago. It was actually pretty fun to write so I [blogged about](http://www.rickcarlino.com/xkcd287/) and made the repo public.

The Menu#get_combo method uses brute force to determine if there is a solution to the menu / budget constraint. It will solve the problem if:

1. The solution can be reached through repetition of items
2. The solution can be reached through combination of items

This works most of the time but will not work if the solution to the menu requires uses _both_ repetition and combination.

*How could I optimize this, you ask?* I could use a brute force combination checker that multiplies every item on the menu by an arbitrary value. This would take more processor power, but would allow for more solutions via combination.

How to run the script
===
0. Create a 'menu file', which is just a CSV file that has the desired price as the first line and name / price pairs seperated by commas. `sample1.txt` is a good example.
1. run 'bundle install'
2. run 'ruby main.rb' and enter the relative path of the menu file.

Other stuff
===
I had fun writing this challenge. It was more theoretical than anything I've come across in any of my day-to-day work and I learned a lot while I was writing it (particularly in reference to the knapsack problem, integer partitioning and np complete problems).

Thanks for taking the time to look it over.