USE QLCHBS
GO

-- PROCEDURE Thêm thông tin

--Procedure thêm tài khoản
CREATE PROCEDURE AddAccount
	@MaNhanVien	varchar(10),
	@TenDangNhap nvarchar(10),
	@MatKhau nvarchar(30)
AS
	BEGIN
		INSERT INTO DangNhap values (@MaNhanVien, @TenDangNhap, @MatKhau)
	END
GO

-- PROCEDURE thêm sách
CREATE PROCEDURE AddBook 
    @TenSach nvarchar(100),
    @TacGia nvarchar(100),
    @NXB nvarchar(100),
    @MaTheLoai nvarchar(10),
	@MaNCC nvarchar(10),
    @SoLuongTrenKe int,
	@DonGia decimal(18,2)
AS
BEGIN
	DECLARE @OldCode VARCHAR(10) = (SELECT MAX(MaSach) FROM Sach)
	DECLARE @NewCode VARCHAR(10)
	DECLARE @Suffix INT

	SET @Suffix = CAST(RIGHT(@OldCode, 3) AS INT) + 1
	SET @NewCode = 'MS' + RIGHT('00' + CAST(@Suffix AS VARCHAR(3)), 3)
    INSERT INTO Sach (MaSach, TenSach, TacGia, NXB, MaTheLoai, MaNCC, SoLuongTrenKe, DonGia)
    VALUES (@NewCode, @TenSach, @TacGia, @NXB, @MaTheLoai, @MaNCC, @SoLuongTrenKe, @DonGia)
END
GO

-- PROCEDURE AddCustomer: Thêm thông tin khách hàng mới vào hệ thống
CREATE PROCEDURE AddCustomer
	@MaKhachHang NVARCHAR(10),
	@HoTen NVARCHAR(100),
	@DiaChi NVARCHAR(200) ,
	@SoDienThoai NVARCHAR(20)
AS
	BEGIN
		DECLARE @OldCode VARCHAR(10) = (SELECT MAX(MaKhachHang) FROM KhachHang)
		DECLARE @NewCode VARCHAR(10)
		DECLARE @Suffix INT

		SET @Suffix = CAST(RIGHT(@OldCode, 3) AS INT) + 1
		SET @NewCode = 'KH' + RIGHT('00' + CAST(@Suffix AS VARCHAR(3)), 3)
		INSERT INTO KhachHang (MaKhachHang, HoTen, DiaChi, SoDienThoai) 
		VALUES (@NewCode, @HoTen, @DiaChi, @SoDienThoai)
	END
GO

-- PROCEDURE AddEmployee: Thêm thông tin nhân viên mới vào hệ thống
--drop procedure AddEmployee
CREATE PROCEDURE AddEmployee
	@HoTen NVARCHAR(100),
	@NgaySinh DATE,
	@GioiTinh NVARCHAR(10),
	@MaChucVu NVARCHAR(10),
	@DiaChi NVARCHAR(200) ,
	@SoDienThoai NVARCHAR(20),
	@HoatDong NVARCHAR(10)
AS
	BEGIN
		DECLARE @OldCode VARCHAR(10) = (SELECT MAX(MaNhanVien) FROM NhanVien)
		DECLARE @NewCode VARCHAR(10)
		DECLARE @Suffix INT
		DECLARE @TongLuong DECIMAL(18,2)

		SET @Suffix = CAST(RIGHT(@OldCode, 3) AS INT) + 1
		SET @NewCode = 'NV' + RIGHT('00' + CAST(@Suffix AS VARCHAR(3)), 3)
		
		--Thêm vào Nhân Viên
		INSERT INTO NhanVien(MaNhanVien, HoTen, NgaySinh, GioiTinh, MaChucVu, DiaChi, SoDienThoai,HoatDong) 
		VALUES (@NewCode, @HoTen, @NgaySinh, @GioiTinh, @MaChucVu, @DiaChi, @SoDienThoai,@HoatDong)

		declare @MaNV nvarchar(10) = (SELECT MAX(MaNhanVien) FROM NhanVien)
		declare @command nvarchar(max) = ''
		set @command = N'exec AddAccount '+'"'+@MaNV+'"'+', '+'"'+@MaNV+'"'+', '+'"'+@MaNV+'"'
		exec(@command)
	END
