<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class FrontPageController extends Controller
{
    public function Index()
    {

        return view('front_page.index');
    }
}