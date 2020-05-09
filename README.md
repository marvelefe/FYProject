# Malaria Detection in Blood Samples Using Convolutional Neural Networks
Intro: This entire project was developed from April - July 2019 for my final year project at Benson Idahosa University, Benin City, Edo State, Nigeria.

HEADS UP: I'd recommend you train your CNN using a computer with a Cuda-enabled GPU. If you can't afford one like myself (I used a basic intel core i5 CPU to train this CNN) then you should be sure to change your computer's hard drive when you're done because the entire training process takes a toll on your hard drive.

Malaria is the leading cause of morbidity and mortality in tropical and subtropical countries. WHO
estimates the number of malaria deaths at 435,000 for 2018. Machine learning has great potential
to lighten the burden of malaria in temperate regions around the world where mosquitoes thrive
especially in remote sub-Saharan Africa.

However, the accuracy of the manual method of malaria
diagnosis using microscopy depends on the human expert. However, it is prone to some
shortcomings which include time consumption and excessive workload for the pathologists. We
propose an automated diagnostic system that can exclude the human expert from the process or
serve as an aid for an expert to lower workload and improve accuracy. The ultimate goal of this
work was to develop a system for detecting malaria using microscopic images of stained blood
samples.

Thus in the process of this work, an accurate, speedy and affordable system of malaria detection
using stained blood smear images was developed. The method is based on supervised machine
learning using deep learning algorithms which involves training a convolutional neural network
and using it to test for the presence of malaria parasites in blood smear images. Images of infected
and non-infected blood samples were given to the convolutional neural network as training data
and relevant features were extracted from them and eventually further classification can be made
by the network based on the features extracted from the images. The classification entailed the
detection of malaria parasites.

The algorithm successfully trained on 1,000 images with a training
and validation accuracy of 100.00% respectively and it was tested on the images of four blood
samples that it had not seen before and further classified them as infected or uninfected with a
100% accuracy. The battle against the devastating burden of malaria will continue. Early and
accurate diagnosis is one of the keystones in the fight against this. This project work can be
described as a required component in the development of a tool that will bring a healthy and
malaria-free world one step closer to reality.
