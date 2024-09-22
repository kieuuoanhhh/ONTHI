-- QUẢN LÍ BÁN HÀNG
CREATE DATABASE QuanLyBanHangNew
GO

USE QuanLyBanHangNew
GO

-- Tạo bảng KHACHHANG
CREATE TABLE KHACHHANG
(
	MAKH CHAR(4),
	HOTEN VARCHAR(40),
	DCHI VARCHAR(50),
	SODT VARCHAR(20),
	NGSINH SMALLDATETIME,
	NGDK SMALLDATETIME,
	DOANHSO MONEY,
	CONSTRAINT PK_KHACHHANG PRIMARY KEY (MAKH)
)

-- Tạo bảng NHANVIEN
CREATE TABLE NHANVIEN
(
	MANV CHAR(4),
	HOTEN VARCHAR(40),
	SODT VARCHAR(20),
	NGVL SMALLDATETIME
	CONSTRAINT PK_NHANVIEN PRIMARY KEY (MANV)
)

-- Tạo bảng SANPHAM
CREATE TABLE SANPHAM
(
	MASP CHAR(4),
	TENSP VARCHAR(40),
	DVT VARCHAR(20),
	NUOCSX VARCHAR(40),
	GIA MONEY
	CONSTRAINT PK_SANPHAM PRIMARY KEY (MASP)
)

-- Tạo bảng HOADON
CREATE TABLE HOADON
(
	SOHD INT,
	NGHD SMALLDATETIME,
	MAKH CHAR(4),
	MANV CHAR(4),
	TRIGIA MONEY
	CONSTRAINT PK_HOADON PRIMARY KEY (SOHD)
)

-- Tạo bảng CTHD (Chi tiết hóa đơn)
CREATE TABLE CTHD
(
	SOHD INT,
	MASP CHAR(4),
	SL INT,
	CONSTRAINT PK_CTHD PRIMARY KEY (SOHD, MASP),
)

SET DATEFORMAT DMY

-- Nhập dữ liệu cho KHACHHANG
INSERT INTO KHACHHANG VALUES('KH01','Nguyen Van A','731 Tran Hung Dao, Q5, TpHCM','8823451','22/10/1960','22/07/2006',13060000)
INSERT INTO KHACHHANG VALUES('KH02','Tran Ngoc Han','23/5 Nguyen Trai, Q5, TpHCM','908256478','03/04/1974','30/07/2006',280000)
INSERT INTO KHACHHANG VALUES('KH03','Tran Ngoc Linh','45 Nguyen Canh Chan, Q1, TpHCM','938776266','12/06/1980','08/05/2006',3860000)
INSERT INTO KHACHHANG VALUES('KH04','Tran Minh Long','50/34 Le Dai Hanh, Q10, TpHCM','917325476','09/03/1965','10/02/2006',250000)
INSERT INTO KHACHHANG VALUES('KH05','Le Nhat Minh','34 Truong Dinh, Q3, TpHCM','8246108','10/03/1950','28/10/2006',21000)
INSERT INTO KHACHHANG VALUES('KH06','Le Hoai Thuong','227 Nguyen Van Cu, Q5, TpHCM','8631738','31/12/1981','24/11/2006',915000)
INSERT INTO KHACHHANG VALUES('KH07','Nguyen Van Tam','32/3 Tran Binh Trong, Q5, TpHCM','916783565','06/04/1971','12/01/2006',12500)
INSERT INTO KHACHHANG VALUES('KH08','Phan Thi Thanh','45/2 An Duong Vuong, Q5, TpHCM','938435756','10/01/1971','13/12/2006',365000)
INSERT INTO KHACHHANG VALUES('KH09','Le Ha Vinh','873 Le Hong Phong, Q5, TpHCM','8654763','03/09/1979','14/01/2007',70000)
INSERT INTO KHACHHANG VALUES('KH10','Ha Duy Lap','34/34B Nguyen Trai, Q1, TpHCM','8768904','02/05/1983','16/01/2007',67500)

