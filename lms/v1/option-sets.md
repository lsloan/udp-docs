# Option sets for LMS Loading Schema, v1

This document describes the Option Sets for data elements in the UDP LMS Loading Schema, v1.

### Sex

| Value | Definition | Description |
|---|---|---|
| `Male` | Male | Male |
| `Female` | Female | Female |
| `NotSelected` | Not selected | Sex is not selected |

### Account workflow state

| Value | Definition | Description |
|---|---|---|
| `Pending` | Pending | The person's LMS account is currently pending |
| `PreRegistered` | Pre-registered | The person's LMS account is currently pre-registered |
| `Registered` | Registered | The person's LMS account is currently registered |
| `Deleted` | Deleted | The person's LMS account is currently deleted |

### Course offering workflow state

| Value | Definition | Description |
|---|---|---|
| `Created` | Created | The course offering is created but not published |
| `Available` | Available | The course offering is created and published, but not concluded |
| `Completed` | Completed | The course offering is created, published, and concluded |
| `Deleted` | Deleted | The course offering is deleted |
| `Claimed` | Claimed | The course offering is undeleted and not published |

### Section workflow state

| Value | Definition | Description |
|---|---|---|
| `Active` | Active | The course section is currently active |
| `Deleted` | Deleted | The course section is currently deleted |

### Role

| Value | Definition | Description |
|---|---|---|
| `Student` | Student | A person in a learning environment whose learning will be evaluated in the form of a grade, score, etc. |
| `Teacher` | Teacher | A person responsible for providing student instruction in a learning environment |
| `TeachingAssistant` | Teaching assistant | A person responsible for supporting a Teacher in providing student instruction in a learning environment |
| `Designer` | Designer | A person responsible for the design and development of a learning environment, such as a course |
| `Observer` | Observer | A person in a learning environment whose learning will not be evaluated and whose participation is indirect |

### Role state

| Value | Defintion | Description |
|---|---|---|
| `PreRegistered` | Pre-registered | The person is pre-registered to serve in the specified role in the course section or course offering |
| `Registered` | Registered | The person is registered to serve in the specified role in the course section or course offering |
| `Enrolled` | Enrolled |  The person is enrolled (actively serving) in the specified role in the course section or course offering |
| `Waitlisted` | Waitlisted | The person is waitlisted to serve in the specified role in the course section or course offering |
| `Dropped` | Dropped | The person is no longer serving in the defined role in the course section or course offering, and this change occurred before the course context officially concluded |
| `Completed` | Completed | The person is no longer serving in the defined role in the course section or course offering, and this change occurred as part of the course context officially concluding |

### Learner activity type

| Value | Definition | Description |
|---|---|---|
| `Assignment` | Assignment | The type of work assigned to the learner is an assignment |
| `Activity` | Activity | The type of work assigned to the learner is an activity |
| `LearningResource` | Learning resource | The type of work assigned to the learner is a learning resource |
| `Lesson` | Lesson | The type of work assigned to the learner is a lesson |
| `Quiz` | Quiz | The type of work assigned to the learner is a quiz |

### Learner activity maximum allowed time unit

| Value | Definition | Description |
|---|---|---|
| `Week` | Week | The value specified for learner activity maximum time allowed is a number of weeks |
| `Day` | Day | The value specified for learner activity maximum time allowed is a number of days |
| `Hour` | Hour | The value specified for learner activity maximum time allowed is a number of hours |
| `Minute` | Minute | The value specified for learner activity maximum time allowed is a number of minutes |
| `Second` | Second | The value specified for learner activity maximum time allowed is a number of seconds |

### Learner activity add to gradebook flag

| Value | Definition | Description |
|---|---|---|
| `Yes` | Yes | The learner activity should be added to the gradebook |
| `No` | No | The learner activity should not be added to the gradebook |
| `NotSelected` | Not selected | It is unknown if the learner activity should be added to the gradebook |

### Score metric type

