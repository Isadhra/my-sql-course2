
SELECT
   ps. PatientId
    , ps.AdmittedDate
    , ps.DischargeDate
    , DATEDIFF(DAY, ps.AdmittedDate, ps.DischargeDate) as LengthOfStay 
    , DATEADD(day, -14, ps.AdmittedDate) as ReminderDate
    , ps.Hospital
    , ps.Ward
    , ps.Tariff
    , ps. Ethnicity
FROM PatientStay ps
WHERE ps.Hospital IN ('PRUH', 'Oxleas')
AND ps.Ward LIKE '%Surgery'
and ps.AdmittedDate BETWEEN '2024-02-27' AND '2024-03-01'
--and ps.AdmittedDate >= '2024-02-27'
--and ps.AdmittedDate <= '2024-03-01'


--SELECT * FROM airports
