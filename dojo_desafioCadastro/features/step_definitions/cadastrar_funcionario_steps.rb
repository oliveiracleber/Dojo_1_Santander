#Login

Dado(/^que eu estou no site orangehrmlive$/) do
	visit "http://opensource.demo.orangehrmlive.com/"
end

Quando("eu realizo o acesso") do
  fill_in('txtUsername', :with => 'Admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')
end

Então(/^o cadastro podera ser realizado$/) do
	click_link('menu_pim_viewPimModule')
	click_link('menu_pim_addEmployee')
	fill_in('firstName', :with => 'Cleber')
	fill_in('middleName', :with => 'Rosario')
	fill_in('lastName', :with => 'de Oliveira')
	fill_in('employeeId', :with => '1910')
	check('chkLogin')
	fill_in('user_name', :with => 'bnh09')
	fill_in('user_password', :with => 'bnh09')
	fill_in('re_password', :with => 'bnh09')
	select('Enabled',:from=> 'status')
	click_button('btnSave')
	
	#Realizar Busca para vizualizar cadastro
	click_link('menu_pim_viewPimModule')
	click_link('Cleber Rosario')
	sleep 5
end