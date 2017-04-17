Dado(/^que eu tenha um empregado cadastrado$/) do
  visit "http://opensource.demo.orangehrmlive.com/"
  fill_in('txtUsername', :with => "Admin")
  fill_in("txtPassword", :with => "admin")
  click_button("btnLogin")
  click_link('PIM')
  click_link('menu_pim_viewEmployeeList')
  fill_in("empsearch_id", :with => "0026")
  click_button('searchBtn')
  find(:xpath,'//*[@id="resultTable"]/tbody/tr/td[2]/a').click
end

Quando(/^eu alterar um empregado$/) do
  click_button('btnSave')
  choose('personal_optGender_1')
  click_button('btnSave')
end

Então(/^o cadastro sera alterado$/) do
  click_button('btnSave')
end