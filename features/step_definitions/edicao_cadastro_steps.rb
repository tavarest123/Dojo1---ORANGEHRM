Dado(/^que eu tenha um empregado cadastrado$/) do
  visit "http://opensource.demo.orangehrmlive.com/"
  fill_in('txtUsername', :with => "Admin")
  fill_in("txtPassword", :with => "admin")
  click_button("btnLogin")
  click_link('PIM')
  click_link('menu_pim_viewEmployeeList')
  fill_in('empsearch[employee_name][empName]', :with => 'Estevão')
  fill_in('empsearch[supervisor_name]', :with => 'Tavares')
  click_button('searchBtn')
  find(:xpath,'//*[@id="resultTable"]/tbody/tr/td[3]/a').click
end

Quando(/^eu alterar um empregado$/) do
  click_button('btnSave')
  choose('personal_optGender_1')
  click_button('btnSave')
end

Então(/^o cadastro sera alterado$/) do
  click_button('btnSave')
   assert_text('Successfully Saved')
end