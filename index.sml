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

    print("Test passed (is_older)");

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

    print("Test passed (number_in_month)");

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

    print("Test passed (numbers_in_month)");

fun dates_in_month_test() = 
    true

fun dates_in_months_test() =
    true

fun get_nth_test() = 
    true

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

    print("Test passed (date_to_string)");

fun number_before_reaching_sum_test() = 
    true

fun what_month_test() =
    true

fun month_range_test() = 
    true

fun oldest_test() = 
    true;

is_older_test();
number_in_month_test();
number_in_months_test();
dates_in_month_test();
dates_in_months_test();
get_nth_test();
date_to_string_test();
number_before_reaching_sum_test();
what_month_test();
month_range_test();
oldest_test();