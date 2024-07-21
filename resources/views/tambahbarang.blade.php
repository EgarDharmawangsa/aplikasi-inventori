@extends('layout/main')

@section('container')
    <div class="col-md-10">
        <div class="container">
            <h1 class="row my-4">{{ $title }}</h1>
            <div class="row">
                <form class="p-0 w-50" action="/tambahbarang" method="POST">
                    @csrf
                    <div class="mb-3">
                        <label class="form-label" for="namaBarang">Nama</label>
                        <input type="text" class="form-control @error('namaBarang') is-invalid @enderror"
                            id="namaBarang" name="namaBarang" required autofocus>
                        @error('namaBarang')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="hargaBarang">Harga</label>
                        <input type="text" class="form-control @error('hargaBarang') is-invalid @enderror"
                            id="hargaBarang" name="hargaBarang" required>
                        @error('hargaBarang')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="stokBarang">Stok</label>
                        <input type="text" class="form-control @error('stokBarang') is-invalid @enderror"
                            id="stokBarang" name="stokBarang" required>
                        @error('stokBarang')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="idUser">ID Petugas</label>
                        <input type="text" class="form-control @error('idUser') is-invalid @enderror"
                            id="idUser" name="idUser" required>
                        @error('idUser')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <a href="/daftarbarang" class="btn btn-danger">Kembali</a>
                    <button type="submit"class="btn btn-primary">Tambah</button>
                </form>
            </div>
        </div>
    </div>
@endsection
