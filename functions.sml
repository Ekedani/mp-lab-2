(*This file contains the functions that were required by the laboratory work.
The tests for these functions can be found in the index.sml file *)

type date = int*int*int;

fun is_older (date_first : date, date_second : date) =
    if (#1 date_first) <> (#1 date_second)
    then (#1 date_first) < (#1 date_second)
    else

    if (#2 date_first) <> (#2 date_second)
    then (#2 date_first) < (#2 date_second)
    else

    (#3 date_first) < (#3 date_second);

fun number_in_month (dates : date list, month_num : int) =
    if null dates
    then 0
    else

    if (#2 (hd dates)) = month_num
    then 1 + number_in_month(tl dates, month_num)
    else number_in_month(tl dates, month_num);

fun number_in_months (dates : date list, month_nums : int list) =
    if null dates orelse null month_nums
    then 0
    else

    number_in_month(dates, hd month_nums) + number_in_months(dates, tl month_nums);

fun dates_in_month (dates : date list, month_num : int) =
    if null dates
    then []
    else

    if (#2 (hd dates)) = month_num
    then (hd dates) :: dates_in_month(tl dates, month_num)
    else dates_in_month(tl dates, month_num);

fun dates_in_months (dates : date list, month_nums : int list) =
    if null dates orelse null month_nums
    then []
    else

    dates_in_month(dates, hd month_nums) @ dates_in_months(dates, tl month_nums);

fun get_nth(words: string list, n : int) = 
    if n = 1
    then hd words
    else get_nth(tl words, n - 1);

fun date_to_string(input_date : date) =
    let val months = [ "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    in get_nth(months, #2 input_date) ^ " " ^ Int.toString(#3 input_date) ^ ", " ^ Int.toString(#1 input_date)
    end;

fun number_before_reaching_sum(sum : int, numbers: int list) =
    if null numbers
    then 0
    else

    if sum <= hd numbers
    then 0
    else 1 + number_before_reaching_sum((sum - (hd numbers)), (tl numbers));

fun what_month(day : int) =
    let val days_in_months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    in number_before_reaching_sum(day, days_in_months) + 1
    end;

fun month_range(day1 : int, day2: int) =
    if day1 > day2
    then [] 
    else what_month(day1) :: month_range(day1 + 1, day2);
    

fun oldest(dates : date list) = 
    if null dates
    then NONE
    else

    let val tl_oldest = oldest(tl dates)
    in if isSome tl_oldest andalso is_older(valOf tl_oldest, hd dates)
    then tl_oldest
    else SOME (hd dates)
    end;