---
layout: post
title: 'Image Processor'
---

I created this simple image processor using object-oriented concepts like the Command Design Pattern,
MVC (Mode, View Controller) model, and Factory Pattern. The image processor supports 15 different commands such as flipping, greyscaling, blurring, sharpening, loading, and saving an image. All these commands are there own classes that implement a single  interface and method, following the Command Design Pattern.

{% include youtubePlayer.html id="_QM6WjbqOyw" %}

My code is also separated into a model, view, and controller. The model stores a collection of images and holds the method to call commands and edit an image. I also have two views: a text and GUI (graphical user interface). Lastly, the controller
takes in user input and correctly calls upon the model and view to execute the what the user desires.

{% include singleimage.html image="projects/proj-2/thumb.jpg" %}

On the GUI, the richt side displays the 15 commands the user can apply to the image. At the top left, there is a message display, that tells the user whether their command was successful or it there was a program error. Right below this message is the image viewport that displays the image the user is affecting. At the bottom, there is a line graph that displays the distribution of pixels with colors of that value. The horizontal axis is 256 sections to represent the range of values for a color's RGB values. The vertical axis represents the frequency of pixels with that color value.

To view this code, please visit my [GitHub](https://github.com/maialeelemos).
