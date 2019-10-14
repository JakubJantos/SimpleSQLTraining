use video;

# - Napisz zapytanie, które wyświetli video
# posortowane po tytule rosnąco

SELECT *
from video
ORDER BY title asc;

# - Napisz zapytanie, które wyświetli tytuł video oraz jeśli
# video jest dozwolone od 18 lat 'ADULT' (allowed_from_age)
# jeśli od 13 lat 'TEENAGER', od 3 'KID'

SELECT title,
       case
           When allowed_from_age >= 18 then 'ADULT'
           when allowed_from_age >= 13 then 'TENAGER'
           when allowed_from_age >= 3 then 'KID' end as named_type_of_age,
       allowed_from_age
from video;


# - Napisz zapytanie, które wyświetli kategorie video wraz z
# - liczbą video per kategoria. Posortuj po liczbie video
# w kategorii
# ACTION    8
# CARTOON    4
# COMEDY    3


SELECT category, count(*) as video_by_category
from video
group by category
order by video_by_category;

# - video posiada swoje statystyki w tabeli statistics
#  wyświetl tytuł video z jego statystykami
#  dodatkowo wyświetl procentowy stosunek polubionych do
# obejrzanych


select v.title, s.likes, s.views, (likes / views * 100) as like_wiews_ratio
from video v inner join statistics s on v.id = s.video_id;


# - video ma swojego autora w tabeli author
# wyświetl przy każdym video imię i nazwisko autora


select v.title, a.firstname, a.lastname
from video v
         left join author a on v.author_id = a.id;

# - wyświetl autora z największą liczbą video

select a.firstname, count(*) as sum_of_video
from video inner join author a on video.author_id = a.id
group by author_id
ORDER BY sum_of_video desc;