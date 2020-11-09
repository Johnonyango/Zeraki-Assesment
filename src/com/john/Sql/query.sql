--query that  display the number of students per course per institution
SELECT institution.name AS `INSTITUTION NAME`
,course.name AS `COURSE NAME`,
COUNT(`student`.studentid) AS `NUMBER OF STUDENTS`
 FROM course,`student`,institution
  WHERE course.institutionid=institution.institutionid
  AND student.courseid=course.courseid
  GROUP BY course.name;