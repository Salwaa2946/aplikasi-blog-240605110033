@extends('layouts.app')

@section('title', 'Kelola Penulis')

@section('content')
<div class="d-flex justify-content-between align-items-center mb-3">
    <h6 class="fw-semibold mb-0" style="color: #333333;">Data Penulis</h6>
    <a href="{{ route('penulis.create') }}" class="btn btn-sm btn-success">
        + Tambah Penulis
    </a>
</div>

<div class="card border-0 shadow-sm">
    <div class="card-body p-0">
        <table class="table table-hover mb-0">
            <thead>
                <tr style="background-color: #fafafa;">
                    @foreach(['Foto', 'Nama', 'Username', 'Aksi'] as $header)
                        <th class="px-3 py-2" style="font-size: 11px; color: #666666; text-transform: uppercase; letter-spacing: 0.05em;">
                            {{ $header }}
                        </th>
                    @endforeach
                </tr>
            </thead>
            <tbody>
                @forelse($penulis as $item)
                    <tr>
                        <td class="px-3 py-2">
                            @if($item->foto)
                                <img src="{{ asset('storage/foto/' . $item->foto) }}" 
                                     alt="Foto {{ $item->nama_depan }}"
                                     style="width: 40px; height: 40px; object-fit: cover; border-radius: 6px; border: 1px solid #e9ecef;">
                            @else
                                <div style="width: 40px; height: 40px; background: #eee; border-radius: 6px; display: flex; align-items: center; justify-content: center; font-size: 10px; color: #999;">
                                    N/A
                                </div>
                            @endif
                        </td>
                        <td class="px-3 py-2" style="font-size: 13px;">
                            {{ $item->nama_depan }} {{ $item->nama_belakang }}
                        </td>
                        <td class="px-3 py-2" style="font-size: 13px; color: #666666;">
                            {{ $item->user_name }}
                        </td>
                        <td class="px-3 py-2">
                            <div class="d-flex gap-2">
                                <a href="{{ route('penulis.edit', $item->id) }}" 
                                   class="btn btn-sm" 
                                   style="background-color: #e3f2fd; color: #1565c0; font-size: 12px;">
                                    Edit
                                </a>
                                <form action="{{ route('penulis.destroy', $item->id) }}" method="POST" onsubmit="return confirm('Hapus penulis ini?')">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-sm" style="background-color: #ffebee; color: #c62828; font-size: 12px;">
                                        Hapus
                                    </button>
                                </form>
                            </div>
                        </td>
                    </tr>
                @empty
                    <tr>
                        <td colspan="4" class="px-3 py-4 text-center" style="font-size: 13px; color: #999999; font-style: italic;">
                            Belum ada data penulis.
                        </td>
                    </tr>
                @endforelse
            </tbody>
        </table>
    </div>
</div>
@endsection