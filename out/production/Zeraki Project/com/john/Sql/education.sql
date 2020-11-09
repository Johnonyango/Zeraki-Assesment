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

-- Table `course`
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


-- Indexes for table `institution`
ALTER TABLE `institution`
  ADD PRIMARY KEY (`institutionid`);

-- Indexes for table `course`
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseid`),
  ADD KEY `institutionid` (`institutionid`);

-- Indexes for table `student`
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentid`),
  ADD KEY `courseid` (`courseid`);


-- AUTO_INCREMENT for table `institution`
ALTER TABLE `institution`
  MODIFY `institutionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


-- AUTO_INCREMENT for table `course`
ALTER TABLE `course`
  MODIFY `courseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


-- AUTO_INCREMENT for table `student`
ALTER TABLE `student`
  MODIFY `studentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;


-- Constraints for table `course`
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`institutionid`) REFERENCES `institution` (`institutionid`);

-- Constraints for table `student`
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `course` (`courseid`);
COMMIT;
