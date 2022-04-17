fun is_older (date_first : int*int*int, date_second : int*int*int) =
    if (#1 date_first) <> (#1 date_second)
    then (#1 date_first) < (#1 date_second)
    else

    if (#2 date_first) <> (#2 date_second)
    then (#2 date_first) < (#2 date_second)
    else

    (#3 date_first) < (#3 date_second)

fun number_in_month (dates : (int*int*int) list, month_num : int) =
    if null dates
    then 0
    else

    if (#2 (hd dates)) = month_num
    then 1 + number_in_month(tl dates, month_num)
    else number_in_month(tl dates, month_num)

fun number_in_months (dates : (int*int*int) list, month_nums : int list) =
    if null dates orelse null month_nums
    then 0
    else

    number_in_month(dates, hd month_nums) + number_in_months(dates, tl month_nums)

fun dates_in_month (dates : (int*int*int) list, month_num : int) =
    if null dates
    then []
    else

    if (#2 (hd dates)) = month_num
    then (hd dates) :: dates_in_month(tl dates, month_num)
    else dates_in_month(tl dates, month_num)

fun dates_in_months (dates : (int*int*int) list, month_nums : int list) =
    true


val test_1 = is_older((2019, 5, 5), (2019, 5, 6))
val test_4 = dates_in_month([(2019, 5, 5), (2020, 5, 6), (2021, 5, 6), (2022, 6, 6)], 5)