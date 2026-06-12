<?php

namespace App\Http\Controllers;

use App\Models\Artikel;
use App\Models\KategoriArtikel;
use Illuminate\Http\Request;

class PublikController extends Controller
{
    public function index()
    {
        $artikel = Artikel::with('penulis', 'kategori')
            ->orderBy('id', 'desc')
            ->take(5)
            ->get();

        $kategori = KategoriArtikel::withCount('artikel')
            ->orderBy('nama_kategori', 'asc')
            ->get();

        $totalArtikel = Artikel::count();

        return view('publik.index', compact('artikel', 'kategori', 'totalArtikel'));
    }

    public function kategori($id)
    {
        $kategoriAktif = KategoriArtikel::findOrFail($id);

        $artikel = Artikel::with('penulis', 'kategori')
            ->where('id_kategori', $id)
            ->orderBy('id', 'desc')
            ->take(5)
            ->get();

        $kategori = KategoriArtikel::withCount('artikel')
            ->orderBy('nama_kategori', 'asc')
            ->get();

        $totalArtikel = Artikel::count();

        return view('publik.index', compact('artikel', 'kategori', 'totalArtikel', 'kategoriAktif'));
    }

    public function detail($id)
    {
        $artikel = Artikel::with('penulis', 'kategori')->findOrFail($id);

        $artikelTerkait = Artikel::with('penulis', 'kategori')
            ->where('id_kategori', $artikel->id_kategori)
            ->where('id', '!=', $id)
            ->orderBy('id', 'desc')
            ->take(5)
            ->get();

        $kategori = KategoriArtikel::withCount('artikel')
            ->orderBy('nama_kategori', 'asc')
            ->get();

        return view('publik.detail', compact('artikel', 'artikelTerkait', 'kategori'));
    }
}