| Value | Definition | Description |
|---|---|---|
| `00512` | Achievement/proficiency level | |
| `00494` | ACT score | |
| `00490` | Age score | |
| `00491` | C-scaled scores | |
| `00492` | College Board examination scores | |
| `00493` | Grade equivalent or grade-level indicator | |
| `03473` | Graduation score | |
| `03474` | Growth/value-added/indexing | |
| `03475` | International Baccalaureate score | |
| `00144` | Letter grade/mark | |
| `00513` | Mastery level | |
| `00497` | Normal curve equivalent | |
| `00498` | Normalized standard score | |
| `00499` | Number score | |
| `00500` | Pass-fail | |
| `03476` | Percentile | |
| `00502` | Percentile rank | |
| `00503` | Proficiency level | |
| `03477` | Promotion score | |
| `00504` | Ranking | |
| `00505` | Ratio IQs | |
| `03478` | Raw score | |
| `03479` | Scale score | |
| `00506` | Standard age score | |
| `00508` | Stanine score | |
| `00509` | Sten score | |
| `00510` | T-score | |
| `03480` | Workplace readiness score | |
| `00511` | Z-score | |
| `09999` | Other | |

### Learner activity workflow state

| Value | Definition | Description |
|---|---|---|
| `Published` | Published | The learner activity is currently published |
| `Unpublished` | Unpublished | The learner activity is currently unpublished |
| `Deleted` | Deleted | The learner activity is currently deleted |

### Learner activity group workflow state

| Value | Definition | Description |
|---|---|---|
| `Active` | Active | The learner activity group is currently deleted |
| `Deleted` | Deleted | The learner activity group is currently deleted |

### Learner activity override type

| Value | Definition | Description |
|---|---|---|
| `CourseOffering` | Course offering | The learner activity override applies to the entire course offering |
| `CourseSection` | Course section | The learner activity override applies to the specified course section |
| `LearnerGroup` | Learner group | The learner activity override applies to the specified learner group |
| `Person` | Person | The learner activity override applies to the specified person |

### Learner activity override workflow state

| Value | Definition | Description |
|---|---|---|
| `Active` | Active | The learner activity override is currently active |
| `Deleted` | Deleted | The learner activity override is currently deleted |

### Learner activity result submission method

| Value | Definition | Description |
|---|---|---|
| `DiscussionTopic` | Discussion topic | The learner activity result was submitted as a discussion topic |
| `ExternalTool` | External tool | The learner activity result was submitted via an external tool |
| `MediaRecording` | Media recording | The learner activity result was submitted as a media recording |
| `FileUpload` | File upload | The learner activity result was submitted as a file upload |
| `Quiz` | Quiz | The learner activity result was submitted via a quiz |
| `TextEntry` | Text entry | The learner activity result was submitted as a text entry |
| `Upload` | Upload | The learner activity result was submitted as a non-file upload |
| `Url` | URL | The learner activity result was submitted as a URL |

### Score value data type

| Value | Definition | Description |
|---|---|---|
| `Integer` | Integer | A positive or negative whole number or zero, such as -2, 4, 4567 |
| `Decimal` | Decimal | A representation of a real number using the base ten and decimal notation, such as 201.4, -3.89, or 0.0006 |
| `Percentile` | Percentile | Any of 100 equal parts into which the range of the values of a set of data can be divided in order to show the distribution of those values. The part may be represented as an integer between 0 and 100, or further broken down into tenths or hundredths (e.g. 87, 5.2, 45.74) |
| `String` | String | A string representative of a non-numeric or numeric range value |

### Learner activity result workflow state

| Value | Definition | Description |
|---|---|---|
| `Graded` | Graded | The learner activity result is graded |
| `PendingReview` | Pending review | The learner activity result is pending review |
| `Submitted` | Submitted | The learner activity result is submitted |
| `Unsubmitted` | Unsubmitted | The learner activity result is unsubmitted |

### Learner activity result score type

| Value | Definition | Description |
|---|---|---|
| `Initial` | Initial | A learner activity score instance |
| `Reliability` | Reliability | A learner activity score instance recorded as a measure of reliability |
| `Resolution` | Resolution | A learner activity score instance recorded after resolution of scoring or data issues |
| `Backread` | Backread | A learner activity score recorded to determine whether or not each individual scorer is correctly applying the scoring guide to student responses |
| `Final` | Final | The final learner activity score instance |

### Assessment purpose

