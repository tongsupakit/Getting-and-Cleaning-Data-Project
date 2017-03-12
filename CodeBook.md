---
title: "CodeBook"
author: "Supakit Chawchumnum"
date: "12-Mar-2017"
output: html_document
---
# Code Book for the tidy dataset "avgeach.txt"
This codebook describes each variable and data in the tidy dataset. Also describes the work to cleanup the data to make it tidy.
Associate files
 1) avgeach.txt => the tidy data which is output of run_analysis.R script
 2) run_analysis.R contains R scripts used to clean up the data which is finally writen into avgeach.txt
 
## Variables in the tidy dataset (avgeach.txt)
1. subject
   numeric: 1-30
   identifier of 30 volunteers who carry out the experiment 

2. activity
   factor: 6 levles
   sitting,standing,walking,walkingdownstairs,workingupstairs,laying

3. timebodyacceleration-mean()-x
   numeric
   Average for each subject and each activity of the mean of time domain body acceleration on X axis

4. timebodyacceleration-mean()-y
   numeric
   Average for each subject and each activity of the mean of time domain body acceleration on Y axis

5. timebodyacceleration-mean()-z
   numeric
   Average for each subject and each activity of the mean of time domain body acceleration on Z axis

6. timebodyacceleration-std()-x
   numeric
   Average for each subject and each activity of the standard deviation of time domain body acceleration on X axis

7. timebodyacceleration-std()-y
   numeric
   Average for each subject and each activity of the standard deviation of time domain body acceleration on Y axis

8. timebodyacceleration-std()-z
   numeric
   Average for each subject and each activity of the standard deviation of time domain body acceleration on Z axis

9. timegravityacceleration-mean()-x
   numeric
   Average for each subject and each activity of the mean of time domain gravity acceleration on X axis
   
10. timegravityacceleration-mean()-y
   numeric
   Average for each subject and each activity of the mean of time domain gravity acceleration on Y axis

11. timegravityacceleration-mean()-z
   numeric
   Average for each subject and each activity of the mean of time domain gravity acceleration on Z axis
   
12. timegravityacceleration-std()-x
   numeric
   Average for each subject and each activity of the standard deviation of time domain gravity acceleration on X axis

13. timegravityacceleration-std()-y
   numeric
   Average for each subject and each activity of the standard deviation of time domain gravity acceleration on Y axis

14. timegravityacceleration-std()-z
   numeric
   Average for each subject and each activity of the standard deviation of time domain gravity acceleration on Z axis

15. timebodyaccelerationjerk-mean()-x
   numeric
   Average for each subject and each activity of the mean of time domain body acceleration jerk on X axis

16. timebodyaccelerationjerk-mean()-y
   numeric
   Average for each subject and each activity of the mean of time domain body acceleration jerk on Y axis

17. timebodyaccelerationjerk-mean()-z
   numeric
   Average for each subject and each activity of the mean of time domain body acceleration jerk on Z axis

18. timebodyaccelerationjerk-std()-x
   numeric
   Average for each subject and each activity of the standard deviation of time domain body acceleration jerk on X axis

19. timebodyaccelerationjerk-std()-y
   numeric
   Average for each subject and each activity of the standard deviation of time domain body acceleration jerk on Y axis

20. timebodyaccelerationjerk-std()-z
   numeric
   Average for each subject and each activity of the standard deviation of time domain body acceleration jerk on Z axis

21. timebodygyroscope-mean()-x
   numeric
   Average for each subject and each activity of the mean of time domain body gyroscope on X axis

22. timebodygyroscope-mean()-y
   numeric
   Average for each subject and each activity of the mean of time domain body gyroscope on Y axis

23. timebodygyroscope-mean()-z
   numeric
   Average for each subject and each activity of the mean of time domain body gyroscope on Z axis

24. timebodygyroscope-std()-x
   numeric
   Average for each subject and each activity of the standard deviation of time domain body gyroscope on X axis

25. timebodygyroscope-std()-y
   numeric
   Average for each subject and each activity of the standard deviation of time domain body gyroscope on Y axis

26. timebodygyroscope-std()-z
   numeric
   Average for each subject and each activity of the standard deviation of time domain body gyroscope on Z axis

27. timebodygyroscopejerk-mean()-x
   numeric
   Average for each subject and each activity of the mean of time domain body gyroscope jerk on X axis

28. timebodygyroscopejerk-mean()-y
   numeric
   Average for each subject and each activity of the mean of time domain body gyroscope jerk on Y axis

29. timebodygyroscopejerk-mean()-z
   numeric
   Average for each subject and each activity of the mean of time domain body gyroscope jerk on Z axis

30. timebodygyroscopejerk-std()-x
   numeric
   Average for each subject and each activity of the standard deviation of time domain body gyroscope jerk on X axis

31. timebodygyroscopejerk-std()-y
   numeric
   Average for each subject and each activity of the standard deviation of time domain body gyroscope jerk on Y axis

32. timebodygyroscopejerk-std()-z
   numeric
   Average for each subject and each activity of the standard deviation of time domain body gyroscope jerk on Z axis

33. timebodyaccelerationmagnitude-mean()
   numeric
   Average for each subject and each activity of the mean of time domain body acceleration magnitude on X axis

34. timebodyaccelerationmagnitude-std()
   numeric
   Average for each subject and each activity of the standard deviation of time domain body acceleration magnitude

