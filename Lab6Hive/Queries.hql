select * from clients

select * from hotels
where ville = 'Paris'

select * from reservations, hotels, clients
where reservations.hotelid=hotels.hotelid 
and reservations.clientid=clients.clientid

select clientid,count(reservationid)
from clients c
join reservations r on c.clientid=r.clientid
group by clientid

select clientid,count(reservationid) as value
from clients c
join reservations r on c.clientid=r.clientid
group by clientid
having value>2


SELECT r.client_id, h.nom AS hotel_nom
FROM reservations r
JOIN hotels h
ON r.hotel_id = h.hotel_id;


SELECT h.nom
FROM hotels h
JOIN reservations r
ON h.hotel_id = r.hotel_id
GROUP BY h.nom
HAVING COUNT(r.reservation_id) > 1;

SELECT h.nom
FROM hotels h
LEFT JOIN reservations r
ON h.hotel_id = r.hotel_id
WHERE r.reservation_id IS NULL;

SELECT DISTINCT r.client_id
FROM reservations r
WHERE r.hotel_id IN (
    SELECT hotel_id
    FROM hotels
    WHERE etoiles > 4
);

SELECT h.nom AS hotel_nom, SUM(r.prix_total) AS total_revenus
FROM hotels h
JOIN reservations r
ON h.hotel_id = r.hotel_id
GROUP BY h.nom;

SELECT ville, SUM(r.prix_total) AS revenus_totaux
FROM hotels h
JOIN reservations r
ON h.hotel_id = r.hotel_id
GROUP BY ville;

SELECT client_id, COUNT(*) AS nb_reservations
FROM reservations
GROUP BY client_id;

