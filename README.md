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
 

## Database 

Tạo một bảng `product_list` với database là `product` gổm ID, tên sản phẩm, mô tả, hình ảnh và giá cả.

![image](https://user-images.githubusercontent.com/62826665/123199753-a8ce0d80-d4d9-11eb-8032-c426d9dce070.png)

Trong file `.env` thay đổi tên database và các port sử dụng, điền username và password nếu có (Ở đây dùng root là vì dùng mặc định).
![image](https://user-images.githubusercontent.com/62826665/123200055-3b6eac80-d4da-11eb-97e7-dcff5da8428f.png)

Tiếp tục sửa tương tự trong file `\config\database.php`.
![image](https://user-images.githubusercontent.com/62826665/123200168-6fe26880-d4da-11eb-8633-a6fe1b1df8f4.png)


## Đổ dữ liệu vào list.blade.php
Trong `ListControler.php` chạy đoạn mã để kết nối cơ sở dữ liệu
```sh
    use Illuminate\Http\Request;
    use DB;
    use Session;
    use App\Http\Requests;
    use Illuminate\Support\Facades\Redirect;
    session_start();
```
Để hiển thị và đồng thời trả về view cho `list.blade.php` ở đây dùng câu lệnh select để lấy hết các cột trong bảng product_list và đặt tên cho câu select này là `product`.
```sh
    public function show(){
        $product = DB::select('select * from product_list');
        return view('pages.list') -> with('product', $product);
    }
```     
Gọi route để chạy function
```sh
    Route::get('/list', 'App\Http\Controllers\ListController@show');
```
Trong file `list.blade.php` sẽ chạy một dòng `foreach($product as $item) :` để duyệt qua lần lượt từng dòng và để gán các giá trị vào các thẻ. Dùng vòng lặp để lặp lại nhiều sản phẩm và tự sinh các thẻ `div`, gán giá trị bằng cú pháp `{{$item -> tên cột}}`
```sh
    <img src="{{$item -> img}}" alt="">
    <h6>{{ $item -> name}}</h6>
    <h5>{{ $item -> price}}</h5>
```
    

## Liên kết dựa vào id và đổ dữ liệu vào detail.blade.php   

Cũng trong `ListController.php` ở dây trong function `viewDetail()` sẽ truyền vào một biến id để phân biệt các phần tử trong `list.blade.php` khi chúng ta onclick, data ở đây cũng sẽ lấy dựa theo id đầu vào và trả về view `detail.blade.php`.
```sh
     public function viewDetail($id){
        $data = DB::table('product_list')->where('id', $id)->first();
        return view('pages.detail') ->with('product_detail', $data);
    }
```
Tiếp tục gọi route để chạy function nhưng mà lần này sẽ gán tên là show và nhận id cho đường link
```sh
    Route::get('/detail/{id}', 'App\Http\Controllers\ListController@viewDetail') -> name('show');
```
Ở trong file `list.blade.php`sẽ có một đường dẫn 'Chi tiết sản phẩm' với vòng lệnh foreach hồi nãy thì bây giờ với mỗi lần duyệt qua ta sẽ gán cho thẻ a này một cái id và khi click vào id đó thì nó sẽ dẫn đến câu lệnh điều kiện `where('id', '$id')` hồi nãy chúng ta tạo trong function.
```sh
     <a href="{{URL::route('show',['id' => $item ->id])}}" style="color: grey">Chi tiết sản phẩm</a>
```
Trong `detail.blade.php` tiến hành đổ dữ liệu từ function `viewDetail()` tương tự như `list.blade.php` 


## Source code test
URL để test: 
```sh
    http://localhost/mystore/list
```
Database được lưu trong:
```sh
    /store_laravel/product.sql
```



