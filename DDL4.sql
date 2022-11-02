use hospital;
update t_doctor
set fees=
	case specialization
	when 'ENT' then 350 
	when 'DERMA' then 600
	else fees
end
where doctor_name like 'J%';
select * from t_doctor;