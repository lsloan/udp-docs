# SIS Loading Schema, v1.1

This document describes version 1 of the Unizin Data Platform Loading (UDP) schema for SIS data. The schema currently requires **54 unique SIS data points**.

**What data is part of the loading schema?**
The Unizin Data Platform is centered on all teaching and learning data at an institution. With respect SIS data. This loading schema asks for:

Each **Person** in your student information system (SIS). Our intention is to capture the students, instructors, teaching assistants, and other actors whose behaviors generate data in a teaching & learning environment, or about whom data is generated in a teaching and learning environment.

Each **Course**, **Academic Term**, **Course Section**, and **Enrollment** in your SIS. Our intention is to capture the essential contextual information that describe your teaching and learning environments and individuals’ membership in those environments. Enrollments include not only student, but also instructor, TA, etc. enrollments.

**How do we produce SIS data to this schema?**
The SIS Loading schema aligns your SIS data to the Unizin Common Data Model.

The first step in producing data to that model is correlating data in the SIS loading schema to data in your SIS. While some data is easy to correlate (e.g., person first, middle, and last name), other data may not correspond exactly how data is modeled in your SIS. In these latter cases, please open a dialog with Unizin to determine how to proceed.

Second, many data element in the Unizin Data Common Model have a fixed vocabulary of possible values. So you will need to translate your SIS data values to UCDM data values where a fixed vocabulary applies. In UCDM-parlance, a fixed vocabulary of values is called an "option set." For example, email addresses in UCDM have a type data element whose values can be `Home`, `Work`, `Organizational`, and `Other`. If your SIS models an Email Type, its possible values may or may not perfectly overlap with the values in the UCDM Option set for Email Type. When you produce the SIS data for ingestion in the UDP, you will need to align the values of data elements that use an option set to the appropriate code in that Option set. 
 
**Data type formats**
When data of type `date` is requested, the format is `YYYY-MM-DD`. When data of type `time` is requested, the format is `hh24:mm:ss`. If the data does not exist for a particular record, or the mapping between your SIS and the UCDM is insufficient, place a `null` in the associated CSV column.

### 1. Person
An actor in the learning environment, such as a student, instructor, or instructional designer.

The **Person** file should be created in a comma-separated (CSV) format with the naming convention `<Institution abbreviation>_Person_<date>.csv`, where `<date>` is the date on which the file was generated, and the following headers:

#### Person elements

