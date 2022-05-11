use "functions.sml";

fun is_older_test() = 
    if is_older((2022,5,4), (2022,5,4)) <> false
    then raise Fail "Test failed at 1 case (is_older)"
    else

    if is_older((2022,5,4), (2022,5,5)) <> true
    then raise Fail "Test failed at 2 case (is_older)"
    else

    if is_older((2022,6,4), (2022,5,5)) <> false
    then raise Fail "Test failed at 3 case (is_older)"
    else

    print("Test passed (is_older)\n");

fun number_in_month_test() =
    if number_in_month([(2022,2,28), (2022,2,28), (2022,6,28)], 2) <> 2
    then raise Fail "Test failed at 1 case (number_in_month)"
    else

    if number_in_month([(2022,2,28), (2022,2,28), (2022,2,28)], 5) <> 0
    then raise Fail "Test failed at 2 case (number_in_month)"
    else

    if number_in_month([(2022,3,28), (2022,2,28), (2022,3,28)], 3) <> 2
    then raise Fail "Test failed at 3 case (number_in_month)"
    else

    print("Test passed (number_in_month)\n");

fun number_in_months_test() =
    if number_in_months([(2022,2,28), (2022,3,28), (2022,6,28)], [2, 3]) <> 2
    then raise Fail "Test failed at 1 case (numbers_in_month)"
    else

    if number_in_months([(2022,2,28), (2022,3,28), (2022,6,28)], [7, 8, 9]) <> 0
    then raise Fail "Test failed at 2 case (numbers_in_month)"
    else

    if number_in_months([(2022,2,28), (2022,3,28), (2022,6,28)], [3, 6]) <> 2
    then raise Fail "Test failed at 3 case (numbers_in_month)"
    else

    print("Test passed (numbers_in_month)\n");

fun dates_in_month_test() = 
    if dates_in_month([(2022,2,28), (2022,2,28), (2022,6,28)], 2) <> [(2022,2,28), (2022,2,28)]
    then raise Fail "Test failed at 1 case (dates_in_month)"
    else

    if dates_in_month([(2022,2,28), (2022,2,28), (2022,6,28)], 7) <> []
    then raise Fail "Test failed at 2 case (dates_in_month)"
    else

    if dates_in_month([(2023,7,28), (2027,9,8), (2022,7,28)], 7) <> [(2023,7,28), (2022,7,28)]
    then raise Fail "Test failed at 3 case (dates_in_month)"
    else

    print("Test passed (dates_in_month)\n");

fun dates_in_months_test() =
    if dates_in_months([(2022,2,28), (2022,2,28), (2022,6,28), (2022,7,28)], [2, 6]) <> [(2022,2,28), (2022,2,28), (2022,6,28)]
    then raise Fail "Test failed at 1 case (dates_in_month)"
    else

    if dates_in_months([(2022,2,28), (2022,2,28), (2022,6,28), (2022,7,28)], []) <> []
    then raise Fail "Test failed at 2 case (dates_in_month)"
    else

    if dates_in_months([(2023,7,28), (2027,9,8), (2022,7,28)], [7]) <> [(2023,7,28), (2022,7,28)]
    then raise Fail "Test failed at 3 case (dates_in_month)"
    else

    print("Test passed (dates_in_months)\n");

fun get_nth_test() = 
    if get_nth(["A", "B", "C", "D"], 2) <> "B"
    then raise Fail "Test failed at 1 case (get_nth)"
    else

    if get_nth(["A", "B", "C", "D"], 4) <> "D"
    then raise Fail "Test failed at 2 case (get_nth)"
    else

    if get_nth(["A", "B", "C", "D"], 1) <> "A"
    then raise Fail "Test failed at 3 case (get_nth)"
    else

    print("Test passed (get_nth)\n");

fun date_to_string_test() =
    if date_to_string((2022,2,28)) <> "February 28, 2022"
    then raise Fail "Test failed at 1 case (date_to_string)"
    else
    
    if date_to_string((2012,12,21)) <> "December 21, 2012"
    then raise Fail "Test failed at 2 case (date_to_string)"
    else

    if date_to_string((2022,2,24)) <> "February 24, 2022"
    then raise Fail "Test failed at 3 case (date_to_string)"
    else

    print("Test passed (date_to_string)\n");

fun number_before_reaching_sum_test() = 
    if number_before_reaching_sum(10, [1, 3, 9, 11, 22, 33]) <> 2
    then raise Fail "Test failed at 1 case (number_before_reaching_sum)"
    else

    if number_before_reaching_sum(1, [1, 3, 9, 11, 22, 33]) <> 0
    then raise Fail "Test failed at 2 case (number_before_reaching_sum)"
    else

    if number_before_reaching_sum(14, [1, 3, 9, 11, 22, 33]) <> 3
    then raise Fail "Test failed at 3 case (number_before_reaching_sum)"
    else

    print("Test passed (number_before_reaching_sum)\n");

fun what_month_test() =
    if what_month(32) <> 2
    then raise Fail "Test failed at 1 case (what_month)"
    else

    if what_month(1) <> 1
    then raise Fail "Test failed at 2 case (what_month)"
    else

    if what_month(70) <> 3
    then raise Fail "Test failed at 3 case (what_month)"
    else

    print("Test passed (what_month)\n");

fun month_range_test() = 
    if month_range(30, 32) <> [1, 1, 2]
    then raise Fail "Test failed at 1 case (month_range)"
    else

    if month_range(32, 30) <> []
    then raise Fail "Test failed at 2 case (month_range)"
    else

    if month_range(1, 2) <> [1, 1]
    then raise Fail "Test failed at 3 case (month_range)"
    else

    print("Test passed (month_range)\n");

fun oldest_test() = 
    if oldest([(2021,3,7), (2024,10,8), (2021,6,2), (2011,3,7)]) <> SOME (2011,3,7)
    then raise Fail "Test failed at 1 case (oldest)"
    else

    if oldest([]) <> NONE
    then raise Fail "Test failed at 2 case (oldest)"
    else

    if oldest([(1024,1,8), (2074,12,8), (2224,4,2), (2020,1,1)]) <> SOME (1024,1,8)
    then raise Fail "Test failed at 3 case (oldest)"
    else

    print("Test passed (oldest)\n");

val _ = is_older_test();
val _ = number_in_month_test();
val _ = number_in_months_test();
val _ = dates_in_month_test();
val _ = dates_in_months_test();
val _ = get_nth_test();
val _ = date_to_string_test();
val _ = number_before_reaching_sum_test();
val _ = what_month_test();
val _ = month_range_test();
val _ = oldest_test();