GO

-- PROCEDURE AddSupplier: Thêm thông tin nhà cung cấp mới vào hệ thống
CREATE PROCEDURE AddSupplier
	@MaNCC NVARCHAR(10),
	@TenNCC NVARCHAR(100),
	@DiaChi NVARCHAR(200) ,
	@SoDienThoai NVARCHAR(20)
AS
	BEGIN
		DECLARE @OldCode VARCHAR(10) = (SELECT MAX(MaNCC) FROM NhaCungCap)
		DECLARE @NewCode VARCHAR(10)
		DECLARE @Suffix INT

		SET @Suffix = CAST(RIGHT(@OldCode, 3) AS INT) + 1
		SET @NewCode = 'NCC' + RIGHT('00' + CAST(@Suffix AS VARCHAR(3)), 3)
		INSERT INTO NhaCungCap(MaNCC, TenNCC, DiaChi, SoDienThoai) 
		VALUES (@NewCode, @TenNCC, @DiaChi, @SoDienThoai)
	END
GO

-- PROCEDURE AddOrder: Thêm thông tin hóa đơn
CREATE PROCEDURE AddOrder 
		@MaDonHang NVARCHAR(10),
		@TenKhachHang NVARCHAR(100),
		@MaKhachHang NVARCHAR(10),
		@MaNhanVien NVARCHAR(10),
		@MaSach NVARCHAR(10),
		@SoLuong INT,
		@DonGia FLOAT,
		@ThoiGian DATETIME,
		@SDT NVARCHAR(20)
AS
BEGIN 
	DECLARE @OldCode VARCHAR(10) = (SELECT MAX(MaHoaDon) FROM HoaDon)
	DECLARE @NewCode VARCHAR(10)
	DECLARE @Suffix INT
	SET @Suffix = CAST(RIGHT(@OldCode, 3) AS INT) + 1
	SET @NewCode = 'MS' + RIGHT('00' + CAST(@Suffix AS VARCHAR(3)), 3)

	INSERT INTO HoaDon (MaHoaDon, MaNhanVien, MaKhachHang, ThoiGian) 
	VALUES 
	(@NewCode,@MaNhanVien,@MaKhachHang, @ThoiGian)
	INSERT INTO dbo.ChiTietHoaDon (MaHoaDon, MaSach, SoLuong, DonGia)
	VALUES 
	(@NewCode,@MaSach,@SoLuong,@DonGia)
END
GO

-- PROCEDURE AddGenre: Thêm thể loại mới vào hệ thống
CREATE PROCEDURE AddGenre
		@MaTheLoai NVARCHAR(10),
		@TenTheLoai NVARCHAR(100),
		@MoTa NVARCHAR(255)
AS
BEGIN 
	DECLARE @OldCode VARCHAR(10) = (SELECT MAX(MaTheLoai) FROM TheLoai)
	DECLARE @NewCode VARCHAR(10)
	DECLARE @Suffix INT
	SET @Suffix = CAST(RIGHT(@OldCode, 3) AS INT) + 1
	SET @NewCode = 'TL' + RIGHT('00' + CAST(@Suffix AS VARCHAR(3)), 3)

	INSERT INTO TheLoai (MaTheLoai, TenTheLoai, MoTa )
	VALUES
	(@NewCode, @TenTheLoai, @MoTa) 
END
GO

-- PROCEDURE AddReceipt: thêm phiếu nhập
CREATE PROCEDURE AddReceipt
    @MaNCC NVARCHAR(10)
AS
BEGIN
	DECLARE @OldCode VARCHAR(10) = (SELECT MAX(MaPhieuNhap) FROM PhieuNhap)
	DECLARE @NewCode VARCHAR(10)
	DECLARE @Suffix INT

	SET @Suffix = CAST(RIGHT(@OldCode, 3) AS INT) + 1
	SET @NewCode = 'PN' + RIGHT('00' + CAST(@Suffix AS VARCHAR(3)), 3)
    INSERT INTO PhieuNhap (MaPhieuNhap, MaNCC, NgayNhap, ThanhTien)
    VALUES (@NewCode, @MaNCC, GETDATE(), 0)
