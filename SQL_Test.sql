select 
    contest_id,
    hacker_id,
    name,
    sum(total_submissions),
    sum(total_accepted_submissions),
    sum(total_view),
    sum(total_unique_views)

from Contest c
left join Collges co on c.contest_id = co.contest_id
left join Challenges ch on co.college_id = ch.college_id
left join View_Stats vs on ch.challenge_id = vs.challenge_id 
left join Submission s on vs.challege_id = s.challege_id 

group by 
    contest_id,
    hacker_id,
    name
having
  sum(total_submissions) + sum(total_accepted_submissions) + sum(total_viewsum) + sum(total_unique_views) > 0

order by
  contest_id asc
