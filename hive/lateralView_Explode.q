
select id,rk from array lateral view explode(rank) rk;
