crumb :root do
  link "Furima", root_path
end

crumb :new do
  link "商品の出品", items_path
  parent :root
end

crumb :show do |item| # データありきの時のブロック変数を作成
  link "商品の詳細", item_path(item) # 特定の商品の詳細画面にいくように記述
  parent :root
end

crumb :edit do |item| # データありきの時のブロック変数を作成しparentに渡す
  link "商品の編集"
  parent :show, item # 親要素に特定の商品の詳細画面にいくようにitemを付加
end

crumb :orders do |item| # データありきの時のブロック変数を作成しparentに渡す
  link "商品の購入"
  parent :show, item # 親要素に特定の商品の詳細画面にいくようにitemを付加
end

crumb :registrations do
  link "新規登録", new_user_registration_path
  parent :root
end

crumb :sessions do
  link "ログイン", user_session_path
  parent :root
end
