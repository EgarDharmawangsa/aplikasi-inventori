@extends('layout/main')

@section('container')
    <div class="col-md-10">
        <div class="container">
            @if (session()->has('successPetugas'))
                    <div class="alert alert-success alert-dismissible fade show mt-3" role="alert">
                        {{ session('successPetugas') }}
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>
            @endif
            <h1 class="row my-4">{{ $title }}</h1>
            <div class="row mb-4 justify-content-end">
                <div class="col-md-6 p-0">
                    <form action="/daftarpetugas">
                        @if (request('role'))
                            <input type="hidden" name="role" value="{{ request('role') }}">
                        @endif
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Cari petugas {{ request('role') }}" name="petugas" value="{{ request('petugas') }}">
                            <button class="btn btn-dark" type="submit"><i class="bi bi-search"></i></button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="row justify-content-between">
                <div class="col-sm-3 p-0 mb-3">  
                    <a href="/tambahpetugas" class="btn btn-primary"><i class="bi bi-plus-lg"></i> Tambah Petugas</a>
                </div>
                <div class="col-sm-1 p-0 mb-3">
                    <div class="dropdown float-end">
                        <button class="btn btn-dark dropdown-toggle" type="button" id="dropdownMenuButton1"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            {{ request('role') ?? 'Semua' }}</button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                            <li><a class="dropdown-item" href="/daftarpetugas">Semua</a></li>
                            <li><a class="dropdown-item" href="/daftarpetugas?role=Admin">Admin</a></li>
                            <li><a class="dropdown-item" href="/daftarpetugas?role=Non-Admin">Non Admin</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="row">
                <table>
                    <tr class="text-center bg-dark text-white">
                        <th class="text-center">id</th>
                        <th>Nama</th>
                        <th>Role</th>
                        <th></th>
                    </tr>
                    @foreach ($users as $user)
                        <tr>
                            <td class="text-center">{{ $user->id }}</td>
                            <td>{{ $user->name }}</td>
                            <td>{{ $user->role->name }}</td>
                            <td class="text-end d-flex justify-content-end gap-2">
                                <a href="/editpetugas/{{ $user->id }}" class="btn btn-primary"><i class="bi bi-pencil"></i> Edit</a>
                                <form action="/hapuspetugas/{{ $user->id }}" method="POST">
                                    @csrf
                                    <button type="submit" class="btn btn-danger" onclick="return confirm('Anda yakin ingin menghapus?')"><span class="bi bi-trash"></span> Hapus</button>
                                </form>
                            </td>
                        </tr>
                    @endforeach
                </table>
                <div class="d-flex justify-content-center my-4 p-0">
                    {{ $users->links() }}
                </div>
            </div>
        </div>
    </div>
@endsection
