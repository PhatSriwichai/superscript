
+ testing topic system
- we like it
- i hate it

+ testing topic *
- we really like it

+ force break
- not going to hit this.

+ force continue
- force two

+ testing flow
- bingo

+ break with continue
- {CONTINUE} ended

// With the continue bit set we should still hit this next one too
+ break * continue
- test passed

> topic __pre__ {keep}

	+ testing topic system
	- ^save("key", "value")

	+ force break
	- ^breakFunc()

	+ force continue
	- ^nobreak() force one

	+ testing flow
	- ^save("key", "value")

< topic

> topic filter1 ^filterTopic() {keep}
  + filter topic *
  - filter pass topic1
< topic

> topic filter2 ^filterTopic() {keep}
  + filter topic *
  - filter pass topic2
< topic

> topic outdoors ( fishing, hunting, camping ) {keep}

	+ I like to *
	- i like to spend time outdoors

  + hiking is so much fun
  - I like to hike too!

  + I like to spend *
  - outdoors

< topic


> topic fishing (fish, fishing, to_fish, rod, worms)

  + I like to spend time *
  - fishing

	+ I like to *
	- me too

< topic


// GH-240
+ test empty
- ^topicRedirect("test", "__empty__")

+ generic redirect
- ^topicRedirect("test", "__something__")

+ generic respond
- ^respond("test")

+ test respond
- ^respond("test")

> topic test {keep}
    + __empty__
    - {END}

    + test respond
    - {END}

    + __something__
    - Something

    + *
    - Topic catchall
< topic
