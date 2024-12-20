USE [Daothithuylinh_k22CNTT_2210900036]
GO
/****** Object:  Table [dbo].[CHITIETDONHANG]    Script Date: 08/11/2024 1:13:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONHANG](
	[MaChiTietDH] [nchar](10) NOT NULL,
	[MaDH] [nchar](10) NULL,
	[MaSP] [nchar](10) NULL,
	[Tongtien] [decimal](10, 2) NULL,
	[Ngaydat] [date] NULL,
 CONSTRAINT [PK_CHITIETDONHANG] PRIMARY KEY CLUSTERED 
(
	[MaChiTietDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANHMUC]    Script Date: 08/11/2024 1:13:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUC](
	[MaDM] [nchar](10) NOT NULL,
	[TenDM] [nvarchar](50) NULL,
 CONSTRAINT [PK_DANHMUC] PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONHANG]    Script Date: 08/11/2024 1:13:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONHANG](
	[MaDH] [nchar](10) NOT NULL,
	[MaKH] [nchar](10) NOT NULL,
	[Tongtien] [decimal](10, 2) NULL,
	[Ngaydat] [date] NULL,
	[Trangthai] [nvarchar](50) NULL,
 CONSTRAINT [PK_DONHANG] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 08/11/2024 1:13:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [nchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[Gioitinh] [nvarchar](10) NULL,
	[Matkhau] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Diachi] [nvarchar](100) NULL,
	[SDT] [nchar](10) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 08/11/2024 1:13:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSP] [nchar](10) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[MaDM] [nchar](10) NULL,
	[GiaBan] [decimal](10, 2) NULL,
	[SoLuongTonKho] [int] NULL,
	[Anh] [text] NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THANHTOAN]    Script Date: 08/11/2024 1:13:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THANHTOAN](
	[MaTT] [nchar](10) NOT NULL,
	[MaDH] [nchar](10) NULL,
	[PhuongThucTT] [nvarchar](50) NULL,
	[NgayTT] [date] NULL,
	[Sotien] [decimal](10, 2) NULL,
 CONSTRAINT [PK_THANHTOAN] PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHITIETDONHANG] ([MaChiTietDH], [MaDH], [MaSP], [Tongtien], [Ngaydat]) VALUES (N'C01       ', N'D01       ', N'L01       ', CAST(200000.00 AS Decimal(10, 2)), CAST(N'2024-05-02' AS Date))
INSERT [dbo].[CHITIETDONHANG] ([MaChiTietDH], [MaDH], [MaSP], [Tongtien], [Ngaydat]) VALUES (N'C02       ', N'D01       ', N'L03       ', CAST(110.00 AS Decimal(10, 2)), CAST(N'2024-11-06' AS Date))
GO
INSERT [dbo].[DANHMUC] ([MaDM], [TenDM]) VALUES (N'H01       ', N'Áo')
INSERT [dbo].[DANHMUC] ([MaDM], [TenDM]) VALUES (N'H02       ', N'Mũ')
INSERT [dbo].[DANHMUC] ([MaDM], [TenDM]) VALUES (N'H03       ', N'Váy')
GO
INSERT [dbo].[DONHANG] ([MaDH], [MaKH], [Tongtien], [Ngaydat], [Trangthai]) VALUES (N'D01       ', N'K01       ', CAST(200000.00 AS Decimal(10, 2)), CAST(N'2024-11-05' AS Date), N'true')
INSERT [dbo].[DONHANG] ([MaDH], [MaKH], [Tongtien], [Ngaydat], [Trangthai]) VALUES (N'D02       ', N'K02       ', CAST(300.00 AS Decimal(10, 2)), CAST(N'2002-11-06' AS Date), N'true')
GO
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [NgaySinh], [Gioitinh], [Matkhau], [Email], [Diachi], [SDT]) VALUES (N'K01       ', N'Nguyễn thị THảo', CAST(N'2004-12-03' AS Date), N'Nữ', N'888888', N'thanhthao@gmail.com', N'Thanh xuân,Hà nội', N'0345678912')
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [NgaySinh], [Gioitinh], [Matkhau], [Email], [Diachi], [SDT]) VALUES (N'K02       ', N'Trần Thị Duyên', CAST(N'2004-04-06' AS Date), N'Nữ', N'555666', N'duyen12@gmail.com', N'đống đa,hà nội', N'0948563264')
GO
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaDM], [GiaBan], [SoLuongTonKho], [Anh]) VALUES (N'L01       ', N'Áo thun', N'H01       ', CAST(100.00 AS Decimal(10, 2)), 50, N'Anh1.jpg')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaDM], [GiaBan], [SoLuongTonKho], [Anh]) VALUES (N'L02       ', N'Quần jean', N'H02       ', CAST(90.00 AS Decimal(10, 2)), 60, N'Anh2.jpg')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaDM], [GiaBan], [SoLuongTonKho], [Anh]) VALUES (N'L03       ', N'Áo SơMi', N'H03       ', CAST(110.00 AS Decimal(10, 2)), 78, N'Anh3.jpg')
GO
INSERT [dbo].[THANHTOAN] ([MaTT], [MaDH], [PhuongThucTT], [NgayTT], [Sotien]) VALUES (N'T01       ', N'D01       ', N'Tiền mặt', CAST(N'2024-05-02' AS Date), CAST(200000.00 AS Decimal(10, 2)))
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONHANG_DONHANG] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DONHANG] ([MaDH])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK_CHITIETDONHANG_DONHANG]
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONHANG_SANPHAM] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK_CHITIETDONHANG_SANPHAM]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONHANG_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_DONHANG_KHACHHANG]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_DANHMUC] FOREIGN KEY([MaDM])
REFERENCES [dbo].[DANHMUC] ([MaDM])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_DANHMUC]
GO
ALTER TABLE [dbo].[THANHTOAN]  WITH CHECK ADD  CONSTRAINT [FK_THANHTOAN_DONHANG] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DONHANG] ([MaDH])
GO
ALTER TABLE [dbo].[THANHTOAN] CHECK CONSTRAINT [FK_THANHTOAN_DONHANG]
GO
