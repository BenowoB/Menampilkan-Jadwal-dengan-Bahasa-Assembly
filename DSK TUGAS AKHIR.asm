Org 100h
MOV AH,02H          ;nilai servis untuk mencetak karakter
MOV DL,'J'          ;Karakter ASCII yang akan dicetak
INT 21H             ;mencetak karakter
MOV DL,'A'
INT 21H
MOV DL,'D'
INT 21H
MOV DL,'W'
INT 21H
MOV DL,'A'
INT 21H
MOV DL,'L'
INT 21H
MOV DL,' '
INT 21H

MOV DL,'K'
INT 21H
MOV DL,'U'
INT 21H
MOV DL,'L'
INT 21H
MOV DL,'I'
INT 21H
MOV DL,'A'
INT 21H
MOV DL,'H'
INT 21H
MOV DL,' '
INT 21H

MOV DL,'T'
INT 21H
MOV DL,'.'
INT 21H
MOV DL,'I'
INT 21H
MOV DL,'N'
INT 21H
MOV DL,'F'
INT 21H
MOV DL,'O'
INT 21H
MOV DL,'R'
INT 21H
MOV DL,'M'
INT 21H
MOV DL,'A'
INT 21H  
MOV DL,'T'
INT 21H
MOV DL,'I'
INT 21H
MOV DL,'K'
INT 21H
MOV DL,'A'
INT 21H

MOV DL,' '
INT 21H
MOV DL,'2'
INT 21H
MOV DL,'0'
INT 21H
MOV DL,'2'
INT 21H
MOV DL,'2'
INT 21H
MOV DL,0DH
INT 21H
MOV DL,0AH
INT 21H
MOV DL,0DH
INT 21H
;KETERANGAN JADWAL KELAS G 
MOV DL,'T'
INT 21H
MOV DL,'E'
INT 21H
MOV DL,'K'
INT 21H
MOV DL,'A'
INT 21H
MOV DL,'N'
INT 21H
MOV DL,' '
INT 21H
MOV DL,'A'
INT 21H
MOV DL,'N'
INT 21H
MOV DL,'G'
INT 21H
MOV DL,'K'
INT 21H
MOV DL,'A'
INT 21H
MOV DL,'('
INT 21H
MOV DL,'1'
INT 21H
MOV DL,')'
INT 21H
MOV DL,'='
INT 21H
MOV DL,'J'
INT 21H
MOV DL,'A'
INT 21H
MOV DL,'D'
INT 21H
MOV DL,'W'
INT 21H
MOV DL,'A'
INT 21H
MOV DL,'L'
INT 21H
MOV DL,' '
INT 21H
MOV DL,'K'
INT 21H
MOV DL,'E'
INT 21H
MOV DL,'L'
INT 21H
MOV DL,'A'
INT 21H
MOV DL,'S'
INT 21H
MOV DL,' '
INT 21H
MOV DL,'G'
INT 21H
MOV DL,0DH
INT 21H
MOV DL,0AH
INT 21H
;Jadwal Praktikum Bre Benowo
MOV DL,'T'
INT 21H
MOV DL,'E'
INT 21H
MOV DL,'K'
INT 21H
MOV DL,'A'
INT 21H
MOV DL,'N'
INT 21H
MOV DL,' '
INT 21H
MOV DL,'A'
INT 21H
MOV DL,'N'
INT 21H
MOV DL,'G'
INT 21H
MOV DL,'K'
INT 21H
MOV DL,'A'
INT 21H
MOV DL,'('
INT 21H
MOV DL,'2'
INT 21H
MOV DL,')'
INT 21H
MOV DL,'='
INT 21H
MOV DL,'J'
INT 21H
MOV DL,'A'
INT 21H
MOV DL,'D'
INT 21H
MOV DL,'W'
INT 21H
MOV DL,'A'
INT 21H
MOV DL,'L'
INT 21H
MOV DL,' '
INT 21H
MOV DL,'P'
INT 21H
MOV DL,'R'
INT 21H
MOV DL,'A'
INT 21H
MOV DL,'K'
INT 21H
MOV DL,'T'
INT 21H
MOV DL,'I'
INT 21H
MOV DL,'K'
INT 21H
MOV DL,'U'
INT 21H
MOV DL,'M'
INT 21H
MOV DL,0DH
INT 21H
MOV DL,0AH
INT 21H

JMP MULAI                                                                                                                                                                                                                                                                                                                                                                                                            
msg1: db 0dh,0ah," #HARI              MATA KULIAH                      WAKTU          RUANG",0dh,0ah,0dh,0ah,"  *SELASA   :| Dasar Sistem Komputer              | 16.10-17.50 |  1.5.57      |",0dh,0ah,"  *RABU    :| Dasar Pemrograman                  | 09.35-12.10 |  Lab Relata  |",0dh,0ah,"  *RABU    :| Manajemen Data dan Informasi       | 13.00-15.00 |  Lab Relata  |",0dh,0ah,"  *KAMIS   :| Pancasila                          | 07.00-08.40 |  Online      |",0dh,0ah,"  *KAMIS   :| Logika Informatika                 | 08.45-10.25 |  Lab Relata  |",0dh,0ah,"  *JUMAT   :| Kalkulus Informatika               | 13.00-15.00 |  4.1.54      |",0dh,0ah,"  *SABTU   :| AL Qur'an dan Hadist               | 10.30-12.10 |  Online      |",0dh,0ah,'$'
msg2: db 0dh,0ah," #HARI              MATA KULIAH                      WAKTU          RUANG",0dh,0ah,0dh,0ah,"  *SELASA   :| Praktikum Dasar Sistem Komputer    | 13.30-15.00 |  Lab Komdas  |",0dh,0ah,"  *KAMIS   :| Praktikum Dasar Pemrogram          | 10.30-13.30 |  Lab Jaringan|",0dh,0ah,"  *SABTU   :| Praktikum Logika Informatika       | 13.30-15.00 |  Online      |",0dh,0ah,'$'

mulai:
MOV AH,01       ;nilai servis di ah dg 01
INT 21H         ;cetak karakter

CMP AL,'1'      ; bandingkan al dengan 01
JE jad_1        ; lompat ke jad_1 jika sama

CMP AL,'2'      ; bandingkan al dengan 01
JE jad_2        ; lompat ke jad_2 jika sama

JMP EXIT        ; lompat ke exit
EXIT:           ; exit program
RET

jad_1:
MOV DX,MSG1     ; ambil offset msg1
MOV AH,9        ; servis untuk cetak kalimat
INT 21H         ; cetak kalimat
JMP MULAI       ; lompat ke mulai

jad_2:
MOV DX,MSG2     ; Sama kaya di atas    
MOV AH,9
INT 21H
JMP MULAI