-- Nhập dữ liệu cho NHANVIEN
INSERT INTO NHANVIEN VALUES('NV01','Nguyen Nhu Nhut','927345678','13/04/2006')
INSERT INTO NHANVIEN VALUES('NV02','Le Thi Phi Yen','987567390','21/04/2006')
INSERT INTO NHANVIEN VALUES('NV03','Nguyen Van B','997047382','27/04/2006')
INSERT INTO NHANVIEN VALUES('NV04','Ngo Thanh Tuan','913758498','24/06/2006')
INSERT INTO NHANVIEN VALUES('NV05','Nguyen Thi Truc Thanh','918590387','20/07/2006')

-- Nhập dữ liệu cho SANPHAM
INSERT INTO SANPHAM VALUES('BC01','But chi','cay','Singapore',3000)
INSERT INTO SANPHAM VALUES('BC02','But chi','cay','Singapore',5000)
INSERT INTO SANPHAM VALUES('BC03','But chi','cay','Viet Nam',3500)
INSERT INTO SANPHAM VALUES('BC04','But chi','hop','Viet Nam',30000)
INSERT INTO SANPHAM VALUES('BB01','But bi','cay','Viet Nam',5000)
INSERT INTO SANPHAM VALUES('BB02','But bi','cay','Trung Quoc',7000)
INSERT INTO SANPHAM VALUES('BB03','But bi','hop','Thai Lan',100000)
INSERT INTO SANPHAM VALUES('TV01','Tap 100 giay mong','quyen','Trung Quoc',2500)
INSERT INTO SANPHAM VALUES('TV02','Tap 200 giay mong','quyen','Trung Quoc',4500)
INSERT INTO SANPHAM VALUES('TV03','Tap 100 giay tot','quyen','Viet Nam',3000)
INSERT INTO SANPHAM VALUES('TV04','Tap 200 giay tot','quyen','Viet Nam',5500)
INSERT INTO SANPHAM VALUES('TV05','Tap 100 trang','chuc','Viet Nam',23000)
INSERT INTO SANPHAM VALUES('TV06','Tap 200 trang','chuc','Viet Nam',53000)
INSERT INTO SANPHAM VALUES('TV07','Tap 100 trang','chuc','Trung Quoc',34000)
INSERT INTO SANPHAM VALUES('ST01','So tay 500 trang','quyen','Trung Quoc',40000)
INSERT INTO SANPHAM VALUES('ST02','So tay loai 1','quyen','Viet Nam',55000)
INSERT INTO SANPHAM VALUES('ST03','So tay loai 2','quyen','Viet Nam',51000)
INSERT INTO SANPHAM VALUES('ST04','So tay','quyen','Thai Lan',55000)
INSERT INTO SANPHAM VALUES('ST05','So tay mong','quyen','Thai Lan',20000)
INSERT INTO SANPHAM VALUES('ST06','Phan viet bang','hop','Viet Nam',5000)
INSERT INTO SANPHAM VALUES('ST07','Phan khong bui','hop','Viet Nam',7000)
INSERT INTO SANPHAM VALUES('ST08','Bong bang','cai','Viet Nam',1000)
INSERT INTO SANPHAM VALUES('ST09','But long','cay','Viet Nam',5000)
INSERT INTO SANPHAM VALUES('ST10','But long','cay','Trung Quoc',7000)

