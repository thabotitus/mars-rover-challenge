## Mars Rover Challenge
Simple implementation of the Mars Rover Challenge [Here](https://code.google.com/archive/p/marsrovertechchallenge/)

### Install dependencies
```
bundle install
```

### Run Test Cases
```
bundle exec rspec .
```

### Assumptions

- The person sending instructions knows where the edges are, so the rover won't go over the edge. Therefore not checking in this solution if the rover is at the edge of the map.

- The person sending instructions initializes the map by telling us where the rovers are and their current bearing.