END
GO

-- PROCEDURE AddReceiptDetails: Thêm chi tiết Phiếu Nhập
CREATE PROCEDURE AddReceiptDetails
	@MaPhieuNhap NVARCHAR(10),
	@MaSach NVARCHAR(10),
	@SoLuongNhap INT,
	@DonGia int 
AS
BEGIN
	INSERT INTO ChiTietNhapSach (MaPhieuNhap, MaSach, SoLuongNhap, DonGia)
	VALUES (@MaPhieuNhap, @MaSach, @SoLuongNhap , @DonGia)

	UPDATE PhieuNhap
	SET ThanhTien = (
    SELECT SUM(SoLuongNhap * DonGia)
    FROM ChiTietNhapSach
    WHERE PhieuNhap.MaPhieuNhap = ChiTietNhapSach.MaPhieuNhap)
END
GO

-- PROCEDURE AddBill: Thêm hóa đơn
CREATE PROCEDURE AddBill
    @MaNhanVien NVARCHAR(50),
    @MaKhachHang NVARCHAR(50)
AS
BEGIN
	DECLARE @MaHoaDon NVARCHAR(50)
    DECLARE @MaHoaDonMax NVARCHAR(50)
    SELECT @MaHoaDonMax = MAX(MaHoaDon) FROM HoaDon

    -- Tăng giá trị mã hóa đơn lên 1
    SET @MaHoaDon = 'HD' + RIGHT('000' + CAST(CAST(SUBSTRING(@MaHoaDonMax, 3, 3) AS INT) + 1 AS NVARCHAR(50)), 3)

	-- Lấy thời gian thực
    DECLARE @ThoiGian DATETIME = GETDATE()

	INSERT INTO HoaDon (MaHoaDon, MaNhanVien, MaKhachHang, ThoiGian, ThanhTien)
    VALUES (@MaHoaDon, @MaNhanVien, @MaKhachHang, @ThoiGian, 0)
END
GO

-- PROCEDURE AddBillDetails Thêm chi tiết Hóa Đơn
CREATE PROCEDURE AddBillDetails
	@MaHoaDon NVARCHAR(10),
	@MaSach NVARCHAR(10),
	@SoLuong INT
AS
BEGIN
	-- Lấy đơn giá từ bảng Sách
	DECLARE @DonGia DECIMAL(18, 2)
	SELECT @DonGia = DonGia FROM Sach WHERE MaSach = @MaSach

	INSERT INTO ChiTietHoaDon (MaHoaDon, MaSach, SoLuong, DonGia)
	VALUES (@MaHoaDon, @MaSach, @SoLuong , @DonGia)

	UPDATE HoaDon
	SET ThanhTien = (
    SELECT SUM(SoLuong * DonGia)
    FROM ChiTietHoaDon
    WHERE HoaDon.MaHoaDon = ChiTietHoaDon.MaHoaDon)
END
GO

-- PROCEDURE AddClassifiedStaff: Thêm thông tin phân loại nhân viên mới vào hệ thống
--drop procedure AddClassifiedStaff
CREATE PROCEDURE AddClassifiedStaff
	@MaChucVu NVARCHAR(10),
	@TenChucVu NVARCHAR(50),
	@MoTaCongViec NVARCHAR(200),
	@Luong DECIMAL(18,2)
AS
	BEGIN
		DECLARE @OldCode VARCHAR(10) = (SELECT MAX(MaChucVu) FROM PhanLoaiNhanVien)
		DECLARE @NewCode VARCHAR(10)
		DECLARE @Suffix INT

		SET @Suffix = CAST(RIGHT(@OldCode, 3) AS INT) + 1
		SET @NewCode = 'CV' + RIGHT('00' + CAST(@Suffix AS VARCHAR(3)), 3)
		
		--Thêm vào Phân Loại Nhân Viên
		INSERT INTO PhanLoaiNhanVien (MaChucVu, TenChucVu, MoTaCongViec, Luong) 
		VALUES (@NewCode, @TenChucVu, @MoTaCongViec, @Luong)

	END
GO

