Your friend asks you to implement the logic for a quest of a new RPG game he is currently working on. 
The main character is a young man trying to find his way into this world. His best friend was kidnapped by a group of people while the main character was away with his fierce pet dog searching for wild berries inside the forest. The main character follows the trails and finds the group inside the forest: a mighty knight, an archer, and his friend, who is now a prisoner.

Your friend asks you to implement the logic for obtaining the available actions of the main character based on the state of all the characters. The possible actions are:
- Fast attack: you can try a fast attack on the group if the knight is sleeping because it takes time for him to get his armor on, so he will be vulnerable.
- Approach and Spy: you can approach and spy the group if at least one of them is awake. Otherwise, spying is useless... just wasted time, you can instead go and search for wild berries and come back later.
- Signal Prisoner: you can try to communicate with the prisoner by making bird sounds only if the archer is sleeping and the prisoner is awake. The reason is that a lot of archers are trained in bird signling, so he could intercept your message.
- Release Prisoner: You can sneak in and release the prisoner if he is awake and the other two characters are sleeping. Another way for achieving  this would be if the archer is sleeping and the main character has his pet dog with him. In this case the release of the prisoner would look like this: The knight will be scared by the dog, so he will withdraw, the archer would not equip himself fast enough in order to attempt a ranged attack, so he will also have to withdraw and then the main character would be able to release the prisoner.

## Tasks

### 1. Decide if 'Fast Attack' action is possible

Implement a function that returns true if the 'Fast Attack' action is available based on the state of the characters. Otherwise returns false:

```javascript
canExecuteFastAttack(true)
// => false

canExecuteFastAttack(false)
// => true
```

### 2. Decide if 'Approach and Spy' action is possible

Implement a function that returns true if the 'Approach and Spy' action is available based on the state of the characters. Otherwise returns false:

```javascript
canApproachAndSpy(false, true, false)
// => true

canApproachAndSpy(false, false, false)
// => false

```

### 3. Decide if 'Signal Prisoner' action is possible

Implement a function that returns true if the 'Signal Prisoner' action is available based on the state of the characters. Otherwise returns false:

```javascript
canSignalPrisoner(false, true)
// => true

canSignalPrisoner(false, false)
// => false
```

### 4. Decide if 'Release Prisoner' action is possible

Implement a function that returns true if the 'Release Prisoner' action is available based on the state of the characters. Otherwise returns false:

```javascript
canReleasePrisoner(false, false, true, false)
// => true

canReleasePrisoner(true, true, true, true)
// => false
```
