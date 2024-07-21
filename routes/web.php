<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\BarangController;
use App\Http\Controllers\RegisterController;

Route::get("/", function () {
    return view("beranda", [
        "title" => "Beranda",
    ]);
})->middleware('auth');

Route::get("/daftarbarang", [BarangController::class, 'tampilsemua'])->middleware('auth');
Route::get("/tambahbarang", [BarangController::class, 'tambahbarang'])->middleware('auth');
Route::post("/tambahbarang", [BarangController::class, 'simpanbarang'])->middleware('auth');
Route::post("/hapusbarang/{barang}", [BarangController::class, 'hapusbarang'])->middleware('auth');
Route::get("/editbarang/{barang}", [BarangController::class, 'tampileditbarang'])->middleware('auth');
Route::post("/editbarang/{barang}", [BarangController::class, 'editbarang'])->middleware('auth');

Route::get("/daftarpetugas", [UserController::class, 'tampilsemua'])->middleware('auth');
Route::get("/tambahpetugas", [UserController::class, 'tambahpetugas'])->middleware('auth');
Route::post("/tambahpetugas", [UserController::class, 'simpanpetugas'])->middleware('auth');
Route::post("/hapuspetugas/{petugas}", [UserController::class, 'hapuspetugas'])->middleware('auth');
Route::get("/editpetugas/{petugas}", [UserController::class, 'tampileditpetugas'])->middleware('auth');
Route::post("/editpetugas/{petugas}", [UserController::class, 'editpetugas'])->middleware('auth');


Route::get("/profil", [UserController::class, 'profil'])->middleware('auth');

Route::get("/login", [LoginController::class, 'index'])->name('login')->middleware('guest');
Route::post("/login", [LoginController::class, 'authenticate']);
Route::post("/logout", [LoginController::class, 'logout']);

Route::get("/register", [RegisterController::class, 'index'])->middleware('guest');
Route::post("/register", [RegisterController::class, 'register']);
