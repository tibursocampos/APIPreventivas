USE [master]
GO
/****** Object:  Database [APIPreventivasNovaModel]    Script Date: 03/02/2021 20:46:17 ******/
CREATE DATABASE [APIPreventivasNovaModel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'APIPreventivasNovaModel', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\APIPreventivasNovaModel.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'APIPreventivasNovaModel_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\APIPreventivasNovaModel_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [APIPreventivasNovaModel] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [APIPreventivasNovaModel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [APIPreventivasNovaModel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET ARITHABORT OFF 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET  ENABLE_BROKER 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET RECOVERY FULL 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET  MULTI_USER 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [APIPreventivasNovaModel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [APIPreventivasNovaModel] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'APIPreventivasNovaModel', N'ON'
GO
ALTER DATABASE [APIPreventivasNovaModel] SET QUERY_STORE = OFF
GO
USE [APIPreventivasNovaModel]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 03/02/2021 20:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Alvos]    Script Date: 03/02/2021 20:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alvos](
	[IdAlvo] [int] IDENTITY(1,1) NOT NULL,
	[IdCronograma] [int] NOT NULL,
	[IdSite] [int] NOT NULL,
	[Concluido] [bit] NOT NULL,
	[DataConclusao] [datetime2](7) NULL,
 CONSTRAINT [PK_Alvos] PRIMARY KEY CLUSTERED 
(
	[IdAlvo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AlvosSites]    Script Date: 03/02/2021 20:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlvosSites](
	[IdAlvo] [int] NOT NULL,
	[IdSite] [int] NOT NULL,
 CONSTRAINT [PK_AlvosSites] PRIMARY KEY CLUSTERED 
(
	[IdAlvo] ASC,
	[IdSite] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Atividades]    Script Date: 03/02/2021 20:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Atividades](
	[IdAtividade] [int] IDENTITY(1,1) NOT NULL,
	[IdAlvo] [int] NOT NULL,
	[IdTecnico] [int] NOT NULL,
	[TipoAtividade] [int] NOT NULL,
	[DataProgramacao] [datetime2](7) NOT NULL,
	[DataConclusao] [datetime2](7) NULL,
 CONSTRAINT [PK_Atividades] PRIMARY KEY CLUSTERED 
(
	[IdAtividade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cronogramas]    Script Date: 03/02/2021 20:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cronogramas](
	[IdCronograma] [int] IDENTITY(1,1) NOT NULL,
	[IdSupervisor] [int] NOT NULL,
	[Mes] [int] NOT NULL,
	[Ano] [int] NOT NULL,
	[Concluido] [bit] NOT NULL,
	[DataConclusao] [datetime2](7) NULL,
 CONSTRAINT [PK_Cronogramas] PRIMARY KEY CLUSTERED 
(
	[IdCronograma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sites]    Script Date: 03/02/2021 20:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sites](
	[IdSite] [int] IDENTITY(1,1) NOT NULL,
	[EndId] [nvarchar](max) NULL,
	[SiteGsm] [nvarchar](max) NULL,
	[Site3g] [nvarchar](max) NULL,
	[SiteLte] [nvarchar](max) NULL,
	[Cidade] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[ANF] [int] NOT NULL,
 CONSTRAINT [PK_Sites] PRIMARY KEY CLUSTERED 
(
	[IdSite] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 03/02/2021 20:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[CPF] [nvarchar](max) NULL,
	[PrimeiroNome] [nvarchar](max) NULL,
	[UltimoNome] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Senha] [nvarchar](max) NULL,
	[ANF] [int] NOT NULL,
	[Permissao] [int] NOT NULL,
	[Area] [int] NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_Alvos_IdCronograma]    Script Date: 03/02/2021 20:46:17 ******/
CREATE NONCLUSTERED INDEX [IX_Alvos_IdCronograma] ON [dbo].[Alvos]
(
	[IdCronograma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AlvosSites_IdSite]    Script Date: 03/02/2021 20:46:17 ******/
CREATE NONCLUSTERED INDEX [IX_AlvosSites_IdSite] ON [dbo].[AlvosSites]
(
	[IdSite] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Atividades_IdAlvo]    Script Date: 03/02/2021 20:46:17 ******/
CREATE NONCLUSTERED INDEX [IX_Atividades_IdAlvo] ON [dbo].[Atividades]
(
	[IdAlvo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Atividades_IdTecnico]    Script Date: 03/02/2021 20:46:17 ******/
CREATE NONCLUSTERED INDEX [IX_Atividades_IdTecnico] ON [dbo].[Atividades]
(
	[IdTecnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cronogramas_IdSupervisor]    Script Date: 03/02/2021 20:46:17 ******/
CREATE NONCLUSTERED INDEX [IX_Cronogramas_IdSupervisor] ON [dbo].[Cronogramas]
(
	[IdSupervisor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Alvos]  WITH CHECK ADD  CONSTRAINT [FK_Alvos_Cronogramas_IdCronograma] FOREIGN KEY([IdCronograma])
REFERENCES [dbo].[Cronogramas] ([IdCronograma])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Alvos] CHECK CONSTRAINT [FK_Alvos_Cronogramas_IdCronograma]
GO
ALTER TABLE [dbo].[AlvosSites]  WITH CHECK ADD  CONSTRAINT [FK_AlvosSites_Alvos_IdAlvo] FOREIGN KEY([IdAlvo])
REFERENCES [dbo].[Alvos] ([IdAlvo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AlvosSites] CHECK CONSTRAINT [FK_AlvosSites_Alvos_IdAlvo]
GO
ALTER TABLE [dbo].[AlvosSites]  WITH CHECK ADD  CONSTRAINT [FK_AlvosSites_Sites_IdSite] FOREIGN KEY([IdSite])
REFERENCES [dbo].[Sites] ([IdSite])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AlvosSites] CHECK CONSTRAINT [FK_AlvosSites_Sites_IdSite]
GO
ALTER TABLE [dbo].[Atividades]  WITH CHECK ADD  CONSTRAINT [FK_Atividades_Alvos_IdAlvo] FOREIGN KEY([IdAlvo])
REFERENCES [dbo].[Alvos] ([IdAlvo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Atividades] CHECK CONSTRAINT [FK_Atividades_Alvos_IdAlvo]
GO
ALTER TABLE [dbo].[Atividades]  WITH CHECK ADD  CONSTRAINT [FK_Atividades_Usuarios_IdTecnico] FOREIGN KEY([IdTecnico])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[Atividades] CHECK CONSTRAINT [FK_Atividades_Usuarios_IdTecnico]
GO
ALTER TABLE [dbo].[Cronogramas]  WITH CHECK ADD  CONSTRAINT [FK_Cronogramas_Usuarios_IdSupervisor] FOREIGN KEY([IdSupervisor])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cronogramas] CHECK CONSTRAINT [FK_Cronogramas_Usuarios_IdSupervisor]
GO
USE [master]
GO
ALTER DATABASE [APIPreventivasNovaModel] SET  READ_WRITE 
GO
