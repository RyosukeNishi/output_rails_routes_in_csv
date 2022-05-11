INPUT_FILE_PATH = "#{File.basename(__dir__)}/list_routes.txt"
METHODS = [
  "GET",
  "POST",
  "DELETE",
  "PATCH",
  "PUT"
]
SEPARATOR = ","

rows = []
File.foreach(INPUT_FILE_PATH) do |line|
  # アクションは別の列に出力したいので"#"も対象とする
  row = line.strip.gsub(/\s+|\#/, SEPARATOR).split(SEPARATOR)
  # 名前付きルートの情報は一旦不要＆行頭の位置を揃える（rails routesでは一番左に名前付きルート、その隣にメソッド名が表示される。一つの名前付きルートに対して複数のメソッドが存在する場合は、2行目以降の名前付きルートの列が空欄になる）
  row.shift unless METHODS.include?(row[0])
  # ホストの情報もいらない（一番右に表示される）
  row.pop
  rows << row
end

output_file_path = "#{File.basename(__dir__)}/list_routes_#{Time.now.strftime("%Y%m%d_%H%M%S")}.csv"
File.open(output_file_path, mode = "w") do |f|
  header = ["メソッド", "URL", "コントローラー","アクション"]
  f.write header.join(SEPARATOR) + "\n"
  rows.each do |row|
    f.write row.join(SEPARATOR) + "\n"
  end
end
