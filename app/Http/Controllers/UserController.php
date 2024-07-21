<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function tampilsemua() {
        return view("daftarpetugas", [
            "title" => "Daftar Petugas",
            "users" => User::filter(request(['petugas', 'role']))->paginate(15)->withQueryString()
        ]);
    }

    public function tambahpetugas() {
        return view("tambahpetugas", [
            "title" => "Tambah Petugas",
        ]);
    }

    public function profil() {
        return view("profil", [
            "title" => "Profil",
        ]);
    }

    public function simpanpetugas(Request $request) {
        $validatedDataPetugas = $request->validate([
            'namaPetugas' => 'required|max:255',
            'usernamePetugas' => 'required|min:5|max:255|unique:users,username',
            'emailPetugas' => 'required|email:dns|unique:users,email',
            'passwordPetugas' => 'required|min:5|max:255',
            'role_id' => 'required'
        ]);

        $validatedDataPetugas['passwordPetugas'] = Hash::make($validatedDataPetugas['passwordPetugas']);

        User::create([
            'name' => $validatedDataPetugas['namaPetugas'],
            'username' => $validatedDataPetugas['usernamePetugas'],
            'email' => $validatedDataPetugas['emailPetugas'],
            'password' => $validatedDataPetugas['passwordPetugas'],
            'role_id' => $validatedDataPetugas['role_id']
        ]);

        return redirect('/daftarpetugas')->with('successPetugas','Berhasil menambahkan data Petugas');
    }   

    public function hapuspetugas(User $petugas) {
        User::destroy($petugas->id);
        return redirect('/daftarpetugas')->with('successPetugas','Berhasil menghapus data Petugas');
    }

    public function tampileditpetugas(User $petugas) {
        return view('editpetugas', [
            "title" => "Edit Petugas",
            "petugas" => $petugas
        ]);
    }

    public function editpetugas(User $petugas, Request $request) {
        $rules = [
            'name' => 'required|max:255',
            'password' => 'required|min:5|max:255',
            'role_id' => 'required'
        ];

        if ($request->username != $petugas->username) {
            $rules['username'] = 'required|min:5|max:255|unique:users';
        }

        if ($request->email != $petugas->email) {
            $rules['email'] = 'required|min:5|max:255|unique:users|email:dns';
        }

        $validatedDataPetugas = $request->validate($rules);

        $rules['password'] = Hash::make($rules['password']);

        User::where('id', $petugas->id)->update($validatedDataPetugas);

        return redirect('/daftarpetugas')->with('successPetugas','Berhasil memperbarui data Petugas');
    }
}
