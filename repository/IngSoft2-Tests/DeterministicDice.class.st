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
	#name : #DeterministicDice,
	#superclass : #Dice,
	#instVars : [
		'nextIndexOfDeterministicValue',
		'deterministicValues'
	],
	#category : #'IngSoft2-Tests'
}

{ #category : #initialization }
DeterministicDice class >> withFaces: anAmountOfFaces andValues: aSetOfValues [
	anAmountOfFaces > 1
	ifTrue: [ ^ self new initializeWithFaces: anAmountOfFaces andValues: aSetOfValues ]
		ifFalse: [ AssertionFailure
				signal: 'You can''t create a dice with less than 2 faces' ]
]

{ #category : #initialization }
DeterministicDice >> initialize [
	deterministicValues := OrderedCollection new.
]

{ #category : #initialization }
DeterministicDice >> initializeWithFaces: anAmountOfFaces andValues: aSetOfValues [
	numberOfFaces := anAmountOfFaces.
	deterministicValues := aSetOfValues.
	nextIndexOfDeterministicValue := numberOfFaces
]

{ #category : #actions }
DeterministicDice >> rollDice [
	"deterministicValues
		ifEmpty: [ aDice numberOfFaces to: 1 by: -1 do: [ :i | deterministicValues add: i ].
			nextIndexOfDeterministicValue := aDice numberOfFaces ]."
	nextIndexOfDeterministicValue <  numberOfFaces
		ifTrue: [ nextIndexOfDeterministicValue := nextIndexOfDeterministicValue + 1 ]
		ifFalse: [ nextIndexOfDeterministicValue := 1 ].
	^ deterministicValues at: nextIndexOfDeterministicValue
]
