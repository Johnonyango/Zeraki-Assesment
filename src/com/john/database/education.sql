--Creating database 'education'
CREATE DATABASE education;

--Table`institution`
CREATE TABLE `institution` (
  `institutionid` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL
)

--inserting data to institution table
INSERT INTO `institution` (`institutionid`, `name`) VALUES
(1, 'Egerton'),
(2, 'Moringa'),
(3, 'Jkuat'),
(4, 'UoN'),
(5, 'Kibabii');
--**********end of table 'institution'***********--

-- Table structure for table `course`
CREATE TABLE `course` (
  `courseid` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `institutionid` int(11) DEFAULT NULL
)
INSERT INTO `course` (`courseid`, `name`, `institutionid`) VALUES
(1, 'Engineer', 1),
(2, 'Animal Production', 2),
(3, 'Medicine', 4),
(4, 'Programming', 5),
(5, 'Medicine', 1),
(6, 'Programming', 2);
--**********end of table 'course'***********--


-- Table  `student`
CREATE TABLE `student` (
  `studentid` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `courseid` int(11) DEFAULT NULL
)
INSERT INTO `student` (`studentid`, `name`, `courseid`) VALUES
(1, 'John', 2),
(2, 'Lydiah', 2),
(3, 'Julie', 3),
(4, 'Mula', 6),
(5, 'Kalton', 4),
(6, 'Viky', 2),
(7, 'Jemo', 4),
(8, 'Niko', 1);
--**********end of table 'student'***********--


