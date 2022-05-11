current_dirname=`dirname ${0}`
tmp_file_path="${current_dirname}/list_routes.txt"
rails routes | grep $1 > $tmp_file_path
ruby "${current_dirname}/list_routes.rb"
rm $tmp_file_path

