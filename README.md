# Demographic Analysis of Handwritten text

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger) [![License](https://img.shields.io/badge/License-propriety-blue.svg)](https://opensource.org/licenses/Apache-2.0)

Demograhphic anaylsis of handwritten task was an effort made by me for fulfilment of my bachelors degree. This was my final year project of my bachelors

# Intorduction

Handwritings can be classified into many categories including gender, age, handedness, and nationality. This type of classification has several applications. For example, in the forensic domain, handwriting classification can help the investigators to focus on a certain category of suspects. Additionally, processing each category separately leads to improved results in writer identification and verification applications.

# Main Approach

For classification, we have employed a feed forward artificial neural network. The features from writing samples of male and female writers in the training database are fed to the network making it learn to differentiate between the two classes. The number of hidden neurons in the network is chosen empirically using the validation dataset. During classification, the feature vector of the query writing image is
fed to the trained network which outputs the class label, i.e. male or female writer.
![Main Approach](https://github.com/FaheemBhatti/Demographic-Analysis-of-Handwritten-text/blob/master/Resources/Approach.JPG)

# Usage
Unfortuantely this code is no packadged SORRY :(, for using you have to setup Matlab locally in your machine and perfect entry point for starting is via GUI class. 