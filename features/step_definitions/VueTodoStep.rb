Given('the browser open My Todos web') do
  open_url('https://my-vue-todos.netlify.app/')
  maximize_driver()
  screenshot("Open_Browser")
end

Then('web has Header page {string}, textbox Create a new todo dengan placeholder {string}, grid data which showing Todo Name, edit icon and delete icon') do |string, string2|
  expect($driver.find_element(:css, 'h1').text).to eq(string)

  expect($driver.find_element(:css, '.form-control').enabled?).to be_truthy

  expect($driver.find_element(:css, '.d-flex:nth-child(1)'))

  expect($driver.find_element(:css, '.d-flex:nth-child(1) > .flex-grow-1 > span'))

  expect($driver.find_element(:css, '.d-flex:nth-child(1) > .btn-outline-primary'))

  expect($driver.find_element(:css, '.d-flex:nth-child(1) > .btn-outline-danger > .fa'))

  expect($driver.find_element(:css, '.d-flex:nth-child(1) > .btn-outline-danger'))

  screenshot("Checking_Components")
end

Then('the user click textbox Create a new todo') do
  open_url('https://my-vue-todos.netlify.app/')
  maximize_driver()

  $driver.find_element(:css, '.form-control').click

  screenshot("Click textbox Create a new todo to add todo")
end

Then('the user input todo {string}') do |data|
  $driver.find_element(:css, '.form-control').send_keys('Create testing Automation')

  screenshot("Input todo add todo")
end

Then('the user press enter') do
  $driver.find_element(:css, '.form-control').send_keys(:enter)

  screenshot("Press enter add todo")
end

Then('the data should appear') do
  expect($driver.find_element(:css, '.d-flex:nth-child(4) > .flex-grow-1 > span').text).to eq('Create testing Automation')
  
  screenshot("Data add todo should appear")
end

Given('the user click textbox Create a new todo on the web My todos with {string} data') do |data|
  open_url('https://my-vue-todos.netlify.app/')
  maximize_driver()
  expect($driver.find_element(:css, '.d-flex:nth-child(1) > .flex-grow-1 > span').text).to eq('Do the dishes')

  screenshot("Given the user click textbox Create a new todo on the web My todos with Do the dishes data")
end

Then('the error message should appear') do
  expect($driver.find_elements(:css, '.container').not_to eq (''))

  screenshot("error message add non unique")
end

Given('the user has added Todo Create testing Automation') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('the user click edit icon on the todo') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('the user edit the todo data') do
  pending # Write code here that turns the phrase above into concrete actions
end

Given('the web My Todo has {string} data and the user has click edit icon on {string} data') do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end

Given('the web My Todo has {string} data') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then('the user click delete icon on the data') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('the data should not on the list') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('the user click the Todo on the grid') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('the data should on the Strikethrough mark') do
  pending # Write code here that turns the phrase above into concrete actions
end