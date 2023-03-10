USE [master]
GO
/****** Object:  Database [PROYECTO_TIENDA]    Script Date: 01/03/2023 21:26:12 ******/
CREATE DATABASE [PROYECTO_TIENDA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PROYECTO_TIENDA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PROYECTO_TIENDA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PROYECTO_TIENDA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PROYECTO_TIENDA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PROYECTO_TIENDA] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PROYECTO_TIENDA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PROYECTO_TIENDA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET ARITHABORT OFF 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET  MULTI_USER 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PROYECTO_TIENDA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PROYECTO_TIENDA] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PROYECTO_TIENDA] SET QUERY_STORE = OFF
GO
USE [PROYECTO_TIENDA]
GO
/****** Object:  Table [dbo].[Artista]    Script Date: 01/03/2023 21:26:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artista](
	[IdArtista] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellidos] [varchar](50) NULL,
	[Nick] [varchar](50) NULL,
	[Descripcion] [varchar](100) NULL,
	[Email] [varchar](50) NULL,
	[Contraseña] [varchar](50) NULL,
 CONSTRAINT [PK_Artista] PRIMARY KEY CLUSTERED 
(
	[IdArtista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chat]    Script Date: 01/03/2023 21:26:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chat](
	[IdChat] [int] NOT NULL,
	[Mensajes] [varchar](500) NULL,
	[IdReceptor] [int] NULL,
	[IdSubscriptor] [int] NULL,
	[Fecha_Hora] [date] NULL,
	[IdArtista] [int] NULL,
	[IdCliente] [int] NULL,
 CONSTRAINT [PK_Chat] PRIMARY KEY CLUSTERED 
(
	[IdChat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 01/03/2023 21:26:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellidos] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Contraseña] [varchar](50) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Info_Arte]    Script Date: 01/03/2023 21:26:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Info_Arte](
	[IdInfoArte] [int] NOT NULL,
	[Titulo] [varchar](50) NULL,
	[Precio] [int] NULL,
	[Descripcion] [varchar](100) NULL,
	[Imagen] [varchar](50) NULL,
	[IdArtista] [int] NULL,
 CONSTRAINT [PK_Info_Arte] PRIMARY KEY CLUSTERED 
(
	[IdInfoArte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transaccion]    Script Date: 01/03/2023 21:26:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaccion](
	[IdTransaccion] [int] NOT NULL,
	[Fecha_Transaccion] [date] NULL,
	[Precio_Compra] [int] NULL,
	[Precio_Venta] [int] NULL,
	[IdCliente] [int] NULL,
	[IdInfoArte] [int] NULL,
 CONSTRAINT [PK_Transaccion] PRIMARY KEY CLUSTERED 
(
	[IdTransaccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Valoraciones]    Script Date: 01/03/2023 21:26:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Valoraciones](
	[IdValoraciones] [int] NOT NULL,
	[Puntuacion] [int] NULL,
	[IdCliente] [int] NULL,
	[IdArtista] [int] NULL,
 CONSTRAINT [PK_Valoraciones] PRIMARY KEY CLUSTERED 
(
	[IdValoraciones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Chat]  WITH CHECK ADD  CONSTRAINT [FK_Chat_Artista] FOREIGN KEY([IdArtista])
REFERENCES [dbo].[Artista] ([IdArtista])
GO
ALTER TABLE [dbo].[Chat] CHECK CONSTRAINT [FK_Chat_Artista]
GO
ALTER TABLE [dbo].[Chat]  WITH CHECK ADD  CONSTRAINT [FK_Chat_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[Chat] CHECK CONSTRAINT [FK_Chat_Cliente]
GO
ALTER TABLE [dbo].[Info_Arte]  WITH CHECK ADD  CONSTRAINT [FK_Info_Arte_Artista] FOREIGN KEY([IdArtista])
REFERENCES [dbo].[Artista] ([IdArtista])
GO
ALTER TABLE [dbo].[Info_Arte] CHECK CONSTRAINT [FK_Info_Arte_Artista]
GO
ALTER TABLE [dbo].[Transaccion]  WITH CHECK ADD  CONSTRAINT [FK_Transaccion_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[Transaccion] CHECK CONSTRAINT [FK_Transaccion_Cliente]
GO
ALTER TABLE [dbo].[Transaccion]  WITH CHECK ADD  CONSTRAINT [FK_Transaccion_Info_Arte] FOREIGN KEY([IdInfoArte])
REFERENCES [dbo].[Info_Arte] ([IdInfoArte])
GO
ALTER TABLE [dbo].[Transaccion] CHECK CONSTRAINT [FK_Transaccion_Info_Arte]
GO
ALTER TABLE [dbo].[Valoraciones]  WITH CHECK ADD  CONSTRAINT [FK_Valoraciones_Artista] FOREIGN KEY([IdArtista])
REFERENCES [dbo].[Artista] ([IdArtista])
GO
ALTER TABLE [dbo].[Valoraciones] CHECK CONSTRAINT [FK_Valoraciones_Artista]
GO
ALTER TABLE [dbo].[Valoraciones]  WITH CHECK ADD  CONSTRAINT [FK_Valoraciones_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[Valoraciones] CHECK CONSTRAINT [FK_Valoraciones_Cliente]
GO
USE [master]
GO
ALTER DATABASE [PROYECTO_TIENDA] SET  READ_WRITE 
GO