-- PROCEDURE AddSalarry: Thêm thông tin Lương nhân viên mới vào hệ thống
--drop procedure AddSalarry
CREATE PROCEDURE AddSalary
	@MaNhanVien NVARCHAR(10),
	@SoNgayLamViec INT ,
	@Thuong DECIMAL(18,2)
AS
	BEGIN
		--Thêm vào Lương
		INSERT INTO Luong(MaNhanVien, SoNgayLamViec, Thuong) 
		VALUES (@MaNhanVien, @SoNgayLamViec, @Thuong)

		UPDATE Luong
		SET TongLuong = (
			SELECT (Luong / 26 * SoNgayLamViec + Thuong)
			FROM PhanLoaiNhanVien join NhanVien on PhanLoaiNhanVien.MaChucVu = NhanVien.MaChucVu
			WHERE NhanVien.MaNhanVien = Luong.MaNhanVien)

	END
GO

-----------------------------------------------------
 -- PROCEDURE Cập nhật thông tin


 -- PROCEDURE Cập nhật mật khẩu mới
CREATE PROCEDURE UpdateAccount
	@MatKhauMoi NVARCHAR(30),
	@TenDangNhap NVARCHAR(30)
AS
BEGIN
		DECLARE @command NVARCHAR(MAX) = '';
		SET @command = '';
		SELECT @command = @command + 'ALTER LOGIN [' + name + '] WITH PASSWORD = '''+@MatKhauMoi+''';'
		FROM sys.syslogins
		WHERE name LIKE @TenDangNhap;
		EXEC (@command);
		UPDATE DangNhap SET MatKhau = @MatKhauMoi WHERE TenDangNhap = @TenDangNhap
END
GO

-- PROCEDURE cập nhật sách
CREATE PROCEDURE UpdateBook
    @MaSach nvarchar(10),
    @TenSach nvarchar(100),
    @TacGia nvarchar(100),
    @NXB nvarchar(100),
    @MaTheLoai nvarchar(10),
	@MaNCC nvarchar(10),
    @SoLuongTrenKe int,
	@DonGia decimal(18,2)
AS
BEGIN
    UPDATE Sach
    SET MaSach = @MaSach, TenSach = @TenSach, TacGia = @TacGia, NXB = @NXB, MaTheLoai = @MaTheLoai, MaNCC = @MaNCC, SoLuongTrenKe = @SoLuongTrenKe, DonGia = @DonGia
    WHERE MaSach = @MaSach
END
GO

-- PROCEDURE Nhận sách từ nhà cung cấp và cập nhật số lượng sách trong kho
CREATE PROCEDURE ReceiveShipment
	@MaSach NVARCHAR(10),
	@SoLuong INT
AS
	UPDATE KhoSach SET MaSach = @MaSach, SoLuong = SoLuong + @SoLuong
GO

-- Procedure thêm số lượng sách vào kho của cửa hàng
CREATE PROCEDURE UpdateInventory
	@MaSach nvarchar(10),
	@SoLuong int
AS
BEGIN
	Update KhoSach SET SoLuong = @SoLuong WHERE MaSach = @MaSach
END
GO

-- PROCEDURE UpdateCustomer: Cập nhật thông tin khách hàng trong hệ thống
CREATE PROCEDURE UpdateCustomer
    @MaKhachHang NVARCHAR(10),
	@HoTen NVARCHAR(100),
	@DiaChi NVARCHAR(200) ,
	@SoDienThoai NVARCHAR(20)
AS
BEGIN
    UPDATE KhachHang
    SET MaKhachHang = @MaKhachHang, HoTen = @HoTen, DiaChi = @DiaChi, SoDienThoai = @SoDienThoai
    WHERE MaKhachHang = @MaKhachHang
END
GO

-- PROCEDURE UpdateEmployee: Cập nhật thông tin nhân viên trong hệ thống
--drop procedure UpdateEmployee
CREATE PROCEDURE UpdateEmployee
    @MaNhanVien NVARCHAR(10),
	@HoTen NVARCHAR(100),
	@NgaySinh DATE,
	@GioiTinh NVARCHAR(10),
	@MaChucVu NVARCHAR(10),
	@DiaChi NVARCHAR(200) ,
	@SoDienThoai NVARCHAR(20),
	@HoatDong nvarchar(10)
AS
BEGIN
-- cập nhật nhân viên
    UPDATE NhanVien
    SET HoTen = @HoTen, NgaySinh = @NgaySinh,
	GioiTinh = @GioiTinh, MaChucVu = @MaChucVu, DiaChi = @DiaChi, SoDienThoai = @SoDienThoai,HoatDong = @HoatDong
    WHERE MaNhanVien = @MaNhanVien

	-- kiểm tra trạng thái hoạt động của nhân viên
	IF @HoatDong = N'Nghỉ việc'
	BEGIN
		DECLARE @TenDangNhap varchar(10)
		SELECT @TenDangNhap = DangNhap.TenDangNhap FROM DangNhap WHERE MaNhanVien = @MaNhanVien
		DECLARE @command nvarchar(max) = ''
		SET @command = 'EXEC DeleteAccountEmployee ' + '"' + @TenDangNhap + '"'
		EXEC(@command)
	END
END
GO

-- PROCEDURE UpdateSupplier: Cập nhật thông tin nhà cung cấp trong hệ thống
CREATE PROCEDURE UpdateSupplier
    @MaNCC NVARCHAR(10),
	@TenNCC NVARCHAR(100),
	@DiaChi NVARCHAR(200) ,
	@SoDienThoai NVARCHAR(20)
AS
BEGIN
    UPDATE NhaCungCap
    SET MaNCC = @MaNCC, TenNCC = @TenNCC, DiaChi = @DiaChi, SoDienThoai = @SoDienThoai
    WHERE MaNCC = @MaNCC
END
GO

-- PROCEDURE Cập nhật thông tin của đơn hàng trong hệ thống
CREATE PROCEDURE UpdateOrder 
		@MaDonHang NVARCHAR(10),
		@TenKhachHang NVARCHAR(100),
		@MaKhachHang NVARCHAR(10),
		@MaNhanVien NVARCHAR(10),
		@MaSach NVARCHAR(10),
		@SoLuong INT,
		@DonGia FLOAT,
		@SDT NVARCHAR(20)
AS
BEGIN
	UPDATE HoaDon SET MaHoaDon = @MaDonHang, MaNhanVien = @MaNhanVien, MaKhachHang = @MaKhachHang
	UPDATE ChiTietHoaDon SET  MaHoaDon = @MaDonHang, MaSach = @MaSach, SoLuong = @SoLuong, DonGia = @DonGia
END
GO

-- PROCEDURE Cập nhật thông tin thể loại trong hệ thống
CREATE PROCEDURE UpdateGenre  
		@TenTheLoai NVARCHAR(100), 
		@MaTheLoai NVARCHAR(10)  ,
		@MoTa NVARCHAR (255) 
AS
	UPDATE TheLoai SET
	TenTheLoai = @TenTheLoai, 
	MoTa = @MoTa
	Where MaTheLoai = @MaTheLoai
GO

-- PROCEDURE sửa vị trí sách
CREATE PROCEDURE UpdateBookLocation
	@MaViTri nvarchar(10),
    @MaSach nvarchar(10),
	@Ke int,
	@Tang int,
	@Ngan int
AS
BEGIN
    UPDATE ViTriSach
    SET MaSach = @MaSach, Ke = @Ke, Tang = @Tang, Ngan = @Ngan
    WHERE MaViTri = @MaViTri
END
GO

-- PROCEDURE Cập nhập Phiếu Nhập
CREATE PROCEDURE UpdateReceipt
	@MaPhieuNhap nvarchar(10),
	@MaNCC nvarchar(10)
AS
BEGIN
	Update PhieuNhap
	SET MaNCC = @MaNCC
	WHERE MaPhieuNhap = @MaPhieuNhap
END
GO

-- PROCEDURE Cập nhật chi tiết Phiếu Nhập
CREATE PROCEDURE UpdateReceiptDetails
	@MaPhieuNhap nvarchar(10),
	@MaSach nvarchar(10),
	@SoLuongNhap int,
	@DonGia int
AS
BEGIN
	Update ChiTietNhapSach 
	SET SoLuongNhap = @SoLuongNhap, DonGia = @DonGia 
	WHERE MaPhieuNhap = @MaPhieuNhap AND MaSach = @MaSach

	UPDATE PhieuNhap
	SET ThanhTien = (
    SELECT SUM(SoLuongNhap * DonGia)
    FROM ChiTietNhapSach
    WHERE PhieuNhap.MaPhieuNhap = ChiTietNhapSach.MaPhieuNhap)
END
GO

-- PROCEDURE Cập nhập Phiếu Nhập
CREATE PROCEDURE UpdateBill
	@MaHoaDon nvarchar(10),
	@MaNhanVien nvarchar(10),
	@MaKhachHang nvarchar (10)
AS
BEGIN
	Update HoaDon
	SET MaNhanVien = @MaNhanVien, MaKhachHang = @MaKhachHang
	WHERE MaHoaDon = @MaHoaDon
END
GO

-- PROCEDURE Cập nhật chi tiết Hoa don
CREATE PROCEDURE UpdateBillDetails
	@MaHoaDon nvarchar(10),
	@MaSach nvarchar(10),
	@SoLuong int,
	@DonGia int
AS
BEGIN
	Update ChiTietHoaDon 
	SET SoLuong = @SoLuong, DonGia = @DonGia 
	WHERE MaHoaDon = @MaHoaDon AND MaSach = @MaSach

	UPDATE HoaDon
	SET ThanhTien = (
    SELECT SUM(SoLuong * DonGia)
    FROM ChiTietHoaDon
    WHERE HoaDon.MaHoaDon = ChiTietHoaDon.MaHoaDon)
END
GO

-- PROCEDURE UpdateClassifiedStaff Cập nhật thông tin nhân viên trong hệ thống
--drop procedure UpdateClassifiedStaff
CREATE PROCEDURE UpdateClassifiedStaff
    @MaChucVu NVARCHAR(10),
	@TenChucVu NVARCHAR(50),
	@MoTaCongViec NVARCHAR(200),
	@Luong DECIMAL(18,2)
AS
BEGIN
-- cập nhật nhân viên
    UPDATE PhanLoaiNhanVien
    SET TenChucVu = @TenChucVu, MoTaCongViec = @MoTaCongViec, Luong = @Luong
    WHERE MaChucVu = @MaChucVu
END
GO

-- PROCEDURE UpdateSalary Cập nhật thông tin Lương
--drop procedure UpdateSalary
CREATE PROCEDURE UpdateSalary
    @MaNhanVien NVARCHAR(10),
	@SoNgayLamViec INT ,
	@Thuong DECIMAL(18,2)
AS
BEGIN
	UPDATE Luong
	SET SoNgayLamViec = @SoNgayLamViec, Thuong = @Thuong,
		TongLuong = (
			SELECT (Luong / 26 * SoNgayLamViec + Thuong)
			FROM PhanLoaiNhanVien join NhanVien on PhanLoaiNhanVien.MaChucVu = NhanVien.MaChucVu
			WHERE NhanVien.MaNhanVien = Luong.MaNhanVien)
	WHERE MaNhanVien = @MaNhanVien
END
GO

----------------------------------------------------------------
--PROCEDURE Xóa

-- Xóa tài khoản nhân viên
create procedure DeleteAccountEmployee
	@TenDangNhap varchar(10)
as
begin
	declare @command nvarchar(max) = ''
	set @command = '';
	SELECT @command = @command + 'KILL ' + CONVERT(varchar(5), session_id) + ';'
	FROM sys.dm_exec_sessions
	WHERE login_name = @TenDangNhap
	EXEC (@command);
	--
	set @command = ''
	select @command = @command + 'DROP login ['+name+'];'
	from sys.syslogins where name like @TenDangNhap
	exec(@command)
	--
	set @command = ''
	select @command = @command + 'DROP user ['+name+'];'
	from sys.sysusers where name like @TenDangNhap
	exec(@command)
	-- Xóa nhân viên khỏi phân nhóm
	DELETE FROM DangNhap WHERE TenDangNhap = @TenDangNhap;	
end
go

-----------------------------------------------------
--PROCEDURE Kiểm tra

-- PROCEDURE kiểm tra xem TaiKhoan và SĐT có tồn tại không
CREATE PROCEDURE CheckAccount_Phone
	@SDT NVARCHAR(20),
	@TenDangNhap NVARCHAR(30)
AS
BEGIN
	SELECT COUNT(*) FROM NhanVien JOIN DangNhap ON NhanVien.MaNhanVien = DangNhap.MaNhanVien WHERE SoDienThoai = @SDT AND TenDangNhap = @TenDangNhap
END
GO

-- PROCEDURE Kiểm tra xem TaiKhoan và MatKhau có tồn tại
CREATE PROCEDURE CheckAccount_Password
	@MatKhau NVARCHAR(20),
	@TenDangNhap NVARCHAR(30)
AS
BEGIN
	SELECT count(*) FROM DangNhap WHERE TenDangNhap = @TenDangNhap AND MatKhau = @MatKhau
END
GO

-----------------------------------------------------------
--PROCEDURE Dùng để phân loại thông tin

-- PROCEDURE Phân loại sách theo giá tiền đã chọn
CREATE PROCEDURE ClassifiedByPrice
	@MinPrice int,
	@MaxPrice int
AS
	SELECT * FROM Sach WHERE DonGia >= @MinPrice AND DonGia <= @MaxPrice
GO

-- PROCEDURE Phân loại vị trí sách theo kệ đã chọn
CREATE PROCEDURE ClassifiedByShelf
	@Ke int
AS
	SELECT * FROM ViTriSach WHERE Ke = @Ke
GO

-- PROCEDURE Phân loại hóa đơn theo mã nhân viên
CREATE PROCEDURE ClassifiedBillByStaff
	@MaNhanVien NVARCHAR(10)
AS
	SELECT * FROM HoaDon WHERE HoaDon.MaNhanVien = @MaNhanVien
GO

--PROCEDURE Phân loại Nhân Viên theo chức vụ đã chọn
CREATE PROCEDURE ClassifiedByDuty
	@MaChucVu NVARCHAR(10)
AS
	SELECT * FROM NhanVien  
	WHERE NhanVien.MaChucVu = @MaChucVu
GO

--PROCEDURE Phân loại Nhân Viên theo Tình Trạng Hoạt Động đã chọn
CREATE PROCEDURE ClassifiedByActivity
	@HoatDong NVARCHAR(100)
AS
	SELECT * FROM NhanVien 
	JOIN PhanLoaiNhanVien ON NhanVien.MaChucVu = PhanLoaiNhanVien.MaChucVu
	JOIN Luong ON NhanVien.MaNhanVien = Luong.MaNhanVien  
	WHERE NhanVien.HoatDong = @HoatDong
GO

--PROCEDURE Phân loại Nhân Viên theo Giới tính đã chọn
CREATE PROCEDURE ClassifiedBySex
	@GioiTinh nvarchar(10)
AS
	SELECT * FROM NhanVien 
	JOIN PhanLoaiNhanVien ON NhanVien.MaChucVu = PhanLoaiNhanVien.MaChucVu
	JOIN Luong ON NhanVien.MaNhanVien = Luong.MaNhanVien  
	WHERE NhanVien.GioiTinh = @GioiTinh
GO

----PROCEDURE Phân loại Nhân Viên theo chức vụ đã chọn
--drop procedure FindDuty
CREATE PROCEDURE FindDuty
	@TenChucVu NVARCHAR(100)
AS
	SELECT * FROM PhanLoaiNhanVien  
	WHERE TenChucVu = @TenChucVu
GO  

-- PROCEDURE Phân loại  theo Lương đã chọn
CREATE PROCEDURE ClassifiedBySalary
	@MinPrice int,
	@MaxPrice int
AS
	SELECT * FROM PhanLoaiNhanVien WHERE Luong >= @MinPrice AND Luong <= @MaxPrice
GO

--PROCEDURE Phân loại Nhân Viên theo Số ngày làm việc đã chọn
CREATE PROCEDURE ClassifiedByDayOfWork
	@SoNgayLamViec int
AS
	SELECT * FROM Luong 
	WHERE SoNgayLamViec = @SoNgayLamViec
GO

-- PROCEDURE Phân loại Nhân Viên theo lương đã chọn
CREATE PROCEDURE ClassifiedBySumSalary
	@MinPrice int,
	@MaxPrice int
AS
	SELECT * FROM Luong 
	WHERE TongLuong >= @MinPrice AND TongLuong <= @MaxPrice
GO

-----------------------------------
--PROCEDURE Dùng để hiển thị thông tin

-- PROCEDURE hiển thị thông tin nhân viên
CREATE PROCEDURE ShowStaffInformation
	@TenDangNhap NVARCHAR(30)
AS
BEGIN
	SELECT * FROM NhanVien INNER JOIN DangNhap ON NhanVien.MaNhanVien = DangNhap.MaNhanVien 
	WHERE DangNhap.TenDangNhap = @TenDangNhap
END
GO

-- PROCEDURE Hiển thị chi tiết toàn bộ thể loại
CREATE PROCEDURE ShowGenreDetails
@MaTheLoai NVARCHAR(10)
AS
	SELECT * FROM TheLoai WHERE TheLoai.MaTheLoai =@MaTheLoai
GO

-- PROCEDURE Hiển thị chi tiết toàn bộ vị trí sách
CREATE PROCEDURE ShowBookLocationDetails
@MaViTri NVARCHAR(10)
AS
	SELECT * FROM ViTriSach WHERE ViTriSach.MaViTri =@MaViTri
GO

-- PROCEDURE Hiển thị chi tiết kho sách
CREATE PROCEDURE ShowInventoryDetails
@MaSach NVARCHAR(10)
AS
	SELECT KhoSach.MaSach, Sach.TenSach, KhoSach.SoLuong FROM KhoSach JOIN Sach ON KhoSach.MaSach = Sach.MaSach WHERE KhoSach.MaSach=@MaSach
GO

-- PROCEDURE Hiển thị chi tiết của Phiếu Nhập
CREATE PROCEDURE ShowReceipt
@MaPhieuNhap NVARCHAR(10)
AS
	SELECT * FROM PhieuNhap Join ChiTietNhapSach on PhieuNhap.MaPhieuNhap = ChiTietNhapSach.MaPhieuNhap 
	WHERE PhieuNhap.MaPhieuNhap=@MaPhieuNhap
	order by PhieuNhap.MaPhieuNhap
GO

-- PROCEDURE Hiển thị chi tiết của Chi Tiêt Phiếu Nhập
CREATE PROCEDURE ShowReceiptDetails
@MaPhieuNhap NVARCHAR(10),
@MaSach NVARCHAR(10)
AS
	SELECT * FROM PhieuNhap Join ChiTietNhapSach on PhieuNhap.MaPhieuNhap = ChiTietNhapSach.MaPhieuNhap 
	WHERE ChiTietNhapSach.MaPhieuNhap=@MaPhieuNhap AND ChiTietNhapSach.MaSach = @MaSach
	order by PhieuNhap.MaPhieuNhap
GO

--Hiển thị chi tiết của Phiếu Nhập
CREATE PROCEDURE ShowAllBills
@MaHoaDon NVARCHAR(10)
AS
	SELECT * FROM HoaDon WHERE HoaDon.MaHoaDon=@MaHoaDon
GO

--Hiển thị chi tiết của Chi Tiêt Phiếu Nhập
CREATE PROCEDURE ShowAllBillDetails
@MaHoaDon NVARCHAR(10),
@MaSach NVARCHAR(10)
AS
	SELECT * FROM ChiTietHoaDon WHERE ChiTietHoaDon.MaHoaDon=@MaHoaDon AND MaSach = @MaSach
GO

-- PROCEDURE Hiển thị chi tiết Nhân Viên
CREATE PROCEDURE ShowStaff
@MaNhanVien NVARCHAR(10)
AS
	SELECT * FROM NhanVien
	WHERE MaNhanVien=@MaNhanVien
GO

--PROCCEDURE Hiển thị phân loại nhân viên
CREATE PROCEDURE ShowClassifiedStaff
@MaChucVu NVARCHAR(10)
AS
	SELECT * FROM PhanLoaiNhanVien
	WHERE MaChucVu=@MaChucVu
GO

--PROCCEDURE Hiển thị Lương
CREATE PROCEDURE ShowSalary
@MaNhanVien NVARCHAR(10)
AS
	SELECT * FROM Luong
	WHERE MaNhanVien=@MaNhanVien
GO
