IF OBJECT_ID ('dbo.Deposits') IS NOT NULL
	DROP TABLE dbo.Deposits


CREATE TABLE dbo.Deposits
   (
      ID			INT IDENTITY (1,1) NOT NULL
	  ,Principal	DECIMAL(18,8)	NOT NULL	
	  ,StartDate	DATETIME		NOT NULL
	  ,EndDate		DATETIME		NOT NULL
	  ,InterestRate	DECIMAL(18,8)	NOT NULL
	  ,Term			INT				NOT NULL
	  ,MaturityAmount AS (Principal + (Principal*Term*InterestRate/100))

    )
;


ALTER TABLE dbo.Deposits
   ADD CONSTRAINT PK_Deposits_ID PRIMARY KEY CLUSTERED (ID);
