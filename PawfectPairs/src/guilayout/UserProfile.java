package guilayout;

import javafx.application.Application;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.ListView;
import javafx.scene.control.PasswordField;
import javafx.scene.control.ScrollPane;
import javafx.scene.control.TextField;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.GridPane;
import javafx.stage.Stage;
import java.util.ArrayList;

import backend.dog.Dog;
import backend.user.User;

public class UserProfile extends Application{
	
	private static UserProfile instance;
	
	public static UserProfile getInstance() {
		if (instance == null) {
			instance = new UserProfile();		
		}
		return instance;
	}

  public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage primaryStage) {
		LoginScene loginScene  = LoginScene.getInstance();
		DogProfileScene dogProfileScene = DogProfileScene.getInstance();  
		User user = loginScene.sendUserInfo();	
		ArrayList<Dog> likedDogs = user.getLikedDogs();
		ObservableList<Dog> observableList = FXCollections.observableArrayList(likedDogs);
		int width = 900;
		int height = 900;
		
		GridPane gridPane = new GridPane();
		gridPane.setAlignment(javafx.geometry.Pos.CENTER);
        gridPane.setHgap(10);
        gridPane.setVgap(10);
        gridPane.setPadding(new Insets(25, 25, 25, 25));
        
        Label emailLabel = new Label("Email:");
        TextField emailTextField = new TextField();
        Label passwordLabel = new Label("Password:");
        PasswordField passwordField = new PasswordField();

        Button updateButton = new Button("Update");
        
        gridPane.add(emailLabel, 0, 0);
        gridPane.add(emailTextField, 1, 0);
        gridPane.add(passwordLabel, 0, 1);
        gridPane.add(passwordField, 1, 1);
        gridPane.add(updateButton, 0, 2);
        
        updateButton.setOnAction(e -> {
            String email = emailTextField.getText();
            String password = passwordField.getText();
            if (password == "" && email == "") {
	            Alert alert = new Alert(Alert.AlertType.ERROR);
	            alert.setTitle("Update Failed");
	            alert.setHeaderText(null);
	            alert.setContentText("Please enter a valid email or password.");
	            alert.showAndWait();
            }
            else {
            	user.setEmail(email);
            	user.setPassword(password);
            	
           }
        });
        
        
		
		
		
		Button backButton = new Button("Back");
		backButton.setAlignment(Pos.TOP_RIGHT);
		
		 backButton.setOnAction(e -> {
			 dogProfileScene.start(primaryStage);
	            });
		// Convert ArrayList to ObservableList for the ListView
		 ListView<Dog> listView = new ListView<Dog>(observableList);

        // Create ScrollPane and set ListView as its content
	 
        ScrollPane scrollPane = new ScrollPane(listView);
        scrollPane.setFitToWidth(true);
        scrollPane.setFitToHeight(true);
        

        // Create BorderPane
        BorderPane borderPane = new BorderPane();
        borderPane.setBottom(scrollPane);
        borderPane.setCenter(gridPane);
        borderPane.setTop(backButton);
        // Create Scene
        Scene scene = new Scene(borderPane, width, height);

        // Set the scene to the stage
        primaryStage.setScene(scene);
        primaryStage.setTitle("ScrollPane Example");
        primaryStage.show();
	} 	 
}