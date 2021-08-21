USE [NAB]
GO

/****** Object:  View [dbo].[vwDeposits]    Script Date: 19/08/2021 8:24:46 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER VIEW [dbo].[vwDeposits]
AS
	SELECT 
		*
	FROM   
		dbo.Deposits
GO