-- Nhập dữ liệu cho HOADON
INSERT INTO HOADON VALUES(1001,'23/07/2006','KH01','NV01',320000)
INSERT INTO HOADON VALUES(1002,'12/08/2006','KH01','NV02',840000)
INSERT INTO HOADON VALUES(1003,'23/08/2006','KH02','NV01',100000)
INSERT INTO HOADON VALUES(1004,'01/09/2006','KH02','NV01',180000)
INSERT INTO HOADON VALUES(1005,'20/10/2006','KH01','NV02',3800000)
INSERT INTO HOADON VALUES(1006,'16/10/2006','KH01','NV03',2430000)
INSERT INTO HOADON VALUES(1007,'28/10/2006','KH03','NV03',510000)
INSERT INTO HOADON VALUES(1008,'28/10/2006','KH01','NV03',440000)
INSERT INTO HOADON VALUES(1009,'28/10/2006','KH03','NV04',200000)
INSERT INTO HOADON VALUES(1010,'01/11/2006','KH01','NV01',5200000)
INSERT INTO HOADON VALUES(1011,'04/11/2006','KH04','NV03',250000)
INSERT INTO HOADON VALUES(1012,'30/11/2006','KH05','NV03',21000)
INSERT INTO HOADON VALUES(1013,'12/12/2006','KH06','NV01',5000)
INSERT INTO HOADON VALUES(1014,'31/12/2006','KH03','NV02',3150000)
INSERT INTO HOADON VALUES(1015,'01/01/2007','KH06','NV01',910000)
INSERT INTO HOADON VALUES(1016,'01/01/2007','KH07','NV02',12500)
INSERT INTO HOADON VALUES(1017,'02/01/2007','KH08','NV03',35000)
INSERT INTO HOADON VALUES(1018,'13/01/2007','KH08','NV03',330000)
INSERT INTO HOADON VALUES(1019,'13/01/2007','KH01','NV03',30000)
INSERT INTO HOADON VALUES(1020,'14/01/2007','KH09','NV04',70000)
INSERT INTO HOADON VALUES(1021,'16/01/2007','KH10','NV03',67500)
INSERT INTO HOADON VALUES(1022,'16/01/2007',Null,'NV03',7000)
INSERT INTO HOADON VALUES(1023,'17/01/2007',Null,'NV01',330000)

-- Nhập dữ liệu cho CTHD
INSERT INTO CTHD VALUES(1001,'TV02',10)
INSERT INTO CTHD VALUES(1001,'ST01',5)
INSERT INTO CTHD VALUES(1001,'BC01',5)
INSERT INTO CTHD VALUES(1001,'BC02',10)
INSERT INTO CTHD VALUES(1001,'ST08',10)
INSERT INTO CTHD VALUES(1002,'BC04',20)
INSERT INTO CTHD VALUES(1002,'BB01',20)
INSERT INTO CTHD VALUES(1002,'BB02',20)
INSERT INTO CTHD VALUES(1003,'BB03',10)
INSERT INTO CTHD VALUES(1004,'TV01',20)
INSERT INTO CTHD VALUES(1004,'TV02',10)
INSERT INTO CTHD VALUES(1004,'TV03',10)
INSERT INTO CTHD VALUES(1004,'TV04',10)
INSERT INTO CTHD VALUES(1005,'TV05',50)
INSERT INTO CTHD VALUES(1005,'TV06',50)
INSERT INTO CTHD VALUES(1006,'TV07',20)
INSERT INTO CTHD VALUES(1006,'ST01',30)
INSERT INTO CTHD VALUES(1006,'ST02',10)
INSERT INTO CTHD VALUES(1007,'ST03',10)
INSERT INTO CTHD VALUES(1008,'ST04',8)
INSERT INTO CTHD VALUES(1009,'ST05',10)
INSERT INTO CTHD VALUES(1010,'TV07',50)
INSERT INTO CTHD VALUES(1010,'ST07',50)
INSERT INTO CTHD VALUES(1010,'ST08',100)
INSERT INTO CTHD VALUES(1010,'ST04',50)
INSERT INTO CTHD VALUES(1010,'TV03',100)
INSERT INTO CTHD VALUES(1011,'ST06',50)
INSERT INTO CTHD VALUES(1012,'ST07',3)
INSERT INTO CTHD VALUES(1013,'ST08',5)
INSERT INTO CTHD VALUES(1014,'BC02',80)
INSERT INTO CTHD VALUES(1014,'BB02',100)
INSERT INTO CTHD VALUES(1014,'BC04',60)
INSERT INTO CTHD VALUES(1014,'BB01',50)
INSERT INTO CTHD VALUES(1015,'BB02',30)
INSERT INTO CTHD VALUES(1015,'BB03',7)
INSERT INTO CTHD VALUES(1016,'TV01',5)
INSERT INTO CTHD VALUES(1017,'TV02',1)
INSERT INTO CTHD VALUES(1017,'TV03',1)
INSERT INTO CTHD VALUES(1017,'TV04',5)
INSERT INTO CTHD VALUES(1018,'ST04',6)
INSERT INTO CTHD VALUES(1019,'ST05',1)
INSERT INTO CTHD VALUES(1019,'ST06',2)
INSERT INTO CTHD VALUES(1020,'ST07',10)
INSERT INTO CTHD VALUES(1021,'ST08',5)
INSERT INTO CTHD VALUES(1021,'TV01',7)
INSERT INTO CTHD VALUES(1021,'TV02',10)
INSERT INTO CTHD VALUES(1022,'ST07',1)
INSERT INTO CTHD VALUES(1023,'ST04',6)

