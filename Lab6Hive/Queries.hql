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

