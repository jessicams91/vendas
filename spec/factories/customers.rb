FactoryGirl.define do
  factory :customer do
    name 'Bruno'
    sequence(:email) { |n| "bruno#{n}@gmail.com" }
    phone '12 3231221312'
    address 'Av alameda'
    cpf_cnpj '81239932006'
    contact_name 'Bruno'
    birth_date '1995/3/16'
  end
end
