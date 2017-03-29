Dado(/^que esteja na home so site da empresa$/) do
  visit "https://enterprise-demo.orangehrmlive.com"
end

Quando(/^realizar o cadastro$/) do
  fill_in('txtUsername',:with =>'admin')
  fill_in('txtPassword',:with =>'admin')
  click_button('btnLogin')
  click_link('PIM')
  click_link('menu_pim_addEmployee')
  fill_in('firstName',:with =>'Juliana')
  fill_in('lastName',:with =>'Ferreira')
  select('New York Sales Office',:from=>'location')
  click_button('btnSave')
  sleep 1
end

Entao (/^validar a mensagem de sucesso$/) do
  expect(page).to have_content 'Successfully Saved'
  find(:id, 'welcome').click
 	click_link('Logout')
 	sleep 2
end


Dado(/^que esteja na home do site$/) do
  visit "https://enterprise-demo.orangehrmlive.com"
end

Quando(/^alterar o cadastro$/) do
  fill_in('txtUsername',:with =>'admin')
  fill_in('txtPassword',:with =>'admin')
  click_button('btnLogin')
  click_link('PIM')
  click_link('menu_pim_viewEmployeeList')
  fill_in('empsearch[id]',:with =>'0089')
  click_button('searchBtn')
  click_link('andrew')
  click_button('btnSave')
  sleep 4
  fill_in('personal_txtEmpLastName',:with =>'Krors')
  sleep 4
  click_button('btnSave')
 end

 Entao(/^validar a mensagem de alteracao com sucesso$/) do
   expect(page).to have_content 'Successfully Saved'
  #sleep 4
  find(:id, 'welcome').click
  click_link('Logout')
 end