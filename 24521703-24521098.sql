-- Tạo bảng
CREATE TABLE KHACHHANG (
    MaKH SERIAL PRIMARY KEY,
    HoTen VARCHAR(100) NOT NULL,
    DienThoai VARCHAR(20),
    Email VARCHAR(100),
    MaHDGanNhat INT
);
CREATE TABLE SANPHAM(
    MaSP SERIAL PRIMARY KEY,
    TenSP VARCHAR(100) NOT NULL,
    DonGia NUMERIC(12,2) NOT NULL
);
CREATE TABLE HOADON(
    MaHD SERIAL PRIMARY KEY,
    NgayLap DATE NOT NULL CHECK (NgayLap<=CURRENT_DATE),
    MaKH INT NOT NULL,
    CONSTRAINT fk_KH FOREIGN KEY (MaKH)
        REFERENCES KHACHHANG(MaKH)
);
CREATE TABLE CTHD(
    MaHD INT NOT NULL,
    MaSP INT NOT NULL,
    SoLuong INT NOT NULL CHECK(SoLuong>0),
    PRIMARY KEY (MaHD,MaSP),
    CONSTRAINT fk_CTHD_HD FOREIGN KEY(MaHD)
        REFERENCES HOADON(MaHD),
    CONSTRAINT fk_CTHD_SP FOREIGN KEY(MaSP)
        REFERENCES SANPHAM(MaSP)
);

ALTER TABLE KHACHHANG
ADD CONSTRAINT fk_HDGanNhat FOREIGN KEY (MaHDGanNhat)
REFERENCES HOADON(MaHD)
ON DELETE SET NULL;

INSERT INTO KHACHHANG (HoTen,DienThoai,Email,MaHDGanNhat) VALUES --insert 40 dòng
('Nguyen Minh Anh', '0901000001', 'minhanh.nguyen@gmail.com', NULL),
('Tran Quoc Bao', '0901000002', 'quocbao.tran@gmail.com', NULL),
('Le Thanh Dat', '0901000003', 'thanhdat.le@gmail.com', NULL),
('Pham Hoai Nam', '0901000004', 'hoainam.pham@gmail.com', NULL),
('Vo Gia Huy', '0901000005', 'giahuy.vo@gmail.com', NULL),

('Nguyen Thu Ha', '0901000006', 'thuha.nguyen@gmail.com', NULL),
('Tran Minh Khoa', '0901000007', 'minhkhoa.tran@gmail.com', NULL),
('Le Phuong Thao', '0901000008', 'phuongthao.le@gmail.com', NULL),
('Pham Tuan Kiet', '0901000009', 'tuankiet.pham@gmail.com', NULL),
('Hoang Duc Long', '0901000010', 'duclong.hoang@gmail.com', NULL),

('Nguyen Van Phuc', '0901000011', 'vanphuc.nguyen@gmail.com', NULL),
('Tran Thi Mai', '0901000012', 'thimai.tran@gmail.com', NULL),
('Le Huu Nghia', '0901000013', 'huunghia.le@gmail.com', NULL),
('Pham Ngoc Linh', '0901000014', 'ngoclinh.pham@gmail.com', NULL),
('Vo Thanh Tung', '0901000015', 'thanhtung.vo@gmail.com', NULL),

('Nguyen Hoang Yen', '0901000016', 'hoangyen.nguyen@gmail.com', NULL),
('Tran Duc Hieu', '0901000017', 'duchieu.tran@gmail.com', NULL),
('Le Quang Vinh', '0901000018', 'quangvinh.le@gmail.com', NULL),
('Pham Bao Chau', '0901000019', 'baochau.pham@gmail.com', NULL),
('Hoang Minh Tri', '0901000020', 'minhtri.hoang@gmail.com', NULL),

('Nguyen Tien Dat', '0901000021', 'tiendat.nguyen@gmail.com', NULL),
('Tran Ngoc Anh', '0901000022', 'ngocanh.tran@gmail.com', NULL),
('Le Thanh Phuong', '0901000023', 'thanhphuong.le@gmail.com', NULL),
('Pham Cong Hieu', '0901000024', 'conghieu.pham@gmail.com', NULL),
('Vo Thi Hong', '0901000025', 'thihong.vo@gmail.com', NULL),

