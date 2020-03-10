Your friend asks you to implement the logic for a quest of a new RPG game he is currently working on. 
The main character, Annalyn, is a brave girl trying to find her way into this world. Her best friend was kidnapped by a group of people while Annalyn was away with her fierce pet dog searching for wild berries inside the forest. Annalyn, who might optionally take her dog with her, follows the trails and finds the group inside the forest: a mighty knight, an archer, and her friend, who is now a prisoner.

Your friend asks you to implement the logic for obtaining all the available actions which Annalyn can take based on the state of all three characters found in the forrest and also based on whether Annalyn's pet dog is present or not. The possible actions are:
- Fast attack: you can try a fast attack on the group if the knight is sleeping because it takes time for him to get his armor on, so he will be vulnerable.
- Approach and Spy: you can approach and spy the group if at least one of them is awake. Otherwise, spying is useless... just wasted time, you can instead go and search for wild berries and come back later.
- Signal Prisoner: you can try to communicate with the prisoner by making bird sounds only if the archer is sleeping and the prisoner is awake. The reason is that a lot of archers are trained in bird signling so he could intercept your message.
- Release Prisoner: You can sneak in and release the prisoner if he is awake and the other two characters are sleeping. Another way for achieving this would be if the archer is sleeping and Annalyn has her pet dog with him. In this case the release of the prisoner would look like this: The knight will be scared by the dog, so he will withdraw, the archer would not equip himself fast enough in order to attempt a ranged attack, so he will also have to withdraw and then the main character would be able to release the prisoner.

## Tasks

### 1. Decide if 'Fast Attack' action is possible

Implement a function named `canExecuteFastAttack` that takes a boolean value which indicates if the knight is awake. This function returns `true` if the 'Fast Attack' action is available based on the state of the character. Otherwise, returns `false`:

```javascript
const knightIsAwake = true;
canExecuteFastAttack(knightIsAwake)
// => false
```

### 2. Decide if 'Approach and Spy' action is possible

Implement a function named `canApproachAndSpy` that takes three boolean values, indicationg if the knight, archer and the prisoner, respectively, are awake. The function returns `true` if the 'Approach and Spy' action is available based on the state of the characters. Otherwise, returns `false`:

```javascript
const knightIsAwake = false;
const archerIsAwake = true;
const prisonerIsAwake = false;
canApproachAndSpy(knightIsAwake, archerIsAwake, prisonerIsAwake)
// => true
```

### 3. Decide if 'Signal Prisoner' action is possible

Implement a function named `canSignalPrisoner` that takes two boolean values, indicationg if the archer and the prisoner, respectively, are awake. The function that returns `true` if the 'Signal Prisoner' action is available based on the state of the characters. Otherwise, returns `false`:

```javascript
const archerIsAwake = false;
const prisonerIsAwake = true;
canSignalPrisoner(archerIsAwake, prisonerIsAwake)
// => true
```

### 4. Decide if 'Release Prisoner' action is possible

Implement a function named `canReleasePrisoner` that takes four boolean values. The first three parameters indicate if the knight, archer and the prisoner, respectively, are awake. The last parameters indicates if Annalyn's pet dog is present. The function returns `true` if the 'Release Prisoner' action is available based on the state of the characters and also based on Annalyn's pet dog presence. Otherwise, returns `false`:

```javascript
const knightIsAwake = false;
const archerIsAwake = true;
const prisonerIsAwake = false;
const petDogIsPresent = false;
canReleasePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent)
// => false
```