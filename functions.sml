fun is_older (date_first : int*int*int, date_second : int*int*int) =
    if (#1 date_first) != (#1 date_second)
    then (#1 date_first) < (#1 date_second)
    else

    if (#2 date_first) != (#2 date_second)
    then (#2 date_first) < (#2 date_second)
    else

    (#3 date_first) < (#2 date_second)


fun number_in_month (dates : (int*int*int) list, month_num : int) =
    true

fun number_in_months (dates : (int*int*int) list, month_nums : int list) =
    true

fun dates_in_month (dates : (int*int*int) list, month_num : int) =
    true

fun dates_in_months (dates : (int*int*int) list, month_nums : int list) =
    true


