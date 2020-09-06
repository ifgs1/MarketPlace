# MarketPlace iOS App
A Simple Markeyplace built using swiftUI

## Description
This App shows is a simple MarketPlace built using MVVM architecture and the power of Combine.

## Architecture
![MarketPlace](imgs/MarketPlace.png)

The main idea of the project is to implement Combine along with MVVM architecture with Swift UI.

There are 5 Main Classes:
### ProductsTableView
This class represents the view of the main project, built using Swift UI, This View is subscribing or observing the Data from the View Model.

### CategoriesViewModel
It is the ViewModel that interacts with the model. 

### Category
It represents all the Data abstracted from the business in order to model it and expose to the ViewModel.

### GetCategoriesList
This is a usecase that has a "Published" variable which updates the data from the WebService, everytime there is a service call it is updated and passed to the view which is observing this changes.

### WebService
Calls a restful GET web service to fetch the categories and products displayed.
## Structure
![MarketPlace](imgs/ProjectStructure.png)

## Screens
### Home
![MarketPlace](imgs/Home.png)

### Product Detail
![MarketPlace](imgs/Detail.png)


### Profile
![MarketPlace](imgs/Profile.png)

### Complete interaction
![MarketPlace](imgs/MarketPlace.gif)


## License
©Iván Felipe García Sánchez
