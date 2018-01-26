# File format for SIS Loading Schema, v1

This document describes the file format for SIS data provided by Institutions for the purpose of ingestion into the UDP.

### Flat file format
Unizin requires your SIS data to be produced as UTF-8 comma-separated value (CSV) files with column headers. The header strings are described in the SIS Loading Schema document.

Based on version 1 of the SIS Loading Schema, institutions should:

 - Produce six data files. One each for Person, Term, Course, Section, Section Enrollment, and Institutional Enrollment.
 - Data files are full dumps (not deltas).
 - Data files are generated and pushed daily to the UDP.
 - The field delimiter is a comma (,)
 - The value quoting character is a double quotes (")
 - The quote escape character is a backslash (\\)

### File name format
Your institution will push the files noted above to a dedicated location via SFTP. Please work with the Unizin team to determine your institution's ingress point.

The filenames require providing timestamp data. The format of a timestamp is `YYYY-MM-DD'T'hh24:mm:ss`, where `'T'` is a literal character between the date and time.
