@extends('layout')
@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <img src="{{$product_detail->img}}" alt="" style="width:100%">
        </div>
        <div class="col-md-6">
            <h3>{{$product_detail->name}}</h3>
            <h4 style="font-weight: 800">{{$product_detail->price}}</h4>
            <input type="button" value="Add to cart">
            <h3>Details:</h3>
            <p>{{$product_detail->desc}}</p>    
        </div>
    </div>
</div>

@endsection