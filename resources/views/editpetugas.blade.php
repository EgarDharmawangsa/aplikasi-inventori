@extends('layout/main')

@section('container')
    <div class="col-md-10">
        <div class="container">
            <h1 class="row my-4">Tambah Petugas</h1>
            <div class="row">
                <form class="p-0 w-50" action="/editpetugas/{{ $petugas->id }}" method="POST">
                    @csrf
                    <div class="mb-3">
                        <label class="form-label" for="name">Nama</label>
                        <input type="text" class="form-control @error('name') is-invalid @enderror"
                            id="name" name="name" required autofocus value="{{ old('name', $petugas->name) }}">
                        @error('name')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="username">Username</label>
                        <input type="text" class="form-control @error('username') is-invalid @enderror"
                            id="username" name="username" required value="{{ old('username', $petugas->username) }}">
                        @error('username')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="email">Email</label>
                        <input type="text" class="form-control @error('email') is-invalid @enderror"
                            id="email" name="email" required value="{{ old('email', $petugas->email) }}">
                        @error('email')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="password">Kata Sandi</label>
                        <input type="password" class="form-control @error('password') is-invalid @enderror"
                            id="password" name="password" required>
                        @error('password')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <input type="radio" name="role_id" id="admin" value="1" required {{ $petugas->role_id == 1 ? 'checked' : '' }}>
                        <label for="admin">Admin</label>
                        <input type="radio" name="role_id" id="non-admin" value="2" class="ms-3" {{ $petugas->role_id == 2 ? 'checked' : '' }}>
                        <label for="non-admin">Non-Admin</label>
                    </div>
                    <a href="/daftarpetugas" class="btn btn-danger">Kembali</a>
                    <button type="submit"class="btn btn-primary">Perbarui</button>
                </form>
            </div>
        </div>
    </div>
@endsection
