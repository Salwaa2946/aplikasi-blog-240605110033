@extends('layouts.publik')

@section('title', isset($kategoriAktif) ? $kategoriAktif->nama_kategori . ' - Blog Kami' : 'Blog Kami')

@section('content')
<div class="row">
    {{-- Kolom Artikel --}}
    <div class="col-lg-8">
        @forelse($artikel as $item)
        <div class="artikel-card">
            @if($item->gambar)
                <img src="{{ asset('storage/gambar/' . $item->gambar) }}" alt="{{ $item->judul }}">
            @else
                <div style="height:220px; background:#e9ecef; display:flex; align-items:center; justify-content:center; color:#aaa;">
                    Tidak ada gambar
                </div>
            @endif
            <div class="p-3">
                <span class="badge-kategori">{{ $item->kategori->nama_kategori ?? '-' }}</span>
                <h5 class="mt-2 mb-1" style="font-weight:700; font-size:16px;">{{ $item->judul }}</h5>
                <div class="d-flex align-items-center mb-2" style="gap:8px;">
                    @if($item->penulis && $item->penulis->foto && $item->penulis->foto !== 'default.png')
                       <img src="{{ asset('storage/foto/' . $item->penulis->foto) }}"
                alt="{{ $item->penulis->nama_depan }}"
                style="width:32px; height:32px; border-radius:50%; object-fit:cover; flex-shrink:0;">
                    @else
                        <span class="avatar-placeholder">{{ strtoupper(substr($item->penulis->nama_depan ?? 'A', 0, 1)) }}</span>
                    @endif
                    <small class="text-muted">{{ ($item->penulis->nama_depan ?? '') . ' ' . ($item->penulis->nama_belakang ?? '') }}
                    &bull; {{ $item->hari_tanggal }}</small>
                </div>
                <p class="text-muted mb-2" style="font-size:13px; line-height:1.6;">
                    {{ Str::limit(strip_tags($item->isi), 150) }}
                </p>
                <a href="{{ route('publik.detail', $item->id) }}" class="btn-baca">Baca Selengkapnya →</a>
            </div>
        </div>
        @empty
        <div class="text-center text-muted py-5">
            <p>Belum ada artikel{{ isset($kategoriAktif) ? ' dalam kategori ini' : '' }}.</p>
        </div>
        @endforelse
    </div>

    {{-- Sidebar --}}
    <div class="col-lg-4">
        <div class="sidebar-card">
            <h6>Kategori Artikel</h6>
            <a href="{{ route('publik.index') }}"
               class="kategori-item {{ !isset($kategoriAktif) ? 'active' : '' }}">
                <span>Semua Artikel</span>
                <span class="badge-count">{{ $totalArtikel }}</span>
            </a>
            @foreach($kategori as $kat)
            <a href="{{ route('publik.kategori', $kat->id) }}"
               class="kategori-item {{ isset($kategoriAktif) && $kategoriAktif->id == $kat->id ? 'active' : '' }}">
                <span>{{ $kat->nama_kategori }}</span>
                <span class="badge-count">{{ $kat->artikel_count }}</span>
            </a>
            @endforeach
        </div>
    </div>
</div>
@endsection