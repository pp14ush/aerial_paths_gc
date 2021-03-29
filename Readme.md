![](Aspose.Words.8b9358e1-8bae-41b3-a854-82b21b7030e6.001.png)![](Aspose.Words.8b9358e1-8bae-41b3-a854-82b21b7030e6.002.png)

Aeromodelling GC 2021

Problem Statement

Introduction:

This year’s GC Problem Statement aims to give participants exposure to various fields of drone control and planning. Accordingly, the problem statement will consist of 3 major tasks - Controller Tuning, Motion Planning and Trajectory construction. The PS also comes with a supplementary document for extra resources, which will be provided to you later.

Path Planning:

The domain for this competition will be a 400 m x 400 m square which is split into a 40x40 grid. Some squares of the grid are assigned a value based on the following key :
 ![](/bg_doc/Aspose.Words.8b9358e1-8bae-41b3-a854-82b21b7030e6.003.png)
To score a point, you will need to be above the grid’s center with a tolerance of 2.5m. Starting at (0,0), Teams have a total run time of 30 seconds, over which the team will have to collect points by flying over the grid squares. The team with the maximum score wins.

Attached below is the grid we will be using.A higher-quality image can be found [here](https://drive.google.com/file/d/11Hzk64UPHZFR-3z71hd3HYkumrHc5HY2/view?usp=sharing).

![](/bg_doc/Aspose.Words.8b9358e1-8bae-41b3-a854-82b21b7030e6.006.png)

Trajectory Construction:

To navigate the domain, teams will have to define set points and then construct trajectory files in the sim’s appropriate format. Optimal Trajectories will help teams reach points quicker and collect more points in the run. Teams can learn how to construct these files using supplementary material.

Controller Tuning:

To follow a trajectory, the drone in the simulator uses a set of PID controllers. Teams will have to tune these PID controllers to achieve the agility and stabilitythey seek to follow their constructed trajectories accurately. A poorly tuned controller can either be too sluggish, meaning the drone will be slow to traverse the domain. An aggressively tuned controller can cause significant overshoot and instability, which can cause the drone to miss set points.

General Rules:

The following are the basic ground rules which need to be established before anything:

1) According to the general rule for mid-prep GCs, a maximum of 10 members are allowed in a team. The minimum number of members is one.
1) Only one team will be allowed to participate from each hostel.
1) Submissions will be judged objectively. The package has its own algorithm to output marks based on controller parameters.
1) You are not supposed to modifythe pieces of code that have not been indicated in the comments. We will comment on which parts can be edited and we are listing them here:-

![](/bg_doc/Aspose.Words.8b9358e1-8bae-41b3-a854-82b21b7030e6.008.png)

this is the controller.m PID section

![](/bg_doc/Aspose.Words.8b9358e1-8bae-41b3-a854-82b21b7030e6.009.jpeg)

5) This is traj\_line.m, these are the only places where changes are allowed, and if this is violated, severe penalties will follow.
5) Participants cannot change the Simulator’s Dynamic parameters (mass, thrust. gravity, etc.)
5) Plagiarism of any form will lead to disqualification and docking of points overall.

Teams-

- H4 + H18 (All the students residing (or who have been allocated) in H18 will represent H18 only and not their earlier hostel.
- H1 + Tansa House
- H2, H3, H5, H6, H9, H12, H13, H14 - individual hostels
- H15- 2nd year UG girls
- H10- 3rd year onwards UG girls and other PG girls who were already allocated H10
- H 11- PG and PhD girls who were already allocated H11 and 1st year PG girls
- H16 is vacant and hence not a part of any team as of now.
- All sophomore boys will represent their senior hostels as there is no team of H16.
- All PG freshmen (boys) will represent the hostel allocated to their roll baap.

Strict actions will be taken if anyone is found to take part in GCs from another hostel.

- The following Aeromodelling Club members are not allowed to participate:
- Aman Malekar
- Piyush Porwal
- Jai Jobanputra
- Vignesh Anand
- Atharva Mete
- Harshil Naik
- Riya Agrawal

Division of GC Points-

This is a mid-prep GC and according to the guidelines a maximum of 125 points will be awarded towards the overall tally. [ No bonus points for participation]

- 1st: 100%
- 2nd: 80%
- 3rd: 60%
- 4th: 40%
- 5th: 25%

Timeline:



|<p>Date and Time</p>|<p>Details</p>|
| - | - |
|27 March 2021, 10:30 AM|Problem Statement Release|
|30 March 2021, 9 AM|Work on the problem statement|
|1 April 2021, 9 AM||
|1 April 2021, 9 AM|Submission deadline. Late submissions will be given a penalty as described in the guidelines.|
|5 April 2021, 5 PM|Results Declaration|
Submission:

- The deadline for submission is 1st April 9 am.
- Submission will be via google forms. The team can submit only once.
- Teams will have to upload the following in a drive and attach it to the form submission.
  - Screen recording of the Drone completing the task
  - The entire workspace folder containing all Matlab and CSV files
  - Screenshot of the final trajectory followed by the drone
- Penalty for late submission:
- Any submission after 9 a.m. and before 11 a.m. (1st April) will be penalised with 20% of their total marks.
- Every two Hour delay after 11 am (1st April) leads to half the points the deducted
- Submission after 6 hours of deadline closure not entertained

In case of any queries, please contact: ![](/bg_doc/Aspose.Words.8b9358e1-8bae-41b3-a854-82b21b7030e6.010.png)</br>
Aman Malekar [7972780001]

![](Aspose.Words.8b9358e1-8bae-41b3-a854-82b21b7030e6.011.png)
