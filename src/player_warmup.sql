/*
Stwórz tabelę player z polami: id, firstname, lastname, position, club
Stwórz tabelę player_statistics z polami: id, goals, assists, conceded, venue_date, mins_on_field, rating, player_id
player_id powinno być kluczem obcym wskazującym na player(id)
Wpisz do tabeli player po 3-5 graczy dla każdej pozycji G - Goalkeeper, D - Defender, M - Midfielder, S - Striker
Wpisz do tabeli player_statistics 0-5 statystyk dla każdego gracza. Każda statystyka dotyczy jednego spotkania
określonego przez venue_date.

Stwórz tabelę total_player_statistics o polach id, player_id, total_goals, total_assists, total_conceded, total_mins_on_field,
average_note
wypełnij tabelę odpowiednim zapytaniem z tabeli statystyk tak by poszczególne pola zawierały sumy pól o odpowiadających nazwach.
Na przykład jeśli w tabeli statistics mamy:
1, 3,0,0,'2019-03-10', 90, 9, 1
1, 1,1,0,'2019-03-17', 90, 8, 1
1, 1,0,0,'2019-03-24', 90, 7, 1
w tabeli player statistics będzie:
1, 5, 1, 0, 270, 7,3

Napisz zapytanie, które wyświetli listę graczy z ilością spotkań posortowaną malejąco

Napisz zapytanie, które wyświetli 3 graczy z największą liczbą goli
Napisz zapytanie, które wyświetli 3 graczy z najlepszą średnią goli
Napisz zapytanie, które wyświetli najbardziej bramkostrzelnego obrońcę.
Napisz zapytanie, które wyświetli 3 graczy z największą liczbą minut na boisku
Napisz zapytanie, które wyświetli bramkarza z najmniejszą liczbą wpuszczonych bramek
Napisz zapytanie, które wyświetli gracza z największą średnią notą
Napisz zapytanie, które wyświetli gracza z największą średnią notą który rozegrał conajmniej 3 spotkania

 */

