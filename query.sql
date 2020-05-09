-- ������� �볺��� �� ����� �����
SELECT 
    education_type_name,
    COUNT(education_type_name) as education_count
FROM
    customer
GROUP BY
    education_type_name;

-- ���� ������ �볺��� �� ������
SELECT
    sex,
    SUM(capital_loss)
FROM (
    SELECT
        i.capital_loss,
        c.sex,
        c.policy_number
    FROM
        incident i,
        customer c
    WHERE
        c.policy_number = i.policy_number
)
GROUP BY
sex;

-- ������� ������� ��������� �� ����
SELECT 
    COUNT(incident_date),
    incident_date
FROM 
    incident
GROUP BY
    incident_date;