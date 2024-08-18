-- Standardize data

Select Company , TRIM(company)
FROM layoffs_staging2;

UPDATE  layoffs_staging2
SET company = TRIM(company);


SELECT *
from  layoffs_staging2
Where industry LIKE 'crypto%';


UPDATE  layoffs_staging2
SET industry = 'crypto'
Where industry LIKE 'crypto%';

SELECT Distinct industry
from  layoffs_staging2;


SELECT Distinct location
from  layoffs_staging2
ORDER BY 1;

SELECT distinct  country , TRIM(TRAILING '.' FROM country)
FROM  layoffs_staging2
ORDER BY 1;


UPDATE  layoffs_staging2
SET country = TRIM(TRAILING '.' FROM country)
WHERE country LIKE 'United States%';


SELECT `date`
FROM layoffs_staging2;

UPDATE  layoffs_staging2
SET `date`= STR_TO_DATE(`date`,'%m/%d/%Y');

ALTER TABLE layoffs_staging2
MODIFY Column `date` DATE;

Select *
FROM layoffs_staging2;
