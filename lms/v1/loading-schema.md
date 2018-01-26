# LMS Loading Schema, v1

This document describes version 1 of the Unizin Data Platform Loading (UDP) schema for LMS data. The schema currently requires **54 unique LMS data points**.

**What data is part of the loading schema?**
The Unizin Data Platform is centered on all teaching and learning data at an institution. With respect to LMS data, this loading schema asks for:

Each **Person**, **Course Offering**, **Course Section**, **Term**, and **Section Enrollment** in LMS. The SIS is generally (but not necessarily) the system of record (SoR) for these concepts; when that is the case, the LMS data will be used to provide further contextual data. When it is not, or if that data is insufficient, the LMS data will be considered to be the truth.

Each **Learner Activity** (assignment, in LMS parlance) and its related concepts: **Learner Activity Group** (assignment group), **Learner Activity Override** (assignment override), and **Learner Activity Result** (submission) information, to capture the artifacts of students progressing through a course.

A subset of those activities (namely, quizzes) will also have **Assessment**, **Assessment Item**, **Assessment Item Response**, and **Assessment Result** information, providing richer context to their respective activities.

**How do we produce LMS data to this schema?**
As part of the UDP, Unizin automatically generates, ingests, and transforms LMS datasets on your behalf. That is, we do the work for you of mapping the vendor's schema to this loading schema. This document is intended to give an overview of the LMS data elements that your institution can expect will be present in the current version of the UDP once ingestion begins.
 
**Data type formats**
When data of type `date` is described, the format is `YYYY-MM-DD`. When data of type `time` is described, the format is `hh24:mm:ss`. When data of type `boolean` is described, the format is `true` for true and `false` for false. If the data does not exist for a particular record, or the mapping between your SIS and the UCDM is insufficient, a `null` is placed in the associated column.

### 1. Person
An actor in the learning environment, such as a student, instructor, or instructional designer.

#### Person elements

| Data element | Description |
|---|---|
| **First name** _(string)_ | The person's first name. |
| **Middle name** _(string)_ | The person's middle name. |
| **Last name** _(string)_ | The person's last name. |
| **Sex** _(string)_ | The person's legal sex. **Option set: Sex** |
| **Birthdate** _(date)_ | The person's date of birth. |
| **Account workflow state** _(string)_ | The workflow state of the person's account in the LMS. **Option set: Account workflow state** |
| **SIS identifier** _(string)_ | The SIS's code (generally, a primary key) for the person, used to correlate the SIS and LMS data. |

### 2. Academic term
A calendar session in which classes are instructed.

#### Academic term elements

| Data element | Description |
|---|---|
| **Designator** _(string)_ | The name by which the term is known (i.e., Fall 2017, Winter 2018). |
| **Begin date** _(date)_ | The date on which the term begins. |
| **End date** _(date)_ | The date on which the term ends. |
| **SIS identifier** _(string)_ | The SIS's code (generally, a primary key) for the enrollment term record, used to correlate the SIS and LMS data. |

### 3. Course offering
A course offering is a group of course sections offered in an academic term. Typically, the group represents a teaching assignment given to a particular instructor or instructors. For example,  "BIO 101 Fall 2017, taught by Kara Boldt" is a course offering distinct from "BIO 101 Fall 2017, taught by Etienne Pelaprat."

#### Course offering elements

| Data element | Description |
|---|---|
| **Name** _(string)_ | Name of the course. |
| **Subject abbreviation** _(string)_ | The alphabetic abbreviation of the department offering the course. For example, the `BIO` in `BIO 101`. |
| **Course number** _(string)_ | The course-specific reference number, usually used to convey the level of the course, the level of the individual expected to enroll in the course, and sequencing, if applicable. For example, the `101` in `BIO 101`. |
| **Term identifier** _(string)_ | The term during which the course offering is held. |
| **Workflow state** _(string)_ | The course offering's current workflow state. **Option set: Course offering workflow state** |
| **Publicly visible** _(boolean)_ | This is true if the course offering is visible to non-enrollees. Generally, this field will be false, as learners, instructors, etc. will only be able to see the courses in which they are actively enrolled. |
| **Begin date** _(date)_ | The date on which the course begins. |
| **End date** _(date)_ | The date on which the course ends. |
| **SIS identifier** _(string)_ | The SIS's code (generally, a primary key) for the course offering record, used to correlate the SIS and LMS data. |

