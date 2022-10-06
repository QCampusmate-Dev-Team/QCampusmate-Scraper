
SELECT DISTINCT major, subjectName FROM coursemetasraw;
SELECT COUNT(DISTINCT (major, subjectName)) FROM coursemetasraw;

SELECT DISTINCT (major, subjectName, quarter) FROM coursemetasraw WHERE subjectName LIKE '%造形Ⅰ%';

SELECT * FROM coursemetasraw;



SELECT DISTINCT (C.major, C.subjectName) FROM coursemetasraw AS C
    INNER JOIN majors AS M ON coursemetasraw.major=majors.major;



SELECT DISTINCT (C.major, C.subjectName), C.major, C.subjectName,M.id FROM coursemetasraw AS C
    INNER JOIN majors AS M 
    ON C.major=M.code;

SELECT DISTINCT major FROM coursemetasraw;


-- Partition
SELECT school, major, subjectName, COUNT(subjectName) OVER (PARTITION BY school, subjectName) FROM coursemetasraw;

SELECT * (SELECT school, major, subjectName, ROW_NUMBER() OVER (PARTITION BY school, subjectName) AS ver FROM coursemetasraw) WHERE ver=1;


-- 一学部のすべての'開講科目'をcourseMetasとして抽出し、保存。
WITH CTE1 AS (WITH coursemetaSName AS (SELECT *, ROW_NUMBER() OVER (PARTITION BY school, subjectName) AS ver FROM coursemetasraw)
    SELECT id,school, subjectname, subjectcode, unit, category, target_year, eleccompul, quarter FROM coursemetaSName WHERE ver=1),

    CTE2 AS (SELECT CTE1.id AS id, S.id AS school_id FROM CTE1, schools as S WHERE CTE1.school = S.code)

INSERT INTO courseMetas
 (school_id, subjectname, subjectcode, unit, category, target_year, eleccompul) (SELECT 
  school_id, subjectname, subjectcode, unit, category, target_year, eleccompul FROM CTE2 JOIN CTE1 ON CTE1.id=CTE2.id);
-- id, school_id, school, subjectname,





-- major_id, courseMeta_id
WITH mid_cmetaid AS 
    (WITH RMID AS 
        (SELECT R.school, R.major, R.subjectName, M.id as major_id, S.id as school_id FROM coursemetasraw AS R, majors AS M, schools AS S WHERE R.major = M.code AND R.school = S.code)
        
    SELECT C.id AS courseMeta_id, R.major_id FROM coursemetas AS C, RMID AS R WHERE C.school_id = R.school_id AND C.subjectName = R.subjectName
    )
INSERT INTO courseMetasInMajors 
    (major_id, courseMeta_id) (SELECT
     major_id, courseMeta_id FROM mid_cmetaid) 
-- C.subjectName, C.subjectCode


-- Test retrieval
-- Get all subjects in major_id=1
 SELECT C.subjectName, majors.major FROM coursemetasinmajors AS CM, majors, coursemetas AS C WHERE CM.major_id = 1 AND majors.id = CM.major_id AND CM.courseMeta_id = C.id; 
-- Count # of subjects in each majors, show majors name
SELECT COUNT(K.coursemeta_id), K.major FROM (SELECT * FROM coursemetasinmajors AS C, majors AS M WHERE C.major_id = M.id) AS K GROUP BY K.major;


-- SELECT DISTINCT (school_id, subjectName) 
WITH CTE AS 
    (SELECT S.id as school_id, R.subjectName, R.subjectCode, R.unit, R.category, R.target_year, R.elecCompul FROM coursemetasraw AS R, schools AS S WHERE R.school = S.code) 
SELECT DISTINCT (school_id, subjectName) FROM CTE;
