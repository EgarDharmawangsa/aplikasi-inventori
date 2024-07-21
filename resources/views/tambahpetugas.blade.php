@extends('layout/main')

@section('container')
    <div class="col-md-10">
        <div class="container">
            <h1 class="row my-4">Tambah Petugas</h1>
            <div class="row">
                <form class="p-0 w-50" action="/tambahpetugas" method="POST">
                    @csrf
                    <div class="mb-3">
                        <label class="form-label" for="namaPetugas">Nama</label>
                        <input type="text" class="form-control @error('namaPetugas') is-invalid @enderror"
                            id="namaPetugas" name="namaPetugas" required autofocus>
                        @error('namaPetugas')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="usernamePetugas">Username</label>
                        <input type="text" class="form-control @error('usernamePetugas') is-invalid @enderror"
                            id="usernamePetugas" name="usernamePetugas" required>
                        @error('usernamePetugas')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="emailPetugas">Email</label>
                        <input type="text" class="form-control @error('emailPetugas') is-invalid @enderror"
                            id="emailPetugas" name="emailPetugas" required>
                        @error('emailPetugas')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="passwordPetugas">Kata Sandi</label>
                        <input type="password" class="form-control @error('passwordPetugas') is-invalid @enderror"
                            id="passwordPetugas" name="passwordPetugas" required>
                        @error('passwordPetugas')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <input type="radio" name="role_id" id="admin" value="1" required>
                        <label for="admin">Admin</label>
                        <input type="radio" name="role_id" id="non-admin" value="2" class="ms-3">
                        <label for="non-admin">Non-Admin</label>
                    </div>
                    <a href="/daftarbarang" class="btn btn-danger">Kembali</a>
                    <button type="submit"class="btn btn-primary">Tambah</button>
                </form>
            </div>
        </div>
    </div>
@endsection