### 4. Course section
A course section is an instance of a course offering (meaning that it is particular to both a term and an instructor) in which students may enroll. Instructors may be in charge of one or more sections of a particular course instance. E.g., "BIO101 Fall 2017 taught by Kara Boldt, section 1" and "BIO101 Fall 2017 taught by Kara Boldt, section 2" describe two course sections that share a common course offering.

#### Course section elements

| Data element | Description |
|---|---|
| **Name** _(string)_ | Name of the course section. |
| **Course offering identifier** _(string)_ | The course offering of which the section is an instance. |
| **Term identifier** _(string)_ | The term during which the course section is held. |
| **Begin date** _(date)_ | The date on which the course section begins. |
| **End date** _(date)_ | The date on which the course section ends. |
| **Workflow state** _(string)_ | The course section's current workflow state. **Option set: Section workflow state** |
| **SIS identifier** _(string)_ | The SIS's code (generally, a primary key) for the course section record, used to correlate the SIS and LMS data. |

### 5. Section enrollment
A section enrollment associates a person to a course section instance, and defines the specific capacity in which they act in that section.

#### Section enrollment elements

| Data element | Description |
|---|---|
| **Person identifier** _(string)_ | The person to whom the enrollment applies. |
| **Course offering identifier** _(string)_ | The course offering in which a person is enrolled. This field is populated only if the person is enrolled directly in a course offering, rather than in a course section instance. |
| **Course section identifier** _(string)_ | The course section in which a person is enrolled. This field is populated only if the person is enrolled directly in a course section, rather than in a course offering. |
| **Role** _(string)_ | The capacity in which the person will be acting in the course section. **Option set: Role** |
| **Role state** _(string)_ | The current state of the person acting in the specified role with respect to the specified course section or course offering. **Option set: Role state** |
| **Entry date** _(date)_ | The date on which the specified role became valid for the person with respect to the course section. |
| **Exit date** _(date)_ | The date on which the specified role becomes no longer valid for the person with respect to the course section. |

### 6. Learner activity
An assignment, task, piece of work, or other activity that is as part of a course of study. Common learner activities may include reading assignments, essays, exams, and group activities.

#### Learner activity elements

| Data element | Description |
|---|---|
| **Learner activity identifier** _(string)_ | The unique identifier for a learner activity within the UCDM. |
| **Course offering identifier** _(string)_ | The unique identifier for a course offering in the UCDM. This field will always be populated for learner activities delivered in the context of an LMS course. |
| **Course section identifier** _(string)_ | The unique identifier for a course section in the UCDM, populated only if the activity is only assigned to or applicable for that particular course section. |
| **Learner group identifier** _(string)_ | The unique identifier for a learner group in the UCDM, populated only if the activity is only assigned to or applicable for that particular learner group. |
| **Person identifier** _(string)_ | The unique identifier for a learner in the UCDM, populated only if the activity is only assigned to or applicable for that particular learner. |
| **Learner activity group identifier** _(string)_ | The unique identifier for the learner activity group in the UCDM to which the learner activity belongs. |
| **Position** _(integer)_ | The position in which the learner activity falls when ordering activities within a learner activity group. |
| **Title** _(string)_ | The title of the learner activity. |
| **Description** _(string)_ | A description of the learner activity, which may include information like what outcomes are being assessed, or providing context for the activity content. |
| **Learner activity type** _(string)_ | The type of work the learner is doing. **Option set: Learner activity type ** |
| **Creation date** _(date)_ | The date on which the learner activity was first created. |
| **Update date** _(date)_ | The date on which the learner activity was last updated. |
| **Due date** _(date)_ | The date on which the learner activity is due. |
| **Due time** _(time)_ | The time at which the learner activity is due. If `null` and _due date_ is populated, the learner(s) have until 23:59:59 to complete the activity. |
| **Release date** _(date)_ | The date on which the activity is released (unlocked), meaning that learners are able to view its contents and begin attempts. |
| **Lock date** _(date)_ | The date on which the activity is locked, meaning that learners are no longer able to attempt or edit previous attempts. |
| **Visible to everyone** _(boolean)_ | Whether the learner activity is visible for all assignees (true) or only visible to learner activity overrides (false). |
| **Muted** _(boolean)_ | Whether students are able to see grades given for this learner activity. |
| **Maximum attempts allowed** _(integer)_ | The amount of attempts a learner may use on a learner activity. If `null`, the learner has unlimited attempts. |
| **Add to gradebook flag** _(string)_ | Identifies if the learner activity is graded. **Option set: Learner activity add to gradebook flag** |
| **Possible points** _(decimal)_ | The maximum amount of points possible for a learner to receive on the activity. |
| **Score metric type** _(string)_ | The metric used to derive the score of a learner activity. **Option set: Score metric type** |
| **Workflow state** _(string)_ | The current workflow state of the activity. Possible values are `published`, `unpublished`, `deleted`. **Option set: Learner activity workflow state** |
| **Assigned by identifier** _(string)_ | The identifier for the person (instructor, TA, etc.) who assigned the activity to the learner(s). |