| Data element | Header | Description |
|---|---|---|
| **SIS internal Person ID** _(string)_ | `SisIntId` | The internal primary key used by the SIS to define a person record. This ID may or may not be different than the external Person ID. |
| **SIS external Person ID** _(string)_ | `SisExtId` | The unique, global ID for a person that is generated by the SIS for use in external tools, such as the LMS, LTI tools, etc. |
| **First name** _(string)_ | `FirstName` | Legal first name of the person. |
| **Middle name** _(string)_ | `MiddleName` | Legal middle name or names of the person. |
| **Last name** _(string)_ | `LastName` | Legal family name of the person. |
| **Suffix** _(string)_ |`Suffix` | Suffix for the person. |
| **Gender** _(string)_ |`Sex` | The legal sex of the person. **Option set: Gender** |
| **Ethnicity** _(string)_ | `Ethnicity`| The self-reported ethnicity of the student. **Option set: Ethnicity** |
| **Zip code** _(string)_ |`ZipCode` | The zip code of the student’s permanent address at time of his or her application. |
| **US residency status** _(string)_ | `UsResidency` | The person’s residency status in the United States. **Option set: US Residency Status** |
| **High School GPA** _(float)_ | `HsGpa` | Student’s reported cumulative high school grade point average. This value is intended to capture the primary GPA used by your institution to evaluate this student’s admission. |
| **College GPA; cumulative** _(float)_ | `ColGpaCum`| The cumulative GPA of a post-secondary student through to their most recent term. This GPA score is intended to cover the whole career of a post-secondary student. |
| **Is active duty military** _(boolean)_ |`ActiveDuty` | Is the student/person an active duty member of the military? |
| **Is veteran** _(boolean)_ |`Veteran` | Is the student/person a military veteran (i.e., a retired member of the military who served on active duty)? |
| **Father highest education level** _(string)_ | `EduLevelPaternal` | The highest level of education attained by a person's father or paternal guardian(s). **Option set: Education level** |
| **Mother highest education level** _(string)_ | `EduLevelMaternal` | The highest level of education attained by a person's mother or maternal guardian(s). **Option set: Education level** |
| **Parent highest education level** _(string)_ | `EduLevelParental` | The highest level of education attained by a person's parent or guardian(s). Use this if the available data is not specific to a mother/maternal guardian or father/paternal guardian. **Option set: Education level** |
| **Enrollment level** _(string)_ |`EnrollmentLevel` | The enrollment type of this person (student) at your institution. **Option set: Enrollment level** |
| **Course count** _(integer)_ | `CourseCount` | Number of courses undertaken by student from date of SIS data availability to present, regardless of pass/fail. |
| **SAT Math Pre2016** _(integer)_  |  `SatMathPre2016` | The non-concorded, pre-2016 SAT Math score from the student's best sitting.  |
| **SAT Math Post2016** _(integer)_  |  `SatMathPost2016` | The post-2016 SAT Math score from the student's best sitting.  |
| **SAT Math Combined** _(integer)_  |  `SatMathCombined` | The combined SAT Math score from the student's best sitting. A combined score combines the actual post-2016 score with concorded (translated) pre-2016 score.  |
| **SAT Verbal Pre2016** _(integer)_  |  `SatVerbalPre2016` | The non-concorded, pre-2016 SAT Verbal score from the student's best sitting.  |
| **SAT Reading Post2016** _(integer)_  |  `SatReadingPost2016` | The post-2016 SAT Reading score from the student's best sitting.  |
| **SAT Verbal/Reading Combined** _(integer)_  |  `SatVerbalReadingCombined` | The combined SAT Verbal and Reading scores from the student's best sitting. A combined score combines the concorded (translated) pre-2016 Verbal score with the actual post-2016 Reading score. |
| **SAT Writing Pre2016** _(integer)_  |  `SatWritingPre2016` | The non-concorded, pre-2016 SAT Writing score from the student's best sitting.  |
| **SAT Writing Post2016** _(integer)_  |  `SatWritingPost2016` | The post-2016 SAT Writing score from the student's best sitting.  |
| **SAT Writing Combined** _(integer)_  |  `SatWritingCombined` | The combined SAT Writing scores from the student's best sitting. A combined score combines the concorded (translated) pre-2016 Writing score with the actual post-2016 Writing score *except* if the pre-2016 Writing score is missing, in which case this field is `null`. |
| **SAT Total Combined** _(integer)_  |  `SatTotalCombined` | Total Combined SAT score. This score combines concorded Math, Reading, and Writing scores except if a Writing score is unavailable, in which case this score is `null`.  |
| **ACT Reading** _(integer)_  |  `ActReading` | Score on ACT Reading exam.   |
| **ACT Math** _(integer)_  |  `ActMath` | Score on ACT Math exam.   |
| **ACT English** _(integer)_  |  `ActEnglish` | Score on ACT English exam.   |
| **ACT Science** _(integer)_  |  `ActScience` | Score on ACT Science exam.   |
| **ACT Composite** _(integer)_  |  `ActComposite` | Composite ACT score.   |
| **Phone number** _(string)_ | `PhoneNumber`| The university’s primary number for contacting a person by phone.|
| **Phone number type** _(string)_ |`PhoneType` | The type of phone number that is the primary method of contact for the person by phone. **Option set: Phone number type** |
| **Email address** _(string)_ | `EmailAddress`| The university’s primary address for contacting a person by email.|
| **Email address type** _(string)_ | `EmailType`| The type of email address that is the primary method of contact for the person by email.  **Option set: Email address type** |

### 2. Institutional affiliation
An institutional affiliation associates a person to the school as a whole.

The **Institutional affiliation** file should be created in a comma-separated (CSV) format with the naming convention `<Institution abbreviation>_Inst_Affiliation_<date>.csv`, where `<date>` is the date on which the file was generated, and the following headers:

#### Institutional affiliation elements

| Data element | Header | Description |
|---|---|---|
| **SIS internal Person ID** _(string)_ |`PersonId` | The unique, SIS-generated internal Person ID for the person affiliated in an institution of higher education. |
| **Directory information block** _(string)_ | `DirectoryBlock`| A variable used to describe Persons who are currently electing to block their directory information as per FERPA, or those who previously had a block but are requesting it be removed. A `null` value indicates that the related person does not have a FERPA directory block, and values may be shared in accordance with standard data agreements.  **Option set: Directory information FERPA blocker** |

### 3. Academic term
A calendar session in which classes are instructed.

The **Term** file should be created in a comma-separated (CSV) format with the naming convention `<Institution abbreviation>_Term_<date>.csv`, where `<date>` is the date on which the file was generated, and the following headers:

#### Academic term elements
| Data element | Header | Description |
|---|---|---|
| **SIS internal Term ID** _(string)_ | `SisIntId`| The unique primary key used internally by your SIS system to identify an academic term. This ID may or may not differ from the external id.|
| **SIS external Term ID** _(string)_ | `SisExtId` | The unique, global ID for an academic term generated in your institutional SIS for use by external tools such as Canvas, LTI applications, etc. |
| **Term type** _(string)_ | `TermType`| The type of academic term (Fall, Winter, Spring, Summer). **Option set: Term type** |
| **Session type** _(string)_ | `SessionType` | The type of session for your academic term, usually describing the length of the term. **Option set: Session type** |
| **Session name** _(string)_ | `SessionName` | The human readable name for the academic term. |
| **Begin date** _(date)_ | `TermBeginDate`| The date and time when the academic term formally begins.|
| **End date** _(date)_ | `TermEndDate`| The date and time when the academic term formally ends.|
| **Instruction begin date** _(date)_ | `InstrBeginDate`| The date and time when instruction begins.|
| **Instruction end date** _(date)_ | `InstrEndDate`| The date and time when instruction ends. |

