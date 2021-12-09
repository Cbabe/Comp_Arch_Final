# Computer Architecture Final Project
By Charlie Babe and Charlotte Ramiro  <br> <br>


## Introduction

We chose to do our final project for our Computer Architecture class by implementing a static random-access memory (SRAM) module in SystemVerilog and analyzing it with a custom testbench. We wanted to explore the different architectures that have been used to create SRAM in the past, as well as the direction that random-access memory (RAM) is taking with modern architecture practices. Furthermore, we wanted to improve not only our own understanding of RAM, but our classmates' as well; therefore, we want out project to be thoroughly-documented, comprehensive, able to provide guidelines on creating SRAM, and provide questions to incite deeper understanding from the reader.  <br>  



## What is RAM?

Random-access memory is a form of computer memory that can be read and changed in any order and is typically used to store working data or machine code. Unlike direct-access data storage such as CDs and DVDs, RAM is able to access data stored in any part of the physical memory in around the same amount of time, making it convenient for data that needs to be accessed frequently and in no particular order. The most common types of RAM are forms of volatile memory, meaning that stored information is lost when power is lost; non-volatile RAM has also been developed, but we chose to focus on volatile RAM since it is its most common application.

The two main types of volatile RAM are dynamic RAM (DRAM) and static RAM (SRAM, which we will be recreating in this project). As its name suggests, DRAM is constantly changing. It requires an external memory refresh which periodically rewrites the data in its internal capacitors and restores them to their original charge. 



## The Past and Future of RAM
History and modern ram stuff here

## Our Implementation and Testbench
Our SRAM implementation can be seen in the ```SRAM.sv``` file, while our testbench is in ```Test_SRAM.sv```. \[Insert notes about code/testbench here\]

## Questions for Understanding

## Resources (needs to be formatted)
https://en.wikipedia.org/wiki/Random-access_memory
https://en.wikipedia.org/wiki/Dynamic_random-access_memory
