def screenshot(name)
    $driver.save_screenshot("ss/#{name}.png")
    attach("ss/#{name}.png","image/png")
end

def scroll_up()
    $driver.execute_script('window.scrollTo(0, 0)')
end

def scroll_down()
    $driver.execute_script('window.scrollTo(0, document.body.scrollHeight)')
end

def maximize_driver()
    $driver.manage.window.maximize
end

def minimize_driver()
    $driver.manage.window.minimize
end

def open_url(url)
    $driver.navigate.to url
end