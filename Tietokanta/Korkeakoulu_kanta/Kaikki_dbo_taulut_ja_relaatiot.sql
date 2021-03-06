USE [KORKEAKOULU]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aikajakso](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Lukuvuosi] [nvarchar](50) NOT NULL,
	[Koodi] [nvarchar](20) NULL,
	[Nimi] [nvarchar](200) NULL,
	[Alkamispaivamaara] [date] NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
	[Lukukauden_kausitietoID] [int] NULL,
 CONSTRAINT [PK_Aikajakso_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arvosana](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Arvosana_asteikkoID] [int] NOT NULL,
	[Koodi] [nvarchar](20) NULL,
	[Arvosana] [nvarchar](200) NOT NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
	[Laskennallinen_arvo] [decimal](18, 6) NULL,
	[Avain] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Arvosana_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arvosana_asteikko](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Nimi] [nvarchar](200) NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
	[Avain] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Arvosana_asteikko_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Erikoistumiskoulutus](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](0) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](0) NULL,
 CONSTRAINT [PK__Erikoistumiskoulutus__ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Henkilo](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[KuntaID] [int] NULL,
	[SukupuoliID] [int] NULL,
	[KieliID] [int] NULL,
	[Henkilotunnus] [nvarchar](200) NULL,
	[Syntymaaika] [date] NULL,
	[Sukunimi] [nvarchar](200) NULL,
	[Etunimet] [nvarchar](200) NULL,
	[Kuollut] [bit] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
	[Avain] [nvarchar](100) NULL,
 CONSTRAINT [PK_Henkilo_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Henkilon_maa](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[HenkiloID] [int] NOT NULL,
	[MaaID] [int] NOT NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](7) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](7) NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Maan_rooliID] [int] NULL,
 CONSTRAINT [PK_Henkilon_maa_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Henkilon_patevyys](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Patevyysid] [int] NOT NULL,
	[HenkiloID] [int] NOT NULL,
	[OpintosuoritusID] [int] NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](50) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](50) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Henkilon_patevyys_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kasite](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](7) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](7) NULL,
 CONSTRAINT [PK_Kasite_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kieli](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Nimilyhenne] [nvarchar](200) NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Kieli_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kieliversio](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[KieliID] [int] NOT NULL,
	[OminaisuusID] [int] NOT NULL,
	[Avain] [nvarchar](100) NOT NULL,
	[Arvo] [nvarchar](4000) NOT NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](7) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](7) NULL,
 CONSTRAINT [PK_Kieliversio_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kieliversio_opiskeluoikeusnimi](
	[ID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[KieliID] [int] NOT NULL,
	[OminaisuusID] [int] NOT NULL,
	[Avain] [nvarchar](100) NOT NULL,
	[Arvo] [nvarchar](4000) NOT NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](7) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](7) NULL,
	[OpiskeluoikeusjaksoID] [int] NULL,
 CONSTRAINT [PK_Kieliversio_opiskeluoikeusnimi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Koulutusala](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Versio] [nvarchar](20) NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Koulutusala_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Koulutusaste](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Versio] [nvarchar](20) NULL,
	[Jarjestysnumero] [int] NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Koulutusaste_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kunta](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Nimilyhenne] [nvarchar](200) NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Kunta_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Liik_jaks_liittyva_luokittelu](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[LiikkuvuusjaksoID] [int] NOT NULL,
	[Liikkuvuuden_luokitteluID] [int] NOT NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](0) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](0) NULL,
 CONSTRAINT [PK__Liik_jaks_liittyva_luokittelu__ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Liikkuvuuden_luokittelu](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](0) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](0) NULL,
 CONSTRAINT [PK__Liikkuvuuden_luokittelu__ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Liikkuvuuden_suunta](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](0) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](0) NULL,
 CONSTRAINT [PK__Liikkuvuuden_suunta__ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Liikkuvuuden_tyyppi](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](0) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](0) NULL,
 CONSTRAINT [PK__Liikkuvuuden_tyyppi__ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Liikkuvuusjakso](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OpiskelijaID] [int] NOT NULL,
	[OpiskeluoikeusID] [int] NULL,
	[LiikkuvuusohjelmaID] [int] NULL,
	[Liikkuvuuden_suuntaID] [int] NULL,
	[MaaID] [int] NULL,
	[Liikkuvuuden_tyyppiID] [int] NULL,
	[Opiskeluoikeuden_tyyppiID] [int] NULL,
	[Avain] [nvarchar](100) NOT NULL,
	[Koulutusmoduulitunniste] [nvarchar](200) NULL,
	[Valtakunn_koul_mod_tunniste] [nvarchar](200) NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NOT NULL,
	[Luoja] [nvarchar](30) NULL,
	[Luontipaivamaara] [datetime2](0) NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](0) NULL,
 CONSTRAINT [PK__Liikkuvuusjakso__ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Liikkuvuusjakson_organisaatio](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[LiikkuvuusjaksoID] [int] NOT NULL,
	[OrganisaatioID] [int] NOT NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](0) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](0) NULL,
 CONSTRAINT [PK__Liikkuvuusjakson_organisaatio__ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Liikkuvuusohjelma](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](0) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](0) NULL,
 CONSTRAINT [PK__Liikkuvuusohjelma__ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lukukauden_kausitieto](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](7) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](7) NULL,
 CONSTRAINT [PK_Lukukauden_kausitieto_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lukukausi_ilm_tila](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Lukukausi_ilm_tila_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lukukausi_ilmoittautuminen](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[OpiskeluoikeusID] [int] NULL,
	[OpiskelijaID] [int] NOT NULL,
	[OrganisaatioID] [int] NOT NULL,
	[AikajaksoID] [int] NULL,
	[Lukukausi_ilmoittautumisen_tilaID] [int] NOT NULL,
	[Avain] [nvarchar](100) NOT NULL,
	[Ilmoittautumispaivamaara] [date] NOT NULL,
	[Ylioppilaskunnan_jasen] [bit] NULL,
	[YTHS_maksu] [bit] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
	[Alkamispaivamaara] [date] NULL,
	[Paattymispaivamaara] [date] NULL,
	[LukuvuosiMaksu] [smallint] NULL,
 CONSTRAINT [PK_Lukukausi_ilmoittautuminen_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lukuvuosimaksu](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Lukukausi_ilmoittautuminen_ID] [int] NOT NULL,
	[Maksettu_tilaID] [int] NOT NULL,
	[MaksettuSumma] [int] NULL,
	[Apuraha] [int] NULL,
	[OpiskeluoikeusID] [int] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](0) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](0) NULL,
 CONSTRAINT [PK_Lukuvuosimaksu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maa](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Maa_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maan_rooli](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](7) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](7) NULL,
 CONSTRAINT [PK_Maan_rooli_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maksun_tila](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Maksun_tila] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ominaisuus](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[KasiteID] [int] NOT NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](7) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](7) NULL,
 CONSTRAINT [PK_Ominaisuus_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Op_oik_jaks_liittyva_luokittelu](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[OpiskeluoikeusjaksoID] [int] NOT NULL,
	[Opiskeluoikeuden_luokitteluID] [int] NOT NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](0) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](0) NULL,
 CONSTRAINT [PK__Op_oik_jaks_liittyva_luokittelu__ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Op_oik_liittyva_erikoistumiskoulutus](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[OpiskeluoikeusID] [int] NOT NULL,
	[ErikoistumiskoulutusID] [int] NOT NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](0) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](0) NULL,
 CONSTRAINT [PK__Op_oik_liittyva_erikoistumiskoulutus__ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Op_oik_siir_opisk_liittyva_lukukausi](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[OpiskeluoikeusID] [int] NOT NULL,
	[Lukukausi_ilm_tilaID] [int] NOT NULL,
	[Maara] [smallint] NOT NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](0) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](0) NULL,
 CONSTRAINT [PK__Op_oik_siir_opisk_liittyva_lukukausi__ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Op_oikeuden_ensisijaisuus](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[OpiskeluoikeusID] [int] NOT NULL,
	[Avain] [nvarchar](100) NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Op_oikeuden_ensisijaisuus_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Op_oikeuden_organisaatio](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[OrganisaatioID] [int] NOT NULL,
	[OpiskeluoikeusID] [int] NOT NULL,
	[Organisaation_rooliID] [int] NOT NULL,
	[Avain] [nvarchar](100) NULL,
	[Osuus] [decimal](18, 6) NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Op_oikeuden_organisaatio_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Op_oikeuteen_liittyva_lukuvuosimaksu](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[OpiskeluoikeusID] [int] NOT NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Summa] [int] NULL,
	[Luoja] [nvarchar](30) NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Op_oikeuteen_liittyva_lukuvuosimaksu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Op_oikeuteen_liittyva_tila](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Op_oikeuden_tilaID] [int] NOT NULL,
	[OpiskeluoikeusID] [int] NOT NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Op_oikeuteen_liittyva_tila_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Op_suor_koulutusala](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[KoulutusalaID] [int] NOT NULL,
	[OpintosuoritusID] [int] NOT NULL,
	[Osuus] [decimal](18, 6) NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Op_suor_koulutusala_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Op_suor_liittyva_luokittelu](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[OpintosuoritusID] [int] NOT NULL,
	[Opintosuorituksen_luokitteluID] [int] NOT NULL,
	[Osuus] [decimal](18, 6) NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](7) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](7) NULL,
 CONSTRAINT [PK_Op_suor_liittyva_luokittelu_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Op_suor_luokittelu](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](7) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](7) NULL,
 CONSTRAINT [PK_Op_suor_luokittelu_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Op_suor_sisaltyvyys](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[OpintosuoritusID2] [int] NOT NULL,
	[OpintosuoritusID] [int] NOT NULL,
	[Laajuus] [decimal](18, 6) NULL,
	[Virtuaaliopetuksen_laajuus] [decimal](18, 6) NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Op_suor_sisaltyvyys_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Op_suorituksen_organisaatio](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[OrganisaatioID] [int] NOT NULL,
	[Organisaation_rooliID] [int] NOT NULL,
	[OpintosuoritusID] [int] NOT NULL,
	[Avain] [nvarchar](100) NULL,
	[Osuus] [decimal](18, 6) NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Op_suorituksen_organisaatio_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opetusharjoittelun_tyyppi](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Opetusharjoittelun_tyyppi_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opintosuorituksen_laji](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Opintosuorituksen_laji_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opintosuoritus](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[OpiskeluoikeusID] [int] NULL,
	[KieliID] [int] NULL,
	[ArvosanaID] [int] NULL,
	[OpiskelijaID] [int] NOT NULL,
	[TutkintonimikeID] [int] NULL,
	[Opetusharjoittelun_tyyppiID] [int] NULL,
	[Opintosuorituksen_lajiID] [int] NULL,
	[KoulutusasteID] [int] NULL,
	[Avain] [nvarchar](100) NOT NULL,
	[Suorituspaivamaara] [date] NOT NULL,
	[Opinnaytetyo] [bit] NULL,
	[Hankkeistettu] [bit] NULL,
	[Nimi] [nvarchar](500) NULL,
	[Koulutusmoduulitunniste] [nvarchar](200) NULL,
	[Valtakunn_koul_mod_tunniste] [nvarchar](200) NULL,
	[Laajuus] [decimal](18, 6) NOT NULL,
	[Opintoviikkolaajuus] [decimal](18, 6) NULL,
	[Tki_toiminnan_laajuus] [decimal](18, 6) NULL,
	[Tki_harjoittelun_laajuus] [decimal](18, 6) NULL,
	[Tki_muut_laajuus] [decimal](18, 6) NULL,
	[Lisatiedot] [nvarchar](4000) NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_OpintosuoritusID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opiskelija](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[HenkiloID] [int] NOT NULL,
	[Avain] [nvarchar](100) NOT NULL,
	[Kansallinen_op_id] [nvarchar](200) NULL,
	[Kirjoihintulopaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Opiskelija_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opiskelijaliikkuvuus](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[OpiskeluoikeusID] [int] NOT NULL,
	[Avain] [nvarchar](100) NULL,
	[Lahteva_tuleva] [bit] NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Opiskelijaliikkuvuus_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opiskeluoikeuden_liittyvyys](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[OpiskeluoikeusID2] [int] NOT NULL,
	[OpiskeluoikeusID] [int] NOT NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Opiskeluoikeuden_liittyvyys_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opiskeluoikeuden_luokittelu](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](0) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](0) NULL,
 CONSTRAINT [PK__Opiskeluoikeuden_luokittelu__ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opiskeluoikeuden_tila](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Opiskeluoikeuden_tila_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opiskeluoikeuden_tyyppi](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Opiskeluoikeuden_tyyppi_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opiskeluoikeus](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[OpiskelijaID] [int] NOT NULL,
	[KoulutusalaID] [int] NULL,
	[Op_oikeuden_tyyppiID] [int] NOT NULL,
	[Avain] [nvarchar](100) NULL,
	[Aikuiskoulutus] [bit] NULL,
	[Siirtopaivamaara] [date] NULL,
	[Lahdejarj_op_oik_tunnus] [nvarchar](200) NULL,
	[Opintojen_aloituspaivamaara] [date] NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Lasna_poissa_lukukausien_summa] [smallint] NULL,
	[Avoimen_vayla] [bit] NULL,
	[Maisteriohjelma] [bit] NULL,
	[Laajuus] [decimal](18, 6) NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Opiskeluoikeus_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opiskeluoikeusjakso](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[KuntaID] [int] NULL,
	[TutkintonimikeID] [int] NULL,
	[OpiskeluoikeusID] [int] NOT NULL,
	[KieliID] [int] NULL,
	[RahoituslahdeID] [int] NULL,
	[Avain] [nvarchar](100) NOT NULL,
	[Koulutusmoduulitunniste] [nvarchar](200) NULL,
	[Valtakunn_koul_mod_tunniste] [nvarchar](200) NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Opiskeluoikeusjakso_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opiskeluoikeusjakson_patevyys](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[OpiskeluoikeusjaksoID] [int] NOT NULL,
	[PatevyysID] [int] NOT NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](7) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](7) NULL,
 CONSTRAINT [PK_Opiskeluoikeusjakson_patevyys_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opsuorituksen_hyvaksiluku](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[OpintosuoritusID] [int] NOT NULL,
	[Hyvaksilukupaivamaara] [date] NULL,
	[Avain] [nvarchar](100) NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Opsuorituksen_hyvaksiluku_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organisaatio](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Organisaatio_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organisaation_rooli](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Nimi] [nvarchar](200) NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Organisaation_rooli_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patevyys](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Patevyys_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rahoituslahde](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Rahoitus_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sukupuoli](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Sukupuoli_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tutkintonimike](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Koodi] [nvarchar](20) NOT NULL,
	[Nimi] [nvarchar](200) NOT NULL,
	[Alkamispaivamaara] [date] NOT NULL,
	[Paattymispaivamaara] [date] NULL,
	[Luoja] [nvarchar](30) NOT NULL,
	[Luontipaivamaara] [datetime2](4) NOT NULL,
	[Paivittaja] [nvarchar](30) NULL,
	[Paivityspaivamaara] [datetime2](4) NULL,
 CONSTRAINT [PK_Tutkintonimike_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Aikajakso] ADD  CONSTRAINT [DF_Aikajakso_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Aikajakso] ADD  CONSTRAINT [DF_Aikajakso_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Arvosana] ADD  CONSTRAINT [DF_Arvosana_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Arvosana] ADD  CONSTRAINT [DF_Arvosana_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Arvosana_asteikko] ADD  CONSTRAINT [DF_Arvosana_asteikko_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Arvosana_asteikko] ADD  CONSTRAINT [DF_Arvosana_asteikko_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Erikoistumiskoulutus] ADD  CONSTRAINT [DF__Erikoistumiskoulutus__Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Erikoistumiskoulutus] ADD  CONSTRAINT [DF__Erikoistumiskoulutus__Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Henkilo] ADD  CONSTRAINT [DF_Henkilo_Kuollut]  DEFAULT ((0)) FOR [Kuollut]
