function m = year2016(in)

% The function returns a row vector of structs whose elements correspond to
% the days of a month in 2016 as specified by the input argument. The input
% argument must be an integer between 1 and 12. If the input is not an
% integer between 1 and 12, the function returns an empty array. Each
% struct contains three fields with field names “month”, “date”, and “day”.
% The month field contains a string with the name of the month. The date
% field contains a scalar specifying the day of the month. The day field
% contains the three-letter abbreviation of the day.

% For example, here is a call of the function followed by a command that
% shows the seventh element of the struct array that is returned by the
% function:
% >> m = year2016(2);
% >> m(7)
% ans =
%      month: 'February'
%       date: 7
%        day: 'Sun'

MONTHS = {'January','February','March','April','May','June','July','August','September','October','November','December'};
days = {'Thu','Fri','Sat','Sun','Mon','Tue','Wed'};
monthdays=[31 29 31 30 31 30 31 31 30 31 30 31];
if length(in)>1 || in<1 || in>12 || (floor(in)~=in)
    m=[];
    return
end
cumdays=sum(monthdays(1:in-1));
if in==1
    for i=1:31
        m(i).month=string(MONTHS(in));
        m(i).date=i;
        day=mod(i,7);
        m(i).day=string(days(day+1));
    end
elseif in==2
    for i=1:29
        m(i).month=string(MONTHS(in));
        m(i).date=i;
        day=mod(i+cumdays,7);
        m(i).day=string(days(day+1));
    end
elseif in==3 || in==5 || in==7 || in==8 || in==10 || in==12
    for i=1:31
        m(i).month=string(MONTHS(in));
        m(i).date=i;
        day=mod(i+cumdays,7);
        m(i).day=string(days(day+1));
    end
else
    for i=1:30
        m(i).month=string(MONTHS(in));
        m(i).date=i;
        day=mod(i+cumdays,7);
        m(i).day=string(days(day+1));
    end
end
end