### 7. Learner activity group
A categorization of related learner activities.

#### Learner activity group elements

| Data element | Description |
|---|---|
| **Learner activity group identifier** _(string)_ | The unique identifier for the particular group. |
| **Name** _(string)_ | The meaningful name or title that describes the learner activity group. |
| **Workflow state** _(string)_ | The current state of the group. **Option set: Learner activity group workflow state** |
| **Course offering identifier** _(string)_ | The unique identifier for the course offering for which this learner activity group is applicable. |
| **Position** _(integer)_ | The relative position of this learner activity group with respect to others in a given course offering. |

### 8. Learner activity override
When learner activities have different due dates, due times, unlock and lock dates, and so on for different segments of the learner population, a learner activity override is created. One learner activity entity exists per override type, per assigned learner population.

#### Learner activity override elements

| Data element | Description |
|---|---|
| **Learner activity override identifier**  _(string)_ | The unique identifier for the specific override. |
| **Learner activity identifier** _(string)_ | The identifier for the learner activity being overridden. |
| **Override type** _(string)_ | The person or group of people for whom the override is applicable. **Option set: Learner activity override type** |
| **Override organization identifier** _(string)_ | The identifier that describes the grouping (course section or learner group) to which the override applies. |
| **Override person identifier** _(string)_ | The identifier that describes the specific learner to which the override applies. |
| **Override due date** _(date)_ | The activity's new due date for the referenced population. |
| **Override release date** _(date)_ | The activity's new release date for the referenced population. |
| **Override lock date** _(date)_ | The activity's new lock date for the referenced population. |
| **Override all day date** _(date)_ | The activity's new all day date for the referenced population. |
| **Date created** _(date)_ | Date on which the learner activity override was first created. |
| **Date updated** _(date)_ | Date on which the learner activity override was last updated. |
| **Workflow state** _(string)_ | The current state of the override. **Option set: Learner activity override workflow state** |

### 9. Learner activity result
The result of a learner engagement with a learner activity.

#### Learner activity result elements

| Data element | Description |
|---|---|
| **Learner activity result identifier** _(string)_ | The unique identifier for the specific result. |
| **Learner activity identifier** _(string)_ | The particular learner activity for which the result is generated. |
| **Learner activity session identifier** _(string)_ | The particular learner activity session for which the result is generated. |
| **Person identifier** _(string)_ | The learner who participated in the learner activity and/or submitted the result. |
| **Learner activity result submission method** _(string)_ | The method by which a learner activity result was submitted for grading. **Option set: Learner activity result submission method** |
| **Body** _(string)_ | The contents of the learner activity result. |
| **URL** _(string)_ | The location at which the result was posted or sent. |
| **Score value** _(string)_ | The raw grade the learner received for the learner activity result. |
| **Score value data type** _(string)_ | The unit of the score value. **Option set: Score value data type** |
| **Published score value** _(string)_ | The scaled or transformed grade the learner received for the learner activity result, that is published in the gradebook. |
| **Published score value data type** _(string)_ | The unit of the published score value. **Option set: Score value data type** |
| **Score metric type** _(string)_ | The metric used to derive the score of a learner activity result. **Option set: Score metric type** |
| **Workflow state** _(string)_ | The current state of the learner activity result. **Option set: Learner activity result workflow state** |
| **Learner activity score type** _(string)_ | Defines where the activity falls in pedagogical order (pre-test, post-test, etc.). **Option set: Learner activity result score type** |
| **Gradebook result** _(boolean)_ | If a learner has multiple learner activity results for a single learner activity, this field is `Y` when the current record's score is the one loaded in the gradebook. |
| **Date created** _(date)_ | The date on which the learner activity result was first created. |
| **Date updated** _(date)_ | The date on which the learner activity result was last updated. |
| **Response date** _(date)_ | The date on which the learner activity result was submitted. |
| **Graded date** _(date)_ | The date on which the learner activity result was graded. |

