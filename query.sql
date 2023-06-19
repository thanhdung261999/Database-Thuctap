-- Sử dụng lệnh truy vấn SQL lấy ra mã số và tên các đề tài có nhiều hơn 2 sinh viên tham gia thực tập  
SELECT detai.madt,detai.tendt
FROM detai
WHERE detai.madt IN (
SELECT huongdan.madt
FROM huongdan 
GROUP BY huongdan.madt
HAVING COUNT(huongdan.masv) > 2);
-- Sử dụng câu lệnh truy vấn SQL lấy ra mã số, tên đề tài của đề tài có kinh phí cao nhất 
SELECT dt.madt,dt.tendt
FROM detai AS dt WHERE dt.kinhphi IN (SELECT MAX(kinhphi) FROM detai);	
-- Sử dụng câu lệnh SQL xuất ra tên khoa, số lượng sinh viên của mỗi khoa 
SELECT  k.tenkhoa,COUNT(sv.masv) AS slsv FROM khoa AS k 
LEFT JOIN sinhvien sv ON k.makhoa = sv.makhoa GROUP BY k.makhoa;