-- THÊM CÁC KHÓA NGOẠI
ALTER TABLE HOADON ADD  CONSTRAINT FK_MAKH FOREIGN KEY (MAKH) REFERENCES KHACHHANG(MAKH)
ALTER TABLE HOADON ADD CONSTRAINT FK_MANV FOREIGN KEY (MANV) REFERENCES NHANVIEN(MANV)
ALTER TABLE CTHD ADD CONSTRAINT FK_SOHD FOREIGN KEY (SOHD) REFERENCES HOADON(SOHD)
ALTER TABLE CTHD ADD CONSTRAINT FK_MASP FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP)

-- I.2 Thêm vào thuộc tính GHICHU có kiểu dữ liệu varchar(20) cho quan hệ SANPHAM
ALTER TABLE SANPHAM ADD GHICHU VARCHAR(20)

-- I.3 Thêm vào thuộc tính LOAIKH có kiểu dữ liệu là tinyint cho quan hệ KHACHHANG
ALTER TABLE KHACHHANG ADD LOAIKH TINYINT

-- I.4 Sửa kiểu dữ liệu của thuộc tính GHICHU trong quan hệ SANPHAM thành varchar(100)
ALTER TABLE SANPHAM ALTER COLUMN GHICHU VARCHAR(100)

-- I.5 Xóa thuộc tính GHICHU trong quan hệ SANPHAM
ALTER TABLE SANPHAM DROP COLUMN GHICHU

-- I.6 Làm thế nào để thuộc tính LOAIKH trong quan hệ KHACHHANG có thể lưu các giá trị là: “Vang lai”, “Thuong xuyen”, “Vip”, … 
ALTER TABLE KHACHHANG ALTER COLUMN LOAIKH VARCHAR(12)
ALTER TABLE KHACHHANG ADD CONSTRAINT CHK_LOAIKH CHECK (LOAIKH IN ('Vang lai', 'Thuong xuyen', 'Vip'))

-- I.7 Đơn vị tính của sản phẩm chỉ có thể là (“cay”,”hop”,”cai”,”quyen”,”chuc”)
ALTER TABLE SANPHAM ADD CONSTRAINT CHK_DVT CHECK (DVT IN ('cay', 'hop', 'cai', 'quyen', 'chuc'))

-- I.8 Giá bán của sản phẩm từ 500 đồng trở lên
ALTER TABLE SANPHAM ADD CONSTRAINT CHK_GIA CHECK (GIA >= 500)

