# Job scheduler

Jest to projekt zawierający część kliencką - do przesyłania programów do wykonania, a także serwerową - do kolejkowania i wykonywania programów.

## Założenia
- serwer może obsłużyć wielu klientów jednocześnie
- serwer przeprowadza współbieżnie wykonywanie programów i przyjmowanie kolejnych
- serwer przesyła aktualne dane o kolejce i klientach do wszystkich aktywnych klientów
- klient może wysyłać wiele programów, na raz lub w różnych momentach
- klient ma podgląd ile programów jest aktualnie w kolejce do wykonywania i ilu jest aktywnych klientów
- klient dostaje informacje o stanie wysłanych przez siebie programów (miejsce w kolejce/wykonywany)

## Przykładowy przypadek użycia
1. Klient łączy się z serwerem.
2. Klient dostaje potwierdzenie, że serwer jest aktywny i połączenie zostało nawiązane.
3. Klient otrzymuje informacje ile programów jest aktualnie w kolejce do wykonywania i ilu jest aktywnych klientów.
4. Klient wybiera plik do wysłania z dysku i wysyła go.
5. Serwer odbiera od klienta plik zawierający kod do wykonania i wstawia go do kolejki wykonywanych programów.
6. Klient dostaje informację, że jego program został dodany do kolejki i jego miejsce w kolejce.
7. Jeśli serwer nie jest zajęty wybiera następny program z kolejki i przesyła informację o zmienionym stanie kolejki wszystkim klientom.
8. Serwer wykonuje program i przesyła wynik do klienta.
9. Klient dostaje informację o zakończeniu wykonywania i odbiera wynik.
