@extends('layouts.app')

@section('title', 'Kelola Artikel')

@section('content')
<div class="d-flex justify-content-between align-items-center mb-3">
    <h6 class="fw-semibold mb-0 text-dark">Data Artikel</h6>
    <a href="{{ route('artikel.create') }}" class="btn btn-sm btn-success">
        + Tambah Artikel
    </a>
</div>

<div class="card border-0 shadow-sm">
    <div class="card-body p-0">
        <table class="table table-hover mb-0">
            <thead class="bg-light text-uppercase" style="font-size: 11px; color: #666; letter-spacing: 0.05em;">
                <tr>
                    <th class="px-3 py-2">Gambar</th>
                    <th class="px-3 py-2">Judul</th>
                    <th class="px-3 py-2">Kategori</th>
                    <th class="px-3 py-2">Penulis</th>
                    <th class="px-3 py-2">Tanggal</th>
                    <th class="px-3 py-2">Aksi</th>
                </tr>
            </thead>
            <tbody style="font-size: 13px;">
                @forelse($artikel as $item)
                    <tr>
                        <td class="px-3 py-2">
                            <img src="{{ asset('storage/gambar/' . $item->gambar) }}" 
                                 alt="{{ $item->judul }}" 
                                 class="rounded"
                                 style="width: 48px; height: 48px; object-fit: cover; border: 1px solid #e9ecef;">
                        </td>
                        <td class="px-3 py-2 text-truncate" style="max-width: 200px;">
                            {{ $item->judul }}
                        </td>
                        <td class="px-3 py-2">{{ $item->kategori->nama_kategori }}</td>
                        <td class="px-3 py-2">{{ $item->penulis->nama_depan . ' ' . $item->penulis->nama_belakang }}</td>
                        <td class="px-3 py-2 text-muted" style="font-size: 12px;">
                            {{ $item->hari_tanggal }}
                        </td>
                        <td class="px-3 py-2">
                            <div class="d-flex gap-2">
                                <a href="{{ route('artikel.edit', $item->id) }}" 
                                   class="btn btn-sm" 
                                   style="background-color: #e3f2fd; color: #1565c0; font-size: 12px;">
                                    Edit
                                </a>
                                <form action="{{ route('artikel.destroy', $item->id) }}" 
                                      method="POST" 
                                      onsubmit="return confirm('Hapus artikel ini?')">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" 
                                            class="btn btn-sm" 
                                            style="background-color: #ffebee; color: #c62828; font-size: 12px;">
                                        Hapus
                                    </button>
                                </form>
                            </div>
                        </td>
                    </tr>
                @empty
                    <tr>
                        <td colspan="6" class="text-center py-4 text-muted fst-italic">
                            Belum ada data artikel.
                        </td>
                    </tr>
                @endforelse
            </tbody>
        </table>
    </div>
</div>
@endsection