-- I.9 Mỗi lần mua hàng, khách hàng phải mua ít nhất 1 sản phẩm
ALTER TABLE HOADON ADD CONSTRAINT CHK_MUAHANG CHECK (TRIGIA > 0)

-- I.10 Ngày khách hàng đăng ký là khách hàng thành viên phải lớn hơn ngày sinh của người đó
ALTER TABLE KHACHHANG ADD CONSTRAINT CHK_NGDK CHECK (NGDK > NGSINH)

-- III.1 In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất
SELECT MaSP, TenSP 
FROM SanPham 
WHERE NuocSX = 'Trung Quoc' 

-- III.2 In ra danh sách các sản phẩm (MASP, TENSP) có đơn vị tính là “cay”, ”quyen”
SELECT MaSP, TenSP
FROM SanPham
WHERE DVT IN ('cay', 'quyen')

-- III.3 In ra danh sách các sản phẩm (MASP,TENSP) có mã sản phẩm bắt đầu là “B” và kết thúc là “01”
SELECT MaSP, TenSP
FROM SanPham
WHERE MaSP LIKE 'B%01'

-- III.4 In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quốc” sản xuất có giá từ 30.000 đến 40.000
SELECT MaSP, TenSP
FROM SanPham
WHERE 
	NuocSX = 'Trung Quoc'
	AND Gia BETWEEN 30000 AND 40000

-- III.5 In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” hoặc “Thai Lan” sản xuất có giá từ 30.000 đến 40.000
select MaSP, TenSP
from SanPham
where
	NuocSX IN ('Trung Quoc', 'Thai Lan')
	AND Gia BETWEEN 30000 AND 40000

-- III.6 In ra các số hóa đơn, trị giá hóa đơn bán ra trong ngày 1/1/2007 và ngày 2/1/2007
SELECT SoHD, TriGia
FROM HoaDon
WHERE NgHD IN ('1/1/2007', '2/1/2007')


-- III.7 In ra các số hóa đơn, trị giá hóa đơn trong tháng 1/2007 sắp xếp theo ngày (tăng dần) và trị giá của hóa đơn (giảm dần)
SELECT SoHD, TriGia
FROM HoaDon
WHERE MONTH(NgHD) = 1 AND YEAR(NgHD) = 2007
ORDER BY NgHD ASC, 
TriGia DESC

-- III.8 In ra danh sách các khách hàng (MAKH, HOTEN) đã mua hàng trong ngày 1/1/2007
SELECT DISTINCT KhachHang.MaKH, HoTen
FROM KhachHang, HoaDon
WHERE KhachHang.MaKH = HoaDon.MaKH 
	  AND NgHD = '1/1/2007'

-- III.9 In ra số hóa đơn, trị giá các hóa đơn do nhân viên có tên “Nguyen Van B” lập trong ngày 28/10/2006
SELECT SoHD, TriGia
FROM HoaDon, NhanVien
WHERE
	HoaDon.MaNV = NhanVien.MaNV
	AND HoTen = 'Nguyen Van B'
	AND NgHD = '28/10/2006'

-- III.10 In ra danh sách các sản phẩm (MASP,TENSP) được khách hàng có tên “Nguyen Van A” mua trong tháng 10/2006
SELECT DISTINCT SanPham.MaSP, TenSP
FROM SanPham, CTHD, KhachHang, HoaDon
WHERE CTHD.MaSP = SanPham.MaSP
	AND CTHD.SoHD = HoaDon.SoHD
	AND HoaDon.MaKH = KhachHang.MaKH
	AND HoTen = 'Nguyen Van A'
	AND MONTH(NgHD) = 10 AND YEAR(NgHD) = 2006

-- III.11 Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”.
SELECT DISTINCT SoHD
FROM CTHD
WHERE MaSP IN ('BB01', 'BB02')

-- III.12 Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”, mỗi sản phẩm mua với số lượng từ 10 đến 20
SELECT DISTINCT SoHD
FROM CTHD
WHERE 
	MaSP IN ('BB01', 'BB02') 
	AND SL BETWEEN 10 AND 20

