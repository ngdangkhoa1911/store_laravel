@extends('layout')
@section('content')
<div class="container">
<h2>New Arrivals</h2>
    <div class="row">
        <?php foreach($product as $item) :?>
        <div class="col-md-3" >
            <div class="product-top">   
                <img src="{{$item -> img}}" alt="">
                <div class="overplay">
                    <button type="submit" class="btn btn-secondary" title="Quick Shop" >
                        <i class="fa fa-eye" aria-hidden="true"></i>
                    </button>
                    <button type="button" class="btn btn-secondary" title="Add to WishList">
                        <i class="fa fa-heart" aria-hidden="true"></i>
                    </button>
                    <button type="button" class="btn btn-secondary" title="Add to Card">
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                    </button>
                </div>
            </div>
            <div class="product-bottom text-center">
                <h6>{{ $item -> name}}</h6>
                <h5>{{ $item -> price}}</h5>
                <a href="{{URL::route('show',['id' => $item ->id])}}" style="color: grey">Chi tiết sản phẩm</a>
            </div>

        </div>
        <?php endforeach ;?>
    </div> 
</div>
   


@endsection