### 4. Course Offering
A Course Offering is a group of Course Sections offered in an academic term. Typically, the group represents a teaching assignment given to a particular instructor or instructors. For example,  "BIO 101 Fall 2017, taught by Kara Boldt" is a Course Offering distinct from "BIO 101 Fall 2017, taught by Etienne Pelaprat."

The **Course** file should be created in a comma-separated (CSV) format with the naming convention `<Institution abbreviation>_Course_<date>.csv`, where `<date>` is the date on which the file was generated, and the following headers:

#### Course Offering elements
| Data element | Header | Description |
|---|---|---|
| **SIS internal Course Offering ID** _(string)_| `SisIntId`|  The unique primary key used by your SIS to internally identify a Course Offering. This ID may or may not differ from the external id.|
| **SIS external Course Offering ID** _(string)_ | `SisExtId`| The unique, global id for the Course Offering generated for Canvas and other learning systems and tools.|
| **SIS internal Term ID** _(string)_| `TermId`|  The globally unique, SIS-generated internal ID for the term to which the Course Offering belongs.|
| **Course subject** _(string)_ | `CourseSubj`| The alphabetic abbreviation of the academic department or discipline offering the course. It is one part of the total course ID number. E.g., "BIO" in "BIO 101."|
| **Course number** _(string)_ | `CourseNo` | The official reference number portion of a course ID. This number normally designates the level of the course as well as the level of the individual expected to enroll in the course. E.g. "101" in "BIO 101."|
| **Course title** _(string)_ | `Title`| The title of the Course Offering.|
| **Course description** _(string)_ | `Description`| The Course Offering description.|
| **Course status** _(string)_ | `Status`| The status of the Course Offering at the institution. **Option set: Course status** |
| **Course credits** _(string)_ | `AvailableCredits`| Measured in Carnegie units, the amount of credit available to a student who successfully meets the objectives of the Course Offering. |

### 5. Course Section

A Course Section is an instance of a Course Offering (meaning that it is particular to both a term and an instructor) in which students may enroll. Instructors may be in charge of one or more sections of a particular course instance. E.g., "BIO101 Fall 2017 taught by Kara Boldt, section 1" and "BIO101 Fall 2017 taught by Kara Boldt, section 2" describe two Course Sections that share a common Course Offering.

The **Section** file should be created in a comma-separated (CSV) format with the naming convention `<Institution abbreviation>_Section_<date>.csv`, where `<date>` is the date on which the file was generated, and the following headers:

#### Course Section elements

| Data element | Header | Description |
|---|---|---|
| **SIS internal Course section ID** _(string)_  | `SisIntId`| The unique primary key used by your SIS to internally identify a Course Section. This ID may or may not differ from the external id |
| **SIS external Course section ID** _(string)_  | `SisExtId`| The globally unique, SIS-generated ID used by Canvas and other learning tools to identify a particular section.  |
| **SIS internal Course Offering ID** _(string)_  | `CourseId`| The unique, SIS-generated ID for the Course Offering of which the section is an instance.|
| **SIS internal Term ID** _(string)_  | `TermId`| The unique, SIS-generated ID for the academic term to which the Course Section belongs. |
| **Course Section number** _(string)_  |`SectionNumber` | The unique number of a particular Course Section. E.g., "1", "015". |
| **Delivery mode** _(string)_  | `DeliveryMode`| The delivery mode for the instruction given in this Course Section. **Option set: Delivery mode**  |
| **Max enrollment** _(integer)_ | `MaxEnrollment`|  Maximum number of students who can be enrolled in the Course Section. |

### 5. Section enrollment
A section enrollment associates a person to a Course Section instance, and defines the specific capacity in which they act in that section.

The **Section Enrollment** file should be created in a comma-separated (CSV) format with the naming convention `<Institution abbreviation>_Enrollment_Section_<date>.csv`, where `<date>` is the date on which the file was generated, and the following headers:

#### Section enrollment elements

| Data element | Header | Description |
|---|---|---|
| **SIS internal Person ID** _(string)_ | `PersonId` | The unique, SIS-generated internal ID for the person who is enrolled in a Course Section.  |
| **SIS internal Course Section ID** _(string)_ | `SectionId`| The unique, SIS-generated internal ID for the Course Section in which a person is enrolled. |
| **SIS person role** _(string)_ | `Role` | The capacity in which the person acts in the specific Course Section. **Option set: Course Section enrollment role** |
| **Role status** _(string)_ | `RoleStatus` | A variable describing the current status of the person's enrollment in the section. **Option set: Course Section enrollment status** |
| **Entry date** _(date)_ | `EntryDate` | The date on which the person assumes the specified role within the Course Section (generally the start of the term). |
| **Exit date** _(date)_ | `ExitDate` | The date on which the person no longer has the specified role within the Course Section (generally the end of the term). |
| **Credits taken** _(float)_ | `CreditsTaken` | The number of credits taken by the student in a Course section   |
| **Credits earned** _(float)_ | `CreditsEarned` | The number of course credits earned by the student in the Course Section |
