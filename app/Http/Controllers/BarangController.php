<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Barang;
use App\Models\User;

class BarangController extends Controller
{
    public function tampilsemua() {
        return view("daftarbarang", [
            "title" => "Daftar Barang",
            "barangs" => Barang::filter(request('barang'))->paginate(15)->withQueryString(),
        ]);
    }

    public function tambahbarang() {
        return view("tambahbarang", [
            "title" => "Tambah Barang",
        ]);
    }

    public function simpanbarang(Request $request) {
        $validatedDataBarang = $request->validate([
            'namaBarang' => 'required|max:255',
            'stokBarang' => 'required|integer',
            'hargaBarang' => 'required|integer',
            'idUser' => 'required|integer|exists:users,id'
        ]);

        Barang::create([
            'name' => $validatedDataBarang['namaBarang'],
            'stock' => $validatedDataBarang['stokBarang'],
            'price' => $validatedDataBarang['hargaBarang'],
            'user_id' => $validatedDataBarang['idUser']
        ]);

        return redirect('/daftarbarang')->with('successBarang','Berhasil menambahkan data Barang');
    }

    public function hapusbarang(Barang $barang) {
        Barang::destroy($barang->id);
        return redirect('/daftarbarang')->with('successBarang','Berhasil menghapus data Barang');
    }

    public function editbarang(Barang $barang, Request $request) {
        $validatedDataBarang = $request->validate([
            'namaBarang' => 'required|max:255',
            'stokBarang' => 'required|integer',
            'hargaBarang' => 'required|integer',
            'idUser' => 'required|integer|exists:users,id'
        ]);

        $validatedDataBarang['id'] = $barang->id;

        Barang::where('id', $barang->id)->update([
            'name' => $validatedDataBarang['namaBarang'],
            'stock' => $validatedDataBarang['stokBarang'],
            'price' => $validatedDataBarang['hargaBarang'],
            'user_id' => $validatedDataBarang['idUser']
        ]);

        return redirect('/daftarbarang')->with('successBarang','Berhasil memperbarui data Barang');
    }

    public function tampileditbarang(Barang $barang) {
        return view('/editbarang', [
            "title" => "Edit Barang",
            "barang" => $barang
        ]);
    }
}
