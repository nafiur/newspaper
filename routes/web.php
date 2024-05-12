<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\FrontPageController;
use App\Http\Controllers\SiteSettingsController;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', [FrontPageController::class, 'Index'])->name('frontpage.index');



Route::middleware(['auth', 'verified'])->group(function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

});




Route::middleware(['auth'])->group(function () {

    Route::controller(SiteSettingsController::class)->group(function () {

        Route::get('/admin/site-settings', 'SiteSettings')->name('site-settings');
        Route::get('/admin/site-settings/info', 'SiteInfo')->name('site-settings.info');

    });

});


Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';