-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 12, 2021 lúc 11:16 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlttn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `MaAd` varchar(11) NOT NULL,
  `Ho` varchar(255) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `NgaySinh` date NOT NULL DEFAULT '1980-04-01',
  `GioiTinh` varchar(20) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`MaAd`, `Ho`, `Ten`, `NgaySinh`, `GioiTinh`, `TrangThai`) VALUES
('AD001', 'Trần Thị Thu', 'Thanh', '1980-04-01', 'Nữ', 1),
('AD002', 'Phan Thanh', 'Thắng', '1980-04-01', 'Nam', 1),
('AD003', 'Phan Anh', 'Quân', '1980-04-01', 'Nam', 1),
('AD004', 'Cao Nguyễn Phương', 'Trang', '1980-04-01', 'Nữ', 1),
('AD005', '', '', '2001-01-01', '', 1),
('AD006', '', '', '2001-01-01', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baithi`
--

CREATE TABLE `baithi` (
  `MaSV` varchar(11) NOT NULL,
  `MaDe` varchar(11) NOT NULL,
  `DSCauTraLoi` text NOT NULL,
  `DanhSachDungSai` varchar(100) NOT NULL,
  `SoCauDung` int(11) NOT NULL,
  `Diem` varchar(10) NOT NULL,
  `TrangThai` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `baithi`
--

INSERT INTO `baithi` (`MaSV`, `MaDe`, `DSCauTraLoi`, `DanhSachDungSai`, `SoCauDung`, `Diem`, `TrangThai`) VALUES
('SV001', 'D001', 'CBAABADDBC', '1100001100', 4, '4.0', 1),
('SV001', 'D002', 'BCACACBCDD', '0000011111', 5, '5.0', 1),
('SV001', 'D003', 'DDCCBBBBDDACBACBDBCD', '11111101111001111100', 15, '7.5', 1),
('SV002', 'D001', 'ADCAAABDAD', '0000100110', 3, '3.0', 1),
('SV002', 'D002', 'ADBCDABCDD', '0000101111', 5, '5.0', 1),
('SV003', 'D001', 'CBDBCADDBD', '1100001100', 4, '4.0', 1),
('SV003', 'D003', 'DDCCDADBDCAADACBCBBD', '11110011101001110110', 13, '6.5', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baithi_kythi`
--

CREATE TABLE `baithi_kythi` (
  `MaSV` varchar(11) NOT NULL,
  `MaDe` varchar(11) NOT NULL,
  `DSCauTraLoi` text NOT NULL,
  `DanhSachDungSai` varchar(255) NOT NULL,
  `SoCauDung` int(11) NOT NULL,
  `MaKyThi` varchar(10) NOT NULL,
  `Diem` varchar(10) NOT NULL,
  `TrangThai` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cauhoi`
--

CREATE TABLE `cauhoi` (
  `MaCH` varchar(11) NOT NULL,
  `MaPhanCong` varchar(11) NOT NULL,
  `NoiDung` text NOT NULL,
  `A` text NOT NULL,
  `B` text NOT NULL,
  `C` text NOT NULL,
  `D` text NOT NULL,
  `DapAn` varchar(1) NOT NULL,
  `DoKho` int(3) NOT NULL,
  `TrangThai` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cauhoi`
--

INSERT INTO `cauhoi` (`MaCH`, `MaPhanCong`, `NoiDung`, `A`, `B`, `C`, `D`, `DapAn`, `DoKho`, `TrangThai`) VALUES
('CH0001', 'PC001', 'Câu nào SAI khi nói về ngôn ngữ lập trình JAVA', 'Ngôn ngữ Java có phân biệt chữ hoa - chữ thường', 'Java là ngôn ngữ lập trình hướng đối tượng', 'Dấu chấm phẩy được sử dụng để kết thúc lệnh trong Java', 'Chương trình viết bằng Java chỉ có thể chạy trên hệ điều hành Win', 'D', 1, 1),
('CH0002', 'PC001', 'Đâu không phải là một kiểu dữ liệu nguyên thủy trong Java?', 'double', 'int', 'long', 'long float', 'D', 1, 1),
('CH0003', 'PC001', 'Phương thức next() của lớp Scanner dùng để làm gì?', 'Nhập một số ngyên', 'Nhập một ký tự ', 'Nhập một chuỗi', 'Không có phương thức này', 'C', 1, 1),
('CH0004', 'PC001', 'Gói nào trong java chứa lớp Scanner dùng để nhập  dữ liệu từ bàn phím?', 'java.net', 'java.io', 'java.util', 'java.awt', 'C', 1, 1),
('CH0005', 'PC001', 'Phương thức nextLine() thuộc lớp nào?', 'String', 'Scanner', 'Integer', 'System', 'B', 1, 1),
('CH0006', 'PC001', 'Tên đầu tiên của Java là gì?', 'Java', 'Oak', 'Cafe', 'James golings', 'B', 3, 1),
('CH0007', 'PC001', 'Đâu KHÔNG phải là thành phần trong cấu trúc của lớp trong java.', 'Tên lớp', 'Thuộc tính', 'Phương thức', 'Biến', 'D', 1, 1),
('CH0008', 'PC001', 'Đối tượng là gì?', 'Các lớp được tạo thể hiện từ đó', 'Một thể hiện của lớp', 'Một tham chiếu đến một thuộc tính', 'Môt biến', 'B', 2, 1),
('CH0009', 'PC001', 'Với giá trị nào của x, biểu thức sau trả về giá trị true (x thuộc kiểu int)? ', '2', '7', '4', '9', 'D', 1, 1),
('CH0010', 'PC001', 'Kiểu dữ liệu nào trong Java chứa giá trị bao gồm cả chữ và số? ', 'ỉnt', 'byte', 'char', 'String', 'D', 1, 1),
('CH0011', 'PC001', 'Đâu là khai báo biến hợp lệ?', 'theOne', 'the One', '1the_One', '$the One', 'A', 1, 1),
('CH0012', 'PC001', 'Có mấy cách để truyền tham số vào cho một  phương thức?', '1', '2', '3', '4', 'B', 2, 1),
('CH0013', 'PC001', 'Đâu là khai báo đúng về lớp Cat?', 'Class Cat{}', 'class public Cat(){}', 'class Cat{}', 'public Cat class{}', 'C', 1, 1),
('CH0014', 'PC001', 'Trong các khai báo sau, đâu là khai báo không hợp lệ?', 'int a1[][] = new int[][3];', 'int a2[][] = new int[2][3];', 'int a3[][] = new int[2][]; ', 'ỉnt a4[][] = {{},{},{}};', 'A', 2, 1),
('CH0015', 'PC001', 'Phát biểu nào sau đây là đúng:', 'Mảng  có thể lưu giữ các phần tử thuộc nhiều kiểu dữ liệu khác nhau ', 'Chỉ số của mảng có thể sử dụng kiểu số thực (float, double) ', 'Biểu thức array.length được sử dụng để trả về  số phần tử  trong mảng', 'Một phần tử của mảng không thể truyền vào trong một phương thức', 'C', 1, 1),
('CH0016', 'PC001', 'Nếu phương thức của bạn ghi đè một trong số các phương thức của lớp cha, bạn có thể gọi phương thức bị ghi đè thông qua từ khóa nào?', 'parent', 'super', 'this', 'static', 'B', 1, 1),
('CH0017', 'PC001', 'Đâu KHÔNG phải là cách thức để khởi tạo giá trị cho thuộc tính name có kiểu chuổi của lớp Cat?', 'class Cat{String name=\"noname\";}', 'public class Cat{ String name; pulic Cat(){name=\"noname\";}}', 'public class Cat{ String name; pulic Cat( String x){name=x;}}', 'public class Cat{ String name; pulic Cat(){String name=\"noname\";}}', 'D', 2, 1),
('CH0018', 'PC001', 'File chứa mã nguồn java sau khi được biên dịch có đuôi là gì?', '.java', '.class', '.jav', '.exe', 'B', 3, 1),
('CH0019', 'PC001', 'Java platform gồm mấy thành phần?', '1', '2', '3', '4', 'B', 3, 1),
('CH0020', 'PC001', 'Java Virtual Machine là gì?', 'Là một thành phần của Java platform dùng để đọc mã bytecode trong file .class', 'Là chương trình biên dịch của java dùng để biên dịch file nguồn java thành mã bytecode', 'Là chương trình chạy cho java', 'Tất cả đều đúng', 'A', 3, 1),
('CH0021', 'PC001', 'Java chạy trên điều hành sau đây:', 'Microsoft Windows', 'Linux', 'Sun Solaris OS', 'Tất cả đáp án đều đúng', 'D', 1, 1),
('CH0022', 'PC001', 'API là gì?', 'Thư viện mã nguồn của Java', 'Là thư viện chứa các thành phần phần mền tạo sẵn cung cấp các chức năng cho chương trình Java', 'Thư viện cung cấp giao diện đồ họa cho chương trình Java', 'Tất cả đều sai', 'B', 3, 1),
('CH0023', 'PC001', 'Ngôn ngữ lập trình Java cung cấp các chức năng nào sau đây?', 'Giao diện lập trình ứng dụng', 'Bộ công cụng giao diện người dùng', 'Thư viện tích hợp', 'Tất cả đáp án trên', 'D', 2, 1),
('CH0024', 'PC001', 'Có bao nhiêu cách viết chú thích trong Java?', '1', '2', '3', '4', 'C', 2, 1),
('CH0025', 'PC001', 'Thứ tự các từ khóa public và static khi khai báo  như thế nào?', 'public đứng trước static', 'static đứng trước public', 'Thứ tự bất kỳ nhưng thông thường public đứng trước', 'Tất cả đều sai', 'C', 2, 1),
('CH0026', 'PC001', 'Câu lệnh khai báo chuẩn cho cách main như thế nào?', 'public static void main(String[] args){}', 'public static int main(String args){}', 'public static main(String[] args){}', 'public static final void main(String[] args){}', 'A', 1, 1),
('CH0027', 'PC001', 'Câu nào sau đây là sai?', '/** chú thích */', '/* chú thích */', '/* chú thích', '// chú thích', 'C', 1, 1),
('CH0028', 'PC001', 'Khi biên dịch gặp lỗi Exception in thread main java.lang.NoClassDefFoundError: myprogram. Lỗi này có nghĩa gì?', 'Đường dẫn chương trình sai', 'Không có hàm main', 'Không khai báo class', 'Không có từ khóa public tại mở đầu khai báo class', 'A', 3, 1),
('CH0029', 'PC001', 'Đối tượng trong phần mền là gì?', 'Là một bó phần mền gồm các hành vi và trạng thái có liên quan với nhau.', 'Là vật thể xác định của thế giới thực', 'Là vật thể  gồm hành vi và trạng thái', 'Là các đối tượng được biểu diễn trong phần mền gồm có 2 thuộc tính trường dữ liệu và các cách xử lý dữ liệu', 'D', 2, 1),
('CH0030', 'PC001', 'Khai báo lớp nào dưới đây đúng?', 'public class default{}', 'protected inner class engine{}', 'final class outer{}', 'Tất cả đều sai.', 'C', 1, 1),
('CH0031', 'PC001', 'Cách đặt tên nào sau đây sai?', '2word', '*word', 'main', 'Tất cả đều sai', 'D', 1, 1),
('CH0032', 'PC001', 'Một lớp trong Java có thể có bao nhiêu lớp cha?', '1', '2', '3', '4', 'A', 1, 1),
('CH0033', 'PC001', 'Một lớp Java có thể có bao nhiêu lớp con?', '2', '3', '4', 'Vô số', 'D', 1, 1),
('CH0034', 'PC001', 'Chọn câu trả lời đúng nhất. Interface là gì?', 'Là lớp chứa các cách rỗng có liên quan với nhau', 'Là một kiểu tham chiếu, tương tự như class, chỉ có thể chứa hằng giá trị, khai báo cách và kiểu lồng', 'Là một cách thực hiện của các lớp khác', 'Là lớp nối giữa lớp cơ sở và lớp cha', 'B', 2, 1),
('CH0035', 'PC001', 'Có bao nhiêu loại biến trong Java?', '1', '2', '3', '4', 'D', 2, 1),
('CH0036', 'PC001', 'Trường dữ liệu là các biến dạng nào sau đây?', 'Biến thay mặt và tham số', 'Biến thay mặt và biến lớp', 'Biến thay mặt và biến cục bộ', 'Biến lớp và tham số', 'B', 2, 1),
('CH0037', 'PC001', 'Biến dữ liệu là các biến dạng nào sau đây?', 'Biến lớp và tham số', 'Biến cục bộ và tham số', 'Biến cục bộ và biến lớp', 'Tất cả đều sai', 'B', 2, 1),
('CH0038', 'PC001', 'Có bao nhiêu kiểu dữ liệu cơ sở trong Java?', '7', '8', '9', '5', 'B', 2, 1),
('CH0039', 'PC001', 'Lệnh str.charat(n) có tác dụng gì?', 'Lấy ký tự bất kỳ trong chuỗi string str', 'Lấy độ dài chuỗi str', 'Lấy ký tự có số chỉ mục n trong chuỗi str', 'Không có lệnh này', 'D', 2, 1),
('CH0040', 'PC001', 'Trong Java, kiểu char biểu diễn bộ mã code nào dưới đây?', 'UTF-8', 'UTF-16', 'UTF-32', 'Tất cả các mã trên', 'B', 2, 1),
('CH0041', 'PC001', 'Giá trị mặc định của một biến kiểu char là?', 'u000', 'uFFF', '0F', '0x', 'A', 3, 1),
('CH0042', 'PC001', 'Kiểu enum là gì?', 'Là kiểu dữ liệu gồm các trường chức tập hợp cố đinhj các hằng số', 'Là kiểu dữ liệu liệt kê các biến số', 'Là một kiểu dữ liệu trong Java', 'Tất cả đều sai', 'A', 2, 1),
('CH0043', 'PC001', 'Phạm vi truy cập của một đối tượng khi khai báo private là gi?', 'Có thể được truy cập bất kỳ vị trí nào trong chương trình ', 'Có thể được truy cập từ các lớp trong cùng một package', 'Có thể được truy cập từ các lớp trong cùng một package và lớp con nằm trong package khác', 'Chỉ có thể truy cập từ các phương thức khác trong class đó', 'D', 2, 1),
('CH0044', 'PC001', 'Phạm vi truy cập của một đối tượng khi khai báo protected là gi?', 'Có thể được truy cập bất kỳ vị trí nào trong chương trình ', 'Có thể được truy cập từ các lớp trong cùng một package', 'Có thể được truy cập từ các lớp trong cùng một package và lớp con nằm trong package khác', 'Chỉ có thể truy cập từ các phương thức khác trong class đó', 'C', 2, 1),
('CH0045', 'PC001', 'Phạm vi truy cập của một đối tượng khi khai báo public là gi?', 'Có thể được truy cập bất kỳ vị trí nào trong chương trình ', 'Có thể được truy cập từ các lớp trong cùng một package', 'Có thể được truy cập từ các lớp trong cùng một package và lớp con nằm trong package khác', 'Chỉ có thể truy cập từ các phương thức khác trong class đó', 'A', 2, 1),
('CH0046', 'PC001', 'Cho xâu ký tự s=\"ABCDEF\". Để lấy ký tự \'E\' của xâu ký tự s(String) dùng câu lệnh nào sau đây?', 's.charAt(5)', 's.charAt(4)', 's[5]', 's[4]', 'B', 2, 1),
('CH0047', 'PC001', 'Phát biểu nào sau đây đúng:', 'Mảng có thể lưu giữ nhiều phần tử thuộc nhiều kiểu dữ liệu khác nhau', 'Chỉ số của mảng có thể sử dụng kiểu số thực (float, double)', 'Biểu thức array.length được sử dụng để trả về số phần tử trong mảng', 'Một phần tử của mảng không thể truyền vào trong một phương thức', 'C', 1, 1),
('CH0048', 'PC001', 'Phát biểu nào sau đây là SAI?', 'Mảng có kích thước không đổi trong toàn bộ chương trình', 'Mảng là cấu trúc dữ liệu có khả năng lưu trữ nhiều thành phần (phần tử) dữ liệu với kiểu khác nhau', 'Mảng N phần từ được đánh chỉ số từ 0 đến N-1', 'Chỉ số mảng bắt đầu từ 0', 'B', 1, 1),
('CH0049', 'PC001', 'Phương thức nào của class String trả về index của chuỗi ký tự con xuất hiện đầu tiên trong chuỗi ký tự char', 'concat()', 'charAt()', 'indexOf()', 'Không có đáp án đúng', 'C', 2, 1),
('CH0050', 'PC001', 'Phương thức nào dùng để tìm kiếm một chuỗi trong một chuỗi khác trong class String của Java?', 'lastIndeOf()', 'substring()', 'toString()', 'Không có đáp án đúng', 'A', 2, 1),
('CH0051', 'PC001', 'Trong Java, kiểu dữ liệu nào là một địa chỉ của đối tượng hoặc một mảng được tạo ra trong bộ nhớ?', 'Kiểu primitive', 'Kiểu reference', 'Kiểu format', 'Không có đáp án đúng', 'B', 3, 1),
('CH0052', 'PC001', 'Chức năng của vòng lặp while là gì?', 'Kiểm tra kết quả của biểu thức boolean', 'Tránh mâu thuẫn giữa bên trong và bên ngoài switch', 'Lặp lại khối lệnh chừng nào điều kiện là đúng', 'Không có đáp án', 'C', 1, 1),
('CH0053', 'PC001', 'Java cung cấp một số câu lệnh làm thay đổi  dòng điều khiển dựa trên các điều kiện. Lệnh nào dừng việc hoạt động của vòng lòng trong cùng và bắt đầu câu lệnh tiếp theo ngay sau khối lệnh?', 'break', 'continue', 'change', 'Jump', 'A', 2, 1),
('CH0054', 'PC001', 'Đâu là một khai báo interface đúng?', 'public interface MyInterface{}', 'public interface MyInterface{default int x;}', 'public interface MyInterface{protected int sum(int x, inty);}', 'public interface MyInterface{private int sum(int x, int y);}', 'A', 1, 1),
('CH0055', 'PC001', 'Lệnh result=condition?value1:value2 có nghĩa gì?', 'Nếu condition là true thì result=value2, nếu condition là false thì result=value1', 'Nếu condition là true thì result=value1, nếu condition là false thì result=value2', 'Không có lệnh này', 'Nếu condition là true thì result sẽ đảo giá trị của value1 và value2', 'B', 2, 1),
('CH0056', 'PC001', 'Lệnh nào ngừng vòng lặp hiện thời và bắt đầu vòng lặp tiếp theo?', 'continue', 'break', 'cease', 'end', 'A', 2, 1),
('CH0057', 'PC002', 'Đặc điểm cơ bản của chủ nghĩa Mác giai đoạn 1842 – 1844:', 'Kế tục triết học Hê-ghen', 'Phê phán các thành tựu triết học của nhân loại', 'Sự chuyển biến về tư tưởng từ chủ nghĩa duy tâm và dân chủ cách mạng sang chủnghĩa duy vật và cộng sản chủ nghĩa.', 'Phê phán tôn giáo', 'C', 1, 1),
('CH0058', 'PC002', 'Xét về lịch sử hình thành và giá trị tư tưởng thì chủ nghĩa Ph.Ăngghen ở giai đoạn 1844 – 1848:', 'Tiếp tục hoàn thành các tác phẩm triết học nhằm phê phán tôn giáo', 'Hình thành những nguyên lý triết học duy vật biện chứng, duy vật lịch sử và chủn ghĩa xã hội khoa học', 'Nghiên cứu về vai trò của hoạt động thực tiễn đối với nhận thức', 'Hoàn thành bộ “Tư Bản”', 'B', 1, 1),
('CH0059', 'PC002', 'Tác phẩm nào được xem là văn kiện có tính chất cương lĩnh đầu tiên của chủ nghĩa Mác?', 'Bản thảo kinh tế - triết học năm 1844', 'Tuyên ngôn của Đảng Cộng sản', 'Hệ tư tưởng Đức.', 'Gia đình thần thánh.', 'B', 1, 1),
('CH0060', 'PC002', 'Tác phẩm là quan trọng và điển hình nhất của chủ nghĩa Mác trong giai đoạn1848 – 1895?', 'Chống Duy-rinh', 'Biện chứng của tự nhiên', 'Bộ Tư bản', 'Nguồn gốc của gia đình, của chế độ tư hữu và của nhà nước', 'C', 1, 1),
('CH0061', 'PC002', 'Trong giai đoạn từ năm 1876 đến năm 1878, tác phẩm nào của Ph.Ăngghen đã chỉra mối liên hệ hữu cơ giữa ba bộ phận hợp thành chủ nghĩa Mác?', 'Chống Duy-rinh', 'Biện chứng của tư nhiên', 'Nguồn gốc của gia đình, của chế độ tư hữu và của nhà nước', 'Lút-vích Phoi-ơ-bắc và sự cáo chung của triết học cổ điển Đức', 'A', 1, 1),
('CH0062', 'PC002', 'Khi bàn về vai trò của triết học trong đời sống, C.Mác đã có một phát biểu một luậnđiểm rất sâu sắc, cho thấy sự khác biệt về chất giữa triết học của Ông với các tràolưu triết học trước đó, nguyên văn của phát biểu đó là gì?', 'Phương pháp biện chứng của tôi không những khác phương pháp của Hê-ghen về cơ bảnmà còn đối lập hẳn với phương pháp ấy nữa', 'Tôn giáo là thuốc phiện của nhân dân', 'Các nhà triết học đã chỉ giải thích thế giới bằng nhiều cách khác nhau, song vấn đề làcải tạo thế giới', 'Bản chất của con người là tổng hòa những mối quan hệ xã hội', 'C', 2, 1),
('CH0063', 'PC002', 'Đặc điểm chính trị của thế giới những năm cuối thế kỷ XIX – đầu thế kỷ XX?', 'Toàn cầu hoá', 'Chủ nghĩa tư bản chuyển thành chủ nghĩa Đế quốc và thường xuyên tiến hành những cuộcchiến tranh giành thuộc địa.', 'CNTB Tổ chức cuộc chiến tranh thế giới lần thứ II để phân chia thị trường thế giới', 'Ba đáp án trên đều sai', 'D', 2, 1),
('CH0064', 'PC002', 'Những cống hiến của V.I.Lênin đối với triết học Mác - Ăngghen?', 'Phê phán, khắc phục và chống lại những quan điểm sai lầm xuất hiện trong thời đại đế quốc chủ nghĩa.', 'Hiện thực hóa lý luận chủ nghĩa Mác bằng sự thắng lợi của Cách mạng tháng 10 Nga.', 'Bổ sung và hoàn chỉnh về mặt lý luận và thực tiễn những vấn đề như lý luận về cáchmạng vô sản trong thời đại đế quốc chủ nghĩa', 'Cả ba đáp án trên.', 'D', 2, 1),
('CH0065', 'PC002', 'V. I. Lênin đã đưa ra định nghĩa khoa học về phạm trù vật chất trong tác phẩm nào?', 'Chủ nghĩa duy vật và chủ nghĩa kinh nghiệm phê phán.', 'Thế nào là người bạn dân', 'Chủ nghĩa duy vật chiến đấu', 'Cả ba tác phẩm trên', 'A', 2, 1),
('CH0066', 'PC002', 'Luận điểm của Lênin về khả năng thắng lợi của CNXH bắt đầu ở một số nước, thậmchí ở một nước riêng rẽ được rút ra từ sự phân tích quy luật nào?', 'Qui luật về kinh tế thị trường XHCN.', 'Qui luật về sự phát triển không đồng đều của các nước tư bản chủ nghĩa', 'Qui luật về cạnh tranh quốc tế', 'Cả ba đáp án trên', 'B', 2, 1),
('CH0067', 'PC002', 'V. I. Lênin đã đưa ra quan điểm về việc xây dựng nền kinh tế thị trường trong thờikỳ quá độ lên CNXH trong lý luận nào?', 'Học thuyết giai cấp và đấu tranh giai cấp', 'NEP', 'Lý thuyết về sự phân kỳ trong thời kỳ quá độ lên CNXH', 'Học thuyết về nhà nước và cách mạng.', 'B', 3, 1),
('CH0068', 'PC002', 'Nguyễn Ái Quốc đã tìm ra con đường giải phóng dân tộc ta từ việc tìm hiểu tácphẩm nào của V.I.Lênin?', 'Bàn về quyền dân tộc tự quyết', 'Làm gì?', 'Bản sơ thảo lần thứ nhất về những vấn đề dân tộc và thuộc địa.', 'Chủ nghĩa đế quốc giai đoạn tột cùng của chủ nghĩa tư bản.', 'C', 3, 1),
('CH0069', 'PC002', 'Sự kiện xã hội nào lần đầu tiên đã chứng minh tính hiện thực của chủ nghĩa Mác -Lênin trong lịch sử?', 'Tháng Mười Nga năm 1917.', 'Công xã Pa-ri', 'Cách mạng tháng tám 1945 ở Việt Nam.', 'Chiến tranh thế giới lần thứ II', 'A', 3, 1),
('CH0070', 'PC002', 'Mục đích Học tập nghiên cứu những nguyên lý cơ bản của chủ nghĩa Mác-Lênin ởnước ta hiện nay:', 'Xây dựng thế giới quan, phương pháp luận khoa học và vận dụng sáng tạo những nguyênlý đó trong hoạt động nhận thức và thực tiễn.', 'Giúp sinh viên hiểu rõ nền tảng tư tưởng của Đảng cộng sản VN.', 'Xây dựng niềm tin, lý tưởng cho sinh viên', 'Bao gồm cả ba đáp án trên', 'D', 3, 1),
('CH0071', 'PC002', 'Về thực chất, chủ nghĩa nhị nguyên triết học có cùng bản chất với hệ thống triết lý nào?', 'Chủ nghĩa duy tâm', 'Chủ nghĩa xét lại triết học', 'Chủ nghĩa hoài nghi', 'Chủ nghĩa tương đối', 'A', 3, 1),
('CH0072', 'PC006', 'Thuật ngữ \"kinh tế- chính trị\" được sử dụng lần đầu tiên vào năm nào?', '1610', '1612', '1615', '1618', 'C', 1, 1),
('CH0073', 'PC004', 'Ai là người đầu tiên đưa ra khái niệm \"kinh tế- chính trị\"?', 'Antoine Montchretiên', 'Francois Quesney', 'Tomas Mun', 'William Petty', 'A', 1, 1),
('CH0074', 'PC006', 'Ai là người được C. Mác coi là sáng lập ra kinh tế chính trị tư sản cổ điển?', 'A. Smith', 'D. Ricardo', 'W.Petty', 'R.T.Mathus', 'C', 1, 1),
('CH0075', 'PC003', 'Ai là người được coi là nhà kinh tế thời kỳ công trường thủ công?', 'W. Petty', 'A. Smith', 'D.Ricardo', 'R.T.Mathus', 'B', 1, 1),
('CH0076', 'PC003', 'D.Ricardo là nhà kinh tế của thời kỳ nào?', 'Thời kỳ tích luỹ nguyên thuỷ TBCN', 'Thời kỳ hiệp tác giản đơn', 'Thời kỳ công trường thủ công', 'Thời kỳ đại công nghiệp cơ khí', 'D', 1, 1),
('CH0077', 'PC004', 'Kinh tế- chính trị Mác - Lênin đã kế thừa và phát triển trực tiếp những thành tựu của:', 'Chủ nghĩa trọng thương', 'Chủ nghĩa trọng nông', 'Kinh tế chính trị cổ điển Anh', 'Kinh tế- chính trị tầm thường', 'C', 2, 1),
('CH0078', 'PC003', 'Học thuyết kinh tế nào của C.Mác được coi là hòn đá tảng?', 'Học thuyết giá trị lao động', 'Học thuyết giá trị thặng dư', 'Học thuyết tích luỹ tư sản', 'Học thuyết tái sản xuất tư bản xã hội', 'B', 2, 1),
('CH0079', 'PC003', 'Đối tượng nghiên cứu của kinh tế- chính trị Mác-Lênin là:', 'Sản xuất của cải vật chất', 'Quan hệ xã hội giữa người với người', 'Quan hệ sản xuất trong mối quan hệ tác động qua lại với lực lượng sản xuất và kiến trúc thượng tầng.', 'Quá trình sản xuất, phân phối, trao đổi, tiêu dùng', 'C', 2, 1),
('CH0080', 'PC006', 'Hãy chọn phương án đúng về đặc điểm của quy luật kinh tế:', 'Mang tính khách quan', 'Mang tính chủ quan', 'Phát huy tác dụng thông qua hoạt động kinh tế của con người', 'Cả a và c', 'D', 2, 1),
('CH0081', 'PC006', 'Chọn phương án đúng về quy luật kinh tế và chính sách kinh tế:', 'Quy luật kinh tế là cơ sở của chính sách kinh tế', 'Chính sách kinh tế là hoạt động chủ quan của nhà nước trên cơ sở nhận thức và vận dụng các quy luật khách quan.', 'Quy luật kinh tế và chính sách kinh tế đều phụ thuộc vào các điều kiện khách quan.', 'Cả a, b, c', 'D', 2, 1),
('CH0082', 'PC003', 'Để nghiên cứu kinh tế-chính trị Mác-Lênin có thể sử dụng nhiều phương pháp, phương pháp nào quan trọng nhất?', 'Trừu tượng hoá khoa học', 'Phân tích và tổng hợp', 'Điều tra thống kê', 'Mô hình hoá', 'A', 3, 1),
('CH0083', 'PC004', 'Khi nghiên cứu phương thức sản xuất TBCN, C.Mác bắt đầu từ:', 'Sản xuất của cải vậtchất', 'Sản xuất giá trị thặng dư', 'Sản xuất hàng hoá giản đơn và hàng hoá', 'Lưu thông hàng hoá', 'C', 3, 1),
('CH0084', 'PC003', 'Trừu tượng hoá khoa học là:', 'Gạt bỏ những bộ phận phức tạp của đối tượng nghiên cứu', 'Gạt bỏ các hiện tượng ngẫu nhiên, bề ngoài, chỉ giữ lại những mối liên hệ phổ biến mang tính bản chất', 'Quá trình đi từ cụ thể đến trừu tượng và ngược lại', 'Cả b và c', 'D', 3, 1),
('CH0085', 'PC003', 'Chức năng tư tưởng của kinh tế-chính trị Mác –Lê nin thể hiện ở:', 'Góp phần xây dựng thế giới quan cách mạng của giai cấp công nhân', 'Tạo niềm tin vào thắng lợi trong cuộc đấu tranh xoá bỏ áp bức bóc lột', 'Là vũ khí tư tưởng của giai cấp công nhân và nhân dân lao động trong công cuộc xây dựng CNXH', 'Cả a, b và c', 'B', 3, 1),
('CH0086', 'PC006', 'Bản chất khoa học và cách mạng của kinh tế -chính trị Mác-Lênin thể hiện ở chức năng nào?', 'Nhận thức', 'Phương pháp luận', 'Tử Tưởng', 'Tất cả đều đúng', 'D', 3, 1),
('CH0087', 'PC004', 'Những biểu hiện cơ bản của tư tưởng xã hội chủ nghĩa là gì?', 'Là những ước mơ nguyện vọng về một chế độ xã hội ai cũng có việc làm ai cũng lao động.', 'Là những tư tưởng về một xã hội, trong đó mọi người đều bình đẳng, có cuộc sống ấm no, tự do, hạnh phúc.', 'Là quan niệm về một chế độ xã hội mà tư liệu sản xuất đều thuộc về mọi thành viên xã hội', 'Cả a, b, c', 'D', 1, 1),
('CH0088', 'PC004', 'Những yếu tố tư tưởng XHCN được xuất hiện từ khi nào?', 'Chế độ tư bản chủ nghĩa ra đời', 'Sự xuất hiện chế độ tư hữu, xuất hiện giai cấp thống trị và bóc lột.', 'Sự xuất hiện giai cấp công nhân', 'Ngay từ thời cộng sản nguyên thuỷ', 'B', 1, 1),
('CH0089', 'PC004', 'Đối tượng nghiên cứu của chủ nghĩa xã hội khoa học là gì?', 'Là những quy luật và tính quy luật CT-XH của quá trình phát sinh, hình thành và phát triển hình thái KT-XHCSCN', 'Là những quy luật hình thành, phát triển và hoàn thiện của các hình thái kinh tế - xã hội', 'Là những quy luật và tính quy luật CT-XH của quá trình phát sinh, hình thành và phát triển hình thái KT-XHCNXH', 'Cả a, b và c', 'A', 2, 1),
('CH0091', 'PC004', 'Ai được coi là người mở đầu các trào lưu xã hội chủ nghĩa và cộng sản chủ nghĩa thời cận đại.', 'Tômađô Campanenla', 'Tômát Morơ', 'Arítxtốt', 'Platôn', 'B', 1, 1),
('CH0092', 'PC004', 'Ai là người viết tác phẩm \"Không tưởng\" (Utôpi)', 'Xanh Xi Mông', 'Campanenla', 'Tômát Morơ', ' Uynxtenli', 'C', 1, 1),
('CH0093', 'PC004', 'Ai là người đã đưa ra chủ trương thiết lập nền \"Chuyên chính cách mạng của những người lao động\".', 'Tômát Morơ', 'Xanh Ximông', 'Grắccơ Babớp', 'Morenly', 'C', 2, 1),
('CH0094', 'PC002', 'Tư tưởng về \"Giang sơn ngàn năm của Chúa\" xuất hiện ở thời đại nào.', 'Cộng sản nguyên thuỷ', 'Thời cổ đại', 'Thời cận đại', 'Thời phục hưng', 'B', 2, 1),
('CH0095', 'PC002', 'Tác phẩm \"Thành phố mặt trời\" là của tác giả nào?', 'Giêrắcdơ Uyxntenli', 'Tômađô Campanenla', 'Giăng Mêliê', 'Morenly', 'B', 2, 1),
('CH0096', 'PC002', 'Ai là người đã nêu ra \"Tuyên ngôn của những người bình dân\"?', 'Tômát Morơ', 'Xanh Ximông', 'Grắccơ Babớp', 'Morenly', 'C', 2, 1),
('CH0097', 'PC002', 'Ai là người đặt vấn đề đấu tranh cho chủ nghĩa xã hội với tính cách là một phong trào thực tiễn (Phong trào hiện thực)', 'Tômát Morơ', 'Xanh Ximông', 'Grắccơ Babớp', 'Morenly', 'C', 2, 1),
('CH0098', 'PC002', 'Những nhà tư tưởng tiêu biểu của chủ nghĩa xã hội không tưởng phê phán đầu thế kỷ XIX?', 'Grắccơ Babớp, Xanh Ximông, Sáclơ Phuriê', 'Xanh Ximông, Sáclơ Phuriê, G. Mably', 'Xanh Ximông, Sáclơ Phuriê, Rôbớt Ôoen', 'Xanh Ximông, Giăng Mêliê, Rôbớt Ôoen', 'C', 3, 1),
('CH0099', 'PC002', 'Nội dung cơ bản nhất mà nhờ đó chủ nghĩa xã hội từ không tưởng trở thành khoa học?', 'Lên án mạnh mẽ chủ nghĩa tư bản.', 'Phản ánh đúng khát vọng của nhân dân lao động bị áp bức.', 'Phát hiện ra giai cấp công nhân là lực lượng xã hội có thể thủ tiêu CNTB, xây dựng CNXH.', 'Chỉ ra sự cần thiết phải thay thế chủ nghĩa tư bản bằng chủ nghĩa xã hội.', 'C', 3, 1),
('CH0100', 'PC002', 'Ph. Ăngghen đã đánh giá: \"Hai phát hiện vĩ đại này đã đưa chủ nghĩa xã hội trở thành một khoa học\". Hai phát kiến đó là gì?', 'Chủ nghĩa duy vật biện chứng và chủ nghĩa duy vật lịch sử', 'Sứ mệnh lịch sử của giai cấp công nhân – Học thuyết giá trị thặng dư', 'Học thuyết giá trị thặng dư – Chủ nghĩa duy vật lịch sử', 'Sứ mệnh lịch sử của giai cấp công nhân – Chủ nghĩa duy vật lịch sử', 'C', 3, 1),
('CH0101', 'PC002', 'Tiền đề nào là nguồn gốc lý luận trực tiếp của chủ nghĩa xã hội khoa học.', 'Triết học cổ điển Đức', 'Kinh tế chính trị học cổ điển Anh', 'Chủ nghĩa xã hội không tưởng – phê phán', 'Cả a, b và c', 'D', 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietquyen`
--

CREATE TABLE `chitietquyen` (
  `MaPhanQuyen` varchar(11) NOT NULL,
  `MaChucVu` varchar(11) NOT NULL,
  `MaQuyen` varchar(11) NOT NULL,
  `TrangThai` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitietquyen`
--

INSERT INTO `chitietquyen` (`MaPhanQuyen`, `MaChucVu`, `MaQuyen`, `TrangThai`) VALUES
('PQ001', 'CV01', 'Q01', 0),
('PQ002', 'CV01', 'Q02', 1),
('PQ003', 'CV01', 'Q03', 0),
('PQ004', 'CV01', 'Q04', 1),
('PQ005', 'CV01', 'Q05', 0),
('PQ006', 'CV01', 'Q06', 1),
('PQ007', 'CV01', 'Q07', 0),
('PQ008', 'CV01', 'Q08', 0),
('PQ009', 'CV01', 'Q09', 0),
('PQ010', 'CV01', 'Q10', 1),
('PQ011', 'CV01', 'Q11', 0),
('PQ012', 'CV01', 'Q12', 0),
('PQ013', 'CV01', 'Q13', 0),
('PQ014', 'CV01', 'Q14', 1),
('PQ015', 'CV01', 'Q15', 0),
('PQ016', 'CV01', 'Q16', 1),
('PQ017', 'CV01', 'Q17', 0),
('PQ018', 'CV01', 'Q18', 1),
('PQ019', 'CV01', 'Q19', 0),
('PQ020', 'CV01', 'Q20', 1),
('PQ021', 'CV01', 'Q21', 0),
('PQ022', 'CV01', 'Q22', 1),
('PQ023', 'CV01', 'Q23', 0),
('PQ024', 'CV01', 'Q24', 1),
('PQ025', 'CV02', 'Q01', 1),
('PQ026', 'CV02', 'Q02', 0),
('PQ027', 'CV02', 'Q03', 1),
('PQ028', 'CV02', 'Q04', 0),
('PQ029', 'CV02', 'Q05', 1),
('PQ030', 'CV02', 'Q06', 0),
('PQ031', 'CV02', 'Q07', 0),
('PQ032', 'CV02', 'Q08', 1),
('PQ033', 'CV02', 'Q09', 0),
('PQ034', 'CV02', 'Q10', 0),
('PQ035', 'CV02', 'Q11', 1),
('PQ036', 'CV02', 'Q12', 0),
('PQ037', 'CV02', 'Q13', 0),
('PQ038', 'CV02', 'Q14', 1),
('PQ039', 'CV02', 'Q15', 1),
('PQ040', 'CV02', 'Q16', 0),
('PQ041', 'CV02', 'Q17', 0),
('PQ042', 'CV02', 'Q18', 0),
('PQ043', 'CV02', 'Q19', 0),
('PQ044', 'CV02', 'Q20', 0),
('PQ045', 'CV02', 'Q21', 0),
('PQ046', 'CV02', 'Q22', 0),
('PQ047', 'CV03', 'Q01', 0),
('PQ048', 'CV03', 'Q02', 1),
('PQ049', 'CV03', 'Q03', 1),
('PQ050', 'CV03', 'Q04', 0),
('PQ051', 'CV03', 'Q05', 1),
('PQ052', 'CV03', 'Q06', 0),
('PQ053', 'CV03', 'Q07', 0),
('PQ054', 'CV03', 'Q08', 0),
('PQ055', 'CV03', 'Q09', 0),
('PQ056', 'CV03', 'Q10', 0),
('PQ057', 'CV03', 'Q11', 1),
('PQ058', 'CV03', 'Q12', 1),
('PQ059', 'CV03', 'Q13', 0),
('PQ060', 'CV03', 'Q14', 1),
('PQ061', 'CV03', 'Q15', 0),
('PQ062', 'CV03', 'Q16', 1),
('PQ063', 'CV03', 'Q17', 0),
('PQ064', 'CV03', 'Q18', 0),
('PQ065', 'CV03', 'Q19', 0),
('PQ066', 'CV03', 'Q20', 0),
('PQ067', 'CV03', 'Q21', 0),
('PQ068', 'CV03', 'Q22', 0),
('PQ069', 'CV00', 'Q25', 1),
('PQ070', 'CV00', 'Q26', 1),
('PQ071', 'CV00', 'Q27', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chucnang`
--

CREATE TABLE `chucnang` (
  `MaQuyen` varchar(11) NOT NULL,
  `TenBang` varchar(255) NOT NULL,
  `HanhDong` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chucnang`
--

INSERT INTO `chucnang` (`MaQuyen`, `TenBang`, `HanhDong`) VALUES
('Q01', 'Sinh Viên', 'Xem'),
('Q02', 'Sinh Viên', 'Quản lý'),
('Q03', 'Giảng Viên', 'Xem'),
('Q04', 'Giảng Viên', 'Quản lý'),
('Q05', 'Nhân Viên', 'Xem'),
('Q06', 'Nhân Viên', 'Quản lý'),
('Q07', 'Câu Hỏi', 'Xem'),
('Q08', 'Câu Hỏi', 'Quản lý'),
('Q09', 'Môn Học', 'Xem'),
('Q10', 'Môn Học', 'Quản lý'),
('Q11', 'Bài Thi', 'Xem'),
('Q12', 'Bài Thi', 'Quản lý'),
('Q13', 'Đề Thi', 'Xem'),
('Q14', 'Đề Thi', 'Quản Lý'),
('Q15', 'Kỳ Thi', 'Xem'),
('Q16', 'Kỳ Thi', 'Quản lý'),
('Q17', 'Lớp', 'Xem'),
('Q18', 'Lớp', 'Quản lý'),
('Q19', 'Tài Khoản', 'Xem'),
('Q20', 'Tài Khoản', 'Quản lý'),
('Q21', 'Khoa', 'Xem'),
('Q22', 'Khoa', 'Quản lý'),
('Q23', 'Chức Vụ', 'Xem'),
('Q24', '', 'Phân Quyên'),
('Q25', 'Lịch Thi', 'Xem'),
('Q26', '', 'Thi'),
('Q27', 'Kết Quả', 'Xem');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dethi`
--

CREATE TABLE `dethi` (
  `MaDe` varchar(11) NOT NULL,
  `MaMon` varchar(11) NOT NULL,
  `MaKyThi` varchar(11) NOT NULL,
  `ThoiGianLamBai` int(11) NOT NULL,
  `NgayThi` date DEFAULT NULL,
  `GioThi` time NOT NULL,
  `SoLuongCauHoi` int(100) NOT NULL,
  `TrangThai` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dethi`
--

INSERT INTO `dethi` (`MaDe`, `MaMon`, `MaKyThi`, `ThoiGianLamBai`, `NgayThi`, `GioThi`, `SoLuongCauHoi`, `TrangThai`) VALUES
('D001', 'MH003', 'KT01', 45, '2021-02-20', '09:45:00', 10, 0),
('D002', 'MH001', 'KT01', 5, '2021-02-18', '10:09:00', 10, 0),
('D003', 'MH023', 'KT01', 12, '2021-02-16', '10:10:00', 20, 0),
('D004', 'MH001', 'KT02', 20, '2019-05-10', '18:30:00', 10, 1),
('D005', 'MH002', 'KT02', 30, '2021-06-10', '10:00:00', 10, 1),
('D006', 'MH023', 'KT02', 60, '2021-05-12', '13:30:00', 35, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `de_cauhoi`
--

CREATE TABLE `de_cauhoi` (
  `MaCH` varchar(11) NOT NULL,
  `MaDe` varchar(11) NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `de_cauhoi`
--

INSERT INTO `de_cauhoi` (`MaCH`, `MaDe`, `TrangThai`) VALUES
('CH0001', 'D003', 1),
('CH0001', 'D006', 1),
('CH0002', 'D003', 1),
('CH0002', 'D006', 1),
('CH0003', 'D003', 1),
('CH0003', 'D006', 1),
('CH0004', 'D003', 1),
('CH0004', 'D006', 1),
('CH0005', 'D003', 1),
('CH0006', 'D003', 1),
('CH0007', 'D003', 1),
('CH0008', 'D003', 1),
('CH0008', 'D006', 1),
('CH0009', 'D003', 1),
('CH0009', 'D006', 1),
('CH0010', 'D003', 1),
('CH0010', 'D006', 1),
('CH0011', 'D003', 1),
('CH0011', 'D006', 1),
('CH0012', 'D003', 1),
('CH0013', 'D003', 1),
('CH0013', 'D006', 1),
('CH0014', 'D003', 1),
('CH0015', 'D003', 1),
('CH0015', 'D006', 1),
('CH0016', 'D003', 1),
('CH0017', 'D003', 1),
('CH0017', 'D006', 1),
('CH0018', 'D003', 1),
('CH0019', 'D003', 1),
('CH0020', 'D003', 1),
('CH0021', 'D006', 1),
('CH0023', 'D006', 1),
('CH0024', 'D006', 1),
('CH0026', 'D006', 1),
('CH0027', 'D006', 1),
('CH0028', 'D006', 1),
('CH0029', 'D006', 1),
('CH0030', 'D006', 1),
('CH0031', 'D006', 1),
('CH0032', 'D006', 1),
('CH0033', 'D006', 1),
('CH0034', 'D006', 1),
('CH0036', 'D006', 1),
('CH0040', 'D006', 1),
('CH0041', 'D006', 1),
('CH0042', 'D006', 1),
('CH0044', 'D006', 1),
('CH0045', 'D006', 1),
('CH0049', 'D006', 1),
('CH0050', 'D006', 1),
('CH0052', 'D006', 1),
('CH0053', 'D006', 1),
('CH0054', 'D006', 1),
('CH0056', 'D006', 1),
('CH0057', 'D001', 1),
('CH0058', 'D001', 1),
('CH0059', 'D001', 1),
('CH0059', 'D004', 1),
('CH0060', 'D001', 1),
('CH0060', 'D004', 1),
('CH0061', 'D001', 1),
('CH0061', 'D004', 1),
('CH0062', 'D001', 1),
('CH0063', 'D001', 1),
('CH0064', 'D001', 1),
('CH0065', 'D001', 1),
('CH0066', 'D001', 1),
('CH0067', 'D004', 1),
('CH0068', 'D004', 1),
('CH0072', 'D002', 1),
('CH0073', 'D002', 1),
('CH0074', 'D002', 1),
('CH0074', 'D005', 1),
('CH0075', 'D002', 1),
('CH0075', 'D005', 1),
('CH0076', 'D002', 1),
('CH0076', 'D005', 1),
('CH0077', 'D002', 1),
('CH0077', 'D005', 1),
('CH0078', 'D002', 1),
('CH0079', 'D002', 1),
('CH0079', 'D005', 1),
('CH0080', 'D002', 1),
('CH0080', 'D005', 1),
('CH0081', 'D002', 1),
('CH0081', 'D005', 1),
('CH0083', 'D005', 1),
('CH0085', 'D005', 1),
('CH0086', 'D005', 1),
('CH0087', 'D004', 1),
('CH0088', 'D004', 1),
('CH0097', 'D004', 1),
('CH0099', 'D004', 1),
('CH0100', 'D004', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giangvien`
--

CREATE TABLE `giangvien` (
  `MaGV` varchar(11) NOT NULL,
  `MaKhoa` varchar(11) NOT NULL,
  `Ho` varchar(255) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` varchar(20) NOT NULL,
  `TrangThai` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `giangvien`
--

INSERT INTO `giangvien` (`MaGV`, `MaKhoa`, `Ho`, `Ten`, `NgaySinh`, `GioiTinh`, `TrangThai`) VALUES
('GV001', 'K010', 'Nguyễn Thanh', 'Sang', '1984-05-01', 'Nam', 1),
('GV002', 'K018', 'Vũ Chính', 'Trị', '2978-05-01', 'Nam', 1),
('GV003', 'K007', 'Nguyễn Ngoại', 'Ngữ', '2001-05-01', 'Nam', 1),
('GV004', 'K010', 'Trần Thông', 'Tin', '1986-05-23', 'Nam', 1),
('GV005', 'K001', 'Trần Toán Tự', 'Nhiên', '2001-05-01', 'Nam', 1),
('GV006', 'K018', 'Trần Chính', 'Trị', '1984-12-13', 'Nữ', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gv_mh`
--

CREATE TABLE `gv_mh` (
  `MaPhanCong` varchar(11) NOT NULL,
  `MaGV` varchar(11) NOT NULL,
  `MaMon` varchar(11) NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `gv_mh`
--

INSERT INTO `gv_mh` (`MaPhanCong`, `MaGV`, `MaMon`, `TrangThai`) VALUES
('PC001', 'GV001', 'MH023', 1),
('PC002', 'GV002', 'MH001', 1),
('PC003', 'GV006', 'MH002', 1),
('PC004', 'GV002', 'MH003', 1),
('PC005', 'GV006', 'MH004', 1),
('PC006', 'GV002', 'MH002', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `MaKhoa` varchar(11) NOT NULL,
  `TenKhoa` varchar(255) NOT NULL,
  `TrangThai` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khoa`
--

INSERT INTO `khoa` (`MaKhoa`, `TenKhoa`, `TrangThai`) VALUES
('K000', 'K000', 1),
('K001', 'Sư Phạm Khoa Học Tự Nhiên ', 1),
('K002', 'Toán - Ứng dụng', 1),
('K003', 'Sư Phạm Khoa Học Xã Hội ', 1),
('K004', 'Giáo Dục Tiểu Học', 1),
('K005', 'Giáo Dục Mần Non', 1),
('K006', 'Sư Phạm Kỹ Thuật', 1),
('K007', 'Ngoại Ngữ', 1),
('K008', 'Mỹ Thuật', 1),
('K009', 'Nghệ Thuật', 1),
('K010', 'Công Nghệ Thông Tin', 1),
('K011', 'Quản Trị Kinh Doanh', 1),
('K012', 'Thư Viện Văn Phòng', 1),
('K013', 'Quan Hệ Quốc Tế', 1),
('K014', 'Tài Chính - Kế Toán ', 1),
('K015', 'Khoa Học Môi Trường', 1),
('K016', 'Giáo Dục', 1),
('K017', 'Điện Tử Viễn Thông', 1),
('K018', 'Giáo Dục Chính Trị', 1),
('K019', 'Luật', 1),
('K020', 'Giáo Dục Quốc Phòng - An Ninh và Giáo Dục Thể Chất', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kythi`
--

CREATE TABLE `kythi` (
  `MaKyThi` varchar(11) NOT NULL,
  `TenKyThi` text NOT NULL,
  `NgayBatDau` date NOT NULL,
  `NgayKetThuc` date NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `kythi`
--

INSERT INTO `kythi` (`MaKyThi`, `TenKyThi`, `NgayBatDau`, `NgayKetThuc`, `TrangThai`) VALUES
('KT01', 'Kết Thúc Học Phần Học Kì I năm học 2020-2021', '2021-02-15', '2021-02-26', 0),
('KT02', 'Kết thúc học phần học kỳ II năm học 2020-2021', '2021-05-05', '2021-05-15', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `MaLop` varchar(11) NOT NULL,
  `MaKhoa` varchar(11) NOT NULL,
  `MaCoVan` varchar(11) NOT NULL,
  `TenLop` varchar(256) NOT NULL,
  `TrangThai` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `lop`
--

INSERT INTO `lop` (`MaLop`, `MaKhoa`, `MaCoVan`, `TenLop`, `TrangThai`) VALUES
('L000', 'K000', 'GV001', 'NguNguNgu', 1),
('L001', 'K010', 'GV001', 'Lớp Java', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhoc`
--

CREATE TABLE `monhoc` (
  `MaMon` varchar(11) NOT NULL,
  `TenMon` varchar(255) NOT NULL,
  `SoTinChi` int(11) NOT NULL,
  `TrangThai` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `monhoc`
--

INSERT INTO `monhoc` (`MaMon`, `TenMon`, `SoTinChi`, `TrangThai`) VALUES
('MH001', 'Triết học Mác - Lênin', 3, 1),
('MH002', 'Kinh tế chính trị Mác - Lênin', 3, 1),
('MH003', 'Chủ nghĩa xã hội khoa học', 4, 1),
('MH004', 'Tư tưởng Hồ Chí Minh', 2, 0),
('MH005', 'Lịch sử Đảng Cộng sản Việt Nam', 2, 0),
('MH006', 'GD quốc phòng - An ninh 1', 2, 0),
('MH007', 'GD quốc phòng - An ninh 2', 2, 0),
('MH008', 'Tiếng Anh I', 2, 0),
('MH009', 'Tiếng Anh II', 2, 0),
('MH010', 'Tiếng Anh III', 3, 0),
('MH011', 'Pháp luật đại cương', 2, 0),
('MH012', 'Phương pháp NCKH trong CNTT', 2, 0),
('MH013', 'Xác suất thống kê A', 3, 0),
('MH014', 'Giải tích', 4, 0),
('MH015', 'Đại số', 4, 0),
('MH016', 'Cơ sở lập trình', 3, 0),
('MH017', 'Kỹ thuật lập trình', 3, 0),
('MH018', 'Kiến trúc máy tính', 3, 0),
('MH019', 'Hệ điều hành', 3, 0),
('MH020', 'Toán rời rạc', 3, 0),
('MH021', 'Lý thuyết đồ thị', 3, 0),
('MH022', 'Mạng máy tính', 4, 0),
('MH023', 'Lập trình Java', 4, 1),
('MH024', 'Phát triển ứng dụng web 1', 3, 0),
('MH025', 'Cấu trúc dữ liệu và giải thuật', 4, 0),
('MH026', 'Cơ sở dữ liệu', 4, 0),
('MH027', 'Lập trình hướng đối tượng', 4, 0),
('MH028', 'Cơ sở trí tuệ nhân tạo', 4, 0),
('MH029', 'Phát triển ứng dụng web 2', 3, 0),
('MH030', 'Công nghệ phần mền', 4, 0),
('MH031', 'Phân tích thiết kế hệ thống thông tin', 4, 0),
('MH032', 'Phân tích thiết kế hướng đối tượng', 4, 0),
('MH033', 'Hệ điều hành mã nguồn mở', 3, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` varchar(11) NOT NULL,
  `MaKhoa` varchar(11) NOT NULL,
  `Ho` varchar(255) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` varchar(20) NOT NULL,
  `TrangThai` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `MaKhoa`, `Ho`, `Ten`, `NgaySinh`, `GioiTinh`, `TrangThai`) VALUES
('NV001', 'K010', 'Phan Anh ', 'Quân', '2001-05-01', 'Nam', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quyen`
--

CREATE TABLE `quyen` (
  `MaChucVu` varchar(11) NOT NULL,
  `TenChucVu` varchar(255) NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `quyen`
--

INSERT INTO `quyen` (`MaChucVu`, `TenChucVu`, `TrangThai`) VALUES
('CV00', 'Sinh Viên', 1),
('CV01', 'Admin', 1),
('CV02', 'Giảng Viên huhu', 1),
('CV03', 'Nhân Viên', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `MaSV` varchar(11) NOT NULL,
  `MaLop` varchar(11) NOT NULL,
  `Ho` varchar(255) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` varchar(20) NOT NULL,
  `TrangThai` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`MaSV`, `MaLop`, `Ho`, `Ten`, `NgaySinh`, `GioiTinh`, `TrangThai`) VALUES
('SV001', 'L001', 'Phan Anh', 'Quân', '2001-05-01', 'Nam', 1),
('SV002', 'L001', 'Trần Thị Thu', 'Thanh', '2000-02-02', 'Nữ', 1),
('SV003', 'L001', 'Phan Thanh', 'Thắng', '2001-05-01', 'Nam', 1),
('SV004', 'L001', 'Cao Nguyễn Phương', 'Trang', '2001-01-01', 'Nữ', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien_mon`
--

CREATE TABLE `sinhvien_mon` (
  `MaSV` varchar(11) NOT NULL,
  `MaMon` varchar(11) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sinhvien_mon`
--

INSERT INTO `sinhvien_mon` (`MaSV`, `MaMon`, `TrangThai`) VALUES
('SV001', 'MH001', 1),
('SV001', 'MH002', 1),
('SV001', 'MH003', 0),
('SV001', 'MH023', 1),
('SV002', 'MH001', 0),
('SV002', 'MH002', 1),
('SV002', 'MH003', 0),
('SV002', 'MH023', 1),
('SV003', 'MH003', 0),
('SV003', 'MH023', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `MaUser` varchar(11) NOT NULL,
  `MatKhau` varchar(255) DEFAULT '123456',
  `MaChucVu` varchar(11) NOT NULL,
  `TrangThai` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`MaUser`, `MatKhau`, `MaChucVu`, `TrangThai`) VALUES
('AD001', '123456', 'CV01', 1),
('AD002', '123456', 'CV01', 1),
('AD003', '123456', 'CV01', 1),
('AD004', '123456', 'CV01', 1),
('AD005', '123456', 'CV01', 1),
('AD006', '123456', 'CV01', 1),
('GV001', '123456', 'CV02', 1),
('GV002', '123456', 'CV02', 1),
('GV003', '123456', 'CV02', 1),
('GV004', '123456', 'CV02', 1),
('GV005', '123456', 'CV02', 1),
('GV006', '123456', 'CV02', 1),
('NV001', '123456', 'CV03', 1),
('SV001', '123456', 'CV00', 1),
('SV002', '123456', 'CV00', 1),
('SV003', '123456', 'CV00', 1),
('SV004', '123456', 'CV00', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`MaAd`);

--
-- Chỉ mục cho bảng `baithi`
--
ALTER TABLE `baithi`
  ADD PRIMARY KEY (`MaSV`,`MaDe`),
  ADD KEY `MaDe` (`MaDe`);

--
-- Chỉ mục cho bảng `baithi_kythi`
--
ALTER TABLE `baithi_kythi`
  ADD PRIMARY KEY (`MaSV`,`MaDe`),
  ADD KEY `MaDe` (`MaDe`),
  ADD KEY `MaKyThi` (`MaKyThi`);

--
-- Chỉ mục cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD PRIMARY KEY (`MaCH`),
  ADD KEY `cauhoi_MaPhanCong` (`MaPhanCong`);

--
-- Chỉ mục cho bảng `chitietquyen`
--
ALTER TABLE `chitietquyen`
  ADD PRIMARY KEY (`MaPhanQuyen`),
  ADD KEY `MaChucVu` (`MaChucVu`),
  ADD KEY `maquyen_maquyen` (`MaQuyen`);

--
-- Chỉ mục cho bảng `chucnang`
--
ALTER TABLE `chucnang`
  ADD PRIMARY KEY (`MaQuyen`);

--
-- Chỉ mục cho bảng `dethi`
--
ALTER TABLE `dethi`
  ADD PRIMARY KEY (`MaDe`),
  ADD KEY `MaMon` (`MaMon`),
  ADD KEY `MaKyThi` (`MaKyThi`);

--
-- Chỉ mục cho bảng `de_cauhoi`
--
ALTER TABLE `de_cauhoi`
  ADD PRIMARY KEY (`MaCH`,`MaDe`),
  ADD UNIQUE KEY `MaCH` (`MaCH`,`MaDe`),
  ADD KEY `MaDe` (`MaDe`);

--
-- Chỉ mục cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD PRIMARY KEY (`MaGV`),
  ADD KEY `MaKhoa` (`MaKhoa`);

--
-- Chỉ mục cho bảng `gv_mh`
--
ALTER TABLE `gv_mh`
  ADD PRIMARY KEY (`MaPhanCong`),
  ADD KEY `gv_mh_MaGV` (`MaGV`),
  ADD KEY `gv_mh_MaMon` (`MaMon`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`MaKhoa`);

--
-- Chỉ mục cho bảng `kythi`
--
ALTER TABLE `kythi`
  ADD PRIMARY KEY (`MaKyThi`);

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`MaLop`),
  ADD KEY `MaCoVan` (`MaCoVan`),
  ADD KEY `MaKhoa` (`MaKhoa`);

--
-- Chỉ mục cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`MaMon`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNV`),
  ADD KEY `MaKhoa` (`MaKhoa`);

--
-- Chỉ mục cho bảng `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`MaChucVu`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`MaSV`),
  ADD KEY `sinhvien_ibfk_2` (`MaLop`);

--
-- Chỉ mục cho bảng `sinhvien_mon`
--
ALTER TABLE `sinhvien_mon`
  ADD PRIMARY KEY (`MaSV`,`MaMon`),
  ADD KEY `MaMon` (`MaMon`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`MaUser`),
  ADD KEY `User_machucvu` (`MaChucVu`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`MaAd`) REFERENCES `user` (`MaUser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `baithi`
--
ALTER TABLE `baithi`
  ADD CONSTRAINT `baithi_ibfk_1` FOREIGN KEY (`MaSV`) REFERENCES `sinhvien` (`MaSV`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `baithi_ibfk_2` FOREIGN KEY (`MaDe`) REFERENCES `dethi` (`MaDe`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `baithi_kythi`
--
ALTER TABLE `baithi_kythi`
  ADD CONSTRAINT `baithi_kythi_ibfk_1` FOREIGN KEY (`MaSV`) REFERENCES `baithi` (`MaSV`),
  ADD CONSTRAINT `baithi_kythi_ibfk_2` FOREIGN KEY (`MaDe`) REFERENCES `baithi` (`MaDe`),
  ADD CONSTRAINT `baithi_kythi_ibfk_3` FOREIGN KEY (`MaKyThi`) REFERENCES `dethi` (`MaDe`);

--
-- Các ràng buộc cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD CONSTRAINT `cauhoi_MaPhanCong` FOREIGN KEY (`MaPhanCong`) REFERENCES `gv_mh` (`MaPhanCong`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitietquyen`
--
ALTER TABLE `chitietquyen`
  ADD CONSTRAINT `chitietquyen_ibfk_2` FOREIGN KEY (`MaChucVu`) REFERENCES `quyen` (`MaChucVu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `maquyen_maquyen` FOREIGN KEY (`MaQuyen`) REFERENCES `chucnang` (`MaQuyen`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `dethi`
--
ALTER TABLE `dethi`
  ADD CONSTRAINT `dethi_ibfk_1` FOREIGN KEY (`MaMon`) REFERENCES `monhoc` (`MaMon`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dethi_ibfk_2` FOREIGN KEY (`MaKyThi`) REFERENCES `kythi` (`MaKyThi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `de_cauhoi`
--
ALTER TABLE `de_cauhoi`
  ADD CONSTRAINT `de_cauhoi_ibfk_1` FOREIGN KEY (`MaCH`) REFERENCES `cauhoi` (`MaCH`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `de_cauhoi_ibfk_2` FOREIGN KEY (`MaDe`) REFERENCES `dethi` (`MaDe`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD CONSTRAINT `giangvien_ibfk_1` FOREIGN KEY (`MaKhoa`) REFERENCES `khoa` (`MaKhoa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `giangvien_ibfk_2` FOREIGN KEY (`MaGV`) REFERENCES `user` (`MaUser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `gv_mh`
--
ALTER TABLE `gv_mh`
  ADD CONSTRAINT `gv_mh_MaGV` FOREIGN KEY (`MaGV`) REFERENCES `giangvien` (`MaGV`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gv_mh_MaMon` FOREIGN KEY (`MaMon`) REFERENCES `monhoc` (`MaMon`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `lop_ibfk_1` FOREIGN KEY (`MaCoVan`) REFERENCES `giangvien` (`MaGV`),
  ADD CONSTRAINT `lop_ibfk_2` FOREIGN KEY (`MaKhoa`) REFERENCES `khoa` (`MaKhoa`);

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`MaKhoa`) REFERENCES `khoa` (`MaKhoa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nhanvien_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `user` (`MaUser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD CONSTRAINT `sinhvien_ibfk_1` FOREIGN KEY (`MaSV`) REFERENCES `user` (`MaUser`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sinhvien_ibfk_2` FOREIGN KEY (`MaLop`) REFERENCES `lop` (`MaLop`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sinhvien_mon`
--
ALTER TABLE `sinhvien_mon`
  ADD CONSTRAINT `sinhvien_mon_ibfk_1` FOREIGN KEY (`MaMon`) REFERENCES `monhoc` (`MaMon`),
  ADD CONSTRAINT `sinhvien_mon_ibfk_2` FOREIGN KEY (`MaSV`) REFERENCES `sinhvien` (`MaSV`);

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`MaChucVu`) REFERENCES `quyen` (`MaChucVu`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
