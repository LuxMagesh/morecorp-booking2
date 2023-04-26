<?php

namespace App\Http\Controllers;

use App\Models\Bookings;
use Illuminate\Http\Request;

class BookingsController extends Controller
{
         /**
     * Display a listing of the resource.
     */
    public function index(Request $request): Response
    {
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

        return response()->view('index',compact('bookings','dateFilter'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Bookings $bookings)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Bookings $bookings)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Bookings $bookings)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Bookings $bookings)
    {
        //
    }
}
