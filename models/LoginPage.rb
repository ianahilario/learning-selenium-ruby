class LoginPage

    #attr_reader :driver
        
    USERNAME = { id: 'user-name' }
    PASSWORD = { id: 'password' }
    LOGIN_BUTTON = { id: 'login-button' }

    def initialize(driver)
        @driver = driver
    end

    def getPageTitle
        @driver.title
    end

    def login(username, password)
        @driver.find_element(USERNAME).send_keys username
        @driver.find_element(PASSWORD).send_keys password
        @driver.find_element(LOGIN_BUTTON).click
    end
end