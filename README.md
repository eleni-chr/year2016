# year2016
The function returns a row vector of structs whose elements correspond to the days of a month in 2016 as specified by the input argument. The input argument must be an integer between 1 and 12. If the input is not an integer between 1 and 12, the function returns an empty array. Each struct contains three fields with field names “month”, “date”, and “day”. The month field contains a string with the name of the month. The date field contains a scalar specifying the day of the month. The day field contains the three-letter abbreviation of the day.
For example, here is a call of the function followed by a command that shows the seventh element of the struct array that is returned by the function:
>> m = year2016(2);
>> m(7)
ans =
     month: 'February'
      date: 7
       day: 'Sun'
