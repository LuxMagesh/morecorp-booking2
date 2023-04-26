<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AdminController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

route::get('/', [HomeController::class, 'index']);

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});

// route::get('/', [HomeController::class, 'home']);
route::get('/redirect', [HomeController::class, 'redirect']);
route::post('/add_booking', [AdminController::class, 'add_booking']);
route::get('/create_booking', [AdminController::class, 'create_booking']);
route::get('/show_bookings', [AdminController::class, 'show_bookings']);

