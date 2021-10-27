### Band pass filter 

Taken as part of a technical 

Makes digital audio work station plug ins 

Musicians writing music apply our filters to their tracks and that changes how it sounds 

A band pass filter

- takes a soundwave as an input 
- sound wave is modeled as an array - raise an error if the input is not given as an array - "Sound waves are not parsed correctly"
- If there are negative numbers given or zero, use the same error message - "Sound waves are not parsed correctly"
- All elements in an array are frequencies in a sound 
- frequencies need to be within the band
- if the frequency is above the upper limit it needs to be adjusted so that the frequency is within the limit 
- the same for if the frequency is below the lower limit 
- the frequency doesn't need adjusting if it is already within the limit 

A sound wave would look like this: [60,10,45,60,1500]

The output would look like this: [60,40,45,60,1000]

This program needs to be run on streamed music, so it should process a full second of music (44,100 frequencies) in under 100ms.

### What are the limits?

The default limits provided are: lower limit = 40 and upper limit =1000

The user should also be able to change these value and use their own limits 