| Value | Definition | Description |
|---|---|---|
| `00050` | Admission | Admission is specified as the reason for which an assessment is designed or delivered |
| `00051` | Assessment of student's progress | Assessment of student's progress is specified as the reason for which an assessment is designed or delivered |
| `73055` | College readiness | College readiness is specified as the reason for which an assessment is designed or delivered |
| `00063` | Course credit | Course credit is specified as the reason for which an assessment is designed or delivered |
| `00064` | Course requirement | Course requirement is specified as the reason for which an assessment is designed or delivered |
| `73069` | Diagnosis | Diagnosis is specified as the reason for which an assessment is designed or delivered |
| `03459` | Federal accountability | Federal accountability is specified as the reason for which an assessment is designed or delivered |
| `73068` | Inform local or state policy | Inform local or state policy is specified as the reason for which an assessment is designed or delivered |
| `00055` | Instructional decision | Instructional decision is specified as the reason for which an assessment is designed or delivered |
| `03457` | Local accountability | Local accountability is specified as the reason for which an assessment is designed or delivered |
| `02404` | Local graduation requirement | Local graduation requirement is specified as the reason for which an assessment is designed or delivered |
| `73042` | Obtain a state- or industry-recognized certificate or license | Obtain a state- or industry-recognized certificate or license is specified as the reason for which an assessment is designed or delivered |
| `73043` | Obtain postsecondary credit for the course | Obtain postsecondary credit for the course is specified as the reason for which an assessment is designed or delivered |
| `73067` | Program eligibility | Program eligibility is specified as the reason for which an assessment is designed or delivered |
| `00057` | Program evaluation | Program evaluation is specified as the reason for which an assessment is designed or delivered |
| `00058` | Program placement | Program placement is specified as the reason for which an assessment is designed or delivered |
| `00062` | Promotion to or retention in a grade or program | Promotion to or retention in a grade or program is specified as the reason for which an assessment is designed or delivered |
| `00061` | Screening | Screening is specified as the reason for which an assessment is designed or delivered |
| `03458` | State accountability | State accountability is specified as the reason for which an assessment is designed or delivered |
| `00054` | State graduation requirement | State graduation requirement is specified as the reason for which an assessment is designed or delivered |
| `09999` | Other | Other is specified as the reason for which an assessment is designed or delivered |

### Assessment type

| Value | Defintion | Description |
|---|---|---|
| `AchievementTest` | Achievement test | Achievement test is specified as the category of an assessment based on format and content |
| `AdvancedPlacementTest` | Advanced placement test | Advanced placement test is specified as the category of an assessment based on format and content |
| `AlternateAssessmentELL` | Alternate assessment/ELL | Alternate assessment/ELL is specified as the category of an assessment based on format and content |
| `AlternateAssessmentGradeLevelStandards` | Alternate assessment/grade-level standards | Alternate assessment/grade-level standards is specified as the category of an assessment based on format and content |
| `AlternativeAssessmentModifiedStandards` | Alternative assessment/modified standards | Alternative assessment/modified standards is specified as the category of an assessment based on format and content |
| `AptitudeTest` | Aptitude test | Aptitude test is specified as the category of an assessment based on format and content |
| `Benchmark` | Benchmark | Benchmark is specified as the category of an assessment based on format and content |
| `ClassQuiz` | Class quiz | Class quiz is specified as the category of an assessment based on format and content |
| `CognitiveAndPerceptualSkills` | Cognitive and perceptual skills | Cognitive and perceptual skills is specified as the category of an assessment based on format and content |
| `ComputerAdaptiveTest` | Computer adaptive test | Computer adaptive test is specified as the category of an assessment based on format and content |
| `DevelopmentalObservation` | Developmental observation | Developmental observation is specified as the category of an assessment based on format and content |
| `Diagnostic` | Diagnostic | Diagnostic is specified as the category of an assessment based on format and content |
| `DirectAssessment` | Direct assessment | Direct assessment is specified as the category of an assessment based on format and content |
| `Formative` | Formative | Formative is specified as the category of an assessment based on format and content |
| `GrowthMeasure` | Growth measure | Growth measure is specified as the category of an assessment based on format and content |
| `Interim` | Interim | Interim is specified as the category of an assessment based on format and content |
| `KindergartenReadiness` | Kindergarten readiness | Kindergarten readiness is specified as the category of an assessment based on format and content |
| `LanguageProficiency` | Language proficiency | Language proficiency is specified as the category of an assessment based on format and content |
| `MentalAbility` | Mental ability | Mental ability is specified as the category of an assessment based on format and content |
| `Observation` | Observation | Observation is specified as the category of an assessment based on format and content |
| `ParentReport` | Parent report | Parent report is specified as the category of an assessment based on format and content |
| `PerformanceAssessment` | Performance assessment | Performance assessment is specified as the category of an assessment based on format and content |
| `PortfolioAssessment` | Portfolio assessment | Portfolio assessment is specified as the category of an assessment based on format and content |
| `PrekindergartenReadiness` | Prekindergarten readiness | Prekindergarten readiness is specified as the category of an assessment based on format and content |
| `ReadingReadiness` | Reading readiness | Reading readiness is specified as the category of an assessment based on format and content |
| `Screening` | Screening | Screening is specified as the category of an assessment based on format and content |
| `TeacherReport` | Teacher report | Teacher report is specified as the category of an assessment based on format and content |
| `Other` | Other | Other is specified as the category of an assessment based on format and content |