-- III.13 Tìm các số hóa đơn mua cùng lúc 2 sản phẩm có mã số “BB01” và “BB02”, mỗi sản phẩm mua với số lượng từ 10 đến 20
SELECT DISTINCT SoHD
FROM CTHD
WHERE MaSP = 'BB01' AND SL BETWEEN 10 AND 20
INTERSECT
(
	SELECT DISTINCT SoHD
	FROM CTHD
	WHERE MaSP = 'BB02' AND SL BETWEEN 10 AND 20
)

-- III.14 In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất hoặc các sản phẩm được bán ra trong ngày 1/1/2007
SELECT DISTINCT SanPham.MaSP, TenSP
FROM HoaDon, SanPham, CTHD
WHERE
	HoaDon.SoHD = CTHD.SoHD
	AND CTHD.MaSP = SanPham.MaSP
	AND (NuocSX = 'Trung Quoc' OR NgHD = '1/1/2007')


-- III.15 In ra danh sách các sản phẩm (MASP,TENSP) không bán được
SELECT MaSP, TenSP
FROM SanPham
WHERE MaSP NOT IN (SELECT MaSP FROM CTHD)

-- III.16 In ra danh sách các sản phẩm (MASP,TENSP) không bán được trong năm 2006
SELECT MaSP, TenSP
FROM SanPham
WHERE MaSP NOT IN
(
	SELECT MaSP 
	FROM CTHD, HoaDon
	WHERE 
		CTHD.SoHD = HoaDon.SoHD
		AND YEAR(NgHD) = 2006
)


-- III.17 In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất không bán được trong năm 2006. 
SELECT MaSP, TenSP
FROM SanPham
WHERE
	NuocSX = 'Trung Quoc'
	AND MaSP NOT IN
	(
		SELECT MaSP 
		FROM CTHD, HoaDon
		WHERE 
			CTHD.SoHD = HoaDon.SoHD
			AND YEAR(NgHD) = 2006
	)

-- III.18 Tìm số hóa đơn đã mua tất cả các sản phẩm do Singapore sản xuất
SELECT SoHD
FROM HoaDon
WHERE NOT EXISTS
(
	SELECT *
	FROM SanPham
	WHERE NuocSX = 'Singapore' AND NOT EXISTS
	(
		SELECT * FROM CTHD
		WHERE CTHD.SoHD = HoaDon.SoHD
		AND CTHD.MaSP = SanPham.MaSP
	)
)

-- III.19 Tìm số hóa đơn trong năm 2006 đã mua ít nhất tất cả các sản phẩm do Singapore sản xuất
SELECT SoHD FROM HoaDon
WHERE YEAR(NgHD) = 2006 AND NOT EXISTS
(
	SELECT * FROM SanPham
	WHERE NuocSX = 'Singapore'
	AND NOT EXISTS
	(
		SELECT * FROM CTHD
		WHERE CTHD.SoHD = HoaDon.SoHD
		AND CTHD.MaSP = SanPham.MaSP
	)
)


-- III.20 Có bao nhiêu hóa đơn không phải của khách hàng đăng ký thành viên mua?
SELECT COUNT(*)
FROM HoaDon
WHERE MaKH IS NULL

-- III.21 Có bao nhiêu sản phẩm khác nhau được bán ra trong năm 2006
SELECT COUNT(DISTINCT MaSP)
FROM HoaDon, CTHD
WHERE
	HoaDon.SoHD = CTHD.SoHD
	AND YEAR(NgHD) = 2006

-- III.22 Cho biết trị giá hóa đơn cao nhất, thấp nhất là bao nhiêu ?
SELECT MIN (TriGia) min_TriGia, MAX (TriGia) max_TriGia  
FROM HoaDon

