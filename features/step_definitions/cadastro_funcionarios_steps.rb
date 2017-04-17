Dado(/^que esteja na pagina de cadastro$/) do
  visit "http://opensource.demo.orangehrmlive.com/"
  fill_in('txtUsername', :with => "Admin")
  fill_in("txtPassword", :with => "admin")
  click_button("btnLogin")
  click_link('PIM')
  click_link('Add Employee')
end

Quando(/^os dados forem preenchidos corretamente$/) do
  fill_in('firstName', :with => 'Estevão')
  fill_in('lastName', :with => 'Tavares')
  @id = find(:id,'employeeId').value
  end

Então(/^apresentara o cadastro realizado$/) do
  click_button('btnSave')
end