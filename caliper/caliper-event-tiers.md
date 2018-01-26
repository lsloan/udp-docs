# Caliper event tiers for UDP

When implementing a Caliper sensor, tool vendors have latitude in defining the the structure and richness of their event payloads. These choices impact the level of common modeling possible by the UDP when the latter ingests tool events.

The follow "event tiers" below are intended to guide Unizin, vendor, and consortium discussions about how best to structure tool events to maximally use the features of the UDP. In particular, the tiers below focus presently on enriching events to enable common data modeling. By that is meant the capacity for an event consumer from the UDP to enrich their interpretation of event streams with contextual, relational data ingested elsewhere by the UDP.

We presently define three "tiers" of events ingestable by the UDP:

## Copper tier
The UDP will reject events identified as Copper Tier events.

All events not conforming to the Caliper 1.1 standard are Copper tier events. This includes events that are not Caliper at all (such as xAPI statements) or conforming to version of Caliper that are pre 1.1.

## Silver tier
The UDP will ingest all events identified as Silver Tier events.

Silver tier events conform with Caliper 1.1. The UDP will attempt to commonly-model the `actor` of the Caliper. The success of that operation is not guaranteed, as vendors can use any arbitrary string to define the identifier for the actor.

## Gold tier
The UDP will ingest and commonly model the User and Course referents for all events identified as Gold Tier events.

Gold tier event payloads meet two essential criteria.

1. They include a course context, including a course identifier
1. They include external system identifiers, usually the LMS or SIS, that enables the UDP to associate a tool's local identifiers for User and Course with those of a foreign system.

Because there are many ways to provide data in Caliper, Unizin and the tool developer must establish a convention to meet the above criteria.

Unizin recommends the following:

1. Use Caliper's `CourseOffering` entity to describe course context
2. If the tool is launched via LTI from the LMS, Use Caliper's `LtiSession` entity to provide LMS or SIS identifiers for User and Course.
  - LMS (Canvas) user id: `custom_canvas_user_id`
  - LMS (Canvas) course id: `custom_canvas_course_id`
  - SIS user id: `lis_person_sourcedid`
  - SIS course id: `lis_course_offering_sourcedid`

3. If the tool is not launched via LTI, then a convention must be established with Unizin to provide SIS or LMS identifiers for the User (`actor`) and Course (in `CourseOffering`).
