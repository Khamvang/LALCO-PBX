

#================ START Create database for lalco pbx ===================
select * from pbx_cdr where date_format(`time`, '%Y-%m-%d') = '2022-03-25' order by id desc limit 100;

select * from pbx_cdr order by id desc limit 1000 ; -- 49736292

select count(*) from pbx_cdr where id between 76863866 and 77373541 - 1; -- 452,661
select count(*) from pbx_cdr pc ;

select id, `time`, caller_number, callee_number, `call_duration_(s)`, `talk_duration_(s)`, caller_ip_address  from pbx_cdr pc 
where date_format(`time`, '%Y-%m-%d') >= '2022-05-01' and communication_type = 'Outbound' and status = 'ANSWERED' order by id desc ;

select * from pbx_cdr pc where id >= 65017326

delete from pbx_cdr where id > 65017326;
alter table pbx_cdr auto_increment = 65017327;

alter table pbx_cdr add `contact_id` int(11) not null default '0';
alter table pbx_cdr add key `contact_id` (`contact_id`);


select * from tbla5 where tbla5.telephone_no = '02059566651';
select * from tblb1 where contract_no = 2099094;

-- check the issue inform by LTC
select *  from pbx_cdr pc 
where date_format(`time`, '%Y-%m-%d') between '2023-11-15' and '2023-11-17' and communication_type = 'Outbound'
order by id desc limit 10


select * from pbx_cdr pc 
where id between 76742612 and 77135377 and (dod in ('281', '251', '221') or caller_number in ('281', '251', '221')) 
	and callee_number in ('902052174735', '902096876992')

