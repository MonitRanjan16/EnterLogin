import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class EnterLoginCredentials {
    public static void main(String[] args) {
        // Set the path to the ChromeDriver executable (adjust this based on your system)
        System.setProperty("webdriver.chrome.driver", "/path/to/chromedriver");

        // Initialize the WebDriver instance
        WebDriver driver = new ChromeDriver();

        // Navigate to the login page
        driver.get("https://juice-shop.herokuapp.com/#/login");

        try {
            // Find the username input field by its ID attribute
            WebElement usernameField = driver.findElement(By.id("email"));

            // Find the password input field by its name attribute
            WebElement passwordField = driver.findElement(By.name("password"));

            // Example: Entering values into the fields
            usernameField.sendKeys("your_malicious_username");
            passwordField.sendKeys("your_valid_password");

            // Optional: Add a delay to visualize the entered values (adjust as needed)
            Thread.sleep(3000); // 3 seconds

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close the browser session
            driver.quit();
        }
    }
}
