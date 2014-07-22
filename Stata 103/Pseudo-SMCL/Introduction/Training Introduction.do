/* {HEAD}{BR}
{BF}{IT}{UL}
(All pages have a header like the one above.
You can click it to return to the start page.)
{DEF}

{INTRO!}

The fact that we're using SMCL means that we can run commands from within the training files. For example: */

display "Hello world!"

/* Commands that are one line long are blue and clickable. Blocks and commands that are more than one line long are bold black,
and can be executed by clicking the blue "Click here to execute" below them. For example: */

foreach i of numlist 1/10 {
	display `i'
}

/* Further, you will see links like {help contents:this one} that
take you to different spots in the training, to help files, or to locations in a Stata manual.
These links work like those in an Internet browser,
so you can always press the Back button to return to your exact previous location.
Further, if you right-click on a link, you have the option to open it in a new tab or window.
Links to Stata manuals, such as {bf:{mansection U:[U] Stata User's Guide}},
function only in Stata 11 and higher.

This training uses a baseline respondent-level dataset from a real live RCT
on police corruption in India: the Rajasthan police performance project,
whose PIs included Esther Duflo and Abhijit Banerjee.
We've made some changes in order to aid training, but you can find the original dataset
{browse "http://dvn.iq.harvard.edu/dvn/dv/jpal/faces/study/StudyPage.xhtml;jsessionid=d10504357bfebaf464e22e24b574?globalId=hdl:1902.1/17050&studyListingIndex=0_d10504357bfebaf464e22e24b574":here}.
We're reaping the benefits of data publication, without which this data wouldn't be available to us.
Let's load the dataset: */

{USE}

describe, short

/* At points along the way,
code will refer to specific observations and will be dependent on the sort order of the dataset.
Therefore, if you start trying your own code and change the sort order, make sure to restore it.
From {cmd:describe}, you can see that the dataset is sorted by {cmd:hhid}.
If you sort by another variable list, return to the current sort order by typing:

{cmd:sort hhid}

If you get really lost, you can always just reload the dataset.

Throughout the training, you'll see text boxes like the one below holding technical tips.
Although not essential, these tips can help you reach the next level of Stata mastery.
During live training, we will sometimes skip these.
If the text box is misaligned, resize your viewer to a larger size and click the Reload button.
Alternatively, right click on the page, click Font, then select a smaller font size.

{TECH}
{COL}Typing {helpb contents:help} by itself is the same as {helpb contents:help contents}.{CEND}
{BOTTOM}

When a command is introduced for the first time, it'll usually appear as text instead of a link.
It'll be preceded by a text box reminder to type out the command fully in the Command window.
({it:Don't just copy and paste!})
For example:

{TRYITCMD}
display "{c -(}hline}"
{DEF}

Most modules have a corresponding problem set.
Some problem set questions are integrated within the module.
In those cases, the problem set question number reflects
its order within the problem set, not the module.
For example, if the third question in the problem set is
the first question in the module,
it will appear as Problem Set Question 3.

Finally, this training uses or refers to the following user-written programs.
Click each to install them.

{P}{bf:{stata "ssc install dummies2":dummies2}}{p_end}
{phang}  o Create indicator variables from categorical variable or vice versa{p_end}
{P}{bf:{stata "ssc install dummieslab":dummieslab}}{p_end}
{phang}  o Generate dummy variables from categorical variable using value label names{p_end}
{P}{bf:{stata "ssc install egenmore":egenmore}}{p_end}
{phang}  o Extensions to generate (more extras){p_end}
{P}{bf:{stata "ssc install labutil":labutil}}{p_end}
{phang}  o Modules for managing value and variable labels{p_end}
{P}{bf:{stata "ssc install labutil2":labutil2}}{p_end}
{phang}  o Bundle of programs to manage value and variable labels{p_end}
{P}{bf:{stata "net search renvars":renvars}}{p_end}
{phang}  o Rename groups of variables{p_end}
{P}{bf:{stata "ssc install todummy":todummy}}{p_end}
{phang}  o Create dummy variables

{BF}{IT}{UL}
(All pages have a footer like the one below
with links to the next and previous modules, the start page,
as well as the problem set, if there is one.)
{DEF}
{FOOT}

{NEXT1}{DUMMIES}
{START} */
