### Band pass filter 

Taken as part of a technical test on week 9 of Makers 

#### Client

The client wants you to make a plug in for musicians writing music so that filters can be applied to their tracks and alter the frequency  

#### Specifications 

- The program takes a soundwave as an input 
- The soundwave is modeled as an array 
- All elements in an array are frequencies in a sound
- The frequencies need to be within the given frequency band
- If the frequency is above the upper limit it needs to be adjusted downwards so that the frequency is within the limit 
- If the frequency is below the lower limit it needs to be adjusted upwards so that the frequency is within the limit 
- The frequency doesn't need adjusting if it is already within the limit, it can remain the same

#### What are the limits?

The default limits provided are: lower limit = 40 and upper limit = 1000

The user should also be able to change these values and use their own limits 

| Input                | Output            | 
| ---------------------|------------------:| 
| [60,10,45,60,1500]   | [60,40,45,60,1000]|

The [10] and [1500] have both been adjusted according to the default limits

#### Additional specifications

- Raise the error "Sound waves are not parsed correctly" if the soundwave is not modeled as an array, if any of the frequencies entered are below 1

- This program needs to be run on streamed music, so it should process a full second of music (44,100 frequencies) in under 100ms.

#### Comments 
- I installed the 'rspec-benchmark' in order to be able to do the performace timings
