10 REM Caesar Cipher Encryption/Decryption Program
20 REM Enter the message to be encrypted/decrypted:
30 INPUT M$
40 REM Enter the key (1-25):
50 INPUT K
60 REM Encryption
70 FOR I = 1 TO LEN(M$)
80 IF ASC(M$(I)) >= 65 AND ASC(M$(I)) <= 90 THEN
90 C = CHR$((ASC(M$(I)) - 65 + K) MOD 26 + 65)
100 ELSEIF ASC(M$(I)) >= 97 AND ASC(M$(I)) <= 122 THEN
110 C = CHR$((ASC(M$(I)) - 97 + K) MOD 26 + 97)
120 ELSE
130 C = M$(I)
140 END IF
150 E$ = E$ + C
160 NEXT I
170 PRINT "Encrypted message: "; E$
180 REM Decryption
190 FOR I = 1 TO LEN(E$)
200 IF ASC(E$(I)) >= 65 AND ASC(E$(I)) <= 90 THEN
210 C = CHR$((ASC(E$(I)) - 65 - K + 26) MOD 26 + 65)
220 ELSEIF ASC(E$(I)) >= 97 AND ASC(E$(I)) <= 122 THEN
230 C = CHR$((ASC(E$(I)) - 97 - K + 26) MOD 26 + 97)
240 ELSE
250 C = E$(I)
260 END IF
270 D$ = D$ + C
280 NEXT I
290 PRINT "Decrypted message: "; D$