('Nguyen Khac Duy', '0901000026', 'khacduy.nguyen@gmail.com', NULL),
('Tran Thanh Binh', '0901000027', 'thanhbinh.tran@gmail.com', NULL),
('Le Minh Tam', '0901000028', 'minhtam.le@gmail.com', NULL),
('Pham Thi Lan', '0901000029', 'thilan.pham@gmail.com', NULL),
('Hoang Quoc Viet', '0901000030', 'quocviet.hoang@gmail.com', NULL),

('Nguyen Anh Tuan', '0901000031', 'anhtuan.nguyen@gmail.com', NULL),
('Tran My Linh', '0901000032', 'mylinh.tran@gmail.com', NULL),
('Le Van Cuong', '0901000033', 'vancuong.le@gmail.com', NULL),
('Pham Thanh Ha', '0901000034', 'thanhha.pham@gmail.com', NULL),
('Vo Minh Quan', '0901000035', 'minhquan.vo@gmail.com', NULL),

('Nguyen Thi Bich', '0901000036', 'thibich.nguyen@gmail.com', NULL),
('Tran Hong Phuc', '0901000037', 'hongphuc.tran@gmail.com', NULL),
('Le Duc Thinh', '0901000038', 'ducthinh.le@gmail.com', NULL),
('Pham Nhat Minh', '0901000039', 'nhatminh.pham@gmail.com', NULL),
('Hoang Gia Bao', '0901000040', 'giabao.hoang@gmail.com', NULL);

INSERT INTO HOADON(NgayLap,MaKH) VALUES  --insert 50 dòng
('2024-01-01', 1), ('2024-02-05', 1),
('2024-01-02', 2), ('2024-02-06', 2),
('2024-01-03', 3), ('2024-02-07', 3),
('2024-01-04', 4), ('2024-02-08', 4),
('2024-01-05', 5), ('2024-02-09', 5),
('2024-01-06', 6), ('2024-02-10', 6),
('2024-01-07', 7), ('2024-02-11', 7),
('2024-01-08', 8), ('2024-02-12', 8),
('2024-01-09', 9), ('2024-02-13', 9),
('2024-01-10', 10), ('2024-02-14', 10),

('2024-03-01', 11),
('2024-03-02', 12),
('2024-03-03', 13),
('2024-03-04', 14),
('2024-03-05', 15),
('2024-03-06', 16),
('2024-03-07', 17),
('2024-03-08', 18),
('2024-03-09', 19),
('2024-03-10', 20),

('2024-01-15', 21), ('2024-02-15', 21), ('2024-03-15', 21),
('2024-01-16', 22), ('2024-02-16', 22), ('2024-03-16', 22),
('2024-01-17', 23), ('2024-02-17', 23), ('2024-03-17', 23),
('2024-01-18', 24), ('2024-02-18', 24), ('2024-03-18', 24),
('2024-01-19', 25), ('2024-02-19', 25), ('2024-03-19', 25),

('2024-04-01', 3),
('2024-04-02', 5),
('2024-04-03', 7),
('2024-04-04', 9),
('2024-04-05', 21);

INSERT INTO SANPHAM(TenSP,DonGia) VALUES  --insert 50 dòng
('But bi thien long', 6000),
('But gel muji 0.5mm', 28000),
('But chi go', 12000),
('Tap vo campus a5', 18000),
('Tap vo campus a4', 25000),
('So tay bia da', 45000),
('So lo xo a5', 22000),
('Thuoc ke nhua 20cm', 8000),
('Thuoc ke inox 30cm', 20000),
('Gom tay thien long', 5000),

('Keo van phong nho', 30000),
('Keo van phong lon', 45000),
('Ho dan giay', 18000),
('Bang keo trong 1cm', 10000),
('Bang keo trong 2cm', 15000),
('Bang keo hai mat', 22000),
('Bia ho so nhua a4', 7000),
('Bia ho so giay cung', 12000),
('Kep giay kim loai', 9000),
('Kep buom den 32mm', 15000),

('May tinh casio fx570vn', 550000),
('May tinh casio fx580vnx', 680000),
('Pin aa energizer', 45000),
('Pin aaa energizer', 45000),
('Chuot may tinh logitech b100', 180000),
('Chuot khong day logitech m185', 320000),
('Ban phim logitech k120', 250000),
('Usb kingston 32gb', 180000),
('Usb sandisk 64gb', 320000),
('Tai nghe co day sony', 220000),