35. timegravityaccelerationmagnitude-mean()
   numeric
   Average for each subject and each activity of the mean of time domain body acceleration magnitude

36. timegravityaccelerationmagnitude-std()
   numeric
   Average for each subject and each activity of the standard deviation of time domain gravity acceleration magnitude
   
37. timebodyaccelerationjerkmagnitude-mean()
   numeric
   Average for each subject and each activity of the mean of time domain body acceleration jerk magnitude
   
38. timebodyaccelerationjerkmagnitude-std()
   numeric
   Average for each subject and each activity of the standard deviation of time domain body acceleration jerk magnitude
   
39. timebodygyroscopemagnitude-mean()
   numeric
   Average for each subject and each activity of the mean of time domain body gyroscope magnitude
   
40. timebodygyroscopemagnitude-std()
   numeric
   Average for each subject and each activity of the standard deviation of time domain body gyroscope magnitude
   
41. timebodygyroscopejerkmagnitude-mean()
   numeric
   Average for each subject and each activity of the mean of time domain body gyroscope jerk magnitude

42. timebodygyroscopejerkmagnitude-std()
   numeric
   Average for each subject and each activity of the standard deviation of time domain body gyroscope jerk magnitude
   
43. freqbodyacceleration-mean()-x
   numeric
   Average for each subject and each activity of the mean of frequency domain body acceleration of X axis
   
44. freqbodyacceleration-mean()-y
   numeric
   Average for each subject and each activity of the mean of frequency domain body acceleration of Y axis
   
45. freqbodyacceleration-mean()-z
   numeric
   Average for each subject and each activity of the mean of frequency domain body acceleration of Z axis
   
46. freqbodyacceleration-std()-x
   numeric
   Average for each subject and each activity of the standard deviation of frequency domain body acceleration of X axis
   
47. freqbodyacceleration-std()-y
   numeric
   Average for each subject and each activity of the standard deviation of frequency domain body acceleration of Y axis
   
48. freqbodyacceleration-std()-z
   numeric
   Average for each subject and each activity of the standard deviation of frequency domain body acceleration of Z axis
   
49. freqbodyaccelerationjerk-mean()-x
   numeric
   Average for each subject and each activity of the mean of frequency domain body acceleration jerk of X axis
   
50. freqbodyaccelerationjerk-mean()-y
   numeric
   Average for each subject and each activity of the mean of frequency domain body acceleration jerk of Y axis
   
51. freqbodyaccelerationjerk-mean()-z
   numeric
   Average for each subject and each activity of the mean of frequency domain body acceleration jerk of Z axis
   
52. freqbodyaccelerationjerk-std()-x
   numeric
   Average for each subject and each activity of the standard deviation of frequency domain body acceleration jerk of X axis
   
53. freqbodyaccelerationjerk-std()-y
   numeric
   Average for each subject and each activity of the standard deviation of frequency domain body acceleration jerk of Y axis
   
54. freqbodyaccelerationjerk-std()-z
   numeric
   Average for each subject and each activity of the standard deviation of frequency domain body acceleration jerk of Z axis
   
55. freqbodygyroscope-mean()-x
   numeric
   Average for each subject and each activity of the mean of frequency domain body gyroscope of X axis
   
56. freqbodygyroscope-mean()-y
   numeric
   Average for each subject and each activity of the mean of frequency domain body gyroscope of Y axis
   
57. freqbodygyroscope-mean()-z
   numeric
   Average for each subject and each activity of the mean of frequency domain body gyroscope of Z axis
   
58. freqbodygyroscope-std()-x
   numeric
   Average for each subject and each activity of the standard deviation of frequency domain body gyroscope of X axis
   
59. freqbodygyroscope-std()-y
   numeric
   Average for each subject and each activity of the standard deviation of frequency domain body gyroscope of Y axis
   
60. freqbodygyroscope-std()-z
   numeric
   Average for each subject and each activity of the standard deviation of frequency domain body gyroscope of Z axis
   
61. freqbodyaccelerationmagnitude-mean()
   numeric
   Average for each subject and each activity of the mean of frequency domain body acceleration magnitude
   
62. freqbodyaccelerationmagnitude-std()
   numeric
   Average for each subject and each activity of the standard deviation of frequency domain body acceleration magnitude
   
63. freqbodybodyaccelerationjerkmagnitude-mean()
   numeric
   Average for each subject and each activity of the mean of frequency domain body acceleration jerk magnitude
   
64. freqbodybodyaccelerationjerkmagnitude-std()
   numeric
   Average for each subject and each activity of the standard deviation of frequency domain body acceleration jerk magnitude
  
65. freqbodybodygyroscopemagnitude-mean()
   numeric
   Average for each subject and each activity of the mean of frequency domain body gyroscope magnitude
  
66. freqbodybodygyroscopemagnitude-std()
   numeric
   Average for each subject and each activity of the standard deviation of frequency domain body gyroscope magnitude
  
67. freqbodybodygyroscopejerkmagnitude-mean()
   numeric
   Average for each subject and each activity of the mean of frequency domain body gyroscope jerk magnitude
  
68. freqbodybodygyroscopejerkmagnitude-std()
   numeric
   Average for each subject and each activity of the standard deviation of frequency domain body gyroscope jerk magnitude
   
