<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Bookings;
use Notification;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Response;
use App\Notifications\SendEmailNotification;
use Illuminate\Support\Carbon;

class AdminController extends Controller
{

    public function show_bookings(Request $request): Response
    {
        // $bookings=bookings::all();
        // return view('admin.view_booking', compact('bookings'));


        $query = Bookings::query();
        $dateFilter = $request->date_filter;

        switch($dateFilter){
            case 'today':
                $query->whereDate('date',Carbon::today());
                break;
            case 'yesterday':
                $query->wheredate('date',Carbon::yesterday());
                break;
            case 'this_week':
                $query->whereBetween('date',[Carbon::now()->startOfWeek(),Carbon::now()->endOfWeek()]);
                break;
            case 'last_week':
                $query->whereBetween('date',[Carbon::now()->subWeek(),Carbon::now()]);
                break;
            case 'this_month':
                $query->whereMonth('date',Carbon::now()->month);
                break;
            case 'last_month':
                $query->whereMonth('date',Carbon::now()->subMonth()->month);
                break;
            case 'this_year':
                $query->whereYear('date',Carbon::now()->year);
                break;
            case 'last_year':
                $query->whereYear('date',Carbon::now()->subYear()->year);
                break;                       
        }
            
        $bookings = $query->get();

        return response()->view('admin.view_booking',compact('bookings','dateFilter'));
    }
    public function create_booking()
    {
        $bookings=bookings::all();
        return view('admin.booking', compact('bookings'));
    }
    public function add_booking(Request $request)
    {
        $bookings=new bookings;
        $bookings->date=$request->date;
        $bookings->reason=$request->reason;

        $bookings->save();

        // return redirect()->back();
        // $bookings=bookings::all();
        // return view('admin.view_booking', compact('bookings'));

        
        $query = Bookings::query();
        $dateFilter = $request->date_filter;

        switch($dateFilter){
            case 'today':
                $query->whereDate('date',Carbon::today());
                break;
            case 'yesterday':
                $query->wheredate('date',Carbon::yesterday());
                break;
            case 'this_week':
                $query->whereBetween('date',[Carbon::now()->startOfWeek(),Carbon::now()->endOfWeek()]);
                break;
            case 'last_week':
                $query->whereBetween('date',[Carbon::now()->subWeek(),Carbon::now()]);
                break;
            case 'this_month':
                $query->whereMonth('date',Carbon::now()->month);
                break;
            case 'last_month':
                $query->whereMonth('date',Carbon::now()->subMonth()->month);
                break;
            case 'this_year':
                $query->whereYear('date',Carbon::now()->year);
                break;
            case 'last_year':
                $query->whereYear('date',Carbon::now()->subYear()->year);
                break;                       
        }
            
        $bookings = $query->get();

        return response()->view('admin.view_booking',compact('bookings','dateFilter'));
    }



}