### Assessment scoring policy

| Value | Definition | Description |
|---|---|---|
| `KeepHighest` | Keep highest score | If multiple assessment attempts are allowed, the highest score received should be sent to the gradebook. |
| `KeepLatest` | Keep latest score | If multiple assessment attempts are allowed, the most recent score received should be sent to the gradebook. |
| `KeepAverage` | Keep average score | If multiple assessment attempts are allowed, the average of all attempts should be sent to the gradebook. |

### Assessment item type

| Value | Definition | Description |
|---|---|---|
| `MultipleChoice` | Multiple choice | A forced-choice assessment item feature a stem (which is a prompt) and two or more choices, one of which is the correct answer, and the remainder are distractors |
| `FillInTheBlank` | Fill-in-the-blank | A short-answer item in which examinees are presented with a sentence in which a word or words is missing, and are asked to provide the missing word(s) |
| `TrueFalse` | True/false | A declarative statement that examinees judge true or false. Variants of the true/false item have examinees identify: fact/opinion, supported by the narrative or not, etc. |
| `MultipleResponse` | Multiple response | A multiple choice assessment item that directs examinees to select all of the options that apply |
| `Matching` | Matching | An assessment item in which examinees are presented with a set of premises and are asked to link them to a set of responses, via directions for identifying the correspondences |
| `ShortAnswer` | Short answer | An assessment item that asks examinees to provide a very short response, such as an item asking for a correct computational or text-based answer, or a closed item |
| `Labeling` | Labeling | An assessment item that presents an image or object, such as a graph, diagram, or geometric shape, and asks examinees to apply one or more descriptive, symbolic, or quantitative labels |
| `VisualRepresentation` | Visual representation | An assessment item that asks examinees to create simple graphics (e.g., sketches, schematics, diagrams) to generate evidence of understanding a key concept or its application |
| `ShowYourWork` | Show your work | An assessment item that asks examinees to show preparatory work for the creation of a product, performance, or extended text. The item may be treated as one component of a task leading to a final product or may be stand-alone, as evidence of preliminary thinking and problem-solving |
| `OtherConstructedResponse` | Other constructed response | Any assessment item that asks the examinee to develop answers without suggested answer choices and that does not fit the definition of the other assessment item types |
| `PerformanceTask` | Performance task | An item or set of items that directs examinees to demonstrate what they know and can do via a performance, given a set of conditions and expectations for the tasks(s)). The range of possible performances is long, and may include oral, written, procedural, artistic, and/or psychomotor performances such as conducting science experiments, developing informational materials, or participating in a recital, to name a few. An extended constructed response or essay item is a specific instance of a performance task |
| `ExtendedResponse` | Extended response (essay) | An assessment item type that asks examinees to prepare and deliver an organized, cohesive response to an item prompt. The essay item is one type of extended constructed response. Others include the development and sequencing of mathematical proofs, extended analytical papers, and research papers |
| `TechnologyEnhancedInteractive` | Technology-enhanced/interactive | An interactive assessment item delivered in an online or computerized testing environment such that the manipulation of the stem, options, or other facet of the item by the examinees becomes part of the item prompt or part of the item response. Scalise and Gifford (2006) present a taxonomy of 28 innovative item types that include: Drag and Drop, Reordering, and other experiential items |
| `Reordering` | Reordering | An assessment item that asks examinees to reorder items, such as pictures of events within a chronological sequence, items forming a pattern, or text within a passage |
| `Substitution` | Substitution | An assessment item that presents visual or written stimulus with incomplete or incorrect information and asks examinees to correct or complete the information |
| `Other` | Other | Other assessment item type |

### Assessment result workflow state

| Value | Definition | Description |
|---|---|---|
| `Untaken` | Untaken | The assessment result is currently untaken |
| `Completed` | Completed | The assessment result is currently completed |
| `PendingReview` | Pending review | The assessment result is currently pending review |
| `Preview` | Preview | The assessment result was accessed by an instructor or grader in preview mode |
| `SettingsOnly` | Settings only | The assessment result was accessed to view its settings |
