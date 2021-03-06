# Students & Courses
---

NOTE: Има коментари в sql файловете :wink:


schema на базата - `students_and_courses_schema.sql`

В базата има 3 таблици:

1. `student`
  - id - primary key
  - name - varcher

2. `course`
  - id - primary key
  - language - varcher
  - year - integer

3. `student_to_course`
  - id - primary key
  - student_id - foreign key към `student`
  - course_id - foreign key към `course`

## Примери за Subqueries

1. `subquery_demo_01.sql` - взима всички студенти с техните курсове. Ако има студент с повече от 1 курс, взимаме първия. Ако има студент, който не е участвал в нито един курс, връщаме `null` в колоната на курса. (`име на студент` + `име на курса` + `година на курса`)

2. `subquery_demo_02.sql` - взима само студентите, които са участвали в точно 1 курс (`име на студент` + `име на курса` + `година на курса`)

3. `subquery_demo_03.sql` - взима само студентите, които не са участвали в нито един курс (`име на студент` + `име на курса` + `година на курса`)

4. `subquery_demo_04.sql` - взима студентите, които са участвали в повече от 1 курс (`име на студент` + `име на курса (първия срещнат)` + `година на курса`)


## Примери за JOIN


1. `with_join_query_01.sql` - взима ВСИЧКИ студенти, заедно с курсовете(ако има такива), в които са участвали (LEFT OUTER JOIN от student към student_to_course и LEFT OUTER JOIN на получената таблица към course)

2. `with_join_query_02.sql` - взима САМО студентите, които са участвали в курс (INNER JOIN)
