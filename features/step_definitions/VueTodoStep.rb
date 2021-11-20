Given('the browser open My Todos web') do
  open_url('https://my-vue-todos.netlify.app/')
  maximize_driver()
  screenshot("Open_Browser")
  sleep(5)
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
  sleep(5)

end

Then('the user click textbox Create a new todo') do
  open_url('https://my-vue-todos.netlify.app/')
  maximize_driver()

  $driver.find_element(:css, '.form-control').click

  screenshot("Click textbox Create a new todo to add todo")
  sleep(5)

end

Then('the user input todo {string}') do |data|
  $driver.find_element(:css, '.form-control').send_keys(data)

  screenshot("Input todo add todo")
  sleep(5)
end

Then('the user press enter') do
  $driver.find_element(:css, '.form-control').send_keys(:enter)

  screenshot("Press enter add todo")
  sleep(5)
end

Then('the data should appear') do
  expect($driver.find_element(:css, '.d-flex:nth-child(4) > .flex-grow-1 > span').text).to eq('Create testing Automation')
  
  screenshot("Data add todo should appear")
  sleep(5)
end

Given('the user click textbox Create a new todo and has {string} data on the web My todos') do |data|
  open_url('https://my-vue-todos.netlify.app/')
  maximize_driver()
  expect($driver.find_element(:css, '.d-flex:nth-child(1) > .flex-grow-1 > span').text).to eq('Do the dishes')

  screenshot("Given the user click textbox Create a new todo on the web My todos with Do the dishes data")
  sleep(5)
end

Then('the error message should appear') do
  expect($driver.find_elements(:css, '.container').not_to eq (''))

  screenshot("error message add non unique")
  sleep(5)
end

Given('the user has added Todo {string}') do |data|
  open_url('https://my-vue-todos.netlify.app/')
  maximize_driver()
  expect($driver.find_element(:css, '.d-flex:nth-child(1) > .flex-grow-1 > span').attribute('innerText')).to eq(data)

  screenshot("user has added Todo Do the dishes")
  sleep(5)
end

Then('the user click edit icon on the todo') do
  $driver.find_element(:css, '.d-flex:nth-child(1) > .btn-outline-primary > .fa').click

  screenshot("the user click edit icon on the todo")
  sleep(5)
end

Then('the user edit the todo data') do
  $driver.find_element(:css, '.flex-grow-1 > .form-control').click
  $driver.find_element(:css, '.flex-grow-1 > .form-control').send_keys(' Edit')
  screenshot("the user edit the todo data")
  sleep(5)
end

Then('the data should edited') do
  expect($driver.find_element(:css, '.d-flex:nth-child(1) > .flex-grow-1 > span').text).to eq('Do the dishes Edit')
  
  screenshot("Data add todo should appear")
  sleep(5)
end

Given('the web My Todo has {string} data and the user has click edit icon on {string} data') do |string, string2|
  open_url('https://my-vue-todos.netlify.app/')
  maximize_driver()

  expect($driver.find_element(:css, '.row:nth-child(3)').text.match(string))
  expect($driver.find_element(:css, '.row:nth-child(3)').text.match(string2))

  screenshot("web My Todo has Do the dishes data and the user has click edit icon on the data")
  sleep(5)
end

Then('the user edit the todo data non unique') do
  # $driver.find_element(:css, '.flex-grow-1 > .form-control').click
  # $driver.find_element(:css, '.flex-grow-1 > .form-control').send_keys(' Edit')
  screenshot("the user edit the todo data")
  sleep(5)
end

Then('the error message should appear \(non unique)') do
  expect($driver.find_elements(:css, '.container').not_to eq (''))

  screenshot("error message edit non unique")
  sleep(5)
end

Given('the web My Todo has {string} data') do |string|
  open_url('https://my-vue-todos.netlify.app/')
  maximize_driver()

  expect($driver.find_element(:css, '.row:nth-child(3)').text.match(string))

  screenshot("web My Todo has Do the dishes data")
  sleep(5)
end

Then('the user click delete icon on the data') do
  $driver.find_element(:css, '.d-flex:nth-child(1) > .btn-outline-danger > .fa').click
  screenshot("click delete icon on the data")
  sleep(5)
end

Then('the data should not on the list') do
  expect($driver.find_element(:css, '.row:nth-child(3)').text.match("Do the dishes"))
  sleep(5)
end

Then('the user click the Todo on the grid') do
  $driver.find_element(:xpath, '/html/body/div/div[3]/div/ul/li[1]/button[1]/span').click
  screenshot("click the Todo on the grid")
  sleep(5)
end

Then('the data should on the Strikethrough mark') do
  screenshot("data should on the Strikethrough mark")
  sleep(5)
end