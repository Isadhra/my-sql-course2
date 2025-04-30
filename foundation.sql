
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
--and ps.AdmittedDate BETWEEN '2024-02-27' AND '2024-03-01'
order by ps.AdmittedDate DESC, ps.PatientId DESC


SELECT 
    ps.Hospital,
    ps.Ward,
    COUNT(ps.Tariff) AS CountTariff,
    SUM(ps.Tariff) AS SumTariff,
    AVG(ps.Tariff) AS AverageTariff,
    MIN(ps.Tariff) AS MinTariff,
    MAX(ps.Tariff) AS MaxTariff
FROM PatientStay ps
GROUP BY ps.Hospital, ps.Ward
order by ps.numberOfPatients DESC
--SELECT * FROM PatientStay ps





select * from DimHospital

--and ps.AdmittedDate >= '2024-02-27'
--and ps.AdmittedDate <= '2024-03-01'


--SELECT * FROM airports


SELECT
    ps.PatientId
    ,ps.AdmittedDate
    ,ps.Hospital
    ,dh.HospitalType
    ,dh.HospitalSize
FROM
    PatientStay ps INNER JOIN DimHospital dh
    ON ps.Hospital = dh.Hospital
where dh.hospital is NULL

select * from DimHospitalBad