('Tai nghe bluetooth xiaomi', 480000),
('Loa bluetooth jbl go', 720000),
('Den ban hoc led', 350000),
('Balo laptop 15.6 inch', 420000),
('Tui chong soc laptop', 180000),
('Gia do laptop nhom', 260000),
('O cam dien da nang', 150000),
('O cung ssd kingston 240gb', 950000),
('Webcam full hd', 520000),
('Chuot pad gaming', 120000),

('Chuot bluetooth mchose g3', 320000),
('Ban phim aula f98', 250000),
('Usb 32GB', 180000),
('Usb 64GB', 320000),
('Tai nghe wireless soundpeats', 220000),

('Ao thun one piece luffy', 180000),
('Mo hinh nhan vat luffy', 350000),
('Mo hinh nhan vat naruto', 320000),
('Mo hinh nhan vat goku', 400000),
('Sticker anime', 50000);

INSERT INTO CTHD(MaHD,MaSP,SoLuong) VALUES  --insert 50 dong
(7, 26, 1),
(7, 27, 2),
(8, 26, 1),
(8, 27, 1),

(41, 26, 2),
(41, 27, 1),

(1, 26, 1),
(2, 26, 1),
(3, 26, 1),
(4, 26, 1),
(5, 26, 1),
(6, 26, 1),

(9, 26, 1),
(9, 28, 2),
(9, 30, 1),

(10, 27, 1),
(10, 28, 1),

(11, 29, 2),
(11, 30, 1),

(12, 26, 1),
(12, 27, 1),
(12, 28, 1),

(13, 30, 2),

(14, 26, 1),
(14, 29, 1),

(15, 28, 3),

(16, 27, 2),
(16, 30, 1),

(17, 26, 1),
(17, 28, 1),

(18, 29, 1),
(18, 30, 1),

(19, 26, 1),

(20, 27, 1),


(21, 26, 2),
(21, 27, 2),
(21, 28, 2),

(22, 29, 2),
(22, 30, 2),

(23, 26, 3),

(24, 27, 3),

(25, 28, 4);

UPDATE KHACHHANG kh
SET MaHDGanNhat=(
    SELECT MaHD
    FROM HOADON hd
    WHERE kh.MaKH=hd.MaKH
    ORDER BY hd.NgayLap DESC, hd.MaHD DESC
    LIMIT 1
);
-- dai so quan he
-- 1
SELECT k.hoten, SUM(c.soluong) AS SL
FROM khachhang k
JOIN hoadon h ON k.makh=h.makh
JOIN cthd c ON h.mahd=c.mahd
GROUP BY k.hoten;
-- 2
SELECT S.TenSP, SUM(soluong) AS SoLanMua FROM SANPHAM S
JOIN CTHD C ON S.masp=C.masp
GROUP BY S.TenSP
HAVING SUM(soluong)>=10;
-- 3
SELECT k.hoten, COUNT(*) AS SoLuong
FROM khachhang k
JOIN hoadon h ON k.makh=h.makh
GROUP BY k.hoten;

-- 1. Liệt kê các hóa đơn kèm theo họ tên khách hàng (MaHD, NgayLap, HoTen).
SELECT H.MaHD, H.NgayLap, K.HoTen 
FROM KHACHHANG K
JOIN HOADON H ON K.MaKH=H.MaKH;

-- 2. Thống kê tổng số tiền của mỗi hóa đơn (MaHD, TongTien).
SELECT C.MaHD, SUM(S.DonGia*C.SoLuong) AS TongTien
FROM SANPHAM S 
JOIN CTHD C ON S.MaSP=C.MaSP
GROUP BY C.MaHD;

-- 3. Liệt kê 10 khách hàng có tổng giá trị mua hàng cao nhất (MaKH, HoTen, TongTien).
SELECT K.MaKH, K.Hoten, SUM(S.DonGia * C.SoLuong) AS TongGiaTri
FROM KHACHHANG K
JOIN HOADON H ON K.MaKH=H.MaKH
JOIN CTHD C ON H.MaHD=C.MaHD
JOIN SANPHAM S ON C.MaSP=S.MaSP
GROUP BY K.MaKH, K.HoTen
ORDER BY TongGiaTri DESC
LIMIT 10;

