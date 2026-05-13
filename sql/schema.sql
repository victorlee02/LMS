CREATE TABLE `Enrollments` (
    `enroll_id`    INT    NOT NULL,
    `course_id`    INT    NULL,
    `student_id`    VARCHAR(20)    NULL,
    `grade`    VARCHAR(5)    NULL
);

CREATE TABLE `Syllabuses` (
    `syllabus_id`    INT    NOT NULL,
    `course_id`    INT    NOT NULL,
    `overview`    TEXT    NULL,
    `learning_goal`    TEXT    NULL,
    `main_textbook`    TEXT    NULL,
    `grading_policy`    TEXT    NULL
);

CREATE TABLE `Courses` (
    `course_id`    INT    NOT NULL,
    `subject_code`    VARCHAR(20)    NULL,
    `prof_id`    VARCHAR(20)    NULL,
    `year`    YEAR    NOT NULL,
    `semester`    VARCHAR(20)    NOT NULL,
    `section`    VARCHAR(10)    NULL,
    `classroom`    VARCHAR(50)    NULL,
    `schedule`    VARCHAR(100)    NULL
);

CREATE TABLE `Teams` (
    `team_id`    INT    NOT NULL,
    `project_id`    INT    NOT NULL,
    `team_name`    VARCHAR(100)    NOT NULL,
    `created_at`    DATETIME    NOT NULL
);

CREATE TABLE `TeamSubmissions` (
    `submit_id`    INT    NOT NULL,
    `team_id`    INT    NOT NULL,
    `project_id`    INT    NOT NULL,
    `content`    TEXT    NULL,
    `file_path`    VARCHAR(255)    NULL,
    `submitted_at`    DATETIME    NULL,
    `score`    DECIMAL(5,2)    NULL,
    `is_graded`    BOOLEAN    NOT NULL,
    `feedback`    TEXT    NULL
);

CREATE TABLE `Submissions` (
    `submit_id`    INT    NOT NULL,
    `assign_id`    INT    NULL,
    `student_id`    VARCHAR(20)    NULL,
    `content`    TEXT    NULL,
    `file_path`    VARCHAR(255)    NULL,
    `submitted_at`    DATETIME    NULL,
    `score`    DECIMAL(5,2)    NULL,
    `is_graded`    BOOLEAN    NULL
);

CREATE TABLE `Assignments` (
    `assign_id`    INT    NOT NULL,
    `course_id`    INT    NULL,
    `title`    VARCHAR(200)    NOT NULL,
    `description`    TEXT    NULL,
    `due_date`    DATETIME    NULL
);

CREATE TABLE `Users` (
    `user_id`    VARCHAR(20)    NOT NULL,
    `dept_id`    INT    NULL,
    `name`    VARCHAR(50)    NOT NULL,
    `email`    VARCHAR(100)    NULL,
    `role`    ENUM('STUDENT', 'PROFESSOR', 'ADMIN')    NOT NULL
);

CREATE TABLE `CourseContents` (
    `content_id`    INT    NOT NULL,
    `course_id`    INT    NULL,
    `title`    VARCHAR(200)    NOT NULL,
    `description`    TEXT    NULL,
    `file_path`    VARCHAR(255)    NULL,
    `content_type`    ENUM('NOTICE', 'LECTURE_NOTE', 'REFERENCE')    NULL    DEFAULT 'LECTURE_NOTE',
    `created_at`    DATETIME    NULL
);

CREATE TABLE `TeamProjects` (
    `project_id`    INT    NOT NULL,
    `course_id`    INT    NOT NULL,
    `title`    VARCHAR(200)    NOT NULL,
    `description`    TEXT    NULL,
    `due_date`    DATETIME    NULL,
    `max_members`    INT    NULL
);

CREATE TABLE `TeamMembers` (
    `member_id`    INT    NOT NULL,
    `team_id`    INT    NOT NULL,
    `student_id`    VARCHAR(20)    NOT NULL,
    `role`    ENUM('LEADER', 'MEMBER')    NOT NULL    DEFAULT 'MEMBER'
);

CREATE TABLE `Departments` (
    `dept_id`    INT    NOT NULL,
    `dept_name`    VARCHAR(100)    NOT NULL
);

CREATE TABLE `Subjects` (
    `subject_code`    VARCHAR(20)    NOT NULL,
    `subject_name`    VARCHAR(100)    NOT NULL,
    `credits`    INT    NULL,
    `category`    VARCHAR(50)    NULL
);

ALTER TABLE `Enrollments` ADD CONSTRAINT `PK_ENROLLMENTS` PRIMARY KEY (
    `enroll_id`
);

ALTER TABLE `Syllabuses` ADD CONSTRAINT `PK_SYLLABUSES` PRIMARY KEY (
    `syllabus_id`
);

ALTER TABLE `Courses` ADD CONSTRAINT `PK_COURSES` PRIMARY KEY (
    `course_id`
);

ALTER TABLE `Teams` ADD CONSTRAINT `PK_TEAMS` PRIMARY KEY (
    `team_id`
);

ALTER TABLE `TeamSubmissions` ADD CONSTRAINT `PK_TEAMSUBMISSIONS` PRIMARY KEY (
    `submit_id`
);

ALTER TABLE `Submissions` ADD CONSTRAINT `PK_SUBMISSIONS` PRIMARY KEY (
    `submit_id`
);

ALTER TABLE `Assignments` ADD CONSTRAINT `PK_ASSIGNMENTS` PRIMARY KEY (
    `assign_id`
);

ALTER TABLE `Users` ADD CONSTRAINT `PK_USERS` PRIMARY KEY (
    `user_id`
);

ALTER TABLE `CourseContents` ADD CONSTRAINT `PK_COURSECONTENTS` PRIMARY KEY (
    `content_id`
);

ALTER TABLE `TeamProjects` ADD CONSTRAINT `PK_TEAMPROJECTS` PRIMARY KEY (
    `project_id`
);

ALTER TABLE `TeamMembers` ADD CONSTRAINT `PK_TEAMMEMBERS` PRIMARY KEY (
    `member_id`
);

ALTER TABLE `Departments` ADD CONSTRAINT `PK_DEPARTMENTS` PRIMARY KEY (
    `dept_id`
);

ALTER TABLE `Subjects` ADD CONSTRAINT `PK_SUBJECTS` PRIMARY KEY (
    `subject_code`
);