-- III.23 Trị giá trung bình của tất cả các hóa đơn được bán ra trong năm 2006 là bao nhiêu
SELECT AVG(TriGia)
FROM HoaDon
WHERE YEAR(NgHD) = 2006


-- III.24 Tính doanh thu bán hàng trong năm 2006
SELECT SUM(TriGia)
FROM HoaDon
WHERE YEAR(NgHD) = 2006

-- III.25 Tìm số hóa đơn có trị giá cao nhất trong năm 2006


select MAX(TriGia)
from HOADON
where year(NgHD) = 2006


-- III.26 Tìm họ tên khách hàng đã mua hóa đơn có trị giá cao nhất trong năm 2006
select distinct HoTen
FROM KHACHHANG, HOADON
WHERE   KHACHHANG.MAKH = HOADON.MAKH
		AND YEAR(NgHD) = 2006
		AND TriGia = (SELECT MAX(TriGia) FROM HOADON WHERE YEAR(NgHD) = 2006)


-- III.27 In ra danh sách 3 khách hàng (MAKH, HOTEN) có doanh số cao nhất

SELECT TOP 3 MaKH, HoTen
FROM KHACHHANG
ORDER BY DOANHSO DESC

-- III.28 In ra danh sách các sản phẩm (MASP, TENSP) có giá bán bằng 1 trong 3 mức giá cao nhất.

SELECT MaSP, TenSP
FROM SanPham
WHERE Gia IN (
	SELECT DISTINCT TOP 3 Gia
	FROM SanPham
	ORDER BY Gia DESC
	)

-- III.29 In ra danh sách các sản phẩm (MASP, TENSP) do “Thai Lan” sản xuất có giá bằng 1 trong 3 mức giá cao nhất (của tất cả các sản phẩm)


SELECT MaSP, TenSP, NuocSX
FROM SanPham
WHERE NUOCSX = 'Thai Lan'
AND Gia IN (
	SELECT DISTINCT TOP 3 Gia
	FROM SanPham
	ORDER BY Gia DESC
	)
-- III.30 In ra danh sách các sản phẩm (MASP, TENSP) do “Trung Quoc” sản xuất có giá bằng 1 trong 3 mức giá cao nhất (của sản phẩm do “Trung Quoc” sản xuất)
SELECT MaSP, TenSP
FROM SanPham
WHERE NuocSX = 'Trung Quoc'
AND Gia IN (
	SELECT DISTINCT TOP 3 Gia
	FROM SanPham
	WHERE NuocSX = 'Trung Quoc'
	ORDER BY Gia DESC
)

-- III.31 In ra danh sách 3 khách hàng có doanh số cao nhất (sắp xếp theo kiểu xếp hạng)

-- in het thong tin
SELECT TOP 3 *
FROM KHACHHANG
ORDER BY DOANHSO Desc

-- III.32 Tính tổng số sản phẩm do “Trung Quoc” sản xuất
SELECT COUNT(*)
FROM SanPham
WHERE NuocSX = 'Trung Quoc'

-- III.33 Tính tổng số sản phẩm của từng nước sản xuất
SELECT NuocSX, COUNT(*) SoSP
FROM SanPham
GROUP BY NuocSX

-- III.34 Với từng nước sản xuất, tìm giá bán cao nhất, thấp nhất, trung bình của các sản phẩm
SELECT NuocSX, MAX(Gia) Max_Gia, MIN(Gia) Min_Gia, AVG(Gia) TB_Gia
FROM SanPham
GROUP BY NuocSX

-- III.35 Tính doanh thu bán hàng mỗi ngày
SELECT NgHD, SUM(TriGia) DoanhThu
FROM HoaDon
GROUP BY NgHD