GO
ALTER TABLE [dbo].[Henkilo] ADD  CONSTRAINT [DF_Henkilo_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Henkilo] ADD  CONSTRAINT [DF_Henkilo_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Henkilon_maa] ADD  CONSTRAINT [DF_Henkilon_maa_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Henkilon_maa] ADD  CONSTRAINT [DF_Henkilon_maa_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Henkilon_patevyys] ADD  CONSTRAINT [DF_Henkilon_patevyys_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Henkilon_patevyys] ADD  CONSTRAINT [DF_Henkilon_patevyys_Luomispaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Kasite] ADD  CONSTRAINT [DF_Kasite_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Kasite] ADD  CONSTRAINT [DF_Kasite_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Kieli] ADD  CONSTRAINT [DF_Kieli_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Kieli] ADD  CONSTRAINT [DF_Kieli_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Kieliversio] ADD  CONSTRAINT [DF_Kieliversio_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Kieliversio] ADD  CONSTRAINT [DF_Kieliversio_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Kieliversio_opiskeluoikeusnimi] ADD  CONSTRAINT [DF_Kieliversio_opiskeluoikeusnimi_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Kieliversio_opiskeluoikeusnimi] ADD  CONSTRAINT [DF_Kieliversio_opiskeluoikeusnimi_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Koulutusala] ADD  CONSTRAINT [DF_Koulutusala_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Koulutusala] ADD  CONSTRAINT [DF_Koulutusala_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Koulutusaste] ADD  CONSTRAINT [DF_Koulutusaste_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Koulutusaste] ADD  CONSTRAINT [DF_Koulutusaste_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Kunta] ADD  CONSTRAINT [DF_Kunta_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Kunta] ADD  CONSTRAINT [DF_Kunta_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Liik_jaks_liittyva_luokittelu] ADD  CONSTRAINT [DF__Liik_jaks_liittyva_luokittelu__Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Liik_jaks_liittyva_luokittelu] ADD  CONSTRAINT [DF__Liik_jaks_liittyva_luokittelu__Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Liikkuvuuden_luokittelu] ADD  CONSTRAINT [DF__Liikkuvuuden_luokittelu__Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Liikkuvuuden_luokittelu] ADD  CONSTRAINT [DF__Liikkuvuuden_luokittelu__Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Liikkuvuuden_suunta] ADD  CONSTRAINT [DF__Liikkuvuuden_suunta__Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Liikkuvuuden_suunta] ADD  CONSTRAINT [DF__Liikkuvuuden_suunta__Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Liikkuvuuden_tyyppi] ADD  CONSTRAINT [DF__Liikkuvuuden_tyyppi__Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Liikkuvuuden_tyyppi] ADD  CONSTRAINT [DF__Liikkuvuuden_tyyppi__Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Liikkuvuusjakso] ADD  CONSTRAINT [DF__Liikkuvuusjakso__Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Liikkuvuusjakso] ADD  CONSTRAINT [DF__Liikkuvuusjakso__Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Liikkuvuusjakson_organisaatio] ADD  CONSTRAINT [DF__Liikkuvuusjakson_organisaatio__Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Liikkuvuusjakson_organisaatio] ADD  CONSTRAINT [DF__Liikkuvuusjakson_organisaatio__Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Liikkuvuusohjelma] ADD  CONSTRAINT [DF__Liikkuvuusohjelma__Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Liikkuvuusohjelma] ADD  CONSTRAINT [DF__Liikkuvuusohjelma__Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Lukukauden_kausitieto] ADD  CONSTRAINT [DF_Lukukauden_kausitieto_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Lukukauden_kausitieto] ADD  CONSTRAINT [DF_Lukukauden_kausitieto_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Lukukausi_ilm_tila] ADD  CONSTRAINT [DF_Lukukausi_ilm_tila_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Lukukausi_ilm_tila] ADD  CONSTRAINT [DF_Lukukausi_ilm_tila_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Lukukausi_ilmoittautuminen] ADD  CONSTRAINT [DF_Lukukausi_ilmoittautuminen_Ylioppilaskunnan_jasen]  DEFAULT ((0)) FOR [Ylioppilaskunnan_jasen]
GO
ALTER TABLE [dbo].[Lukukausi_ilmoittautuminen] ADD  CONSTRAINT [DF_Lukukausi_ilmoittautuminen_YTHS_maksu]  DEFAULT ((0)) FOR [YTHS_maksu]
GO
ALTER TABLE [dbo].[Lukukausi_ilmoittautuminen] ADD  CONSTRAINT [DF_Lukukausi_ilmoittautuminen_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Lukukausi_ilmoittautuminen] ADD  CONSTRAINT [DF_Lukukausi_ilmoittautuminen_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Lukuvuosimaksu] ADD  CONSTRAINT [DF_Lukuvuosimaksu_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Lukuvuosimaksu] ADD  CONSTRAINT [DF_Lukuvuosimaksu_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Maa] ADD  CONSTRAINT [DF_Maa_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Maa] ADD  CONSTRAINT [DF_Maa_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Maan_rooli] ADD  CONSTRAINT [DF_Maan_rooli_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Maan_rooli] ADD  CONSTRAINT [DF_Maan_rooli_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Maksun_tila] ADD  CONSTRAINT [DF_Maksun_tila_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Maksun_tila] ADD  CONSTRAINT [DF_Maksun_tila_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Ominaisuus] ADD  CONSTRAINT [DF_Ominaisuus_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Ominaisuus] ADD  CONSTRAINT [DF_Ominaisuus_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Op_oik_jaks_liittyva_luokittelu] ADD  CONSTRAINT [DF__Op_oik_jaks_liittyva_luokittelu__Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Op_oik_jaks_liittyva_luokittelu] ADD  CONSTRAINT [DF__Op_oik_jaks_liittyva_luokittelu__Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Op_oik_liittyva_erikoistumiskoulutus] ADD  CONSTRAINT [DF__Op_oik_liittyva_erikoistumiskoulutus__Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Op_oik_liittyva_erikoistumiskoulutus] ADD  CONSTRAINT [DF__Op_oik_liittyva_erikoistumiskoulutus__Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Op_oik_siir_opisk_liittyva_lukukausi] ADD  CONSTRAINT [DF__Op_oik_siir_opisk_liittyva_lukukausi__Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Op_oik_siir_opisk_liittyva_lukukausi] ADD  CONSTRAINT [DF__Op_oik_siir_opisk_liittyva_lukukausi__Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Op_oikeuden_ensisijaisuus] ADD  CONSTRAINT [DF_Op_oikeuden_ensisijaisuus_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Op_oikeuden_ensisijaisuus] ADD  CONSTRAINT [DF_Op_oikeuden_ensisijaisuus_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Op_oikeuden_organisaatio] ADD  CONSTRAINT [DF_Op_oikeuden_organisaatio_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Op_oikeuden_organisaatio] ADD  CONSTRAINT [DF_Op_oikeuden_organisaatio_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Op_oikeuteen_liittyva_lukuvuosimaksu] ADD  CONSTRAINT [DF_Op_oikeuteen_liittyva_lukuvuosimaksu_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Op_oikeuteen_liittyva_lukuvuosimaksu] ADD  CONSTRAINT [DF_Op_oikeuteen_liittyva_lukuvuosimaksu_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Op_oikeuteen_liittyva_tila] ADD  CONSTRAINT [DF_Op_oikeuteen_liittyva_tila_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Op_oikeuteen_liittyva_tila] ADD  CONSTRAINT [DF_Op_oikeuteen_liittyva_tila_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Op_suor_koulutusala] ADD  CONSTRAINT [DF_Op_suor_koulutusala_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Op_suor_koulutusala] ADD  CONSTRAINT [DF_Op_suor_koulutusala_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Op_suor_liittyva_luokittelu] ADD  CONSTRAINT [DF_Op_suor_liittyva_luokittelu_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Op_suor_liittyva_luokittelu] ADD  CONSTRAINT [DF_Op_suor_liittyva_luokittelu_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Op_suor_luokittelu] ADD  CONSTRAINT [DF_Op_suor_luokittelu_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Op_suor_luokittelu] ADD  CONSTRAINT [DF_Op_suor_luokittelu_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Op_suor_sisaltyvyys] ADD  CONSTRAINT [DF_Op_suor_sisaltyvyys_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Op_suor_sisaltyvyys] ADD  CONSTRAINT [DF_Op_suor_sisaltyvyys_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Op_suorituksen_organisaatio] ADD  CONSTRAINT [DF_Op_suorituksen_organisaatio_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Op_suorituksen_organisaatio] ADD  CONSTRAINT [DF_Op_suorituksen_organisaatio_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Opetusharjoittelun_tyyppi] ADD  CONSTRAINT [DF_Opetusharjoittelun_tyyppi_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Opetusharjoittelun_tyyppi] ADD  CONSTRAINT [DF_Opetusharjoittelun_tyyppi_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Opintosuorituksen_laji] ADD  CONSTRAINT [DF_Opintosuorituksen_laji_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Opintosuorituksen_laji] ADD  CONSTRAINT [DF_Opintosuorituksen_laji_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Opintosuoritus] ADD  CONSTRAINT [DF_Opintosuoritus_Opinnaytetyo]  DEFAULT ((0)) FOR [Opinnaytetyo]
GO
ALTER TABLE [dbo].[Opintosuoritus] ADD  CONSTRAINT [DF_Opintosuoritus_Hankkeistettu]  DEFAULT ((0)) FOR [Hankkeistettu]
GO
ALTER TABLE [dbo].[Opintosuoritus] ADD  CONSTRAINT [DF_Opintosuoritus_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Opintosuoritus] ADD  CONSTRAINT [DF_Opintosuoritus_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Opiskelija] ADD  CONSTRAINT [DF_Opiskelija_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Opiskelija] ADD  CONSTRAINT [DF_Opiskelija_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Opiskelijaliikkuvuus] ADD  CONSTRAINT [DF_Opiskelijaliikkuvuus_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Opiskelijaliikkuvuus] ADD  CONSTRAINT [DF_Opiskelijaliikkuvuus_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Opiskeluoikeuden_liittyvyys] ADD  CONSTRAINT [DF_Opiskeluoikeuden_liittyvyys_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Opiskeluoikeuden_liittyvyys] ADD  CONSTRAINT [DF_Opiskeluoikeuden_liittyvyys_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Opiskeluoikeuden_luokittelu] ADD  CONSTRAINT [DF__Opiskeluoikeuden_luokittelu__Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Opiskeluoikeuden_luokittelu] ADD  CONSTRAINT [DF__Opiskeluoikeuden_luokittelu__Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Opiskeluoikeuden_tila] ADD  CONSTRAINT [DF_Opiskeluoikeuden_tila_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Opiskeluoikeuden_tila] ADD  CONSTRAINT [DF_Opiskeluoikeuden_tila_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Opiskeluoikeuden_tyyppi] ADD  CONSTRAINT [DF_Opiskeluoikeuden_tyyppi_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Opiskeluoikeuden_tyyppi] ADD  CONSTRAINT [DF_Opiskeluoikeuden_tyyppi_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Opiskeluoikeus] ADD  CONSTRAINT [DF_Opiskeluoikeus_Avoimen_vayla]  DEFAULT ((0)) FOR [Avoimen_vayla]
GO
ALTER TABLE [dbo].[Opiskeluoikeus] ADD  CONSTRAINT [DF_Opiskeluoikeus_Maisteriohjelma]  DEFAULT ((0)) FOR [Maisteriohjelma]
GO
ALTER TABLE [dbo].[Opiskeluoikeus] ADD  CONSTRAINT [DF_Opiskeluoikeus_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Opiskeluoikeus] ADD  CONSTRAINT [DF_Opiskeluoikeus_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Opiskeluoikeusjakso] ADD  CONSTRAINT [DF_Opiskeluoikeusjakso_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Opiskeluoikeusjakso] ADD  CONSTRAINT [DF_Opiskeluoikeusjakso_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Opiskeluoikeusjakson_patevyys] ADD  CONSTRAINT [DF_Opiskeluoikeusjakson_patevyys_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Opiskeluoikeusjakson_patevyys] ADD  CONSTRAINT [DF_Opiskeluoikeusjakson_patevyys_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Opsuorituksen_hyvaksiluku] ADD  CONSTRAINT [DF_Opsuorituksen_hyvaksiluku_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Opsuorituksen_hyvaksiluku] ADD  CONSTRAINT [DF_Opsuorituksen_hyvaksiluku_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Organisaatio] ADD  CONSTRAINT [DF_Organisaatio_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Organisaatio] ADD  CONSTRAINT [DF_Organisaatio_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Organisaation_rooli] ADD  CONSTRAINT [DF_Organisaation_rooli_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Organisaation_rooli] ADD  CONSTRAINT [DF_Organisaation_rooli_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Patevyys] ADD  CONSTRAINT [DF_Patevyys_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Patevyys] ADD  CONSTRAINT [DF_Patevyys_Luomispaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Rahoituslahde] ADD  CONSTRAINT [DF_Rahoituslahde_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Rahoituslahde] ADD  CONSTRAINT [DF_Rahoituslahde_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Sukupuoli] ADD  CONSTRAINT [DF_Sukupuoli_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Sukupuoli] ADD  CONSTRAINT [DF_Sukupuoli_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Tutkintonimike] ADD  CONSTRAINT [DF_Tutkintonimike_Luoja]  DEFAULT (original_login()) FOR [Luoja]
GO
ALTER TABLE [dbo].[Tutkintonimike] ADD  CONSTRAINT [DF_Tutkintonimike_Luontipaivamaara]  DEFAULT (getdate()) FOR [Luontipaivamaara]
GO
ALTER TABLE [dbo].[Aikajakso]  WITH NOCHECK ADD  CONSTRAINT [FK_Aikajakso_Lukukauden_kausitieto] FOREIGN KEY([Lukukauden_kausitietoID])
REFERENCES [dbo].[Lukukauden_kausitieto] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Aikajakso] CHECK CONSTRAINT [FK_Aikajakso_Lukukauden_kausitieto]
GO
ALTER TABLE [dbo].[Arvosana]  WITH NOCHECK ADD  CONSTRAINT [FK_Arvosana_Arvosana_asteikko] FOREIGN KEY([Arvosana_asteikkoID])
REFERENCES [dbo].[Arvosana_asteikko] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Arvosana] CHECK CONSTRAINT [FK_Arvosana_Arvosana_asteikko]
GO
ALTER TABLE [dbo].[Henkilo]  WITH NOCHECK ADD  CONSTRAINT [FK_Henkilo_Kieli] FOREIGN KEY([KieliID])
REFERENCES [dbo].[Kieli] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Henkilo] CHECK CONSTRAINT [FK_Henkilo_Kieli]
GO
ALTER TABLE [dbo].[Henkilo]  WITH NOCHECK ADD  CONSTRAINT [FK_Henkilo_Kunta] FOREIGN KEY([KuntaID])
REFERENCES [dbo].[Kunta] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Henkilo] CHECK CONSTRAINT [FK_Henkilo_Kunta]
GO
ALTER TABLE [dbo].[Henkilo]  WITH NOCHECK ADD  CONSTRAINT [FK_Henkilo_Sukupuoli] FOREIGN KEY([SukupuoliID])
REFERENCES [dbo].[Sukupuoli] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Henkilo] CHECK CONSTRAINT [FK_Henkilo_Sukupuoli]
GO
ALTER TABLE [dbo].[Henkilon_maa]  WITH NOCHECK ADD  CONSTRAINT [FK_Henkilon_maa_Henkilo] FOREIGN KEY([HenkiloID])
REFERENCES [dbo].[Henkilo] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Henkilon_maa] CHECK CONSTRAINT [FK_Henkilon_maa_Henkilo]
GO
ALTER TABLE [dbo].[Henkilon_maa]  WITH NOCHECK ADD  CONSTRAINT [FK_Henkilon_maa_Maa] FOREIGN KEY([MaaID])
REFERENCES [dbo].[Maa] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Henkilon_maa] CHECK CONSTRAINT [FK_Henkilon_maa_Maa]
GO
ALTER TABLE [dbo].[Henkilon_maa]  WITH NOCHECK ADD  CONSTRAINT [FK_Henkilon_maa_Maan_rooli] FOREIGN KEY([Maan_rooliID])
REFERENCES [dbo].[Maan_rooli] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Henkilon_maa] CHECK CONSTRAINT [FK_Henkilon_maa_Maan_rooli]
GO
ALTER TABLE [dbo].[Henkilon_patevyys]  WITH NOCHECK ADD  CONSTRAINT [FK_Henkilon_patevyys_Henkilo] FOREIGN KEY([HenkiloID])
REFERENCES [dbo].[Henkilo] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Henkilon_patevyys] CHECK CONSTRAINT [FK_Henkilon_patevyys_Henkilo]
GO
ALTER TABLE [dbo].[Henkilon_patevyys]  WITH NOCHECK ADD  CONSTRAINT [FK_Henkilon_patevyys_Opintosuoritus] FOREIGN KEY([OpintosuoritusID])
REFERENCES [dbo].[Opintosuoritus] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Henkilon_patevyys] CHECK CONSTRAINT [FK_Henkilon_patevyys_Opintosuoritus]
GO
ALTER TABLE [dbo].[Henkilon_patevyys]  WITH NOCHECK ADD  CONSTRAINT [FK_Henkilon_patevyys_Patevyys] FOREIGN KEY([Patevyysid])
REFERENCES [dbo].[Patevyys] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Henkilon_patevyys] CHECK CONSTRAINT [FK_Henkilon_patevyys_Patevyys]
GO
ALTER TABLE [dbo].[Kieliversio]  WITH CHECK ADD  CONSTRAINT [FK_Kieliversio_KieliID] FOREIGN KEY([KieliID])
REFERENCES [dbo].[Kieli] ([ID])
GO
ALTER TABLE [dbo].[Kieliversio] CHECK CONSTRAINT [FK_Kieliversio_KieliID]
GO
ALTER TABLE [dbo].[Kieliversio]  WITH CHECK ADD  CONSTRAINT [FK_Kieliversio_OminaisuusID] FOREIGN KEY([OminaisuusID])
REFERENCES [dbo].[Ominaisuus] ([ID])
GO
ALTER TABLE [dbo].[Kieliversio] CHECK CONSTRAINT [FK_Kieliversio_OminaisuusID]
GO
ALTER TABLE [dbo].[Kieliversio_opiskeluoikeusnimi]  WITH NOCHECK ADD  CONSTRAINT [FK_Kieliversio_opiskeluoikeusnimi_Kieli] FOREIGN KEY([KieliID])
REFERENCES [dbo].[Kieli] ([ID])
GO
ALTER TABLE [dbo].[Kieliversio_opiskeluoikeusnimi] CHECK CONSTRAINT [FK_Kieliversio_opiskeluoikeusnimi_Kieli]
GO
ALTER TABLE [dbo].[Kieliversio_opiskeluoikeusnimi]  WITH NOCHECK ADD  CONSTRAINT [FK_Kieliversio_opiskeluoikeusnimi_Ominaisuus] FOREIGN KEY([OminaisuusID])
REFERENCES [dbo].[Ominaisuus] ([ID])
GO
ALTER TABLE [dbo].[Kieliversio_opiskeluoikeusnimi] CHECK CONSTRAINT [FK_Kieliversio_opiskeluoikeusnimi_Ominaisuus]
GO
ALTER TABLE [dbo].[Liik_jaks_liittyva_luokittelu]  WITH CHECK ADD  CONSTRAINT [FK__Liik_jaks_liittyva_luokittelu__Liikkuvuuden_luokittelu] FOREIGN KEY([Liikkuvuuden_luokitteluID])
REFERENCES [dbo].[Liikkuvuuden_luokittelu] ([ID])
GO
ALTER TABLE [dbo].[Liik_jaks_liittyva_luokittelu] CHECK CONSTRAINT [FK__Liik_jaks_liittyva_luokittelu__Liikkuvuuden_luokittelu]
GO
ALTER TABLE [dbo].[Liik_jaks_liittyva_luokittelu]  WITH CHECK ADD  CONSTRAINT [FK__Liik_jaks_liittyva_luokittelu__Liikkuvuusjakso] FOREIGN KEY([LiikkuvuusjaksoID])
REFERENCES [dbo].[Liikkuvuusjakso] ([ID])
GO
ALTER TABLE [dbo].[Liik_jaks_liittyva_luokittelu] CHECK CONSTRAINT [FK__Liik_jaks_liittyva_luokittelu__Liikkuvuusjakso]
GO
ALTER TABLE [dbo].[Liikkuvuusjakso]  WITH CHECK ADD  CONSTRAINT [FK__Liikkuvuusjakso__Liikkuvuuden_suunta] FOREIGN KEY([Liikkuvuuden_suuntaID])
REFERENCES [dbo].[Liikkuvuuden_suunta] ([ID])
GO
ALTER TABLE [dbo].[Liikkuvuusjakso] CHECK CONSTRAINT [FK__Liikkuvuusjakso__Liikkuvuuden_suunta]
GO
ALTER TABLE [dbo].[Liikkuvuusjakso]  WITH CHECK ADD  CONSTRAINT [FK__Liikkuvuusjakso__Liikkuvuuden_tyyppi] FOREIGN KEY([Liikkuvuuden_tyyppiID])
REFERENCES [dbo].[Liikkuvuuden_tyyppi] ([ID])
GO
ALTER TABLE [dbo].[Liikkuvuusjakso] CHECK CONSTRAINT [FK__Liikkuvuusjakso__Liikkuvuuden_tyyppi]
GO
ALTER TABLE [dbo].[Liikkuvuusjakso]  WITH CHECK ADD  CONSTRAINT [FK__Liikkuvuusjakso__Liikkuvuusohjelma] FOREIGN KEY([LiikkuvuusohjelmaID])
REFERENCES [dbo].[Liikkuvuusohjelma] ([ID])
GO
ALTER TABLE [dbo].[Liikkuvuusjakso] CHECK CONSTRAINT [FK__Liikkuvuusjakso__Liikkuvuusohjelma]
GO
ALTER TABLE [dbo].[Liikkuvuusjakso]  WITH CHECK ADD  CONSTRAINT [FK__Liikkuvuusjakso__Maa] FOREIGN KEY([MaaID])
REFERENCES [dbo].[Maa] ([ID])
GO
ALTER TABLE [dbo].[Liikkuvuusjakso] CHECK CONSTRAINT [FK__Liikkuvuusjakso__Maa]
GO
ALTER TABLE [dbo].[Liikkuvuusjakso]  WITH CHECK ADD  CONSTRAINT [FK__Liikkuvuusjakso__Opiskelija] FOREIGN KEY([OpiskelijaID])
REFERENCES [dbo].[Opiskelija] ([ID])
GO
ALTER TABLE [dbo].[Liikkuvuusjakso] CHECK CONSTRAINT [FK__Liikkuvuusjakso__Opiskelija]
GO
ALTER TABLE [dbo].[Liikkuvuusjakso]  WITH CHECK ADD  CONSTRAINT [FK__Liikkuvuusjakso__Opiskeluoikeuden_tyyppi] FOREIGN KEY([Opiskeluoikeuden_tyyppiID])
REFERENCES [dbo].[Opiskeluoikeuden_tyyppi] ([ID])
GO
ALTER TABLE [dbo].[Liikkuvuusjakso] CHECK CONSTRAINT [FK__Liikkuvuusjakso__Opiskeluoikeuden_tyyppi]
GO
ALTER TABLE [dbo].[Liikkuvuusjakso]  WITH CHECK ADD  CONSTRAINT [FK__Liikkuvuusjakso__Opiskeluoikeus] FOREIGN KEY([OpiskeluoikeusID])
REFERENCES [dbo].[Opiskeluoikeus] ([ID])
GO
ALTER TABLE [dbo].[Liikkuvuusjakso] CHECK CONSTRAINT [FK__Liikkuvuusjakso__Opiskeluoikeus]
GO
ALTER TABLE [dbo].[Liikkuvuusjakson_organisaatio]  WITH CHECK ADD  CONSTRAINT [FK__Liikkuvuusjakson_organisaatio__Liikkuvuusjakso] FOREIGN KEY([LiikkuvuusjaksoID])
REFERENCES [dbo].[Liikkuvuusjakso] ([ID])
GO
ALTER TABLE [dbo].[Liikkuvuusjakson_organisaatio] CHECK CONSTRAINT [FK__Liikkuvuusjakson_organisaatio__Liikkuvuusjakso]
GO
ALTER TABLE [dbo].[Liikkuvuusjakson_organisaatio]  WITH CHECK ADD  CONSTRAINT [FK__Liikkuvuusjakson_organisaatio__Organisaatio] FOREIGN KEY([OrganisaatioID])
REFERENCES [dbo].[Organisaatio] ([ID])
GO
ALTER TABLE [dbo].[Liikkuvuusjakson_organisaatio] CHECK CONSTRAINT [FK__Liikkuvuusjakson_organisaatio__Organisaatio]
GO
ALTER TABLE [dbo].[Lukukausi_ilmoittautuminen]  WITH NOCHECK ADD  CONSTRAINT [FK_Lukukausi_ilmoittautuminen_Aikajakso] FOREIGN KEY([AikajaksoID])
REFERENCES [dbo].[Aikajakso] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Lukukausi_ilmoittautuminen] CHECK CONSTRAINT [FK_Lukukausi_ilmoittautuminen_Aikajakso]
GO
ALTER TABLE [dbo].[Lukukausi_ilmoittautuminen]  WITH NOCHECK ADD  CONSTRAINT [FK_Lukukausi_ilmoittautuminen_Lukukausi_ilmoittautumisen_tila] FOREIGN KEY([Lukukausi_ilmoittautumisen_tilaID])
REFERENCES [dbo].[Lukukausi_ilm_tila] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Lukukausi_ilmoittautuminen] CHECK CONSTRAINT [FK_Lukukausi_ilmoittautuminen_Lukukausi_ilmoittautumisen_tila]
GO
ALTER TABLE [dbo].[Lukukausi_ilmoittautuminen]  WITH CHECK ADD  CONSTRAINT [FK_Lukukausi_ilmoittautuminen_Opiskelija] FOREIGN KEY([OpiskelijaID])
REFERENCES [dbo].[Opiskelija] ([ID])
GO
ALTER TABLE [dbo].[Lukukausi_ilmoittautuminen] CHECK CONSTRAINT [FK_Lukukausi_ilmoittautuminen_Opiskelija]
GO
ALTER TABLE [dbo].[Lukukausi_ilmoittautuminen]  WITH CHECK ADD  CONSTRAINT [FK_Lukukausi_ilmoittautuminen_Opiskeluoikeus] FOREIGN KEY([OpiskeluoikeusID])
REFERENCES [dbo].[Opiskeluoikeus] ([ID])
GO
ALTER TABLE [dbo].[Lukukausi_ilmoittautuminen] CHECK CONSTRAINT [FK_Lukukausi_ilmoittautuminen_Opiskeluoikeus]
GO
ALTER TABLE [dbo].[Lukukausi_ilmoittautuminen]  WITH NOCHECK ADD  CONSTRAINT [FK_Lukukausi_ilmoittautuminen_Organisaatio] FOREIGN KEY([OrganisaatioID])
REFERENCES [dbo].[Organisaatio] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Lukukausi_ilmoittautuminen] CHECK CONSTRAINT [FK_Lukukausi_ilmoittautuminen_Organisaatio]
GO
ALTER TABLE [dbo].[Lukuvuosimaksu]  WITH NOCHECK ADD  CONSTRAINT [FK_Lukuvuosimaksu_Lukukausi_ilmoittautuminen] FOREIGN KEY([Lukukausi_ilmoittautuminen_ID])
REFERENCES [dbo].[Lukukausi_ilmoittautuminen] ([ID])
GO
ALTER TABLE [dbo].[Lukuvuosimaksu] CHECK CONSTRAINT [FK_Lukuvuosimaksu_Lukukausi_ilmoittautuminen]
GO
ALTER TABLE [dbo].[Lukuvuosimaksu]  WITH NOCHECK ADD  CONSTRAINT [FK_Lukuvuosimaksu_Lukuvuosimaksu] FOREIGN KEY([Maksettu_tilaID])
REFERENCES [dbo].[Maksun_tila] ([ID])
GO
ALTER TABLE [dbo].[Lukuvuosimaksu] CHECK CONSTRAINT [FK_Lukuvuosimaksu_Lukuvuosimaksu]
GO
ALTER TABLE [dbo].[Lukuvuosimaksu]  WITH NOCHECK ADD  CONSTRAINT [FK_Lukuvuosimaksu_Opiskeluoikeus] FOREIGN KEY([OpiskeluoikeusID])
REFERENCES [dbo].[Opiskeluoikeus] ([ID])
GO
ALTER TABLE [dbo].[Lukuvuosimaksu] CHECK CONSTRAINT [FK_Lukuvuosimaksu_Opiskeluoikeus]
GO
ALTER TABLE [dbo].[Ominaisuus]  WITH CHECK ADD  CONSTRAINT [FK_Ominaisuus_KasiteID] FOREIGN KEY([KasiteID])
REFERENCES [dbo].[Kasite] ([ID])
GO
ALTER TABLE [dbo].[Ominaisuus] CHECK CONSTRAINT [FK_Ominaisuus_KasiteID]
GO
ALTER TABLE [dbo].[Op_oik_jaks_liittyva_luokittelu]  WITH NOCHECK ADD  CONSTRAINT [FK__Op_oik_jaks_liittyva_luokittelu__Opiskeluoikeusjakso] FOREIGN KEY([OpiskeluoikeusjaksoID])
REFERENCES [dbo].[Opiskeluoikeusjakso] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Op_oik_jaks_liittyva_luokittelu] CHECK CONSTRAINT [FK__Op_oik_jaks_liittyva_luokittelu__Opiskeluoikeusjakso]
GO
ALTER TABLE [dbo].[Op_oik_liittyva_erikoistumiskoulutus]  WITH CHECK ADD  CONSTRAINT [FK__Op_oik_liittyva_erikoistumiskoulutus__Erikoistumiskoulutus] FOREIGN KEY([ErikoistumiskoulutusID])
REFERENCES [dbo].[Erikoistumiskoulutus] ([ID])
GO
ALTER TABLE [dbo].[Op_oik_liittyva_erikoistumiskoulutus] CHECK CONSTRAINT [FK__Op_oik_liittyva_erikoistumiskoulutus__Erikoistumiskoulutus]
GO
ALTER TABLE [dbo].[Op_oik_liittyva_erikoistumiskoulutus]  WITH NOCHECK ADD  CONSTRAINT [FK__Op_oik_liittyva_erikoistumiskoulutus__Opiskeluoikeus] FOREIGN KEY([OpiskeluoikeusID])
REFERENCES [dbo].[Opiskeluoikeus] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Op_oik_liittyva_erikoistumiskoulutus] CHECK CONSTRAINT [FK__Op_oik_liittyva_erikoistumiskoulutus__Opiskeluoikeus]
GO
ALTER TABLE [dbo].[Op_oik_siir_opisk_liittyva_lukukausi]  WITH CHECK ADD  CONSTRAINT [FK__Op_oik_siir_opisk_liittyva_lukukausi__Lukukausi_ilm_tila] FOREIGN KEY([Lukukausi_ilm_tilaID])
REFERENCES [dbo].[Lukukausi_ilm_tila] ([ID])
GO
ALTER TABLE [dbo].[Op_oik_siir_opisk_liittyva_lukukausi] CHECK CONSTRAINT [FK__Op_oik_siir_opisk_liittyva_lukukausi__Lukukausi_ilm_tila]
GO
ALTER TABLE [dbo].[Op_oik_siir_opisk_liittyva_lukukausi]  WITH NOCHECK ADD  CONSTRAINT [FK__Op_oik_siir_opisk_liittyva_lukukausi__Opiskeluoikeus] FOREIGN KEY([OpiskeluoikeusID])
REFERENCES [dbo].[Opiskeluoikeus] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Op_oik_siir_opisk_liittyva_lukukausi] CHECK CONSTRAINT [FK__Op_oik_siir_opisk_liittyva_lukukausi__Opiskeluoikeus]
GO
ALTER TABLE [dbo].[Op_oikeuden_ensisijaisuus]  WITH NOCHECK ADD  CONSTRAINT [FK_Op_oikeuden_ensisijaisuus_Opiskeluoikeus] FOREIGN KEY([OpiskeluoikeusID])
REFERENCES [dbo].[Opiskeluoikeus] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Op_oikeuden_ensisijaisuus] CHECK CONSTRAINT [FK_Op_oikeuden_ensisijaisuus_Opiskeluoikeus]
GO
ALTER TABLE [dbo].[Op_oikeuden_organisaatio]  WITH NOCHECK ADD  CONSTRAINT [FK_Op_oikeuden_organisaatio_Opiskeluoikeus] FOREIGN KEY([OpiskeluoikeusID])
REFERENCES [dbo].[Opiskeluoikeus] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Op_oikeuden_organisaatio] CHECK CONSTRAINT [FK_Op_oikeuden_organisaatio_Opiskeluoikeus]
GO
ALTER TABLE [dbo].[Op_oikeuden_organisaatio]  WITH NOCHECK ADD  CONSTRAINT [FK_Op_oikeuden_organisaatio_OrganisaatioID] FOREIGN KEY([OrganisaatioID])
REFERENCES [dbo].[Organisaatio] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Op_oikeuden_organisaatio] CHECK CONSTRAINT [FK_Op_oikeuden_organisaatio_OrganisaatioID]
GO
ALTER TABLE [dbo].[Op_oikeuden_organisaatio]  WITH NOCHECK ADD  CONSTRAINT [FK_Op_oikeuden_organisaatio_Organisaation_rooli] FOREIGN KEY([Organisaation_rooliID])
REFERENCES [dbo].[Organisaation_rooli] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Op_oikeuden_organisaatio] CHECK CONSTRAINT [FK_Op_oikeuden_organisaatio_Organisaation_rooli]
GO
ALTER TABLE [dbo].[Op_oikeuteen_liittyva_lukuvuosimaksu]  WITH NOCHECK ADD  CONSTRAINT [FK_Op_oikeuteen_liittyva_lukuvuosimaksu_Opiskeluoikeus] FOREIGN KEY([OpiskeluoikeusID])
REFERENCES [dbo].[Opiskeluoikeus] ([ID])
GO
ALTER TABLE [dbo].[Op_oikeuteen_liittyva_lukuvuosimaksu] CHECK CONSTRAINT [FK_Op_oikeuteen_liittyva_lukuvuosimaksu_Opiskeluoikeus]
GO
ALTER TABLE [dbo].[Op_oikeuteen_liittyva_tila]  WITH NOCHECK ADD  CONSTRAINT [FK_Op_oikeuteen_liittyva_tila_Opiskeluoikeus] FOREIGN KEY([OpiskeluoikeusID])
REFERENCES [dbo].[Opiskeluoikeus] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Op_oikeuteen_liittyva_tila] CHECK CONSTRAINT [FK_Op_oikeuteen_liittyva_tila_Opiskeluoikeus]
GO
ALTER TABLE [dbo].[Op_oikeuteen_liittyva_tila]  WITH NOCHECK ADD  CONSTRAINT [Op_oikeuteen_liittyva_tila_Opiskeluoikeuden_tila] FOREIGN KEY([Op_oikeuden_tilaID])
REFERENCES [dbo].[Opiskeluoikeuden_tila] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Op_oikeuteen_liittyva_tila] CHECK CONSTRAINT [Op_oikeuteen_liittyva_tila_Opiskeluoikeuden_tila]
GO
ALTER TABLE [dbo].[Op_suor_koulutusala]  WITH NOCHECK ADD  CONSTRAINT [Op_suor_koulutusala_KoulutusalaID] FOREIGN KEY([KoulutusalaID])
REFERENCES [dbo].[Koulutusala] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Op_suor_koulutusala] CHECK CONSTRAINT [Op_suor_koulutusala_KoulutusalaID]
GO
ALTER TABLE [dbo].[Op_suor_koulutusala]  WITH NOCHECK ADD  CONSTRAINT [Op_suor_koulutusala_Opintosuoritus] FOREIGN KEY([OpintosuoritusID])
REFERENCES [dbo].[Opintosuoritus] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Op_suor_koulutusala] CHECK CONSTRAINT [Op_suor_koulutusala_Opintosuoritus]
GO
ALTER TABLE [dbo].[Op_suor_liittyva_luokittelu]  WITH CHECK ADD  CONSTRAINT [FK_Op_suor_liittyva_luokittelu_0] FOREIGN KEY([Opintosuorituksen_luokitteluID])
REFERENCES [dbo].[Op_suor_luokittelu] ([ID])
GO
ALTER TABLE [dbo].[Op_suor_liittyva_luokittelu] CHECK CONSTRAINT [FK_Op_suor_liittyva_luokittelu_0]
GO
ALTER TABLE [dbo].[Op_suor_liittyva_luokittelu]  WITH NOCHECK ADD  CONSTRAINT [FK_Op_suor_liittyva_luokittelu_Opintosuoritus] FOREIGN KEY([OpintosuoritusID])
REFERENCES [dbo].[Opintosuoritus] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Op_suor_liittyva_luokittelu] CHECK CONSTRAINT [FK_Op_suor_liittyva_luokittelu_Opintosuoritus]
GO
ALTER TABLE [dbo].[Op_suor_sisaltyvyys]  WITH NOCHECK ADD  CONSTRAINT [FK_Op_suor_sisaltyvyys_Opintosuoritus] FOREIGN KEY([OpintosuoritusID])
REFERENCES [dbo].[Opintosuoritus] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Op_suor_sisaltyvyys] CHECK CONSTRAINT [FK_Op_suor_sisaltyvyys_Opintosuoritus]
GO
ALTER TABLE [dbo].[Op_suor_sisaltyvyys]  WITH NOCHECK ADD  CONSTRAINT [FK_Op_suor_sisaltyvyys_Opintosuoritus2] FOREIGN KEY([OpintosuoritusID2])
REFERENCES [dbo].[Opintosuoritus] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Op_suor_sisaltyvyys] CHECK CONSTRAINT [FK_Op_suor_sisaltyvyys_Opintosuoritus2]
GO
ALTER TABLE [dbo].[Op_suorituksen_organisaatio]  WITH NOCHECK ADD  CONSTRAINT [FK_Opintosuorituksen_organisaatio_Opintosuoritus] FOREIGN KEY([OpintosuoritusID])
REFERENCES [dbo].[Opintosuoritus] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Op_suorituksen_organisaatio] CHECK CONSTRAINT [FK_Opintosuorituksen_organisaatio_Opintosuoritus]
GO
ALTER TABLE [dbo].[Op_suorituksen_organisaatio]  WITH NOCHECK ADD  CONSTRAINT [FK_Opintosuorituksen_organisaatio_Organisaatio] FOREIGN KEY([OrganisaatioID])
REFERENCES [dbo].[Organisaatio] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Op_suorituksen_organisaatio] CHECK CONSTRAINT [FK_Opintosuorituksen_organisaatio_Organisaatio]
GO
ALTER TABLE [dbo].[Op_suorituksen_organisaatio]  WITH NOCHECK ADD  CONSTRAINT [FK_Opintosuorituksen_organisaatio_Organisaation_rooli] FOREIGN KEY([Organisaation_rooliID])
REFERENCES [dbo].[Organisaation_rooli] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Op_suorituksen_organisaatio] CHECK CONSTRAINT [FK_Opintosuorituksen_organisaatio_Organisaation_rooli]
GO
ALTER TABLE [dbo].[Opintosuoritus]  WITH NOCHECK ADD  CONSTRAINT [FK_Opintosuoritus_Arvosana] FOREIGN KEY([ArvosanaID])
REFERENCES [dbo].[Arvosana] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Opintosuoritus] CHECK CONSTRAINT [FK_Opintosuoritus_Arvosana]
GO
ALTER TABLE [dbo].[Opintosuoritus]  WITH NOCHECK ADD  CONSTRAINT [FK_Opintosuoritus_Kieli] FOREIGN KEY([KieliID])
REFERENCES [dbo].[Kieli] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Opintosuoritus] CHECK CONSTRAINT [FK_Opintosuoritus_Kieli]
GO
ALTER TABLE [dbo].[Opintosuoritus]  WITH NOCHECK ADD  CONSTRAINT [FK_Opintosuoritus_Koulutusaste] FOREIGN KEY([KoulutusasteID])
REFERENCES [dbo].[Koulutusaste] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Opintosuoritus] CHECK CONSTRAINT [FK_Opintosuoritus_Koulutusaste]
GO
ALTER TABLE [dbo].[Opintosuoritus]  WITH NOCHECK ADD  CONSTRAINT [FK_Opintosuoritus_Opetusharjoittelun_tyyppi] FOREIGN KEY([Opetusharjoittelun_tyyppiID])
REFERENCES [dbo].[Opetusharjoittelun_tyyppi] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Opintosuoritus] CHECK CONSTRAINT [FK_Opintosuoritus_Opetusharjoittelun_tyyppi]
GO
ALTER TABLE [dbo].[Opintosuoritus]  WITH NOCHECK ADD  CONSTRAINT [FK_Opintosuoritus_Opintosuorituksen_laji] FOREIGN KEY([Opintosuorituksen_lajiID])
REFERENCES [dbo].[Opintosuorituksen_laji] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Opintosuoritus] CHECK CONSTRAINT [FK_Opintosuoritus_Opintosuorituksen_laji]
GO
ALTER TABLE [dbo].[Opintosuoritus]  WITH NOCHECK ADD  CONSTRAINT [FK_Opintosuoritus_Opiskelija] FOREIGN KEY([OpiskelijaID])
REFERENCES [dbo].[Opiskelija] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Opintosuoritus] CHECK CONSTRAINT [FK_Opintosuoritus_Opiskelija]
GO
ALTER TABLE [dbo].[Opintosuoritus]  WITH NOCHECK ADD  CONSTRAINT [FK_Opintosuoritus_Opiskeluoikeus] FOREIGN KEY([OpiskeluoikeusID])
REFERENCES [dbo].[Opiskeluoikeus] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Opintosuoritus] CHECK CONSTRAINT [FK_Opintosuoritus_Opiskeluoikeus]
GO
ALTER TABLE [dbo].[Opintosuoritus]  WITH NOCHECK ADD  CONSTRAINT [FK_Opintosuoritus_Tutkintonimike] FOREIGN KEY([TutkintonimikeID])
REFERENCES [dbo].[Tutkintonimike] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Opintosuoritus] CHECK CONSTRAINT [FK_Opintosuoritus_Tutkintonimike]
GO
ALTER TABLE [dbo].[Opiskelija]  WITH NOCHECK ADD  CONSTRAINT [FK_Opiskelija_Henkilo] FOREIGN KEY([HenkiloID])
REFERENCES [dbo].[Henkilo] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Opiskelija] CHECK CONSTRAINT [FK_Opiskelija_Henkilo]
GO
ALTER TABLE [dbo].[Opiskelijaliikkuvuus]  WITH NOCHECK ADD  CONSTRAINT [FK_Opiskelijaliikkuvuus_Opiskeluoikeus] FOREIGN KEY([OpiskeluoikeusID])
REFERENCES [dbo].[Opiskeluoikeus] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Opiskelijaliikkuvuus] CHECK CONSTRAINT [FK_Opiskelijaliikkuvuus_Opiskeluoikeus]
GO
ALTER TABLE [dbo].[Opiskeluoikeuden_liittyvyys]  WITH NOCHECK ADD  CONSTRAINT [FK_Opiskeluoikeuden_liittyvyys_Opiskeluoikeus] FOREIGN KEY([OpiskeluoikeusID])
REFERENCES [dbo].[Opiskeluoikeus] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Opiskeluoikeuden_liittyvyys] CHECK CONSTRAINT [FK_Opiskeluoikeuden_liittyvyys_Opiskeluoikeus]
GO
ALTER TABLE [dbo].[Opiskeluoikeuden_liittyvyys]  WITH NOCHECK ADD  CONSTRAINT [FK_Opiskeluoikeuden_liittyvyys_Opiskeluoikeus2] FOREIGN KEY([OpiskeluoikeusID2])
REFERENCES [dbo].[Opiskeluoikeus] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Opiskeluoikeuden_liittyvyys] CHECK CONSTRAINT [FK_Opiskeluoikeuden_liittyvyys_Opiskeluoikeus2]
GO
ALTER TABLE [dbo].[Opiskeluoikeus]  WITH NOCHECK ADD  CONSTRAINT [FK_Opiskeluoikeus_Koulutusala] FOREIGN KEY([KoulutusalaID])
REFERENCES [dbo].[Koulutusala] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Opiskeluoikeus] CHECK CONSTRAINT [FK_Opiskeluoikeus_Koulutusala]
GO
ALTER TABLE [dbo].[Opiskeluoikeus]  WITH NOCHECK ADD  CONSTRAINT [FK_Opiskeluoikeus_Op_oikeuden_tyyppi] FOREIGN KEY([Op_oikeuden_tyyppiID])
REFERENCES [dbo].[Opiskeluoikeuden_tyyppi] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Opiskeluoikeus] CHECK CONSTRAINT [FK_Opiskeluoikeus_Op_oikeuden_tyyppi]
GO
ALTER TABLE [dbo].[Opiskeluoikeus]  WITH NOCHECK ADD  CONSTRAINT [FK_Opiskeluoikeus_Opiskelija] FOREIGN KEY([OpiskelijaID])
REFERENCES [dbo].[Opiskelija] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Opiskeluoikeus] CHECK CONSTRAINT [FK_Opiskeluoikeus_Opiskelija]
GO
ALTER TABLE [dbo].[Opiskeluoikeusjakso]  WITH NOCHECK ADD  CONSTRAINT [FK_Opiskeluoikeusjakso_Kieli] FOREIGN KEY([KieliID])
REFERENCES [dbo].[Kieli] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Opiskeluoikeusjakso] CHECK CONSTRAINT [FK_Opiskeluoikeusjakso_Kieli]
GO
ALTER TABLE [dbo].[Opiskeluoikeusjakso]  WITH NOCHECK ADD  CONSTRAINT [FK_Opiskeluoikeusjakso_Kunta] FOREIGN KEY([KuntaID])
REFERENCES [dbo].[Kunta] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Opiskeluoikeusjakso] CHECK CONSTRAINT [FK_Opiskeluoikeusjakso_Kunta]
GO
ALTER TABLE [dbo].[Opiskeluoikeusjakso]  WITH NOCHECK ADD  CONSTRAINT [FK_Opiskeluoikeusjakso_Opiskeluoikeus] FOREIGN KEY([OpiskeluoikeusID])
REFERENCES [dbo].[Opiskeluoikeus] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Opiskeluoikeusjakso] CHECK CONSTRAINT [FK_Opiskeluoikeusjakso_Opiskeluoikeus]
GO
ALTER TABLE [dbo].[Opiskeluoikeusjakso]  WITH NOCHECK ADD  CONSTRAINT [FK_Opiskeluoikeusjakso_Rahoituslahde] FOREIGN KEY([RahoituslahdeID])
REFERENCES [dbo].[Rahoituslahde] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Opiskeluoikeusjakso] CHECK CONSTRAINT [FK_Opiskeluoikeusjakso_Rahoituslahde]
GO
ALTER TABLE [dbo].[Opiskeluoikeusjakso]  WITH NOCHECK ADD  CONSTRAINT [FK_Opiskeluoikeusjakso_Tutkintonimike] FOREIGN KEY([TutkintonimikeID])
REFERENCES [dbo].[Tutkintonimike] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Opiskeluoikeusjakso] CHECK CONSTRAINT [FK_Opiskeluoikeusjakso_Tutkintonimike]
GO
ALTER TABLE [dbo].[Opiskeluoikeusjakson_patevyys]  WITH NOCHECK ADD  CONSTRAINT [FK_Opiskeluoikeusjakson_patevyys_Opiskeluoikeusjakso] FOREIGN KEY([OpiskeluoikeusjaksoID])
REFERENCES [dbo].[Opiskeluoikeusjakso] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Opiskeluoikeusjakson_patevyys] CHECK CONSTRAINT [FK_Opiskeluoikeusjakson_patevyys_Opiskeluoikeusjakso]
GO
ALTER TABLE [dbo].[Opiskeluoikeusjakson_patevyys]  WITH NOCHECK ADD  CONSTRAINT [FK_Opiskeluoikeusjakson_patevyys_Patevyys] FOREIGN KEY([PatevyysID])
REFERENCES [dbo].[Patevyys] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Opiskeluoikeusjakson_patevyys] CHECK CONSTRAINT [FK_Opiskeluoikeusjakson_patevyys_Patevyys]
GO
ALTER TABLE [dbo].[Opsuorituksen_hyvaksiluku]  WITH NOCHECK ADD  CONSTRAINT [FK_Opsuorituksen_hyvaksiluku_Opintosuoritus] FOREIGN KEY([OpintosuoritusID])
REFERENCES [dbo].[Opintosuoritus] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Opsuorituksen_hyvaksiluku] CHECK CONSTRAINT [FK_Opsuorituksen_hyvaksiluku_Opintosuoritus]
GO
