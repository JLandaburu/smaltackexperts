"
Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  State a one line summary. For example, ""I represent a paragraph of text"".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.


    Implementation Points
"
Class {
	#name : #Position,
	#superclass : #Object,
	#instVars : [
		'slot',
		'lapsCompleted'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #initialization }
Position class >> on: aSlot andWith: aNumberOfLapsCompleted [ 
	^ self new initializeOn: aSlot  andWith: aNumberOfLapsCompleted. 
	 
]

{ #category : #initialization }
Position >> initialize [
	slot := 1.
	lapsCompleted := 0.
]

{ #category : #initialize }
Position >> initializeOn: aSlot andWith: anAmountOfLapsCompleted [
	slot := aSlot.
	lapsCompleted := anAmountOfLapsCompleted
]

{ #category : #accessing }
Position >> lapsCompleted [
	^ lapsCompleted.
]

{ #category : #accessing }
Position >> slot [
	^ slot.
]