FactoryGirl.define  do 
	factory :user do
		name "Testy Tester"
		email "test@tester.test"
		password "whatever"
		password_confirmation "whatever"
	end
end