-- 4. Liệt kê các khách hàng đã mua tất cả các sản phẩm mà khách hàng “Nam” đã từng mua.
SELECT MaKH, HoTen FROM KHACHHANG
WHERE NOT EXISTS(
    SELECT DISTINCT K.MaKH, K.HoTen
    FROM KHACHHANG K
    JOIN HOADON H ON K.MaKH=H.MaKH
    JOIN CTHD C ON H.MaHD=C.MaHD
    JOIN SANPHAM S ON C.MaSP=S.MaSP
    WHERE K.HoTen LIKE '%Nam' AND S.TenSP NOT IN(
        SELECT DISTINCT S.TenSP
        FROM KHACHHANG K
        JOIN HOADON H ON K.MaKH=H.MaKH
        JOIN CTHD C ON H.MaHD=C.MaHD
        JOIN SANPHAM S ON C.MaSP=S.MaSP
        WHERE K.HoTen NOT LIKE '%Nam'
    );
) --xem lai


-- TRIGGER 1
INSERT INTO CTHD(MAHD, MASP, SoLuong) VALUES
(1,10,-1);

SELECT * FROM CTHD
WHERE SOLUONG<0;

ALTER TABLE CTHD
DROP CONSTRAINT cthd_soluong_check;

-- Bat dau viet TRIGGER
CREATE FUNCTION check_soluong_cthd()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
    IF NEW.SoLuong<=0 THEN
        RAISE EXCEPTION 'SoLuong must be greater than 0';
    END IF;
    RETURN NEW;
END $$;

CREATE TRIGGER trg_check_soluong_cthd
BEFORE INSERT OR UPDATE
ON CTHD
FOR EACH ROW
EXECUTE FUNCTION check_soluong_cthd();

DELETE FROM CTHD
WHERE SoLuong<=0;

INSERT INTO CTHD(MAHD, MASP, SoLuong) VALUES
(1, 10, -1);

UPDATE CTHD
SET SoLuong=0
WHERE MASP>0

INSERT INTO CTHD(MAHD, MASP, SoLuong) VALUES
(1,10,5);
-- Ket thuc TRIGGER 1

-- TRIGGER 2
DELETE FROM HOADON
WHERE MAHD=7;

SELECT * FROM HOADON;
select * from cthd;
ALTER TABLE CTHD
DROP CONSTRAINT fk_cthd_hd;

INSERT INTO HOADON(MAHD, NgayLap, MAKH) VALUES
(7, '2024-01-04', 4);

-- Bat dau viet TRIGGER
CREATE FUNCTION check_cthd_hd()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
    IF EXISTS(
        SELECT 1
        FROM CTHD
        WHERE MAHD=OLD.MAHD
    ) THEN
    RAISE EXCEPTION 'Cannot delete a record of Invoices that appears in CTHD';
    END IF;

    RETURN OLD;
END $$;

CREATE TRIGGER trg_fk_cthd_hd
BEFORE DELETE
ON HOADON
FOR EACH ROW
EXECUTE FUNCTION check_cthd_hd();

DELETE FROM HOADON
WHERE MAHD=50;
-- Ket thuc TRIGGER 2

-- TRIGGER 3
DELETE FROM SANPHAM
WHERE MASP=27;

SELECT * FROM SANPHAM;

ALTER TABLE CTHD
DROP CONSTRAINT fk_cthd_sp;

INSERT INTO SANPHAM(MASP, TenSP, DonGia) VALUES
(27, 'Ban phim Logitech k120', 250000);

-- Bat dau viet TRIGGER
CREATE FUNCTION check_cthd_sp()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
    IF EXISTS(
        SELECT 1
        FROM CTHD
        WHERE MASP=OLD.MASP
    ) THEN
    RAISE EXCEPTION 'Cannot delete a record of Products that appears in CTHD';
    END IF;

    RETURN OLD;
END $$;

CREATE TRIGGER trg_fk_cthd_sp
BEFORE DELETE
ON SANPHAM
FOR EACH ROW
EXECUTE FUNCTION check_cthd_sp();

DELETE FROM SANPHAM
WHERE MASP=50;

-- Ket thuc TRIGGER 3

