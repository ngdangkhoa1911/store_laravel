<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use App\Http\Requests;
use Illuminate\Support\Facades\Redirect;
session_start();

class ListController extends Controller
{
    public function index(){
        return view ('pages.list');
    }
    public function show(){
        $product = DB::select('select * from product_list');
        return view('pages.list') -> with('product', $product);
    }
    public function viewDetail($id){
        $data = DB::table('product_list')->where('id', $id)->first();
        return view('pages.detail') ->with('product_detail', $data);
    }
        
}