--- III.36 Tính tổng số lượng của từng sản phẩm bán ra trong tháng 10/2006
SELECT SanPham.MaSP, SUM(SL) SoLuongBan
FROM SanPham, HoaDon, CTHD
WHERE
	CTHD.MaSP = SanPham.MaSP
	AND CTHD.SoHD = HoaDon.SoHD
	AND MONTH(NgHD) = 10 AND YEAR(NgHD) = 2006
GROUP BY SanPham.MaSP

-- III.37 Tính doanh thu bán hàng của từng tháng trong năm 2006
SELECT MONTH(NgHD) Thang, SUM(TriGia) DoanhThu
FROM HoaDon
WHERE YEAR(NgHD) = 2006
GROUP BY MONTH(NgHD)

-- III.38 Tìm hóa đơn có mua ít nhất 4 sản phẩm khác nhau
SELECT SoHD
FROM CTHD
GROUP BY SoHD
HAVING COUNT(DISTINCT MaSP) >= 4

-- III.39 Tìm hóa đơn có mua 3 sản phẩm do “Viet Nam” sản xuất (3 sản phẩm khác nhau). 
SELECT SoHD
FROM CTHD, SanPham
WHERE
	CTHD.MaSP = SanPham.MaSP
	AND NuocSX = 'Viet Nam'
GROUP BY SoHD
HAVING COUNT(DISTINCT CTHD.MaSP) >= 3

-- III.40 Tìm khách hàng (MAKH, HOTEN) có số lần mua hàng nhiều nhất
SELECT KhachHang.MaKH, HoTen
FROM KhachHang, HoaDon
WHERE KhachHang.MaKH = HoaDon.MaKH
GROUP BY KhachHang.MaKH, HoTen
HAVING COUNT(*) >= ALL(SELECT COUNT(*) FROM HoaDon GROUP BY MaKH)

-- III.41 Tháng mấy trong năm 2006, doanh số bán hàng cao nhất
SELECT MONTH(NgHD)
FROM HoaDon
WHERE YEAR(NgHD) = 2006
GROUP BY MONTH(NgHD)
HAVING SUM(TriGia) >= ALL(SELECT SUM(TriGia) FROM HoaDON WHERE YEAR(NgHD) = 2006 GROUP BY MONTH(NgHD))

-- III.42 Tìm sản phẩm (MASP, TENSP) có tổng số lượng bán ra thấp nhất trong năm 2006
SELECT TOP 1 WITH TIES SanPham.MaSP, TenSP
FROM SanPham, CTHD, HoaDon
WHERE 
	SanPham.MaSP = CTHD.MaSP
	AND HoaDon.SoHD = CTHD.SoHD
	AND YEAR(NgHD) = 2006
GROUP BY SanPham.MaSP, TenSP
ORDER BY SUM(SL)

-- III.43 Mỗi nước sản xuất, tìm sản phẩm (MASP,TENSP) có giá bán cao nhất
SELECT NuocSX, MaSP, TenSP
FROM SanPham SP1
WHERE EXISTS
(
	SELECT NuocSX
	FROM SanPham SP2
	GROUP BY NuocSX
	HAVING SP1.NuocSX = SP2.NuocSX
	AND SP1.Gia = MAX(Gia)
)

-- III.44 Tìm nước sản xuất sản xuất ít nhất 3 sản phẩm có giá bán khác nhau
SELECT NuocSX
FROM SanPham
GROUP BY NUOCSX
HAVING COUNT(DISTINCT GIA) >= 3

-- III.45 Trong 10 khách hàng có doanh số cao nhất, tìm khách hàng có số lần mua hàng nhiều nhất

SELECT * FROM KHACHHANG
WHERE MAKH IN
(
	SELECT TOP 1 WITH TIES HOADON.MAKH
	FROM (SELECT TOP 10 MAKH FROM KHACHHANG ORDER BY DOANHSO DESC ) AS A
	JOIN HOADON ON A.MAKH = HOADON.MAKH
	GROUP BY HOADON.MAKH
	ORDER BY COUNT(*) DESC
	)








