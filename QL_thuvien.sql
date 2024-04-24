USE [master]
GO
/****** Object:  Database [QL_thuvien]    Script Date: 1/5/2022 1:24:37 AM ******/
CREATE DATABASE [QL_thuvien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_thuvien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QL_thuvien.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QL_thuvien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QL_thuvien_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QL_thuvien] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_thuvien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_thuvien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_thuvien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_thuvien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_thuvien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_thuvien] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_thuvien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QL_thuvien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_thuvien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_thuvien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_thuvien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_thuvien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_thuvien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_thuvien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_thuvien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_thuvien] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QL_thuvien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_thuvien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_thuvien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_thuvien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_thuvien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_thuvien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_thuvien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_thuvien] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QL_thuvien] SET  MULTI_USER 
GO
ALTER DATABASE [QL_thuvien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_thuvien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_thuvien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_thuvien] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QL_thuvien] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QL_thuvien] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QL_thuvien] SET QUERY_STORE = OFF
GO
USE [QL_thuvien]
GO
/****** Object:  Table [dbo].[CHI TIET PHIEU MUON]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHI TIET PHIEU MUON](
	[MaCTPM] [nchar](10) NOT NULL,
	[MaTaiLieu] [nchar](10) NOT NULL,
	[MaPhieuMuon] [nchar](10) NOT NULL,
 CONSTRAINT [PK_CHI TIET PHIEU MUON] PRIMARY KEY CLUSTERED 
(
	[MaCTPM] ASC,
	[MaTaiLieu] ASC,
	[MaPhieuMuon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHI TIET PHIEU TRA]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHI TIET PHIEU TRA](
	[MaCTPT] [nchar](10) NOT NULL,
	[MaPhieuTra] [nchar](10) NOT NULL,
	[MaPhieuMuon] [nchar](10) NOT NULL,
	[MaTaiLieu] [nchar](10) NOT NULL,
 CONSTRAINT [PK_CHI TIET PHIEU TRA] PRIMARY KEY CLUSTERED 
(
	[MaCTPT] ASC,
	[MaPhieuTra] ASC,
	[MaPhieuMuon] ASC,
	[MaTaiLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOC GIA]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC GIA](
	[MaDocGia] [nchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Sdt] [nchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[CMND] [nchar](12) NULL,
	[MSSV] [nchar](10) NULL,
	[MCB] [nchar](10) NULL,
	[LoaiDG] [nchar](10) NULL,
	[NgayHetHan] [date] NULL,
 CONSTRAINT [PK_DOC GIA] PRIMARY KEY CLUSTERED 
(
	[MaDocGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAI DOC GIA]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI DOC GIA](
	[MaLoaiDG] [nchar](10) NOT NULL,
	[SoNgayMuonToiDa] [int] NULL,
	[SoSachMuonToiDa] [int] NULL,
	[TenLoaiDG] [nvarchar](50) NULL,
	[PhiThuongNien] [int] NULL,
	[TaiKieuDB] [bit] NULL,
 CONSTRAINT [PK_LOAI DOC GIA] PRIMARY KEY CLUSTERED 
(
	[MaLoaiDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAI NHANVIEN]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI NHANVIEN](
	[MaLoaiNV] [nchar](10) NOT NULL,
	[TenLoaiNV] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOAI NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaLoaiNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOGIN REMEMBER]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOGIN REMEMBER](
	[Username] [nchar](30) NOT NULL,
	[Password] [nchar](30) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAN VIEN]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAN VIEN](
	[MaNV] [nchar](10) NOT NULL,
	[CaTruc] [int] NULL,
	[TenDangNhap] [nchar](10) NULL,
	[MatKhau] [nchar](200) NULL,
	[HoTen] [nvarchar](50) NULL,
	[LoginGanNhat] [date] NULL,
	[LoaiNV] [nchar](10) NULL,
 CONSTRAINT [PK_NHAN VIEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAP TAI LIEU]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAP TAI LIEU](
	[MaTLNhap] [nchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[NgayNhap] [date] NOT NULL,
 CONSTRAINT [PK_NHAP TAI LIEU_1] PRIMARY KEY CLUSTERED 
(
	[MaTLNhap] ASC,
	[NgayNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEU MUON]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEU MUON](
	[MaPhieuMuon] [nchar](10) NOT NULL,
	[MaNVLapPhieuMuon] [nchar](10) NULL,
	[MaDocGia] [nchar](10) NULL,
	[NgayLapPhieuMuon] [date] NULL,
 CONSTRAINT [PK_PHIEU MUON] PRIMARY KEY CLUSTERED 
(
	[MaPhieuMuon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEU NHAC NHO]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEU NHAC NHO](
	[MaDocGia] [nchar](10) NOT NULL,
	[SoLanViPham] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEU PHAT]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEU PHAT](
	[MaPhieuPhat] [nchar](10) NOT NULL,
	[MaNVLapPhieuPhat] [nchar](10) NULL,
	[MaPhieuMuon] [nchar](10) NULL,
	[SoSachQuaHan] [int] NULL,
	[SoNgayQuaHan] [int] NULL,
	[SoTienPhat] [int] NULL,
 CONSTRAINT [PK_PHIEU PHAT] PRIMARY KEY CLUSTERED 
(
	[MaPhieuPhat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEU TRA]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEU TRA](
	[MaPhieuTra] [nchar](10) NOT NULL,
	[MaNVLapPhieuTra] [nchar](10) NULL,
 CONSTRAINT [PK_PHIEU TRA_1] PRIMARY KEY CLUSTERED 
(
	[MaPhieuTra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAI LIEU]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAI LIEU](
	[MaTaiLieu] [nchar](10) NOT NULL,
	[TenTaiLieu] [nvarchar](200) NULL,
	[LoaiTaiLieu] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[DacBiet] [bit] NULL,
 CONSTRAINT [PK_SACH] PRIMARY KEY CLUSTERED 
(
	[MaTaiLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YEU CAU TAI LIEU]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YEU CAU TAI LIEU](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[TenTaiLieu] [nvarchar](200) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CHI TIET PHIEU MUON]  WITH CHECK ADD  CONSTRAINT [FK_CHI TIET PHIEU MUON_PHIEU MUON] FOREIGN KEY([MaPhieuMuon])
REFERENCES [dbo].[PHIEU MUON] ([MaPhieuMuon])
GO
ALTER TABLE [dbo].[CHI TIET PHIEU MUON] CHECK CONSTRAINT [FK_CHI TIET PHIEU MUON_PHIEU MUON]
GO
ALTER TABLE [dbo].[CHI TIET PHIEU MUON]  WITH CHECK ADD  CONSTRAINT [FK_CHI TIET PHIEU MUON_TAI LIEU] FOREIGN KEY([MaTaiLieu])
REFERENCES [dbo].[TAI LIEU] ([MaTaiLieu])
GO
ALTER TABLE [dbo].[CHI TIET PHIEU MUON] CHECK CONSTRAINT [FK_CHI TIET PHIEU MUON_TAI LIEU]
GO
ALTER TABLE [dbo].[CHI TIET PHIEU TRA]  WITH CHECK ADD  CONSTRAINT [FK_CHI TIET PHIEU TRA_PHIEU MUON] FOREIGN KEY([MaPhieuMuon])
REFERENCES [dbo].[PHIEU MUON] ([MaPhieuMuon])
GO
ALTER TABLE [dbo].[CHI TIET PHIEU TRA] CHECK CONSTRAINT [FK_CHI TIET PHIEU TRA_PHIEU MUON]
GO
ALTER TABLE [dbo].[CHI TIET PHIEU TRA]  WITH CHECK ADD  CONSTRAINT [FK_CHI TIET PHIEU TRA_PHIEU TRA] FOREIGN KEY([MaPhieuTra])
REFERENCES [dbo].[PHIEU TRA] ([MaPhieuTra])
GO
ALTER TABLE [dbo].[CHI TIET PHIEU TRA] CHECK CONSTRAINT [FK_CHI TIET PHIEU TRA_PHIEU TRA]
GO
ALTER TABLE [dbo].[CHI TIET PHIEU TRA]  WITH CHECK ADD  CONSTRAINT [FK_CHI TIET PHIEU TRA_TAI LIEU] FOREIGN KEY([MaTaiLieu])
REFERENCES [dbo].[TAI LIEU] ([MaTaiLieu])
GO
ALTER TABLE [dbo].[CHI TIET PHIEU TRA] CHECK CONSTRAINT [FK_CHI TIET PHIEU TRA_TAI LIEU]
GO
ALTER TABLE [dbo].[DOC GIA]  WITH CHECK ADD  CONSTRAINT [FK_DOC GIA_LOAI DOC GIA] FOREIGN KEY([LoaiDG])
REFERENCES [dbo].[LOAI DOC GIA] ([MaLoaiDG])
GO
ALTER TABLE [dbo].[DOC GIA] CHECK CONSTRAINT [FK_DOC GIA_LOAI DOC GIA]
GO
ALTER TABLE [dbo].[NHAN VIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHAN VIEN_LOAI NHANVIEN] FOREIGN KEY([LoaiNV])
REFERENCES [dbo].[LOAI NHANVIEN] ([MaLoaiNV])
GO
ALTER TABLE [dbo].[NHAN VIEN] CHECK CONSTRAINT [FK_NHAN VIEN_LOAI NHANVIEN]
GO
ALTER TABLE [dbo].[PHIEU MUON]  WITH CHECK ADD  CONSTRAINT [FK_PHIEU MUON_DOC GIA] FOREIGN KEY([MaDocGia])
REFERENCES [dbo].[DOC GIA] ([MaDocGia])
GO
ALTER TABLE [dbo].[PHIEU MUON] CHECK CONSTRAINT [FK_PHIEU MUON_DOC GIA]
GO
ALTER TABLE [dbo].[PHIEU MUON]  WITH CHECK ADD  CONSTRAINT [FK_PHIEU MUON_NHAN VIEN] FOREIGN KEY([MaNVLapPhieuMuon])
REFERENCES [dbo].[NHAN VIEN] ([MaNV])
GO
ALTER TABLE [dbo].[PHIEU MUON] CHECK CONSTRAINT [FK_PHIEU MUON_NHAN VIEN]
GO
ALTER TABLE [dbo].[PHIEU NHAC NHO]  WITH CHECK ADD  CONSTRAINT [FK_PHIEU NHAC NHO_DOC GIA] FOREIGN KEY([MaDocGia])
REFERENCES [dbo].[DOC GIA] ([MaDocGia])
GO
ALTER TABLE [dbo].[PHIEU NHAC NHO] CHECK CONSTRAINT [FK_PHIEU NHAC NHO_DOC GIA]
GO
ALTER TABLE [dbo].[PHIEU PHAT]  WITH CHECK ADD  CONSTRAINT [FK_PHIEU PHAT_NHAN VIEN] FOREIGN KEY([MaNVLapPhieuPhat])
REFERENCES [dbo].[NHAN VIEN] ([MaNV])
GO
ALTER TABLE [dbo].[PHIEU PHAT] CHECK CONSTRAINT [FK_PHIEU PHAT_NHAN VIEN]
GO
ALTER TABLE [dbo].[PHIEU PHAT]  WITH CHECK ADD  CONSTRAINT [FK_PHIEU PHAT_PHIEU MUON] FOREIGN KEY([MaPhieuMuon])
REFERENCES [dbo].[PHIEU MUON] ([MaPhieuMuon])
GO
ALTER TABLE [dbo].[PHIEU PHAT] CHECK CONSTRAINT [FK_PHIEU PHAT_PHIEU MUON]
GO
ALTER TABLE [dbo].[PHIEU TRA]  WITH CHECK ADD  CONSTRAINT [FK_PHIEU TRA_NHAN VIEN] FOREIGN KEY([MaNVLapPhieuTra])
REFERENCES [dbo].[NHAN VIEN] ([MaNV])
GO
ALTER TABLE [dbo].[PHIEU TRA] CHECK CONSTRAINT [FK_PHIEU TRA_NHAN VIEN]
GO
/****** Object:  StoredProcedure [dbo].[sp_KiemtraHetHan]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_KiemtraHetHan] @madg nchar(10),@thongbao nvarchar(10) out
 as 
 begin
	if exists( select * from [DOC GIA] where  @madg=MaDocGia and DATEDIFF(day,NgayHetHan,GETDATE())<0)
	  begin set @thongbao='1'
	  end
	else
		set @thongbao = '0'
  end
GO
/****** Object:  StoredProcedure [dbo].[sp_NgayHetHan]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[sp_NgayHetHan] @loaidg nchar(10), @madg nchar(10)
 as
 begin
 declare @ngayHH date
  if exists( select * from [DOC GIA] where LoaiDG= 'SV')
  begin
	update  [DOC GIA] set NgayHetHan=DATEADD(day,300,GETDATE()) where @madg=MaDocGia
	end
	else if exists( select * from [DOC GIA] where LoaiDG='K')
	begin
		update [DOC GIA] set NgayHetHan=DATEADD(day,200,GETDATE()) where @madg=MaDocGia
		end
	else if exists(select * from [DOC GIA] where loaidg='CBNV')
	begin 
	update [DOC GIA] set NgayHetHan=DATEADD(day,250,GETDATE()) where @madg=MaDocGia
	end

end

GO
/****** Object:  StoredProcedure [dbo].[usp_AD_Add_LDG]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_AD_Add_LDG] @MaLoaiDG char(10), @SoNgayMuonToiDa int, @SoSachMuonToiDa int, @TenLoaiDG nvarchar(50), @PhiThuongNien int, @TaiLieuDB bit
as
begin
	if not exists(select * from [LOAI DOC GIA] where MaLoaiDG = @MaLoaiDG)
	begin
		insert into [LOAI DOC GIA]
		values(@MaLoaiDG, @SoNgayMuonToiDa, @SoSachMuonToiDa, @TenLoaiDG, @PhiThuongNien, @TaiLieuDB)
	end
end



GO
/****** Object:  StoredProcedure [dbo].[usp_AD_UP_LDG]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[usp_AD_UP_LDG] @MaLoaiDG char(10), @SoNgayMuonToiDa int, @SoSachMuonToiDa int, @TenLoaiDG nvarchar(50), @PhiThuongNien int, @TaiLieuDB bit
as
begin
	if exists (select * from [LOAI DOC GIA] where MaLoaiDG = @MaLoaiDG)
	begin
		update [LOAI DOC GIA]
		set SoNgayMuonToiDa = @SoNgayMuonToiDa, SoSachMuonToiDa = @SoSachMuonToiDa, TenLoaiDG = @TenLoaiDG, PhiThuongNien= @PhiThuongNien, TaiKieuDB = @TaiLieuDB
		where MaLoaiDG= @MaLoaiDG
	end
end



GO
/****** Object:  StoredProcedure [dbo].[usp_CapNhatDocGia]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_CapNhatDocGia] @MaDG nvarchar(10), @TenDG nvarchar(40), @NgaySinhDG nvarchar(20), @DiaChiDG nvarchar(100), @SDTDG nvarchar(20), @EmailDG nvarchar(30), @CMNDDG nvarchar(20),@MSSVDG nvarchar(20), @MCBDG nvarchar(20), @LoaiDG nvarchar(20)
as
begin
	update [DOC GIA]
	set HoTen = @TenDG, NgaySinh = @NgaySinhDG, DiaChi = @DiaChiDG, Sdt = @SDTDG, Email = @EmailDG, CMND = @CMNDDG, MSSV = @MSSVDG, MCB = @MCBDG, LoaiDG = @LoaiDG
	where MaDocGia = @MaDG
end









GO
/****** Object:  StoredProcedure [dbo].[usp_CapNhatNhanVien]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_CapNhatNhanVien] @MaNV nvarchar(10), @CaTruc nvarchar(40), @TenDangNhap nvarchar(20), @MatKhau nchar(200), @HoTen nvarchar(100), @LoaiNV nvarchar(20), @Result int out
as
begin
	set @Result = 0
	if exists (Select * from [NHAN VIEN] where TenDangNhap = @TenDangNhap)
	begin
		update [NHAN VIEN]
		set	CaTruc = @CaTruc, TenDangNhap = @TenDangNhap, MatKhau = @MatKhau, HoTen = @HoTen, LoaiNV = @LoaiNV
		where MaNV = @MaNV
		set @Result = 1
	end
end



GO
/****** Object:  StoredProcedure [dbo].[usp_CapNhatPhieuMuon]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_CapNhatPhieuMuon] @MaCTPM char(10), @MaTaiLieu char(10), @MaTaiLieuCu char(10), @MaPhieuMuon char(10)
as
begin
	if exists (select * from [CHI TIET PHIEU MUON] where @MaCTPM = MaCTPM)
	begin
		update [CHI TIET PHIEU MUON]
		set MaTaiLieu = @MaTaiLieu
		where MaCTPM = @MaCTPM and MaPhieuMuon = @MaPhieuMuon and MaTaiLieu = @MaTaiLieuCu
	end
end
GO
/****** Object:  StoredProcedure [dbo].[usp_ChinhSuaPhieuTra]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_ChinhSuaPhieuTra] @MaCTPT char(10), @MaPhieuTra char(10), @MaPhieuMuon char(10), @MaTaiLieu char(10)
as
begin
	if exists (Select * from [CHI TIET PHIEU TRA] where MaCTPT = @MaCTPT)
	begin
		update [CHI TIET PHIEU TRA]
		set MaPhieuTra = @MaPhieuTra, MaPhieuMuon = @MaPhieuMuon, MaTaiLieu = @MaTaiLieu
		where MaCTPT = @MaCTPT
	end
end	




GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteTaiLieu]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_DeleteTaiLieu] @MaTaiLieu nvarchar(50), @result int out
as
begin
	delete from [CHI TIET PHIEU TRA]
	where MaTaiLieu = @MaTaiLieu
	delete from [CHI TIET PHIEU MUON]
	where MaTaiLieu = @MaTaiLieu
	delete from [TAI LIEU]
	where MaTaiLieu = @MaTaiLieu
	set @result = 1
end


GO
/****** Object:  StoredProcedure [dbo].[usp_InsertTaiLieu]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_InsertTaiLieu] @TenTaiLieu nvarchar(50), @LoaiTaiLieu nvarchar(30), @SoLuong int, @DacBiet bit
as
begin
	Declare @MaTaiLieu char(20)
	exec usp_TimMaTLTiepTheo @MaTaiLieu out
	insert into [TAI LIEU]
	values( @MaTaiLieu, @TenTaiLieu, @LoaiTaiLieu, @SoLuong, @DacBiet)
end
GO
/****** Object:  StoredProcedure [dbo].[usp_KiemTraMuonTaiLieuDacBiet]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_KiemTraMuonTaiLieuDacBiet] @MaDocGia char(10), @MaTaiLieu char(10), @result int out
as
begin
	Declare @TLDB bit
	Select @TLDB = ldg.TaiKieuDB from [DOC GIA] dg, [LOAI DOC GIA] ldg where dg.MaDocGia = @MaDocGia and dg.LoaiDG = ldg.MaLoaiDG
	Declare @DB bit
	Select @DB = DacBiet from [TAI LIEU] where MaTaiLieu = @MaTaiLieu
	print @TLDB
	print @DB
	if (@TLDB = @DB)
	begin
		set @result = 1
	end
	else set @result = 0
end

GO
/****** Object:  StoredProcedure [dbo].[usp_LayDanhSachDocGia]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_LayDanhSachDocGia]
as
begin
	Select MaDocGia, HoTen From [DOC GIA]
end




GO
/****** Object:  StoredProcedure [dbo].[usp_LayDanhSachTaiLieu]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_LayDanhSachTaiLieu]
as
begin
	select MaTaiLieu, TenTaiLieu from [TAI LIEU] where SoLuong > 0
end




GO
/****** Object:  StoredProcedure [dbo].[usp_LayMaDocGiaDePhat]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_LayMaDocGiaDePhat] @MaPhieuMuon char(10), @MaDocGia char(10) out
as
begin
	select @MaDocGia = MaDocGia from [PHIEU MUON] where MaPhieuMuon = @MaPhieuMuon
end

GO
/****** Object:  StoredProcedure [dbo].[usp_LayMaNhanVienHienTai]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_LayMaNhanVienHienTai] @UserName char(40), @MaNV nvarchar(10) out
as
begin
	select @MaNV =  nv.MaNV
	from [NHAN VIEN] nv
	where nv.HoTen = @UserName
end









GO
/****** Object:  StoredProcedure [dbo].[usp_LayMaTLCuaPM]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_LayMaTLCuaPM] @MaPhieuMuon nchar(10)
as
begin
	select tl.MaTaiLieu, tl.TenTaiLieu from [PHIEU MUON] pm, [CHI TIET PHIEU MUON] ctpm, [TAI LIEU] tl
	where ctpm.MaPhieuMuon = pm.MaPhieuMuon and pm.MaPhieuMuon = @MaPhieuMuon and tl.MaTaiLieu = ctpm.MaTaiLieu
end








GO
/****** Object:  StoredProcedure [dbo].[usp_LayQuyenNhanVien]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_LayQuyenNhanVien] @UserName char(40), @Pass nchar(200), @QuyenNV nvarchar(50) out
as
begin
	select @QuyenNV =  l.TenLoaiNV
	from [NHAN VIEN] nv, [LOAI NHANVIEN] l
	where nv.TenDangNhap = @UserName and nv.MatKhau = @Pass and l.MaLoaiNV = nv.LoaiNV
end










GO
/****** Object:  StoredProcedure [dbo].[usp_LaySoLanViPhamCuaPhieuMuon]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_LaySoLanViPhamCuaPhieuMuon] @MaPhieuMuon char(10), @SLVP int out
as
begin
	set @SLVP = 0
	if exists (select * from [PHIEU NHAC NHO] pnn , [PHIEU MUON] pm, [DOC GIA] dg where dg.MaDocGia = pnn.MaDocGia and dg.MaDocGia = pm.MaDocGia and pm.MaPhieuMuon = @MaPhieuMuon)
	begin
	select @SLVP = pnn.SoLanViPham
	from [PHIEU NHAC NHO] pnn , [PHIEU MUON] pm, [DOC GIA] dg 
	where dg.MaDocGia = pnn.MaDocGia and dg.MaDocGia = pm.MaDocGia and pm.MaPhieuMuon = @MaPhieuMuon
	end
end

GO
/****** Object:  StoredProcedure [dbo].[usp_LaySoNgayQuaHan]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_LaySoNgayQuaHan] @MaPhieuMuon char(10),  @NQH int out
as
begin
	select @NQH = datediff(day, NgayLapPhieuMuon, GETDATE()) 
	from [PHIEU MUON] 
	where MaPhieuMuon = @MaPhieuMuon
end

GO
/****** Object:  StoredProcedure [dbo].[usp_LaySoSachCuaPM]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_LaySoSachCuaPM] @MaPhieuMuon char(10), @SoSach int out
as
begin
	select @SoSach = COUNT(ctpm.MaTaiLieu)
	from [PHIEU MUON] pm, [CHI TIET PHIEU MUON] ctpm
	where ctpm.MaPhieuMuon = pm.MaPhieuMuon and pm.MaPhieuMuon = @MaPhieuMuon
end

GO
/****** Object:  StoredProcedure [dbo].[usp_LaySoSachMuonToiDa]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_LaySoSachMuonToiDa] @MaDocGia char (10), @Result int out
as
begin 
	select @Result = ldg.SoSachMuonToiDa from [DOC GIA] dg, [LOAI DOC GIA] ldg where dg.MaDocGia = @MaDocGia and dg.LoaiDG =  ldg.MaLoaiDG
end




GO
/****** Object:  StoredProcedure [dbo].[usp_LayTenNhanVien]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_LayTenNhanVien] @UserName char(40), @Pass nchar(200), @TenNV nvarchar(50) out
as
begin
	select @TenNV =  nv.HoTen
	from [NHAN VIEN] nv
	where nv.TenDangNhap = @UserName and nv.MatKhau = @Pass
end









GO
/****** Object:  StoredProcedure [dbo].[usp_LoadLoaiDocGia]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_LoadLoaiDocGia]
as
begin
	select * from [LOAI DOC GIA]
end



GO
/****** Object:  StoredProcedure [dbo].[usp_LoadMaPhieuMuon]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_LoadMaPhieuMuon]
as
begin
	select MaPhieuMuon from [PHIEU MUON]
end

if OBJECT_ID('usp_LoadMaTLCuaPM') is not null
drop proc usp_LoadMaTLCuaPM









GO
/****** Object:  StoredProcedure [dbo].[usp_LoadTheLoaiTaiLieu]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_LoadTheLoaiTaiLieu]
as
begin
	select distinct LoaiTaiLieu from [TAI LIEU]
end




GO
/****** Object:  StoredProcedure [dbo].[usp_Login]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Login] @username nchar(40), @password nchar(40), @result int out
as
begin
	if exists (select * from [NHAN VIEN]
	where TenDangNhap = @username and MatKhau = @password)
	begin
		Set @result = 1;
		update [NHAN VIEN]
		set LoginGanNhat = GETDATE()
		where TenDangNhap = @username and MatKhau = @password
	end
end


GO
/****** Object:  StoredProcedure [dbo].[usp_SearchDocGia]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 create proc [dbo].[usp_SearchDocGia] @MaDG char(15)
 as
 begin
	select *
	from [DOC GIA]
	where MaDocGia = @MaDG
 end










GO
/****** Object:  StoredProcedure [dbo].[usp_SearchPhieuMuonTheoMaDocGia]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 create proc [dbo].[usp_SearchPhieuMuonTheoMaDocGia] @MaDocGia char(10)
 as
 begin
	select *
	from [PHIEU MUON]
	where MaDocGia = @MaDocGia
 end









GO
/****** Object:  StoredProcedure [dbo].[usp_SearchPhieuMuonTheoMaPM]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 create proc [dbo].[usp_SearchPhieuMuonTheoMaPM] @MaPhieuMuon char(10)
 as
 begin
	select * from [PHIEU MUON] where MaPhieuMuon = @MaPhieuMuon
 end









GO
/****** Object:  StoredProcedure [dbo].[usp_SearchPhieuNN]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[usp_SearchPhieuNN] @MaDocGia char(10)
as
begin
	select * from [PHIEU NHAC NHO] where MaDocGia = @MaDocGia
end



GO
/****** Object:  StoredProcedure [dbo].[usp_SearchPhieuTratheoMaDG]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[usp_SearchPhieuTratheoMaDG] @MaDocGia char(15)
 as
 begin
	select pt.MaPhieuTra, pt.MaNVLapPhieuTra
	from [PHIEU MUON] pm, [PHIEU TRA] pt, [CHI TIET PHIEU TRA]  ctpt
	where pm.MaPhieuMuon = ctpt.MaPhieuMuon and pt.MaPhieuTra = ctpt.MaPhieuTra and pm.MaDocGia = @MaDocGia
 end




GO
/****** Object:  StoredProcedure [dbo].[usp_SearchPhieuTratheoMaPM]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[usp_SearchPhieuTratheoMaPM] @Maphieumuon char(15)
 as
 begin
	select pt.MaPhieuTra, pt.MaNVLapPhieuTra
	from [CHI TIET PHIEU TRA] ctpt, [PHIEU TRA] pt
	where pt.MaPhieuTra = ctpt.MaPhieuTra and ctpt.MaPhieuMuon = @Maphieumuon
 end



GO
/****** Object:  StoredProcedure [dbo].[usp_SearchPhieuTratheoMaPT]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[usp_SearchPhieuTratheoMaPT] @Maphieutra char(15)
 as
 begin
	select *
	from  [PHIEU TRA] pt
	where pt.MaPhieuTra= @Maphieutra
 end



GO
/****** Object:  StoredProcedure [dbo].[usp_SearchPPTheoMaDG]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_SearchPPTheoMaDG] @MaDocGia char(10)
as
begin
	select pp.MaPhieuPhat, pp.MaNVLapPhieuPhat, pp.MaPhieuMuon, pp.SoSachQuaHan, pp.SoNgayQuaHan, pp.SoTienPhat from [PHIEU PHAT] pp, [PHIEU MUON] pm where pp.MaPhieuMuon = pm.MaPhieuMuon and pm.MaDocGia = @MaDocGia
end



GO
/****** Object:  StoredProcedure [dbo].[usp_SearchPPTheoMaPM]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_SearchPPTheoMaPM] @MaPhieuMuon char(10)
as
begin
	select * from [PHIEU PHAT] where MaPhieuMuon = @MaPhieuMuon
end



GO
/****** Object:  StoredProcedure [dbo].[usp_SearchPPTheoMaPP]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_SearchPPTheoMaPP] @MaPhieuPhat char(10)
as
begin
	select * from [PHIEU PHAT] where MaPhieuPhat = @MaPhieuPhat
end



GO
/****** Object:  StoredProcedure [dbo].[usp_SearchTaiLieuTheoLoai]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_SearchTaiLieuTheoLoai] @LoaiTaiLieu nvarchar(50)
as
begin
	select * from [TAI LIEU]
	where LoaiTaiLieu = @LoaiTaiLieu
end










GO
/****** Object:  StoredProcedure [dbo].[usp_SearchTaiLieuTheoMa]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_SearchTaiLieuTheoMa] @MaTaiLieu char(15)
as
begin
	select * from [TAI LIEU]
	where MaTaiLieu = @MaTaiLieu
end










GO
/****** Object:  StoredProcedure [dbo].[usp_SearchTaiLieuTheoTen]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_SearchTaiLieuTheoTen] @TenTaiLieu nvarchar(50)
as
begin
	select * from [TAI LIEU]
	where TenTaiLieu like '%' + @TenTaiLieu + '%'
end









GO
/****** Object:  StoredProcedure [dbo].[usp_SoLanViPham]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_SoLanViPham] @MaDocGia char(10), @SoLanViPham int out
as
begin
	set @SoLanViPham = 0
	if exists (Select * from [PHIEU NHAC NHO] where MaDocGia = @MaDocGia)
	begin
		select @SoLanViPham = SoLanViPham from [PHIEU NHAC NHO] where MaDocGia = @MaDocGia
	end
end



GO
/****** Object:  StoredProcedure [dbo].[usp_SoSachDangMuon]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[usp_SoSachDangMuon] @MaDocGia char(10), @SoSachDangMuon int out
 as
 begin
	Declare @SoSachMuon int
	select @SoSachMuon = COUNT(distinct ctpm.MaTaiLieu)
	from [CHI TIET PHIEU MUON] ctpm, [PHIEU MUON] pm, [DOC GIA] dg
	where ctpm.MaPhieuMuon = pm.MaPhieuMuon and pm.MaDocGia = dg.MaDocGia and dg.MaDocGia = @MaDocGia

	Declare @SoSachTra int
	select @SoSachTra = COUNT(distinct ctpt.MaTaiLieu)
	from [CHI TIET PHIEU TRA] ctpt, [CHI TIET PHIEU MUON] ctpm, [PHIEU MUON] pm, [DOC GIA] dg
	where ctpt.MaPhieuMuon = pm.MaPhieuMuon and pm.MaPhieuMuon = ctpm.MaPhieuMuon and dg.MaDocGia = pm.MaDocGia and dg.MaDocGia = @MaDocGia
	set @SoSachDangMuon = @SoSachMuon - @SoSachTra
end

GO
/****** Object:  StoredProcedure [dbo].[usp_soTaiLieuMuonNhieuNhat]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_soTaiLieuMuonNhieuNhat]
as
begin
	SELECT 
  Top 10 tl.TenTaiLieu, ct.MaTaiLieu,tl.LoaiTaiLieu, COUNT(ct.MaTaiLieu) as 'SốLầnMượn' 
  FROM [CHI TIET PHIEU MUON] ct ,[TAI LIEU] tl
   where tl.MaTaiLieu = ct.MaTaiLieu
   GROUP BY 
   ct.MaTaiLieu ,tl.TenTaiLieu,tl.LoaiTaiLieu
   ORDER BY SốLầnMượn DESC
end



GO
/****** Object:  StoredProcedure [dbo].[usp_ThemChiTietPhieuMuon]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_ThemChiTietPhieuMuon] @MaCTPM char(10), @MaTaiLieu nchar(10), @MaPhieuMuon nchar(10)
as
begin
	insert into [CHI TIET PHIEU MUON]
	values(@MaCTPM,@MaTaiLieu , @MaPhieuMuon)
	update [TAI LIEU]
	set SoLuong -= 1
	where MaTaiLieu = @MaTaiLieu
end






GO
/****** Object:  StoredProcedure [dbo].[usp_ThemChiTietPhieuTra]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_ThemChiTietPhieuTra] @MaCTPT nchar(10), @MaPhieuTra nchar(10), @MaPhieuMuon nchar(10), @MaTaiLieu nchar(10)
as
begin
	if exists (select * from [PHIEU TRA] pt, [TAI LIEU] tl where pt.MaPhieuTra = @MaPhieuTra and tl.MaTaiLieu = @MaTaiLieu)
	begin
	insert into [CHI TIET PHIEU TRA]
	values(@MaCTPT, @MaPhieuTra, @MaPhieuMuon ,@MaTaiLieu)
	update [TAI LIEU]
	set SoLuong += 1
	where MaTaiLieu = @MaTaiLieu
	end
end






GO
/****** Object:  StoredProcedure [dbo].[usp_ThemDocGia]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_ThemDocGia] @TenDG nvarchar(40), @NgaySinhDG nvarchar(20), @DiaChiDG nvarchar(100), @SDTDG nvarchar(20), @EmailDG nvarchar(30), @CMNDDG nvarchar(20),@MSSVDG nvarchar(20), @MCBDG nvarchar(20), @LoaiDG nvarchar(20)
as
begin
	Declare @MaDG nchar(10)
	exec usp_TimMaDGTiepTheo @MaDG out
	Declare @NgayHetHan date

	 if exists( select * from [DOC GIA] where LoaiDG= 'SV')
	begin
	set @NgayHetHan=DATEADD(day,300,GETDATE())
	end
	else if exists( select * from [DOC GIA] where LoaiDG='K')
	begin
		set @NgayHetHan=DATEADD(day,200,GETDATE())
	end
	else if exists(select * from [DOC GIA] where loaidg='CBNV')
	begin 
	set @NgayHetHan=DATEADD(day,250,GETDATE())
	end	
	insert into [DOC GIA]
	values(@MaDG, @TenDG,@NgaySinhDG, @DiaChiDG, @SDTDG, @EmailDG, @CMNDDG, @MSSVDG, @MCBDG, @LoaiDG,@NgayHetHan)
end

GO
/****** Object:  StoredProcedure [dbo].[usp_ThemNhanVien]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_ThemNhanVien] @CaTruc nvarchar(40), @TenDangNhap nvarchar(20), @HoTen nvarchar(100), @MatKhau nchar(200), @LoaiNV nvarchar(20),@result int out
as
begin
	Declare @MaNV nchar(10)
	exec usp_TimMaNVTiepTheo @MaNV out
	if not exists (select * from  [NHAN VIEN] nv
	where nv.TenDangNhap = @TenDangNhap)
	begin
	insert into [NHAN VIEN]
	values(@MaNV, @CaTruc ,@TenDangNhap, @MatKhau, @HoTen, GETDATE(), @LoaiNV)
	end
	else
	begin
	set @result = 0;
	end
end


GO
/****** Object:  StoredProcedure [dbo].[usp_ThemPhieuMuon]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_ThemPhieuMuon] @MaNVLapPhieuMuon nchar(10), @MaDocGia nchar(10), @result int out
as
begin
	set @result = 0
	Declare @SoLanViPham int = 0
	if exists ( select * from [PHIEU NHAC NHO] where MaDocGia = @MaDocGia)
	begin
		Select @SoLanViPham = pnn.SoLanViPham from [PHIEU NHAC NHO] pnn where pnn.MaDocGia = @MaDocGia
	end
	print @SoLanViPham
	if(@SoLanViPham < 5)
	begin
		Declare @Mapm nchar(10)
		exec usp_TimMaPhieuMuonTiepTheo @Mapm out
		insert into [PHIEU MUON]
		values(@Mapm,@MaNVLapPhieuMuon ,@MaDocGia,GETDATE())
		set @result = 1
	end
end



GO
/****** Object:  StoredProcedure [dbo].[usp_ThemPhieuNhacNho]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_ThemPhieuNhacNho] @MaDocGia char(10)
as
begin
	if exists (select * from [PHIEU NHAC NHO] where MaDocGia = @MaDocGia)
	begin
		update [PHIEU NHAC NHO]
		set SoLanViPham += 1
		where MaDocGia = @MaDocGia
	end
	else
	begin
		insert into [PHIEU NHAC NHO]
		values(@MaDocGia, 1)
	end
end


GO
/****** Object:  StoredProcedure [dbo].[usp_ThemPhieuPhat]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_ThemPhieuPhat] @MaPhieuMuon nchar(10), @MaNVLapPhieuPhat nchar(10), @Result int out
as
begin
	set @Result = 0
	Declare @MaPP char(10)
	exec [usp_TimMaPhieuPhatTiepTheo] @MaPP out
	Declare @SoSachQuaHan int
	Declare @SoSachMuon int
	select @SoSachMuon = COUNT(ctpm.MaTaiLieu)
	from [CHI TIET PHIEU MUON] ctpm
	where ctpm.MaPhieuMuon = @MaPhieuMuon
	Declare @SoSachTra int
	select @SoSachTra = COUNT(ctpt.MaTaiLieu)
	from [CHI TIET PHIEU TRA] ctpt
	where ctpt.MaPhieuMuon = @MaPhieuMuon
	set @SoSachQuaHan = @SoSachMuon - @SoSachTra
	Declare @SoNgayQuaHan int
	select @SoNgayQuaHan = DATEDIFF(DAY, pm.NgayLapPhieuMuon, GETDATE()) - ldg.SoNgayMuonToiDa from [PHIEU MUON] pm , [DOC GIA] dg, [LOAI DOC GIA] ldg where pm.MaPhieuMuon = @MaPhieuMuon and pm.MaDocGia = dg.MaDocGia and dg.LoaiDG = ldg.MaLoaiDG
	
	Declare @SoTienPhat int
	Set @SoTienPhat = (@SoNgayQuaHan*5000) + (@SoSachQuaHan * 50000)

	Declare @SoLanViPham int
	Select @SoLanViPham = pnn.SoLanViPham from [PHIEU NHAC NHO] pnn, [PHIEU MUON] pm, [DOC GIA] dg
	where pnn.MaDocGia = dg.MaDocGia and pm.MaDocGia = pnn.MaDocGia and pm.MaPhieuMuon = @MaPhieuMuon
	if(@SoLanViPham >= 2 and @SoNgayQuaHan > 0)
	begin
		insert into [PHIEU PHAT]
		values(@MaPP,  @MaNVLapPhieuPhat, @MaPhieuMuon, @SoSachQuaHan, @SoNgayQuaHan, @SoTienPhat)
		set @Result = 1
		update [PHIEU NHAC NHO]
		set SoLanViPham += 1
		where MaDocGia = (Select dg.MaDocGia from [PHIEU NHAC NHO] pnn, [PHIEU MUON] pm, [DOC GIA] dg
	where pnn.MaDocGia = dg.MaDocGia and pm.MaDocGia = pnn.MaDocGia and pm.MaPhieuMuon = @MaPhieuMuon)
	end
end

GO
/****** Object:  StoredProcedure [dbo].[usp_ThemPhieuTra]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_ThemPhieuTra] @MaPhieuTra char(10), @MaNVLapPhieuTra nchar(10)
as
begin
	insert into [PHIEU TRA]
	values(@MaPhieuTra, @MaNVLapPhieuTra)
end






GO
/****** Object:  StoredProcedure [dbo].[usp_ThemYeuCauTaiLieu]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_ThemYeuCauTaiLieu]  @TenTLYeuCau nvarchar(200), @result int out
as
begin
	set @result = 0
	if not exists(select * from [YEU CAU TAI LIEU] where TenTaiLieu = @TenTLYeuCau)
	begin
		declare @seed int = (select count(*) from [YEU CAU TAI LIEU])
		if (@seed = 1)
			set @seed = 1;
		else
			set @seed = @seed - 1;
		DBCC CHECKIDENT ([YEU CAU TAI LIEU], RESEED, @seed)	
		insert into [YEU CAU TAI LIEU] values(@TenTLYeuCau)
		set @result = 1
		
	end
end
--------------------------------------------======================================







GO
/****** Object:  StoredProcedure [dbo].[usp_TimKiemDocGiaTheoHoTen]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[usp_TimKiemDocGiaTheoHoTen] @HoTen nvarchar(100)
 as
 begin
		 begin
		select MaDocGia, HoTen, CMND, LoaiDG, ((select COUNT(distinct ctpm.MaTaiLieu)
		from [CHI TIET PHIEU MUON] ctpm, [PHIEU MUON] pm, [DOC GIA] dg1
		where ctpm.MaPhieuMuon = pm.MaPhieuMuon and pm.MaDocGia = dg1.MaDocGia and dg1.MaDocGia = dg.MaDocGia)
		-
		(select COUNT(distinct ctpt.MaTaiLieu)
		from [CHI TIET PHIEU TRA] ctpt, [CHI TIET PHIEU MUON] ctpm, [PHIEU MUON] pm, [DOC GIA] dg1
		where ctpt.MaPhieuMuon = pm.MaPhieuMuon and pm.MaPhieuMuon = ctpm.MaPhieuMuon and dg1.MaDocGia = pm.MaDocGia and dg1.MaDocGia = dg.MaDocGia)) as N'Số Sách Đang Mượn', (select sum(pp.SoSachQuaHan)*1 from [PHIEU MUON] pm, [PHIEU PHAT] pp where pm.MaDocGia = dg.MaDocGia and pm.MaPhieuMuon = pp.MaPhieuMuon) as N'Số Sách Quá Hạn'
		from [DOC GIA] dg where dg.HoTen like '%' + @HoTen + '%'
	end
 end
GO
/****** Object:  StoredProcedure [dbo].[usp_TimKiemDocGiaTheoMaDocGia]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_TimKiemDocGiaTheoMaDocGia] @MaDG char(15)
 as
 begin
	 begin
		select MaDocGia, HoTen, CMND, LoaiDG, ((select COUNT(distinct ctpm.MaTaiLieu)
		from [CHI TIET PHIEU MUON] ctpm, [PHIEU MUON] pm, [DOC GIA] dg1
		where ctpm.MaPhieuMuon = pm.MaPhieuMuon and pm.MaDocGia = dg1.MaDocGia and dg1.MaDocGia = dg.MaDocGia)
		-
		(select COUNT(distinct ctpt.MaTaiLieu)
		from [CHI TIET PHIEU TRA] ctpt, [CHI TIET PHIEU MUON] ctpm, [PHIEU MUON] pm, [DOC GIA] dg1
		where ctpt.MaPhieuMuon = pm.MaPhieuMuon and pm.MaPhieuMuon = ctpm.MaPhieuMuon and dg1.MaDocGia = pm.MaDocGia and dg1.MaDocGia = dg.MaDocGia)) as N'Số Sách Đang Mượn', (select sum(pp.SoSachQuaHan)*1 from [PHIEU MUON] pm, [PHIEU PHAT] pp where pm.MaDocGia = dg.MaDocGia and pm.MaPhieuMuon = pp.MaPhieuMuon) as N'Số Sách Quá Hạn'
		from [DOC GIA] dg where dg.MaDocGia = @MaDG
	end
 end
GO
/****** Object:  StoredProcedure [dbo].[usp_TimKiemDocGiaTheoMSCB]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[usp_TimKiemDocGiaTheoMSCB] @MSCB char(15)
 as
 begin
	 begin
		select MaDocGia, HoTen, CMND, LoaiDG, ((select COUNT(distinct ctpm.MaTaiLieu)
		from [CHI TIET PHIEU MUON] ctpm, [PHIEU MUON] pm, [DOC GIA] dg1
		where ctpm.MaPhieuMuon = pm.MaPhieuMuon and pm.MaDocGia = dg1.MaDocGia and dg1.MaDocGia = dg.MaDocGia)
		-
		(select COUNT(distinct ctpt.MaTaiLieu)
		from [CHI TIET PHIEU TRA] ctpt, [CHI TIET PHIEU MUON] ctpm, [PHIEU MUON] pm, [DOC GIA] dg1
		where ctpt.MaPhieuMuon = pm.MaPhieuMuon and pm.MaPhieuMuon = ctpm.MaPhieuMuon and dg1.MaDocGia = pm.MaDocGia and dg1.MaDocGia = dg.MaDocGia)) as N'Số Sách Đang Mượn', (select sum(pp.SoSachQuaHan)*1 from [PHIEU MUON] pm, [PHIEU PHAT] pp where pm.MaDocGia = dg.MaDocGia and pm.MaPhieuMuon = pp.MaPhieuMuon) as N'Số Sách Quá Hạn'
		from [DOC GIA] dg where dg.MCB =  @MSCB
	end
 end
GO
/****** Object:  StoredProcedure [dbo].[usp_TimKiemDocGiaTheoMSSV]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[usp_TimKiemDocGiaTheoMSSV] @MSSV char(15)
 as
 begin
	 begin
		select MaDocGia, HoTen, CMND, LoaiDG, ((select COUNT(distinct ctpm.MaTaiLieu)
		from [CHI TIET PHIEU MUON] ctpm, [PHIEU MUON] pm, [DOC GIA] dg1
		where ctpm.MaPhieuMuon = pm.MaPhieuMuon and pm.MaDocGia = dg1.MaDocGia and dg1.MaDocGia = dg.MaDocGia)
		-
		(select COUNT(distinct ctpt.MaTaiLieu)
		from [CHI TIET PHIEU TRA] ctpt, [CHI TIET PHIEU MUON] ctpm, [PHIEU MUON] pm, [DOC GIA] dg1
		where ctpt.MaPhieuMuon = pm.MaPhieuMuon and pm.MaPhieuMuon = ctpm.MaPhieuMuon and dg1.MaDocGia = pm.MaDocGia and dg1.MaDocGia = dg.MaDocGia)) as N'Số Sách Đang Mượn', (select sum(pp.SoSachQuaHan)*1 from [PHIEU MUON] pm, [PHIEU PHAT] pp where pm.MaDocGia = dg.MaDocGia and pm.MaPhieuMuon = pp.MaPhieuMuon) as N'Số Sách Quá Hạn'
		from [DOC GIA] dg where dg.MSSV =  @MSSV
	end
 end
GO
/****** Object:  StoredProcedure [dbo].[usp_TimKiemTatCaDocGia]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[usp_TimKiemTatCaDocGia]
 as
 begin
	Declare @SoSachDangMuon int
	select MaDocGia, HoTen, CMND, LoaiDG, ((select COUNT(distinct ctpm.MaTaiLieu)
	from [CHI TIET PHIEU MUON] ctpm, [PHIEU MUON] pm, [DOC GIA] dg1
	where ctpm.MaPhieuMuon = pm.MaPhieuMuon and pm.MaDocGia = dg1.MaDocGia and dg1.MaDocGia = dg.MaDocGia)
	-
	(select COUNT(distinct ctpt.MaTaiLieu)
	from [CHI TIET PHIEU TRA] ctpt, [CHI TIET PHIEU MUON] ctpm, [PHIEU MUON] pm, [DOC GIA] dg1
	where ctpt.MaPhieuMuon = pm.MaPhieuMuon and pm.MaPhieuMuon = ctpm.MaPhieuMuon and dg1.MaDocGia = pm.MaDocGia and dg1.MaDocGia = dg.MaDocGia)) as N'Số Sách Đang Mượn', (select sum(pp.SoSachQuaHan)*1 from [PHIEU MUON] pm, [PHIEU PHAT] pp where pm.MaDocGia = dg.MaDocGia and pm.MaPhieuMuon = pp.MaPhieuMuon) as N'Số Sách Quá Hạn'
	from [DOC GIA] dg
 end


GO
/****** Object:  StoredProcedure [dbo].[usp_TimMaChiTietPhieuMuonTiepTheo]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_TimMaChiTietPhieuMuonTiepTheo] @MaCTPM nchar(10) out
as 
begin
	declare @mactpm1 nchar(10) = 'CTPM001'
	declare @idx int 
	set @idx = 1
	while exists (select MaCTPM from [CHI TIET PHIEU MUON] Where MaCTPM = @mactpm1)
	begin
		set @idx = @idx + 1
		set @mactpm1= 'CTPM' + REPLICATE('0', 3 - len(cast(@idx as varchar))) + cast(@idx as varchar)
	end
	Set  @MaCTPM = @mactpm1
end


if OBJECT_ID('usp_ThemCTietPhieuMuon') is not null
 Drop proc usp_ThemCTietPhieuMuon









GO
/****** Object:  StoredProcedure [dbo].[usp_TimMaCTPTTiepTheo]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_TimMaCTPTTiepTheo] @MaCTPT nchar(10) out
as 
begin
declare @ctpt nchar(10)='CTPT001'
declare @idx int 
	set @idx = 1
	while exists (select MaPhieuTra from [PHIEU Tra] Where MaPhieuTra = @ctpt)
	begin
		set @idx = @idx + 1
		set @ctpt= 'CTPT' + REPLICATE('0', 3 - len(cast(@idx as varchar))) + cast(@idx as varchar)
	end
	Set  @MaCTPT=@ctpt
end









GO
/****** Object:  StoredProcedure [dbo].[usp_TimMaDGTiepTheo]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_TimMaDGTiepTheo] @MaDocGia varchar(10) out
as
begin
	declare @MaDG nchar(10) = 'DG00001'	
	declare @idx int 
	set @idx = 1
	while exists (select MaDocGia from [DOC GIA] Where MaDocGia = @MaDG)
	begin
		set @idx = @idx + 1
		set @MaDG = 'DG' + REPLICATE('0', 5 - len(cast(@idx as varchar))) + cast(@idx as varchar)
	end
	Set @MaDocGia = @MaDG
end










GO
/****** Object:  StoredProcedure [dbo].[usp_TimMaNVTiepTheo]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_TimMaNVTiepTheo] @MaNV varchar(10) out
as
begin
	declare @MaNhanVien nchar(10) = 'NV0001'	
	declare @idx int 
	set @idx = 1
	while exists (select MaNV from [NHAN VIEN] Where MaNV = @MaNhanVien)
	begin
		set @idx = @idx + 1
		set @MaNhanVien = 'NV' + REPLICATE('0', 4 - len(cast(@idx as varchar))) + cast(@idx as varchar)
	end
	Set @MaNV = @MaNhanVien
end










GO
/****** Object:  StoredProcedure [dbo].[usp_TimMaPhieuMuonTiepTheo]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_TimMaPhieuMuonTiepTheo] @Maphieumuon nchar(10) out
as 
begin
declare @mapm nchar(10)='PM001'
declare @idx int 
	set @idx = 1
	while exists (select MaPhieuMuon from [PHIEU MUON] Where MaPhieuMuon = @Mapm)
	begin
		set @idx = @idx + 1
		set @Mapm= 'PM' + REPLICATE('0', 3 - len(cast(@idx as varchar))) + cast(@idx as varchar)
	end
	Set  @Maphieumuon=@Mapm
end









GO
/****** Object:  StoredProcedure [dbo].[usp_TimMaPhieuPhatTiepTheo]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_TimMaPhieuPhatTiepTheo] @MaPhieuPhat nchar(10) out
as 
begin
	declare @pp nchar(10)='PP001'
	declare @idx int 
	set @idx = 1
	while exists (select MaPhieuPhat from [PHIEU PHAT] Where MaPhieuPhat = @pp)
	begin
		set @idx = @idx + 1
		set @pp= 'PP' + REPLICATE('0', 3 - len(cast(@idx as varchar))) + cast(@idx as varchar)
	end
	Set  @MaPhieuPhat= @pp
end





GO
/****** Object:  StoredProcedure [dbo].[usp_TimMaPhieuTraTiepTheo]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_TimMaPhieuTraTiepTheo] @MaPhieuTra nchar(10) out
as 
begin
declare @mapt nchar(10)='PT001'
declare @idx int 
	set @idx = 1
	while exists (select MaPhieuTra from [PHIEU Tra] Where MaPhieuTra = @Mapt)
	begin
		set @idx = @idx + 1
		set @mapt= 'PT' + REPLICATE('0', 3 - len(cast(@idx as varchar))) + cast(@idx as varchar)
	end
	Set  @MaPhieuTra=@Mapt
end










GO
/****** Object:  StoredProcedure [dbo].[usp_TimMaTLTiepTheo]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_TimMaTLTiepTheo] @MaTaiLieu varchar(10) out
as
begin
	declare @MaTL nchar(10) = 'TL001'	
	declare @idx int 
	set @idx = 1
	while exists (select MaTaiLieu from [TAI LIEU] Where MaTaiLieu = @MaTL)
	begin
		set @idx = @idx + 1
		set @MaTL = 'TL' + REPLICATE('0', 3 - len(cast(@idx as varchar))) + cast(@idx as varchar)
	end
	Set @MaTaiLieu = @MaTL
end









GO
/****** Object:  StoredProcedure [dbo].[usp_UpdatePNN]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_UpdatePNN] @MaDocGia char(10), @SLVP int
as
begin
	if exists (select * from [PHIEU NHAC NHO] where MaDocGia = @MaDocGia)
	begin
		update [PHIEU NHAC NHO]
		set SoLanViPham = @SLVP
		where MaDocGia = @MaDocGia
	end
end



GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateTaiLieu]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_UpdateTaiLieu] @MaTaiLieu char(20), @TenTaiLieu nvarchar(50), @LoaiTaiLieu nvarchar(30), @SoLuong int, @DacBiet bit
as
begin
	update [TAI LIEU]
	set TenTaiLieu = @TenTaiLieu, LoaiTaiLieu = @LoaiTaiLieu, SoLuong = @SoLuong, DacBiet = @DacBiet
	where MaTaiLieu = @MaTaiLieu
end
GO
/****** Object:  StoredProcedure [dbo].[usp_XemAllTaiLieu]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_XemAllTaiLieu]
as
begin
	select * from [TAI LIEU]
end









GO
/****** Object:  StoredProcedure [dbo].[usp_xemChiTietPhieuMuon]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_xemChiTietPhieuMuon] @MaPhieuMuon char(10)
as
begin
	select * from [CHI TIET PHIEU MUON] where MaPhieuMuon = @MaPhieuMuon
end









GO
/****** Object:  StoredProcedure [dbo].[usp_XemCTPhieuTra]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_XemCTPhieuTra] @MaPhieuTra nchar(10)
as
begin
	select * from [CHI TIET PHIEU TRA] where MaPhieuTra = @MaPhieuTra
end









GO
/****** Object:  StoredProcedure [dbo].[usp_XemDocGia]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_XemDocGia]
as
begin
	select * from [DOC GIA]
end











GO
/****** Object:  StoredProcedure [dbo].[usp_XemNhanVien]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_XemNhanVien]
as
begin
	select * from [NHAN VIEN]
end


GO
/****** Object:  StoredProcedure [dbo].[usp_xemPhieuMuon]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_xemPhieuMuon]
as
begin
	select * from [PHIEU MUON]
end









GO
/****** Object:  StoredProcedure [dbo].[usp_XemPhieuNhacNho]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_XemPhieuNhacNho]
as
begin
	select * from [PHIEU NHAC NHO]
end









GO
/****** Object:  StoredProcedure [dbo].[usp_XemPhieuPhat]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_XemPhieuPhat]
as
begin
	select * from [PHIEU PHAT]
end
exec usp_XemPhieuPhat









GO
/****** Object:  StoredProcedure [dbo].[usp_XemPhieuTra]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_XemPhieuTra]
as
begin
	select * from [PHIEU TRA]
end









GO
/****** Object:  StoredProcedure [dbo].[usp_XemYeuCauTaiLieu]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_XemYeuCauTaiLieu]  
as
begin
	select * from [YEU CAU TAI LIEU]
end
--===============------------------------------







GO
/****** Object:  StoredProcedure [dbo].[usp_XoaDocGia]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_XoaDocGia] @MaDocGia char(10)
as
begin
	declare @MaPM char(10)
	declare @MaDG char(10)
	declare cur cursor
	for select MaPhieuMuon, MaDocGia from [PHIEU MUON] where MaDocGia = @MaDocGia
	open cur
	fetch next from cur into @MaPM, @MaDG
	while(@@FETCH_STATUS = 0)
	begin
		Declare @MaPHIEUTRA char(10)
		declare cur2 cursor
		for select distinct pt.MaPhieuTra from [PHIEU TRA] pt, [CHI TIET PHIEU TRA] ctpt where pt.MaPhieuTra = ctpt.MaPhieuTra and ctpt.MaPhieuMuon = @MaPM
		open cur2
		fetch next from cur2 into @MaPHIEUTRA
		
		while(@@FETCH_STATUS = 0)
		begin
			delete from [CHI TIET PHIEU TRA]
			where MaPhieuTra = @MaPHIEUTRA
			delete from [PHIEU TRA]
			where MaPhieuTra  = @MaPHIEUTRA
			fetch next from cur2 into @MaPHIEUTRA
		end
		close cur2
		deallocate cur2

		delete from [PHIEU NHAC NHO]
		where MaDocGia = @MaDG
		delete from [PHIEU PHAT]
		where MaPhieuMuon = @MaPM
		delete from [CHI TIET PHIEU MUON]
		where MaPhieuMuon = @MaPM
		delete from [PHIEU MUON]
		where MaPhieuMuon = @MaPM
		fetch next from cur into @MaPM, @MaDG
	end
	close cur
	deallocate cur
	delete from [PHIEU NHAC NHO]
	where MaDocGia = @MaDocGia
	delete from [DOC GIA]
	where MaDocGia = @MaDocGia
end


GO
/****** Object:  StoredProcedure [dbo].[usp_XoaNhanVien]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_XoaNhanVien] @MaNV nvarchar(50)
as
begin
	delete from [PHIEU PHAT]
	where MaNVLapPhieuPhat = @MaNV
	delete from [PHIEU TRA]
	where MaNVLapPhieuTra = @MaNV
	delete from [PHIEU MUON]
	where MaNVLapPhieuMuon = @MaNV
	delete from [NHAN VIEN]
	where MaNV = @MaNV
end


GO
/****** Object:  StoredProcedure [dbo].[usp_XoaPhieuMuon]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[usp_XoaPhieuMuon] @MaPhieuMuon char(10)
 as
 begin
	delete from [PHIEU PHAT]
	where MaPhieuMuon= @MaPhieuMuon
	delete from [CHI TIET PHIEU TRA]
	where MaPhieuMuon= @MaPhieuMuon
	delete from [PHIEU TRA]
	where MaPhieuTra = (select pt.MaPhieuTra from [PHIEU TRA] pt, [CHI TIET PHIEU TRA] ctpt where ctpt.MaPhieuTra =  pt.MaPhieuTra and ctpt.MaPhieuMuon = @MaPhieuMuon)
	delete from [CHI TIET PHIEU MUON]
	where MaPhieuMuon= @MaPhieuMuon
	delete from [PHIEU MUON]
	where MaPhieuMuon= @MaPhieuMuon
 end


GO
/****** Object:  StoredProcedure [dbo].[usp_XoaPhieuNhacNho]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_XoaPhieuNhacNho] @MaDocGia char(10)
as
begin
	delete from [PHIEU NHAC NHO]
	where MaDocGia = @MaDocGia
end




GO
/****** Object:  StoredProcedure [dbo].[usp_XoaPhieuPhat]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_XoaPhieuPhat] @MaPhieuPhat char(10)
as
begin
	delete from [PHIEU PHAT]
	where MaPhieuPhat = @MaPhieuPhat
end





GO
/****** Object:  StoredProcedure [dbo].[usp_Xoaphieutra]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 create proc [dbo].[usp_Xoaphieutra] @Maphieutra char(15)
 as
 begin
	delete from [CHI TIET PHIEU TRA]
	where MaPhieuTra= @Maphieutra
	delete from [PHIEU TRA] 
	where MaPhieuTra= @Maphieutra
 end










GO
/****** Object:  StoredProcedure [dbo].[usp_XoaYeuCauTaiLieuMoi]    Script Date: 1/5/2022 1:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_XoaYeuCauTaiLieuMoi]  @TenTLYeuCau nvarchar(200)
as
begin		
	delete from [YEU CAU TAI LIEU] where TenTaiLieu = @TenTLYeuCau
	declare @seed int = (select count(*) from [YEU CAU TAI LIEU])
	if (@seed = 1)
		set @seed = 1;
	else
		set @seed = @seed - 1;
	DBCC CHECKIDENT ([YEU CAU TAI LIEU], RESEED, @seed)	
end







GO
USE [master]
GO
ALTER DATABASE [QL_thuvien] SET  READ_WRITE 
GO
