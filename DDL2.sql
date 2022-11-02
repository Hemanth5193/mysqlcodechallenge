use insurance_comapny;

update t_agent
set TARGET_POLICY_SUM =
	case agent_city
	when 'Pune' then 400000 
	when 'Chennai' then 250000
	else TARGET_POLICY_SUM
end
where agent_id like 'M%';