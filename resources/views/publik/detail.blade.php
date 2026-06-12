@extends('layouts.publik')

@section('title', $artikel->judul . ' - Blog Kami')

@section('content')
{{-- Breadcrumb --}}
<nav aria-label="breadcrumb" class="mb-3">
    <ol class="breadcrumb" style="font-size:13px;">
        <li class="breadcrumb-item"><a href="{{ route('publik.index') }}">Beranda</a></li>
        <li class="breadcrumb-item">
            <a href="{{ route('publik.kategori', $artikel->id_kategori) }}">
                {{ $artikel->kategori->nama_kategori ?? '-' }}
            </a>
        </li>
        <li class="breadcrumb-item active text-truncate" style="max-width:200px;">{{ $artikel->judul }}</li>
    </ol>
</nav>

<div class="row">
    {{-- Konten Utama --}}
    <div class="col-lg-8">
        <div class="bg-white rounded-3 shadow-sm overflow-hidden mb-4">
            @if($artikel->gambar)
                <img src="{{ asset('storage/gambar/' . $artikel->gambar) }}"
                     alt="{{ $artikel->judul }}" style="width:100%; max-height:380px; object-fit:cover;">
            @endif
            <div class="p-4">
                <span class="badge-kategori mb-2 d-inline-block">{{ $artikel->kategori->nama_kategori ?? '-' }}</span>
                <h2 style="font-weight:700; font-size:22px; color:#1a1a2e;">{{ $artikel->judul }}</h2>

                <div class="d-flex align-items-center my-3" style="gap:10px;">
                    @if($artikel->penulis && $artikel->penulis->foto && $artikel->penulis->foto !== 'default.png')
                        <img src="{{ asset('storage/foto/' . $artikel->penulis->foto) }}"
                             class="penulis-avatar" style="width: 25px;px;height: 25px;px;"
                             alt="{{ $artikel->penulis->nama_depan }}">
                    @else
                        <span class="avatar-placeholder" style="width:36px;height:36px;font-size:14px;">
                            {{ strtoupper(substr($artikel->penulis->nama_depan ?? 'A', 0, 1)) }}
                        </span>
                    @endif
                    <div>
                        <div style="font-weight:600; font-size:13px;">
                            {{ ($artikel->penulis->nama_depan ?? '') . ' ' . ($artikel->penulis->nama_belakang ?? '') }}
                        </div>
                        <div class="text-muted" style="font-size:12px;">{{ $artikel->hari_tanggal }}</div>
                    </div>
                </div>

                <hr>
                <div style="font-size:14px; line-height:1.8; color:#333;">
                    {!! nl2br(e($artikel->isi)) !!}
                </div>

                <div class="mt-4">
                   <a href="{{ route('publik.index') }}" class="btn-kembali">
    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" viewBox="0 0 16 16">
        <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
    </svg>
    Kembali ke Beranda
</a>
                    </a>
                </div>
            </div>
        </div>
    </div>

    {{-- Sidebar Artikel Terkait --}}
    <div class="col-lg-4">
        <div class="sidebar-card">
            <h6>Artikel Terkait</h6>
            @forelse($artikelTerkait as $item)
            <a href="{{ route('publik.detail', $item->id) }}" class="text-decoration-none">
                <div class="d-flex gap-2 mb-3 align-items-start">
                    @if($item->gambar)
                        <img src="{{ asset('storage/gambar/' . $item->gambar) }}"
                             style="width:60px;height:50px;object-fit:cover;border-radius:6px;flex-shrink:0;"
                             alt="{{ $item->judul }}">
                    @else
                        <div style="width:60px;height:50px;background:#e9ecef;border-radius:6px;flex-shrink:0;"></div>
                    @endif
                    <div>
                        <div style="font-size:12px;font-weight:600;color:#222;line-height:1.4;">
                            {{ Str::limit($item->judul, 55) }}
                        </div>
                        <div class="text-muted" style="font-size:11px;">{{ $item->hari_tanggal }}</div>
                    </div>
                </div>
            </a>
            @empty
            <p class="text-muted" style="font-size:13px;">Tidak ada artikel terkait.</p>
            @endforelse
        </div>
    </div>
</div>
@endsection