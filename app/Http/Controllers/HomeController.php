<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Models\Bookings;
use Session;
use Stripe;


class HomeController extends Controller
{

    public function index()
    {
        // $bookings=bookings::all();
        // return view('admin.booking', compact('bookings'));
        // return view('auth.login');
          return view('admin.home');
    }

    public function redirect()
    {
        $usertype=Auth::user()->usertype;
        if($usertype=='1')
            {
                // return view('admin.home');
                $bookings=bookings::all();
                return view('admin.booking', compact('bookings'));
            }
        else
            {
                return view('home.booking');
            }
    }

   
    

}
