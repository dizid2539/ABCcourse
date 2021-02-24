test_list="$(find $1 -name "*.ktest")"

for test_case in $test_list
do
        test_info="$(ktest-tool ${test_case})"
        var_str=""

        while :
        do
                name="$(echo ${test_info} | perl -pe 's/^.*?object [0-9]+: name: (.*?) .*$/\1/')"
                if [ "${name}" == "${test_info}" ]
                then
                        break
                else
                        int="$(echo ${test_info} | perl -pe 's/^.*?object [0-9]+: int : (.*?) .*$/\1/')"
                        var_str+="[ ${name}:${int} ]"
                        test_info="$(echo ${test_info} | perl -pe 's/object [0-9]+: name: (.*?) //')"
                        test_info="$(echo ${test_info} | perl -pe 's/object [0-9]+: int : (.*?) //')"
                fi
        done
        KTEST_FILE=$test_case ./a.out
        echo "${var_str} : $?"
done