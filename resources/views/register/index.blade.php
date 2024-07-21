<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="css/form.css">
    <link rel="stylesheet" href="css/main.css">
    <title>MERI | {{ $title }} </title>
</head>

<body>
    @include('partials/navbar')

    <div class="container">
        <div class="row justify-content-center align-items-center" style="height: 80vh; width: 100%">
            <div class="col-lg-5">
                <main class="form-registration w-100 m-auto">
                    <h1 class="h3 mb-3 fw-normal text-center">Pendaftaran</h1>
                    <form action="/register" method="POST">
                        @csrf
                        <div class="form-floating">
                            <input type="text" class="form-control rounded-top @error('name') is-invalid @enderror" id="name" name="name"
                                placeholder="Name" required value="{{ old('name') }}">
                            <label for="name">Nama</label>
                            @error('nama')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="form-floating">
                            <input type="text" class="form-control @error('username') is-invalid @enderror" id="username" name="username"
                                placeholder="Username" required value="{{ old('username') }}">
                            <label for="username">Nama Pengguna</label>
                            @error('username')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="form-floating">
                            <input type="email" class="form-control @error('email') is-invalid @enderror" id="email" name="email"
                                placeholder="name@example.com" required value="{{ old('email') }}">
                            <label for="email">E-Mail</label>
                            @error('email')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="form-floating">
                            <input type="password" class="form-control rounded-bottom @error('password') is-invalid @enderror" id="password" name="password"
                                placeholder="Password" required>
                            <label for="password">Kata Sandi</label>
                            @error('password')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <input type="hidden" name="role_id" value="1">
                        <button class="btn btn-primary w-100 py-2 mt-3" type="submit">Register</button>
                    </form>
                    <small class="d-block text-center mt-3">Sudah punya akun? <a href="/login">Login</a></small>
                </main>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
</body>

</html>
