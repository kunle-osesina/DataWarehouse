﻿CREATE TABLE [dbo].[tblLanguage](
	[LanguageID] [int] NOT NULL,
	[Language] [nvarchar](255) NULL,
 CONSTRAINT [PK_tblLanguage] PRIMARY KEY CLUSTERED 
(
	[LanguageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]