### Data type declarations
ADT's are closed sets of data constructors for a type
Each data constructor can optionally be parameterized by a record
ADT's can be polymorphic

```elm
type GameState = Menu | Running | GameOver
type Vector2 = { x : Number, y : Number }
type Result a b = Fail a | Succeed b
```

A new type can be declared that an alias to the existing type and can be used in type signatures
```elm
type alias Position = Vector2
type alias Velocity = Vector2
type alias ElapsedTime = Number
move : Position -> Veclocity -> ElapsedTime -> Position
move { x: 0, y: 1 } { x: 1.23, y: 5 } 1
```

ADT's can be unions of other ADT's
```elm
type MenuMessage = Start | Options
type GameMessage
  = Jump { entity: Entity }
  | Collision { entities: Array Entity }
  | Die { entity: Entity }
  | Score { amount : Int }
type Messages = MenuMessage | GameMessage
```

### Function declaration
Same as Elm/Haskell
```elm
applyVelocity : Entity -> ElapsedTime -> Entity
head : Array a -> Result String a
```

### Function implementation
Indented after type signature
```elm
logMessage : Message -> String
  Start = "Game started"
  Options = "Options"
  Jump { entity } = "{entity.name} jumped"
  Collision { entities } =
    _.name `map` entities
    |> join ', '
    |> "Entities: {}"
  Die { entity } = "{entity.name} died"
  Score { amount } = "Gained {amount} points"
```

#### Idea: ADT's can be guarded by a predicate function
Not sure how this would work out since there must be some way to return something that is not the value indicating the predictate failed
```elm
type Index = Int :: i => 0 <= i
current : Index
current = 5
next : Index
next = 0 -- can't put an actual Index here, can't throw an exception, what do we do?
```

### Records
