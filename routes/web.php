<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SliderController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::resource('sliders',SliderController::class);

Route::get('/home', function () {
    return view('backend.home');
});

Route::get('/table', function () {
    return view('backend.table');
});

// Route::get('/', function () {
//     return view('template.index');
// });


// Route::get('/404', function () {
//     return view('template.404');
// });

// Route::get('/about', function () {
//     return view('template.about');
// });

// Route::get('/blog-details', function () {
//     return view('template.blog-details');
// });

// Route::get('/blog', function () {
//     return view('template.blog');
// });

// Route::get('/cart', function () {
//     return view('template.cart');
// });

// Route::get('/checkout', function () {
//     return view('template.checkout');
// });

// Route::get('/contact', function () {
//     return view('template.contact');
// });

// Route::get('/faq', function () {
//     return view('template.faq');
// });

// Route::get('/forget-password', function () {
//     return view('template.forget-password');
// });

// Route::get('/index-2', function () {
//     return view('template.index-2');
// });

// Route::get('/index', function () {
//     return view('template.index');
// });

// Route::get('/login', function () {
//     return view('template.login');
// });

// Route::get('/my-account', function () {
//     return view('template.my-account');
// });

// Route::get('/privacy-policy', function () {
//     return view('template.privacy-policy');
// });

// Route::get('/product-details', function () {
//     return view('template.product-details');
// });

// Route::get('/register', function () {
//     return view('template.register');
// });

// Route::get('/services', function () {
//     return view('template.services');
// });

// Route::get('/tracking', function () {
//     return view('template.tracking');
// });

// Route::get('/wishlist', function () {
//     return view('template.wishlist');
// });
