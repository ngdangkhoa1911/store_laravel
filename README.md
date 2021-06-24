<!-- PROJECT LOGO -->
<br />
<p align="center">
 <p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>
</p>



<!-- ABOUT THE PROJECT -->
## About The Project



<!-- GETTING STARTED -->
## Các cài đặt trước
1. Cài đặt gói phần mềm XAMPP bao gồm webserver Apache, PHP, MySQL
2. Sử dụng đường dẫn để thực thi project:
```sh
 http://localhost
  ```
3. Cài đặt Composer từ file Composer-Setup.exe
4. Cài đặt Laravel và tạo một project laravel store_laravel
 ```sh
  $ composer create-project --prefer-dist laravel/laravel store_laravel
  ```
 
### Thay đổi view mặc định của laravel

1. Các file tự động tạo khi cài đặt laravel sẽ được copy ra ngoài đường dẫn app/
2. Trong thư mục public bây giờ sẽ bao gồm:
![image](https://user-images.githubusercontent.com/62826665/123197103-3f4c0000-d4d5-11eb-83a8-1bf7bb93766d.png)
3. Ngoài ra trong thư mực `resources/views` sẽ gồm 1 trang chính (trang chủ) là layout.blade.php và 2 trang con được kế thừa từ trang layout trong` views/pages `gồm: detail.blade.php và list.blade.php.
4. Việc kế thừa các trang con sẽ thông qua cú pháp
   ```sh
        @extends('layout')
        @section('content')
            Các thẻ cần được hiển thị
        @endsection
   ```
5. Thay đổi lại liên kết file css và js được lưu trong folder public/frontend 
   ```sh
         <link rel="stylesheet" href="{{URL::asset('public/frontend/css/style.css')}}">
        <script src="{{URL::asset('public/frontend/js/main.js')}}"></script>
   ```
6. Sử dụng fontawesome thông qua cloudflare và bootstrap 4
### Controller để điều khiển các view

1. Trong thư mục `app/Http/Controllers` tạo một ListController bằng git bash theo câu lệnh
    ```sh
        php artisan make:controller ListController
    ```
2. Tạo một function index() để trả về view của list.blade.php
   ```sh
        public function index(){
            return view ('pages.list');
        }
   ```
3. Ở thư mục routes sẽ có một fie web.php, sử dụng để thiết lập một đường dẫn `\list` và gọi function vừa mới tạo trong ListController 
   ```sh
        Route::get('/list', 'App\Http\Controllers\ListController@index');
   ```
4. Trong `layout.blade.php` chỉ cần gọi `yeild('content')` tại vị trí hiển thị 2 view kế thừa
 



<!-- USAGE EXAMPLES -->
## Usage

Use this space to show useful examples of how a project can be used. Additional screenshots, code examples and demos work well in this space. You may also link to more resources.

_For more examples, please refer to the [Documentation](https://example.com)_



<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/othneildrew/Best-README-Template/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

Your Name - [@your_twitter](https://twitter.com/your_username) - email@example.com

Project Link: [https://github.com/your_username/repo_name](https://github.com/your_username/repo_name)



## Source code test
<p>URL để test: http://localhost/mystore/list</p>
<p>
Database được lưu trong: /store_laravel/product.sql</p>
<p>Giao diện website được lưu trong file view của project: /store_laravel/resources/views/</p>


