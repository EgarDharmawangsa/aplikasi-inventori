@extends('layout/main')

@section('container')
    <div class="col-md-10">
        <div class="container">

            @if (session()->has('successBarang'))
                    <div class="alert alert-success alert-dismissible fade show mt-3" role="alert">
                        {{ session('successBarang') }}
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>
            @endif

            <h1 class="row my-4">{{ $title }}</h1>

            <div class="row mb-4 justify-content-end">
                <div class="col-md-6 p-0">
                    <form action="/daftarbarang">
                        @if (request('barang'))
                            <input type="hidden" name="barang" value="{{ request('barang') }}">
                        @endif
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Cari barang" name="barang" value="{{ request('petugas') }}">
                            <button class="btn btn-dark" type="submit"><i class="bi bi-search"></i></button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="row justify-content-between">
                <div class="col-sm-3 p-0 mb-3">  
                    <a href="/tambahbarang" class="btn btn-primary"><i class="bi bi-plus-lg"></i> Tambah Barang</a>
                </div>
            </div>

            <div class="row">
                <table>
                    <tr class="text-center bg-dark text-white">
                        <th>id</th>
                        <th>Barang</th>
                        <th>Harga</th>
                        <th>Stok</th>
                        <th>Petugas</th>
                        <th>Role</th>
                        <th></th>
                    </tr>
                    @foreach ($barangs as $barang)
                        <tr>
                            <td class="text-center">{{ $barang->id }}</td>
                            <td>{{ $barang->name }}</td>
                            <td>{{ $barang->price }}</td>
                            <td>{{ $barang->stock }}</td>
                            <td>{{ $barang->user->name }}</td>
                            <td>{{ $barang->user->role->name }}</td>
                            <td class="text-end d-flex justify-content-end gap-2">
                                <a href="/editbarang/{{ $barang->id }}" class="btn btn-primary"><i class="bi bi-pencil"></i> Edit</a>
                                <form action="/hapusbarang/{{ $barang->id }}" method="POST">
                                    @csrf
                                    <button type="submit" class="btn btn-danger" onclick="return confirm('Anda yakin ingin menghapus?')"><span class="bi bi-trash"></span> Hapus</button>
                                </form>
                            </td>
                        </tr>
                    @endforeach
                </table>
                <div class="d-flex justify-content-center my-4 p-0">
                    {{ $barangs->links() }}
                </div>
            </div>
        </div>
    </div>
@endsection


