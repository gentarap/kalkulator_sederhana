#!/bin/bash

while true; do
    echo "=== Kalkulator Sederhana ==="
    echo "1. Penjumlahan"
    echo "2. Pengurangan"
    echo "3. Perkalian"
    echo "4. Pembagian"
    echo "5. Keluar"
    read -p "Pilih operasi (1-5): " pilihan

    if [ "$pilihan" -eq 5 ]; then
        echo "Keluar dari program."
        break
    fi

    read -p "Masukkan angka pertama: " angka1
    read -p "Masukkan angka kedua: " angka2

    case $pilihan in
        1)
            hasil=$((angka1 + angka2))
            echo "Hasil Penjumlahan: $hasil"
            ;;
        2)
            hasil=$((angka1 - angka2))
            echo "Hasil Pengurangan: $hasil"
            ;;
        3)
            hasil=$((angka1 * angka2))
            echo "Hasil Perkalian: $hasil"
            ;;
        4)
            if [ "$angka2" -eq 0 ]; then
                echo "Error: Pembagian dengan nol tidak diperbolehkan."
            else
                hasil=$(echo "scale=2; $angka1 / $angka2" | bc)
                echo "Hasil Pembagian: $hasil"
            fi
            ;;
        *)
            echo "Pilihan tidak valid. Silakan pilih antara 1-5."
            ;;
    esac

    echo ""
done
