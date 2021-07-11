crumb :root do
  link "Furima", root_path
end

crumb :new do
  link "商品の出品", items_path
  parent :root
end

crumb :show do
  link "商品の詳細", items_path
  parent :root
end

crumb :edit do
  link "商品の編集", edit_item_path
  parent :show
end

crumb :orders do
  link "商品購入", item_orders_path
  parent :show
end

crumb :registrations do
  link "新規登録", new_user_registration_path
  parent :root
end

crumb :sessions do
  link "ログイン", user_session_path
  parent :root
end
