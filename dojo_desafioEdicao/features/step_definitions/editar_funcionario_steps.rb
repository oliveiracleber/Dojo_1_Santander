#Login

Dado(/^que eu estou no site orangehrmlive$/) do
	visit "http://opensource.demo.orangehrmlive.com/"
end

Quando("eu realizo o acesso") do
  fill_in('txtUsername', :with => 'Admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')
end

Então(/^a edicao podera ser realizada$/) do
	click_link('menu_pim_viewPimModule')
	fill_in('empsearch_employee_name_empName', :with => 'Cleber')
	click_button('searchBtn')
	click_link('Cleber Rosario')
	click_button('btnSave')	
	fill_in('personal_txtOtherID', :with => 'Clebinho')
	fill_in('personal_txtLicenNo', :with => '404821')
	fill_in('personal_txtLicExpDate', :with => '2020-12-09')
	choose('personal_optGender_1')
	select('Single',:from=> 'personal_cmbMarital')
	select('Brazilian',:from=> 'personal_cmbNation')
	fill_in('personal_DOB', :with => '1994-12-09')
	click_button('btnSave')
	
	#Realizar Busca para vizualizar edições
	click_link('menu_pim_viewPimModule')
	click_link('Cleber Rosario')
	sleep 5
end