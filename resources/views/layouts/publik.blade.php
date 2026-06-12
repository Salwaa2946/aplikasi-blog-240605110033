<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'Blog Kami')</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { 
            background-color: #f4f7f6; 
            font-family: 'Inter', sans-serif; 
            font-size: 14px; 
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        .navbar { box-shadow: 0 2px 10px rgba(21, 22, 25, 29); }
        .navbar-brand .brand-title { font-weight: 700; font-size: 20px; color: #fff; }
        .navbar-brand .brand-sub { font-size: 12px; color: #adb5bd; }
        
        .main-wrapper { flex: 1; }

   
        .artikel-card { 
            border: none; 
            border-radius: 16px; 
            overflow: hidden; 
            margin-bottom: 30px; 
            background: #fff; 
            transition: transform 0.2s ease;
        }
        .artikel-card:hover { transform: translateY(-5px); }
        .artikel-card img { width: 100%; height: 240px; object-fit: cover; }
        
        .badge-kategori { 
            background-color: #e8f5e9; 
            color: #2ecc71; 
            font-size: 11px; 
            padding: 5px 12px; 
            border-radius: 6px; 
            font-weight: 700; 
            text-transform: uppercase;
        }
        
        .btn-baca { 
            background-color: #2ecc71; 
            color: #fff; 
            border-radius: 8px; 
            font-size: 13px; 
            font-weight: 600;
            padding: 8px 20px;
            transition: 0.3s;
            text-decoration: none !important;
        }
        .btn-baca:hover { background-color: #27ae60; color: #fff; }
        .btn-kembali {
            display: inline-flex;
            align-items: center;
            gap: 7px;
            padding: 9px 20px;
            background: linear-gradient(135deg, #2C3E50, #3d5166);
            color: #fff !important;
            font-size: 13px;
            font-weight: 600;
            border-radius: 50px;
            text-decoration: none !important;
            transition: all 0.25s ease;
            box-shadow: 0 3px 10px rgba(44,62,80,0.25);
        }
        .btn-kembali:hover {
            background: linear-gradient(135deg, #1a252f, #2C3E50);
            box-shadow: 0 5px 15px rgba(44,62,80,0.4);
            transform: translateY(-2px);
        }
        .btn-kembali svg {
            transition: transform 0.2s;
        }
        .btn-kembali:hover svg {
            transform: translateX(-4px);
        }

        /* Sidebar */
        .sidebar-card { 
            background: #fff; 
            border-radius: 16px; 
            padding: 24px; 
            box-shadow: 0 4px 15px rgba(0,0,0,0.05); 
        }
        .sidebar-card h6 { font-weight: 700; color: #1a1a2e; margin-bottom: 20px; border-bottom: 2px solid #f4f7f6; padding-bottom: 10px; }
        
        .kategori-item { 
            display: flex; justify-content: space-between; align-items: center;
            padding: 10px 15px; border-radius: 10px; margin-bottom: 8px; 
            text-decoration: none; color: #444; transition: 0.2s; 
        }
        .kategori-item:hover, .kategori-item.active { background-color: #2ecc71; color: #fff; }
        .badge-count { background: #f4f7f6; color: #555; font-size: 11px; padding: 3px 10px; border-radius: 12px; }
        .kategori-item:hover .badge-count { background: rgba(255,255,255,0.2); color: #fff; }

        footer { background-color: #1a1a2e; color: #6c757d; font-size: 13px; }
    </style>
</head>
<body>

    <nav class="navbar navbar-dark navbar-expand-lg py-3" style="background-color:#2C3E50;">
        <div class="container">
            <a class="navbar-brand" href="{{ route('publik.index') }}">
                <div class="brand-title">Blog Kami</div>
    
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navMenu">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="{{ route('publik.index') }}">Beranda</a></li>
                    <li class="nav-item"><a class="nav-link btn btn-outline-light ms-lg-3 px-3" href="{{ route('login') }}">Login</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container my-5 main-wrapper">
        @yield('content')
    </div>

    <footer class="py-4 text-center">
        <div class="container">
            <small>© {{ date('Y') }} Blog Kami. Seluruh hak cipta dilindungi.</small>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>