### 10. Assessment
An instrument used to evaluate a person, such as a quiz or test.

Assessments are assigned as part of a learner activity, but not every learner activity has a corresponding assessment.

#### Assessment elements

| Data element | Description |
|---|---|
| **Assessment identifier** _(string)_ | The unique identifier for the assessment. |
| **Learner activity identifier** _(string)_ | The activity by which this assessment is assigned. |
| **Title** _(string)_ | The title of the assessment. |
| **Objective** _(string)_ | The intended outcome or mastery being assessed. |
| **Assessment purpose** _(string)_ | The reason for which the assessment was designed or delivered. **Option set: Assessment purpose** |
| **Assessment type** _(string)_ | The category of an assessment, based on format and content. **Option set: Assessment type** |
| **Scoring policy** _(string)_ | When the assessment is graded, this field defines which grade(s) should actually be sent to the gradebook. **Option set: Assessment scoring policy** |
| **Create date** _(date)_ | The date on which the assessment was first created. |
| **Update date** _(date)_ | The date on which the assessment was last updated. |

### 11. Assessment item
A specific prompt in an assessment, such as a question. Assessments are comprised of one or more assessment items.

#### Assessment item elements

| Data element | Description |
|---|---|
| **Assessment item identifier** _(string)_ | The unique identifier for the assessment item. |
| **Assessment identifier** _(string)_ | The assessment that contains the assessment item. |
| **Assessment item type** _(string)_ | The type of question being asked. **Option set: Assessment item type** |
| **Body text** _(string)_ | The prompt, description, or other body text for the item. |
| **Release status** _(boolean)_ | `true` if the assessment item is released; that is, able to be taken. |

### 12. Assessment item response
A learner's response to a particular assessment item.

#### Assessment item response elements

| Data element | Description |
|---|---|
| **Assessment item response identifier** _(string)_ | The unique identifier for the assessment item response. |
| **Assessment item identifier** _(string)_ | The assessment item that is being responded to. |
| **Learner activity session identifier** _(string)_ | The learner activity session in which the assessment item response was completed or executed. |
| **Assessment result identifier** _(string)_ | The assessment result of which the assessment item response is a part. |
| **Value** _(string)_ | The literal response provided by the learner. |

### 13. Assessment result
The overall result of a learner's assessment attempt. Assessment results are comprised of one or more assessment item results.

Assessment results offer assessment-specific context to learner activity results for those learner activities that have a corresponding assessment.

#### Assessment result elements

| Data element | Description |
|---|---|
| **Assessment result identifier** _(string)_ | The unique identifier for the assessment result. |
| **Assessment identifier** _(string)_ | The assessment for which the result is given. |
| **Create date** _(date)_ | The date on which the assessment result was first created. |
| **Update date** _(date)_ | The date on which the assessment result was last updated. |
| **Workflow state** _(string)_ | The current state of the assessment result. **Option set: Assessment result workflow state** |

### 14. Grade
A class of data corresponding to evaluations of the results of learner activities.

#### Grade elements

| Data element | Description |
|---|---|
| **Grade identifier** _(string)_ | The unique identifier for the grade. |
| **Person identifier** _(string)_ | The learner being graded. |
| **Course section identifier** _(string)_ | The course section in which the learner is enrolled and for which the grade is applicable. |
| **Score value** _(string)_ | The learner's current raw grade. |
| **Published grade** _(string)_ | The learner's current scaled grade. |
| **Grade data type** _(string)_ | The unit of the published grade. **Option set: Score value data type** |
