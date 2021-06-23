-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 23, 2021 lúc 04:25 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `product`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_list`
--

CREATE TABLE `product_list` (
  `id` int(20) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `img` text NOT NULL,
  `desc` text NOT NULL,
  `price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_list`
--

INSERT INTO `product_list` (`id`, `name`, `img`, `desc`, `price`) VALUES
(1, 'Laptop ASUS X415EA-EK047T 90NB0TT1-M00470 ( 14\" Full HD/Intel Core i3-1115G4/4GB/256GB SSD/Windows 10 Home 64-bit/1.5kg)', 'https://lh3.googleusercontent.com/LQm4fI6HM0vvALkQVNKypy2vBEL4MLDp-t16nkMMHT2PAUgVbRv53C_w0VDJ-fSblV5j24sqN_rR4cfx5rGjv8s_p5bD=w500-rw', '- CPU: Intel Core i3-1115G4\r\n- Màn hình: 14\" (1920 x 1080)\r\n- RAM: 1 x 4GB Onboard DDR4 2400MHz\r\n- Đồ họa: Intel UHD Graphics\r\n- Lưu trữ: 256GB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 10 Home 64-bit\r\n- Pin: 2 cell 37 Wh Pin liền\r\n- Khối lượng: 1.5 kg', '12.490.000đ'),
(2, 'Máy giặt Aqua Inverter 9.0 KG AQD-A900F.S', 'https://lh3.googleusercontent.com/AUX7y00ptel6aiumIq4YtPF7jKt97DQHNKvtKsBUVWF8IoQ3yoeosTCo7d6gls2M5raqBXGyLTMw2cndsyG-02spkEU96oxB=w500-rw', '- Lồng giặt lớn 525 giặt sạch hơn, giảm xoắn rối\r\n- Công nghệ AI cân bằng khi giặ\r\n- Refresh- Làm mới quần áo bằng hơi nước.\r\n- Tia nước đôi làm sạch mặt trong, vòng đệm cửa\r\n- Vòng đệm ABT – kháng khuẩn 99.99%.', '10.690.000đ'),
(3, 'Máy giặt Aqua Inverter 9.0 KG AQD-A900F.W', 'https://lh3.googleusercontent.com/_EjOAztnMhRGiNhj09RvSCOtFDgaaIZlCULMyKlqY45SSqmDZay__BfOWHnrSvKQ5JJnYw6wAGJ52VvpW9EtNYTi5yIU8kLwNQ=w500-rw', '- Lồng giặt lớn 525 giặt sạch hơn, giảm xoắn rối\r\n- Công nghệ AI cân bằng khi giặ\r\n- Refresh- Làm mới quần áo bằng hơi nước.\r\n- Tia nước đôi làm sạch mặt trong, vòng đệm cửa\r\n- Vòng đệm ABT – kháng khuẩn 99.99%.', '9.790.000đ'),
(4, 'Laptop ASUS Vivobook S533EQ-BN338T ( 15.6\" Full HD/Intel Core i5-1135G7/8GB/512GB SSD/NVIDIA GeForce MX350/Windows 10 Home SL 64-bit/1.6kg)', 'https://lh3.googleusercontent.com/k54ae1hx27gNT2h9YE3FDJqiu4L4WpcshB6lQ3dJxFdJAU2gIiAZLQcSCG_0ZSKMpvPZuNtflD55Bm1kQEGAQlP9lmskApeolQ=w500-rw', '- CPU: Intel Core i5-1135G7\r\n- Màn hình: 15.6\" IPS (1920 x 1080)\r\n- RAM: 8GB Onboard DDR4 3200MHz\r\n- Đồ họa: NVIDIA GeForce MX350 2GB GDDR5 / Intel Iris Xe Graphics\r\n- Lưu trữ: 512GB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 10 Home SL 64-bit\r\n- Pin: 3 cell 50 Wh Pin liền\r\n- Khối lượng: 1.6 kg', '21.690.000đ'),
(5, 'Laptop ASUS Vivobook S533EA-BN293T ( 15.6\" Full HD/Intel Core i5-1135G7/8GB/512GB SSD/Windows 10 Home SL 64-bit/1.6kg)', 'https://lh3.googleusercontent.com/LlFGZ-IAe-ugqu68lmSEsIbrMqNSdnmOeEwDoK8Y0tDdu2EbDzuj6K_0J02U8a4yQazYp1ax6h4HnQb6W69x2dzeTu7dZ2Bl=w500-rw', '- CPU: Intel Core i5-1135G7\r\n- Màn hình: 15.6\" IPS (1920 x 1080)\r\n- RAM: 8GB Onboard DDR4 3200MHz\r\n- Đồ họa: Intel Iris Xe Graphics\r\n- Lưu trữ: 512GB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 10 Home SL 64-bit\r\n- Pin: 3 cell 50 Wh Pin liền\r\n- Khối lượng: 1.6 kg', '20.190.000đ'),
(6, 'Mainboard ASROCK B560M-HDV', 'https://lh3.googleusercontent.com/n5Q-f3NF0_pjG94bII34UbZpo_Ros8bZBJCwC22mdLj3xA-3Wt96ttj2G-4KMpRxgrjWlGq-i9LlA5dkIXeljxYqq-Ut0XY=w500-rw', '- Chuẩn mainboard: Micro-ATX\r\n- Socket: 1200 , Chipset: B560\r\n- Hỗ trợ RAM: 2 khe DDR4, tối đa 64GB\r\n- Lưu trữ: 4 x SATA 3 6Gb/s, 1 x M.2 NVMe, 1 x Ultra M.2 (PCIe & SATA3)\r\n- Cổng xuất hình: 1 x HDMI, 1 x DVI-D, 1 x VGA/D-sub', '2.190.000đ'),
(7, 'Laptop HP 15s-fq2558TU 46M26PA ( 15.6\" HD/Intel Core i7-1165G7/8GB/512GB SSD/Windows 10 Home SL 64-bit/1.7kg)', 'https://lh3.googleusercontent.com/HS9xbSSS9xWADaS51kAry72zohI74ut_yYQzjT4q_vIN72hsmsU19ln9mhLEag9bmFVGM0x2CmosFFm4H3YgigQm9s9lrVhb=w500-rw', '- CPU: Intel Core i7-1165G7\r\n- Màn hình: 15.6\" IPS (1366 x 768)\r\n- RAM: 2 x 4GB DDR4 3200MHz\r\n- Đồ họa: Intel Iris Xe Graphics\r\n- Lưu trữ: 512GB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 10 Home SL 64-bit\r\n- Pin: 3 cell 41 Wh Pin liền\r\n- Khối lượng: 1.7 kg', '18.990.000đ'),
(8, 'Máy giặt sấy Samsung Addwash Inverter 9.5kg WD95T754DBX/SV', 'https://lh3.googleusercontent.com/YoiHhI0ix-kybvzPZTTDqqwCciDT3wN7pwOkL2ea6sZn5eBxV567-t867kQHkrvQ7NHvZ3_ikxDecpQl-RE_T5CFtGC6NeC7=w500-rw', '- Cửa Phụ Thông Minh Add Wash\r\n- Chế Độ Vệ Sinh Drum Clean+\r\n- Hộp Bột Giặt StayClean<\r\n- Chế Độ Ngâm Bubble Soak\r\n- WiFi Embedded\r\n- SmartThings App Support', '14.990.000đ'),
(9, 'Máy giặt Samsung DD Inverter 10 Kg WA10T5260BV', 'https://lh3.googleusercontent.com/z0PG89bGvVU6rNZRlalRblf_15nRMUTVW_fBk9p8vLx5bI6jxjZmp3Ke2r731uTXzDh6G1JzqK-ePJlhB583idE0DKgp5OSj=w500-rw', '- Bộ Lọc Magic Filter\r\n- Cửa Máy Giặt Soft Close\r\n- Chế Độ Eco Tub Clean\r\n- Lồng Giặt Kim Cương\r\n- Ứng Dụng Smart Check\r\n- Bảng Điều Khiển Rear Control', '9.790.000đ'),
(10, 'Máy giặt Samsung Inverter 10kg WW10TP44DSH', 'https://lh3.googleusercontent.com/Gs4BJb3Kx2JU7hbxKTenrt8bzZfEIR6pY7yFKzyKI_u7YtRpu2xdDuw43Hlv6ObT6eDjYja9oUaduxo1ifKDjoruLy2b4Wpw=w500-rw', '-EcoBubble™ giặt sạch sâu, bảo vệ sợi vải\r\n-Sạch Siêu Tốc QuickDrive\r\n-Giặt Hơi Nước Diệt Khuẩn Hygiene Steam\r\n-Giảm Rung Ồn VRT Plus\r\n-Động Cơ Digital Inverter\r\n-Chế Độ Vệ Sinh Drum Clean+\r\n-Chế Độ Ngâm Bubble Soak', '12.890.000đ'),
(11, 'Máy giặt Samsung AI Inverter 10kg WW10T634DLX', 'https://lh3.googleusercontent.com/sHfLGhTdJMs3yQyfF_hLHU7Ha0nmsIjfLjrS4_W-lIedhzOSOlv7tezQKTYh0hLNsS7-KZ7MCsUi48tSQsJ4zoEb25UFUJZRvQ=w500-rw', '- Giặt Hơi Nước Diệt Khuẩn Hygiene Steam\r\n- Giảm Rung Ồn VRT Plus\r\n- Động Cơ Digital Inverter\r\n- Chế Độ Vệ Sinh Drum Clean+\r\n- Chế Độ Ngâm Bubble Soak', '12.990.000đ'),
(12, 'CPU INTEL Core i9-11900F (8C/16T, 2.5GHz, 16MB) - 1200', 'https://lh3.googleusercontent.com/Rb4m25Tu2r_Y573PHPnhXe6HV6z8U1XIn-OpRplXjUZWM0hU1mkv9VTAdU0WTQeXQgVnLNoR_s1IxrqbChfbFyGBNZgoKNIpig=w500-rw', 'Socket: 1200, Intel Core thế hệ thứ 11\r\nTốc độ: 2.5GHz (8nhân, 16 luồng)\r\nBộ nhớ đệm: 16MB', '12.600.000đ'),
(13, 'Màn hình LCD HP V19 (1366 x 768/TN/60Hz/5 ms)', 'https://lh3.googleusercontent.com/CDIz84q02SRgGcIf3YsXgKwG_d8sqvDBTtU5R-gZml9qy0QQC8lGA_zta0jM2KO-MsuK7-DWWfAV1qi9aIqIF2dOtAfgeXA=w500-rw', '- Kích thước: 18.5\" (1366 x 768), Tỷ lệ 16:9\r\n- Tấm nền TN\r\n- Tần số quét: 60Hz , Thời gian phản hồi 5 ms\r\n- Cổng hình ảnh: , 1 x VGA/D-sub', '2.390.000đ'),
(14, 'Màn hình LCD Lenovo Think Vision E22-20 (1920 x 1080/IPS/60Hz/14 ms)', 'https://lh3.googleusercontent.com/rMU6oZsT9RYEdMNKnL9E_byHBkaR9_iy5kNkObGdhVgGQZ1yuDBvF43pV3reszTixuq4pJyMJhHrzh1ixvN9g7p2smBcA48=w500-rw', '- Kích thước: 21.5\" (1920 x 1080), Tỷ lệ 16:9\r\n- Tấm nền IPS, Góc nhìn: 178 (H) / 178 (V)\r\n- Tần số quét: 60Hz , Thời gian phản hồi 14 ms\r\n- HIển thị màu sắc: 16.7 triệu màu\r\n- Cổng hình ảnh: 1 x DisplayPort, 1 x HDMI, 1 x VGA/D-sub', '3.190.000đ'),
(15, 'CAMERA XIAOMI MI 360° 1080P', 'https://lh3.googleusercontent.com/-RJ2XIfvPyTaZ1z_c3LpKX2vs5rmaQfsYohjZ4rQyNrzE9_0RlLjp3TeVqbRHOK1bmwIMHK0vugGB5giCu6yBOJ8MP6UGoZaDQ=w500-rw', '- Thẻ nhớ: Micro SD (lên đến 32 GB)\r\n- Hệ điều hành tương thích: Android 4.4, iOS 9.0 trở lên', '949.000đ');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `product_list`
--
ALTER TABLE `product_list`
  ADD UNIQUE KEY `id_product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
