require(DataComputing)
# Grades <- read.csv("http://tiny.cc/dcf/grades", StringsAsFactors = False )
GP <- read.csv("http://tiny.cc/mosaic/grade-to-number.csv", stringsAsFactors = FALSE)
View(GP)
Together <- Grades %>%
  left_join(GP) %>%
  group_by(sid) %>%
  summarise(gpa = mean(gradepoint, na.rm = TRUE))

# Average class size

Grades %>%
  group_by(sessionID) %>%
  tally() %>%
  summarise(class_size = mean(n, na.rm = TRUE))

Courses <- read.csv("http://tiny.cc/mosaic/courses.csv", stringsAsFactors = FALSE)

Courses %>%
  group_by(sem) %>%
  summarise(size = mean(enroll), stderr = sd(enroll) / sqrt( n() )
            
            
Grades %>%
  left_join(Courses) -> foo

foo %>%
  group_by(sid) %>%
  summarise(cave = mean(enroll)) -> Per_student

Per_student %>%
  ggplot(aes(x = cave)) + geom_density() + geom_histogram()

foo %>%
  left_join(GP) %>%
  group_by(iid) %>%
  summarise(pgpa = mean(gradepoint, na.rm = TRUE)) -> Profs

Profs %>%
  ggplot(aes(x=pgpa, fill=dept)) + geom_density(alpha = 0.1)

