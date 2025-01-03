CREATE DATABASE QL_CHANGAGOINEM
GO

USE [QL_CHANGAGOINEM]
GO
/****** Object:  Table [dbo].[chi_tiet_hoa_don]    Script Date: 12/9/2024 9:06:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chi_tiet_hoa_don](
	[chi_tiet_id] [int] IDENTITY(1,1) NOT NULL,
	[hoa_don_id] [int] NULL,
	[chi_tiet_san_pham_id] [int] NULL,
	[kich_thuoc] [nvarchar](255) NULL,
	[so_luong] [int] NULL,
	[gia] [decimal](10, 2) NULL,
	[tong_tien]  AS ([gia]*[so_luong]) PERSISTED,
	[do_day] [int] NULL,
	[mau_sac] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[chi_tiet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chi_tiet_khuyen_mai]    Script Date: 12/9/2024 9:06:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chi_tiet_khuyen_mai](
	[chi_tiet_id] [int] IDENTITY(1,1) NOT NULL,
	[khuyen_mai_id] [int] NULL,
	[san_pham_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[chi_tiet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chi_tiet_san_pham]    Script Date: 12/9/2024 9:06:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chi_tiet_san_pham](
	[chi_tiet_id] [int] IDENTITY(1,1) NOT NULL,
	[san_pham_id] [int] NULL,
	[kich_thuoc] [nvarchar](255) NULL,
	[do_day] [int] NULL,
	[mau_sac] [nvarchar](255) NULL,
	[chat_lieu] [nvarchar](255) NULL,
	[gia] [decimal](10, 2) NULL,
	[gia_khuyen_mai] [decimal](10, 2) NULL,
	[so_luong_ton] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[chi_tiet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[danh_gia]    Script Date: 12/9/2024 9:06:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danh_gia](
	[danh_gia_id] [int] IDENTITY(1,1) NOT NULL,
	[nguoi_dung_id] [int] NULL,
	[san_pham_id] [int] NULL,
	[so_sao] [int] NULL,
	[binh_luan] [nvarchar](max) NULL,
	[ngay_danh_gia] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[danh_gia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoa_don]    Script Date: 12/9/2024 9:06:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don](
	[hoa_don_id] [int] IDENTITY(1,1) NOT NULL,
	[nguoi_dung_id] [int] NULL,
	[tong_tien] [decimal](10, 2) NULL,
	[ngay_lap] [datetime] NULL,
	[trang_thai] [nvarchar](50) NULL,
	[dia_chi_giao_hang] [nvarchar](max) NULL,
	[ten_khach_hang] [nvarchar](255) NOT NULL,
	[so_dien_thoai] [nvarchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[hoa_don_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khuyen_mai]    Script Date: 12/9/2024 9:06:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khuyen_mai](
	[khuyen_mai_id] [int] IDENTITY(1,1) NOT NULL,
	[ten_khuyen_mai] [nvarchar](255) NOT NULL,
	[mo_ta] [nvarchar](max) NULL,
	[ngay_bat_dau] [datetime] NOT NULL,
	[ngay_ket_thuc] [datetime] NOT NULL,
	[giam_gia] [decimal](10, 2) NOT NULL,
	[ngay_tao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[khuyen_mai_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[log_thong_tin_hoa_don]    Script Date: 12/9/2024 9:06:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[log_thong_tin_hoa_don](
	[log_id] [int] IDENTITY(1,1) NOT NULL,
	[hoa_don_id] [int] NULL,
	[ngay_gio_thay_doi] [datetime] NULL,
	[trang_thai_moi] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nguoi_dung]    Script Date: 12/9/2024 9:06:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nguoi_dung](
	[nguoi_dung_id] [int] IDENTITY(1,1) NOT NULL,
	[ten_dang_nhap] [nvarchar](255) NOT NULL,
	[mat_khau_hash] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[so_dien_thoai] [nvarchar](20) NULL,
	[dia_chi] [nvarchar](max) NULL,
	[vai_tro] [nvarchar](50) NULL,
	[ngay_tao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[nguoi_dung_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[san_pham]    Script Date: 12/9/2024 9:06:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[san_pham](
	[san_pham_id] [int] IDENTITY(1,1) NOT NULL,
	[ten_san_pham] [nvarchar](255) NOT NULL,
	[loai_san_pham] [nvarchar](255) NOT NULL,
	[mo_ta_chung] [nvarchar](max) NULL,
	[thuong_hieu] [nvarchar](255) NULL,
	[giam_gia] [decimal](10, 2) NULL,
	[hinh_anh_chinh] [nvarchar](255) NULL,
	[danh_sach_hinh_anh] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[san_pham_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thanh_toan]    Script Date: 12/9/2024 9:06:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thanh_toan](
	[thanh_toan_id] [int] IDENTITY(1,1) NOT NULL,
	[hoa_don_id] [int] NULL,
	[phuong_thuc_thanh_toan] [nvarchar](50) NOT NULL,
	[trang_thai] [nvarchar](50) NULL,
	[ngay_thanh_toan] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[thanh_toan_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thong_bao]    Script Date: 12/9/2024 9:06:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thong_bao](
	[thong_bao_id] [int] IDENTITY(1,1) NOT NULL,
	[hoa_don_id] [int] NULL,
	[nguoi_dung_id] [int] NULL,
	[thong_bao] [nvarchar](max) NULL,
	[ngay_tao] [datetime] NULL,
	[da_xem] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[thong_bao_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thong_bao_nguoi_dung]    Script Date: 12/9/2024 9:06:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thong_bao_nguoi_dung](
	[thong_bao_id] [int] IDENTITY(1,1) NOT NULL,
	[nguoi_dung_id] [int] NULL,
	[thong_bao] [nvarchar](max) NULL,
	[ngay_tao] [datetime] NULL,
	[da_xem] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[thong_bao_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[chi_tiet_hoa_don] ON 

INSERT [dbo].[chi_tiet_hoa_don] ([chi_tiet_id], [hoa_don_id], [chi_tiet_san_pham_id], [kich_thuoc], [so_luong], [gia], [do_day], [mau_sac]) VALUES (19, 35, 53, N'120x200', 2, CAST(5400000.00 AS Decimal(10, 2)), 5, NULL)
SET IDENTITY_INSERT [dbo].[chi_tiet_hoa_don] OFF
GO
SET IDENTITY_INSERT [dbo].[chi_tiet_san_pham] ON 

INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (53, 19, N'120x200', 5, NULL, N'Cao Su', CAST(5400000.00 AS Decimal(10, 2)), CAST(5400000.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (54, 19, N'140x200', 5, NULL, N'Cao Su', CAST(7329000.00 AS Decimal(10, 2)), CAST(7329000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (55, 19, N'160x200', 5, NULL, N'Cao Su', CAST(7929000.00 AS Decimal(10, 2)), CAST(7929000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (56, 19, N'180x200', 5, NULL, N'Cao Su', CAST(8939000.00 AS Decimal(10, 2)), CAST(8939000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (57, 19, N'200x200', 5, NULL, N'Cao Su', CAST(10079000.00 AS Decimal(10, 2)), CAST(10079000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (58, 19, N'120x200', 15, NULL, N'Cao Su', CAST(12699000.00 AS Decimal(10, 2)), CAST(12699000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (59, 19, N'140x200', 15, NULL, N'Cao Su', CAST(14699000.00 AS Decimal(10, 2)), CAST(14699000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (60, 19, N'160x200', 15, NULL, N'Cao Su', CAST(16859000.00 AS Decimal(10, 2)), CAST(16859000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (61, 19, N'220x200', 10, NULL, N'Cao Su', CAST(22779000.00 AS Decimal(10, 2)), CAST(22779000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (62, 20, N'120x200', 23, NULL, N'Foam', CAST(8900000.00 AS Decimal(10, 2)), CAST(8900000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (63, 20, N'140x200', 23, NULL, N'Froam', CAST(10400000.00 AS Decimal(10, 2)), CAST(10400000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (64, 20, N' 160x200', 23, NULL, N'Froam', CAST(11900000.00 AS Decimal(10, 2)), CAST(11900000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (65, 20, N' 180x200', 23, NULL, N'Froam', CAST(13400000.00 AS Decimal(10, 2)), CAST(13400000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (66, 21, N'120x200', 12, NULL, N'Froam', CAST(13728000.00 AS Decimal(10, 2)), CAST(13728000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (67, 21, N'140x200', 12, NULL, N'Froam', CAST(15678000.00 AS Decimal(10, 2)), CAST(15678000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (68, 22, N'100x200', 10, NULL, N'Cao Su', CAST(6250000.00 AS Decimal(10, 2)), CAST(6250000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (69, 22, N'140x200', 12, NULL, N'Bông ép', CAST(10800000.00 AS Decimal(10, 2)), CAST(10800000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (70, 22, N'140x200', 12, NULL, N'Bông ép', CAST(11800000.00 AS Decimal(10, 2)), CAST(11800000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (71, 23, N'120x200', 15, NULL, N'Cao Su', CAST(4990000.00 AS Decimal(10, 2)), CAST(4990000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (72, 23, N'140x200', 15, NULL, N'Cao Su', CAST(5990000.00 AS Decimal(10, 2)), CAST(5990000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (73, 23, N'160x200', 15, NULL, N'Cao Su', CAST(6990000.00 AS Decimal(10, 2)), CAST(6990000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (74, 24, N'120x200', 12, NULL, N'Froam', CAST(9699000.00 AS Decimal(10, 2)), CAST(9699000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (75, 24, N'180x200', 12, NULL, N'Froam', CAST(13799000.00 AS Decimal(10, 2)), CAST(13799000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (76, 25, N'120x200', 25, NULL, N'Lò xo', CAST(14199000.00 AS Decimal(10, 2)), CAST(14199000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (77, 25, N'220x200', 25, NULL, N'Lò xo', CAST(23199000.00 AS Decimal(10, 2)), CAST(23199000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (78, 26, N'120x200', 12, NULL, N'Froam', CAST(14100000.00 AS Decimal(10, 2)), CAST(14100000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (79, 26, N'140x200', 15, NULL, N'Froam', CAST(21499000.00 AS Decimal(10, 2)), CAST(21499000.00 AS Decimal(10, 2)), 8)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (81, 27, N'120x200', 10, NULL, N'Foam', CAST(3499000.00 AS Decimal(10, 2)), CAST(3499000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (82, 27, N'140x200', 10, NULL, N'Foam', CAST(4500000.00 AS Decimal(10, 2)), CAST(4500000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (83, 27, N'160x200', 10, NULL, N'Foam', CAST(5000000.00 AS Decimal(10, 2)), CAST(5000000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (84, 27, N'180x200', 10, NULL, N'Foam', CAST(5500000.00 AS Decimal(10, 2)), CAST(5500000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (85, 28, N'200x220', 1, N'Xanh Dương', N'Vải cao cấp', CAST(1190000.00 AS Decimal(10, 2)), CAST(1190000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (86, 29, N'200x220', 1, N'Xanh Dương', N'Vải cao cấp', CAST(2700000.00 AS Decimal(10, 2)), CAST(2700000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (88, 29, N'200x220', 1, N'Hồng', N'Vải', CAST(2700000.00 AS Decimal(10, 2)), CAST(2700000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (89, 30, N'160x200', 2, N'Xanh Dương', N'Vải cao cấp', CAST(374000.00 AS Decimal(10, 2)), CAST(374000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (90, 30, N'160x200', 2, N'Hồng', N'Vải cao cấp', CAST(374000.00 AS Decimal(10, 2)), CAST(374000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (91, 31, N'160x200', 50, N'Xanh Dương', N'Lụa', CAST(9200000.00 AS Decimal(10, 2)), CAST(9200000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (92, 31, N'220x200', 45, N'Xanh Dương', N'Lụa', CAST(9800000.00 AS Decimal(10, 2)), CAST(9800000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (93, 32, N'120x200', 30, N'Hồng', N'Vải Tencel', CAST(1070000.00 AS Decimal(10, 2)), CAST(1070000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (94, 32, N'160x200', 30, N'Vàng', N'Vải Tencel', CAST(1160000.00 AS Decimal(10, 2)), CAST(1160000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (95, 33, N'160x200', 50, N'Đỏ', N'Lụa Tencel', CAST(9200000.00 AS Decimal(10, 2)), CAST(9200000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (96, 33, N'220x200', 45, N'Đỏ', N'Lụa Tencel', CAST(9800000.00 AS Decimal(10, 2)), CAST(9800000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (97, 34, N'160x200', 35, N'Xám', N'Lyocell', CAST(4700000.00 AS Decimal(10, 2)), CAST(4700000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (98, 34, N'180x200', 35, N'Xám', N'Lyocell', CAST(4700000.00 AS Decimal(10, 2)), CAST(4700000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (99, 34, N'220x200', 35, N'Xám', N'Lyocell', CAST(5100000.00 AS Decimal(10, 2)), CAST(5100000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (100, 35, N'120x200', 20, NULL, NULL, CAST(600000.00 AS Decimal(10, 2)), CAST(600000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (101, 35, N'160x200', 20, NULL, NULL, CAST(800000.00 AS Decimal(10, 2)), CAST(800000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (102, 35, N'180x200', 20, NULL, NULL, CAST(860000.00 AS Decimal(10, 2)), CAST(860000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (103, 37, N'45x65', NULL, NULL, N'Bông', CAST(340000.00 AS Decimal(10, 2)), CAST(340000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (104, 38, N'30x60', 10, NULL, NULL, CAST(700000.00 AS Decimal(10, 2)), CAST(700000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (105, 39, N'35x50', 9, N'Trắng', NULL, CAST(489000.00 AS Decimal(10, 2)), CAST(489000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (106, 40, N'39x59', 9, NULL, NULL, CAST(1120000.00 AS Decimal(10, 2)), CAST(1120000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (107, 41, N'45x65', 12, N'Trắng', NULL, CAST(810000.00 AS Decimal(10, 2)), CAST(810000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (108, 42, N'45x65', NULL, NULL, NULL, CAST(1680000.00 AS Decimal(10, 2)), CAST(1680000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (109, 43, N'40x60', 11, NULL, NULL, CAST(1100000.00 AS Decimal(10, 2)), CAST(1100000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[chi_tiet_san_pham] ([chi_tiet_id], [san_pham_id], [kich_thuoc], [do_day], [mau_sac], [chat_lieu], [gia], [gia_khuyen_mai], [so_luong_ton]) VALUES (110, 36, N'160x220', 1, NULL, NULL, CAST(2500000.00 AS Decimal(10, 2)), CAST(2500000.00 AS Decimal(10, 2)), 10)
SET IDENTITY_INSERT [dbo].[chi_tiet_san_pham] OFF
GO
SET IDENTITY_INSERT [dbo].[hoa_don] ON 

INSERT [dbo].[hoa_don] ([hoa_don_id], [nguoi_dung_id], [tong_tien], [ngay_lap], [trang_thai], [dia_chi_giao_hang], [ten_khach_hang], [so_dien_thoai]) VALUES (35, 22, CAST(10800000.00 AS Decimal(10, 2)), CAST(N'2024-12-09T16:23:38.890' AS DateTime), N'cho_xac_nhan', N'140 Lê Trọng Tấn, Tân Phú', N'Phạm Tuấn', N'0979828257')
SET IDENTITY_INSERT [dbo].[hoa_don] OFF
GO
SET IDENTITY_INSERT [dbo].[nguoi_dung] ON 

INSERT [dbo].[nguoi_dung] ([nguoi_dung_id], [ten_dang_nhap], [mat_khau_hash], [email], [so_dien_thoai], [dia_chi], [vai_tro], [ngay_tao]) VALUES (20, N'Admin', N'123', N'tuan12345yahoo@gmail.com', N'09999999999', N'letrongtan123', N'admin', CAST(N'2024-12-08T19:23:45.307' AS DateTime))
INSERT [dbo].[nguoi_dung] ([nguoi_dung_id], [ten_dang_nhap], [mat_khau_hash], [email], [so_dien_thoai], [dia_chi], [vai_tro], [ngay_tao]) VALUES (21, N'Phong', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', N'windsosocool.hp@gmail.com', N'09787878787', N'123 Lê Trọng Tấn', N'nguoi_dung', CAST(N'2024-12-08T19:30:03.503' AS DateTime))
INSERT [dbo].[nguoi_dung] ([nguoi_dung_id], [ten_dang_nhap], [mat_khau_hash], [email], [so_dien_thoai], [dia_chi], [vai_tro], [ngay_tao]) VALUES (22, N'Tuan', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', N'musiclife020104@gmail.com', N'0979828257', N'140 Lê Trọng Tấn', N'nguoi_dung', CAST(N'2024-12-09T16:22:08.797' AS DateTime))
SET IDENTITY_INSERT [dbo].[nguoi_dung] OFF
GO
SET IDENTITY_INSERT [dbo].[san_pham] ON 

INSERT [dbo].[san_pham] ([san_pham_id], [ten_san_pham], [loai_san_pham], [mo_ta_chung], [thuong_hieu], [giam_gia], [hinh_anh_chinh], [danh_sach_hinh_anh]) VALUES (19, N'Nệm cao su thiên nhiên Gummi Classic thế hệ mới dày 5/10/15cm', N'Nệm Cao Su', N'
Nguyên liệu 100% tự nhiên
Mủ cao su được chọn lọc từ nguồn cao su chất lượng đã loại bỏ tạp chất. Cảm giác êm ái của cao su thiên nhiên không chỉ tạo sự thoải mái khi nằm, mà còn không gây kích ứng da với những người có làn da nhạy cảm như trẻ sơ sinh, trẻ nhỏ.', N'Gummi', NULL, N'nệm (1).png', N'nệm (2).png,nệm (22).png,nệm (23).png,nệm (24).png')
INSERT [dbo].[san_pham] ([san_pham_id], [ten_san_pham], [loai_san_pham], [mo_ta_chung], [thuong_hieu], [giam_gia], [hinh_anh_chinh], [danh_sach_hinh_anh]) VALUES (20, N'Nệm lò xo Amando Elite Original túi độc lập tiêu chuẩn khách sạn 5 sao dày 23cm', N'Nệm Lò Xo', N'Thoáng khí & Tản nhiệt tối đa
Lớp Convoluted PU foam của nệm Amando Elite Original giúp cung cấp không gian thoáng khí và tỏa nhiệt tốt, đồng thời giảm mồ hôi, mang đến cảm giác thực sự thoải mái khi nằm trên nệm.', N'Amando', NULL, N'nệm (5).png', N'nệm (6).png,nệm (7).png,nệm (8).png,nệm (9).png')
INSERT [dbo].[san_pham] ([san_pham_id], [ten_san_pham], [loai_san_pham], [mo_ta_chung], [thuong_hieu], [giam_gia], [hinh_anh_chinh], [danh_sach_hinh_anh]) VALUES (21, N'Nệm Nhật Bản Aeroflow Standard nâng đỡ cơ thể dày 12cm', N'Nệm foam', NULL, N'Standard', NULL, N'nệm (14).png', N'nệm (15).png,nệm (16).png,nệm (17).png,nệm (18).png')
INSERT [dbo].[san_pham] ([san_pham_id], [ten_san_pham], [loai_san_pham], [mo_ta_chung], [thuong_hieu], [giam_gia], [hinh_anh_chinh], [danh_sach_hinh_anh]) VALUES (22, N'Nệm Bông ép Wonjun Pure Carbon giảm đau lưng, chuẩn Hàn Quốc dày 10cm', N'Nệm Bông Ép', N'Lợi ích khi sử dụng Nệm bông ép Wonjun Pure Carbon
Nệm bông ép than hoạt tính Wonjun được làm từ 100% sợi bông than hoạt tính công nghệ kháng khuẩn ưu việt. Nhờ đó ngăn ngừa các mùi hôi, vi khuẩn, nấm mốc phát triển, bảo vệ sức khỏe. Lõi bông ép tạo thành một bề mặt vững chãi, hỗ trợ giữ cột sống, tư thế ngủ ở trạng thái cân bằng, phù hợp với những người có vấn đề về xương khớp. Wonjun Pure Carbon là lựa chọn hàng đầu để bảo vệ sức khỏe cho cả gia đình bạn.
', N'Wonjun', NULL, N'nệm (28).png', N'nệm (26).png,nệm (27).png,nệm (28).png,nệm (29).png')
INSERT [dbo].[san_pham] ([san_pham_id], [ten_san_pham], [loai_san_pham], [mo_ta_chung], [thuong_hieu], [giam_gia], [hinh_anh_chinh], [danh_sach_hinh_anh]) VALUES (23, N'Nệm cao su đa tầng Kim Cương Erica Smart Tech dày 15cm', N'Nệm Cao Su', N'Lợi ích khi sử dụng Nệm cao su đa tầng Kim Cương Erica Smart Tech
Từ sự kết hợp hoàn hảo giữa cao su thiên nhiên, foam và bông ép bằng công nghệ tiên tiến 3-in-1 Fushion Tech, nệm cao su đa tầng Kim Cương Erica Smart Tech với khả năng nâng đỡ cơ thể vượt trội giúp bạn giảm thiểu tình trạng đau lưng hay đau mỏi vai gáy. Nhờ đó, cơ thể của bạn luôn thật sự nhẹ nhàng khi nằm ngủ và thoải mái mỗi khi thức dậy. Không chỉ vậy nệm cao su này còn được thiết kế tinh tế với bề mặt Smart Wave êm ái và lớp vải bề mặt 4D Breezy thông thoáng, đảm bảo cho giấc ngủ của bạn luôn được sâu giấc và thật sự thư thái.', N'Kim Cương', NULL, N'nệm (24).png', N'nệm (22).png,nệm (25).png,nệm (29).png,nệm (30).png')
INSERT [dbo].[san_pham] ([san_pham_id], [ten_san_pham], [loai_san_pham], [mo_ta_chung], [thuong_hieu], [giam_gia], [hinh_anh_chinh], [danh_sach_hinh_anh]) VALUES (24, N'Nệm foam Comfy Cloud 1.0 thoáng khí vượt trội dày 12cm', N'Nệm foam', N'Lợi ích khi sử dụng nệm foam Comfy Cloud 1.0
Nệm foam Comfy Cloud 1.0 là sự lựa chọn song hành giữa kinh tế tối thiểu - chất lượng tối ưu dành cho mọi gia đình. Khả năng giảm nhức mỏi và bảo vệ cột sống của nệm mang đến sự hài lòng cho mọi người nằm.', N'Comfy', NULL, N'nệm (21).png', N'nệm (22).png,nệm (26).png,nệm (27).png,nệm (28).png')
INSERT [dbo].[san_pham] ([san_pham_id], [ten_san_pham], [loai_san_pham], [mo_ta_chung], [thuong_hieu], [giam_gia], [hinh_anh_chinh], [danh_sach_hinh_anh]) VALUES (25, N'Nệm lò xo Dunlopillo Cambridge Luxe dày 34cm', N'Nệm Lò Xo', N'Lợi ích khi sử dụng nệm lò xo Dunlopillo Cambridge Luxe
Nệm lò xo Dunlopillo Cambridge Luxe là dòng nệm cao cấp với 11 lớp lõi. Đây sản phẩm đột phá với các tính năng vượt trội về khả năng nâng đỡ 5 vùng cơ thể, mang đến những trải nghiệm 5 sao cho giấc ngủ trọn vẹn suốt đêm dài.', N'Dunlopillo', NULL, N'nệm (8).png', N'nệm (6).png,nệm (7).png,nệm (22).png,nệm (25).png')
INSERT [dbo].[san_pham] ([san_pham_id], [ten_san_pham], [loai_san_pham], [mo_ta_chung], [thuong_hieu], [giam_gia], [hinh_anh_chinh], [danh_sach_hinh_anh]) VALUES (26, N'Nệm cao su đa tầng Kim Cương Stella dày 15cm', N'Nệm Cao Su', N'Bảo vệ cột sống - Kích thích lưu thông cho giấc ngủ thêm trọn vẹn!
Nệm cao su foam Kim Cương Stella là sự kết hợp độc đáo giữa cao su thiên nhiên và foam cao cấp hỗ trợ nâng đỡ và bảo vệ cột sống. Sản phẩm là thành quả của 12 năm nghiên cứu và tiên phong xu hướng "sống xanh - ngủ Organic", mang đến cho bạn giấc ngủ ngon, kích thích lưu thông tuần hoàn và cải thiện các vấn đề về xương khớp.', N'Kim Cương', NULL, N'nệm (12).png', N'nệm (22).png,nệm (25).png,nệm (29).png,nệm (30).png')
INSERT [dbo].[san_pham] ([san_pham_id], [ten_san_pham], [loai_san_pham], [mo_ta_chung], [thuong_hieu], [giam_gia], [hinh_anh_chinh], [danh_sach_hinh_anh]) VALUES (27, N'Nệm foam Goodnight Eva gấp 3 nâng đỡ dày 10cm', N'Nệm foam', NULL, N'Goodnight', NULL, N'nệm (9).png', N'nệm (6).png,nệm (7).png,nệm (8).png,nệm (10).png')
INSERT [dbo].[san_pham] ([san_pham_id], [ten_san_pham], [loai_san_pham], [mo_ta_chung], [thuong_hieu], [giam_gia], [hinh_anh_chinh], [danh_sach_hinh_anh]) VALUES (28, N'Chăn Amando Ice silk làm mát mỏng nhẹ', N'Chăn', NULL, N'Amando', NULL, N'chăn (1).png', N'chăn (1).png,chăn (2).png,chăn (3).png,chăn (4).png')
INSERT [dbo].[san_pham] ([san_pham_id], [ten_san_pham], [loai_san_pham], [mo_ta_chung], [thuong_hieu], [giam_gia], [hinh_anh_chinh], [danh_sach_hinh_anh]) VALUES (29, N'Vỏ chăn chần AMD Bliss tencel', N'Vỏ Chăn', NULL, N'Tencel', NULL, N'chăn (10).png', N'chăn (9).png,chăn (11).png,chăn (12).png')
INSERT [dbo].[san_pham] ([san_pham_id], [ten_san_pham], [loai_san_pham], [mo_ta_chung], [thuong_hieu], [giam_gia], [hinh_anh_chinh], [danh_sach_hinh_anh]) VALUES (30, N'Chăn bốn mùa micro satin Goodnight Mori (chỉ bán Online)', N'Chăn', NULL, N'Goodnight', NULL, N'chăn (7).png', N'chăn (8).png,chăn (9).png,chăn (10).png,chăn (11).png')
INSERT [dbo].[san_pham] ([san_pham_id], [ten_san_pham], [loai_san_pham], [mo_ta_chung], [thuong_hieu], [giam_gia], [hinh_anh_chinh], [danh_sach_hinh_anh]) VALUES (31, N'Bộ Chăn ga lụa tencel cao cấp Amando Soulmate 7 chi tiết màu Kem', N'Bộ ga phủ', NULL, N'Amando', NULL, N'bộ chăn ga (7).png', N'bộ chăn ga (7).png,bộ chăn ga (8).png,bộ chăn ga (9).png,bộ chăn ga (10).png')
INSERT [dbo].[san_pham] ([san_pham_id], [ten_san_pham], [loai_san_pham], [mo_ta_chung], [thuong_hieu], [giam_gia], [hinh_anh_chinh], [danh_sach_hinh_anh]) VALUES (32, N'Ga chun AMD Confident Tencel đơn sắc', N'Ga Chun', NULL, N'Amando', NULL, N'bộ chăn ga (1).png', N'bộ chăn ga (2).png,bộ chăn ga (3).png,bộ chăn ga (4).png,bộ chăn ga (5).png')
INSERT [dbo].[san_pham] ([san_pham_id], [ten_san_pham], [loai_san_pham], [mo_ta_chung], [thuong_hieu], [giam_gia], [hinh_anh_chinh], [danh_sach_hinh_anh]) VALUES (33, N'Bộ Chăn ga cưới lụa tencel cao cấp Amando Soulmate 7 chi tiết màu Đỏ', N'Bộ ga phủ', NULL, N'Amando', NULL, N'bộ chăn ga (25).png', N'bộ chăn ga (18).png,bộ chăn ga (25).png,bộ chăn ga (26).png,bộ chăn ga (27).png')
INSERT [dbo].[san_pham] ([san_pham_id], [ten_san_pham], [loai_san_pham], [mo_ta_chung], [thuong_hieu], [giam_gia], [hinh_anh_chinh], [danh_sach_hinh_anh]) VALUES (34, N'Bộ chăn ga chun chần sợi gỗ thiên nhiên Amando Jamila 5 chi tiết LC004', N'Bộ ga chun chần', NULL, N'Amando', NULL, N'bộ chăn ga (17).png', N'bộ chăn ga (18).png,bộ chăn ga (20).png,bộ chăn ga (21).png,bộ chăn ga (22).png,bộ chăn ga (23).png')
INSERT [dbo].[san_pham] ([san_pham_id], [ten_san_pham], [loai_san_pham], [mo_ta_chung], [thuong_hieu], [giam_gia], [hinh_anh_chinh], [danh_sach_hinh_anh]) VALUES (35, N'Bộ ga chun tencel cao cấp Goodnight Airsilk (chỉ bán Online)', N'Bộ Ga Chun', NULL, N'Goodnight', NULL, N'bộ chăn ga (11).png', N'bộ chăn ga (14).png,bộ chăn ga (15).png,bộ chăn ga (16).png,bộ chăn ga (17).png,bộ chăn ga (18).png,bộ chăn ga (19).png')
INSERT [dbo].[san_pham] ([san_pham_id], [ten_san_pham], [loai_san_pham], [mo_ta_chung], [thuong_hieu], [giam_gia], [hinh_anh_chinh], [danh_sach_hinh_anh]) VALUES (36, N'Chăn chần Microfiber Amando Cozy', N'Chăn Lẻ', NULL, N'Amando', NULL, N'chăn (12).png', N'chăn (4).png,chăn (7).png,chăn (8).png,chăn (9).png,chăn (10).png')
INSERT [dbo].[san_pham] ([san_pham_id], [ten_san_pham], [loai_san_pham], [mo_ta_chung], [thuong_hieu], [giam_gia], [hinh_anh_chinh], [danh_sach_hinh_anh]) VALUES (37, N'Gối lông vũ Goodnight Mochi siêu êm chuẩn khách sạn 5 sao (chỉ bán Online)', N'Gối Bông', NULL, N'Goodnight', NULL, N'gối (27).png', N'gối (27).png,gối (28).png,gối (29).png,gối (30).png')
INSERT [dbo].[san_pham] ([san_pham_id], [ten_san_pham], [loai_san_pham], [mo_ta_chung], [thuong_hieu], [giam_gia], [hinh_anh_chinh], [danh_sach_hinh_anh]) VALUES (38, N'Gối foam Goodnight Nori 1.0 lượn sóng nâng đỡ cổ vai gáy (chỉ bán Online)', N'Gối cao su', NULL, N'Goodnight', NULL, N'gối (1).png', N'gối (2).png,gối (3).png,gối (4).png,gối (5).png')
INSERT [dbo].[san_pham] ([san_pham_id], [ten_san_pham], [loai_san_pham], [mo_ta_chung], [thuong_hieu], [giam_gia], [hinh_anh_chinh], [danh_sach_hinh_anh]) VALUES (39, N'Gối cao su Gummi Cookie 100% thiên nhiên nâng đỡ cổ vai gáy', N'Gối cao su', NULL, N'Gummi', NULL, N'gối (7).png', N'gối (8).png,gối (9).png,gối (10).png,gối (11).png')
INSERT [dbo].[san_pham] ([san_pham_id], [ten_san_pham], [loai_san_pham], [mo_ta_chung], [thuong_hieu], [giam_gia], [hinh_anh_chinh], [danh_sach_hinh_anh]) VALUES (40, N'Gối cao su Gummi Contour Massage 100% thiên nhiên công thái học', N'Gối cao su', NULL, N'Gummi', NULL, N'gối (5).png', N'gối (2).png,gối (3).png,gối (4).png,gối (6).png')
INSERT [dbo].[san_pham] ([san_pham_id], [ten_san_pham], [loai_san_pham], [mo_ta_chung], [thuong_hieu], [giam_gia], [hinh_anh_chinh], [danh_sach_hinh_anh]) VALUES (41, N'Gối Cao Su Liên Á Oval đàn hồi chất lượng cao', N'Gối cao su', NULL, N'Liên Á', NULL, N'gối (5).png', N'gối (2).png,gối (3).png,gối (4).png,gối (6).png')
INSERT [dbo].[san_pham] ([san_pham_id], [ten_san_pham], [loai_san_pham], [mo_ta_chung], [thuong_hieu], [giam_gia], [hinh_anh_chinh], [danh_sach_hinh_anh]) VALUES (42, N'Gối lông vũ Doona Sandwich cao cấp kháng khuẩn', N'Gối Lông Vũ', NULL, N'Doona', NULL, N'gối (32).png', N'gối (31).png,gối (32).png,gối (33).png,gối (34).png')
INSERT [dbo].[san_pham] ([san_pham_id], [ten_san_pham], [loai_san_pham], [mo_ta_chung], [thuong_hieu], [giam_gia], [hinh_anh_chinh], [danh_sach_hinh_anh]) VALUES (43, N'Gối foam Comfy Nami công thái học', N'Gối foam', NULL, N'Comfy', NULL, N'gối (6).png', N'gối (1).png,gối (2).png,gối (4).png,gối (5).png')
SET IDENTITY_INSERT [dbo].[san_pham] OFF
GO
ALTER TABLE [dbo].[chi_tiet_san_pham] ADD  DEFAULT ((0)) FOR [so_luong_ton]
GO
ALTER TABLE [dbo].[danh_gia] ADD  DEFAULT (getdate()) FOR [ngay_danh_gia]
GO
ALTER TABLE [dbo].[hoa_don] ADD  DEFAULT ((0)) FOR [tong_tien]
GO
ALTER TABLE [dbo].[hoa_don] ADD  DEFAULT (getdate()) FOR [ngay_lap]
GO
ALTER TABLE [dbo].[hoa_don] ADD  DEFAULT (N'cho_xac_nhan') FOR [trang_thai]
GO
ALTER TABLE [dbo].[khuyen_mai] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[nguoi_dung] ADD  DEFAULT (N'nguoi_dung') FOR [vai_tro]
GO
ALTER TABLE [dbo].[nguoi_dung] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[thanh_toan] ADD  DEFAULT (N'chua_thanh_toan') FOR [trang_thai]
GO
ALTER TABLE [dbo].[thong_bao] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[thong_bao] ADD  DEFAULT ((0)) FOR [da_xem]
GO
ALTER TABLE [dbo].[thong_bao_nguoi_dung] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[thong_bao_nguoi_dung] ADD  DEFAULT ((0)) FOR [da_xem]
GO
ALTER TABLE [dbo].[chi_tiet_hoa_don]  WITH CHECK ADD FOREIGN KEY([chi_tiet_san_pham_id])
REFERENCES [dbo].[chi_tiet_san_pham] ([chi_tiet_id])
GO
ALTER TABLE [dbo].[chi_tiet_hoa_don]  WITH CHECK ADD FOREIGN KEY([hoa_don_id])
REFERENCES [dbo].[hoa_don] ([hoa_don_id])
GO
ALTER TABLE [dbo].[chi_tiet_khuyen_mai]  WITH CHECK ADD FOREIGN KEY([khuyen_mai_id])
REFERENCES [dbo].[khuyen_mai] ([khuyen_mai_id])
GO
ALTER TABLE [dbo].[chi_tiet_khuyen_mai]  WITH CHECK ADD FOREIGN KEY([san_pham_id])
REFERENCES [dbo].[san_pham] ([san_pham_id])
GO
ALTER TABLE [dbo].[chi_tiet_san_pham]  WITH CHECK ADD FOREIGN KEY([san_pham_id])
REFERENCES [dbo].[san_pham] ([san_pham_id])
GO
ALTER TABLE [dbo].[danh_gia]  WITH CHECK ADD FOREIGN KEY([nguoi_dung_id])
REFERENCES [dbo].[nguoi_dung] ([nguoi_dung_id])
GO
ALTER TABLE [dbo].[danh_gia]  WITH CHECK ADD FOREIGN KEY([san_pham_id])
REFERENCES [dbo].[san_pham] ([san_pham_id])
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD FOREIGN KEY([nguoi_dung_id])
REFERENCES [dbo].[nguoi_dung] ([nguoi_dung_id])
GO
ALTER TABLE [dbo].[log_thong_tin_hoa_don]  WITH CHECK ADD FOREIGN KEY([hoa_don_id])
REFERENCES [dbo].[hoa_don] ([hoa_don_id])
GO
ALTER TABLE [dbo].[thanh_toan]  WITH CHECK ADD FOREIGN KEY([hoa_don_id])
REFERENCES [dbo].[hoa_don] ([hoa_don_id])
GO
ALTER TABLE [dbo].[thong_bao]  WITH CHECK ADD FOREIGN KEY([hoa_don_id])
REFERENCES [dbo].[hoa_don] ([hoa_don_id])
GO
ALTER TABLE [dbo].[thong_bao]  WITH CHECK ADD FOREIGN KEY([nguoi_dung_id])
REFERENCES [dbo].[nguoi_dung] ([nguoi_dung_id])
GO
ALTER TABLE [dbo].[thong_bao_nguoi_dung]  WITH CHECK ADD FOREIGN KEY([nguoi_dung_id])
REFERENCES [dbo].[nguoi_dung] ([nguoi_dung_id])
GO
ALTER TABLE [dbo].[danh_gia]  WITH CHECK ADD CHECK  (([so_sao]>=(1) AND [so_sao]<=(5)))
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD CHECK  (([trang_thai]=N'da_huy' OR [trang_thai]=N'da_giao' OR [trang_thai]=N'da_thanh_toan' OR [trang_thai]=N'chua_thanh_toan' OR [trang_thai]=N'cho_xac_nhan'))
GO
ALTER TABLE [dbo].[nguoi_dung]  WITH CHECK ADD CHECK  (([vai_tro]=N'admin' OR [vai_tro]=N'nguoi_dung'))
GO
ALTER TABLE [dbo].[thanh_toan]  WITH CHECK ADD CHECK  (([phuong_thuc_thanh_toan]=N'tien_mat' OR [phuong_thuc_thanh_toan]=N'chuyen_khoan' OR [phuong_thuc_thanh_toan]=N'the_tin_dung'))
GO
ALTER TABLE [dbo].[thanh_toan]  WITH CHECK ADD CHECK  (([trang_thai]=N'da_thanh_toan' OR [trang_thai]=N'chua_thanh_toan'))
GO
