# hfetch
fetch tool in the day, health tracker in the night.

### Current outline for how It'll be used:
```
# logs workout and meal data in local database (in a hidden file probably) with their 
# times and dates for doing data analysis later in the fetch.
# all exercises have the same options but may be processed differently,
# also options left out are defaulted.

$ hfetch +workout '{
  "interworkout.rest": 10,
  "push.up": { "reps": 18, "sets": 4, "rest": 3 },
  "pull.up": { "reps": 14, "sets": 3, "added.weight": 2, "rest": 4 },
  "inclined.bench.press": { "reps": 5, "weight": 18 },
  ...
}'
```

```
$ hfetch +meal '{ "carbs": 200, "protein": 50 }'
```


```
$ hfetch
⠀⠀⠀⠀  (\__/)⠀⠀⠀⠀⠀     ||||||||||||| info |||||||||||
⠀⠀⠀⠀  (•ㅅ•)          |||||||||||||||||||||||||||||||||
 ⠀＿ ノヽ⠀ノ＼＿⠀     ||||||||||||||||||||||||||||||||||
/⠀️⠀Y⠀⌒Ｙ⌒⠀Ｙ⠀️   ヽ    ||||||||||||||||||||||||||||||||
(⠀️⠀️⠀️(三ヽ人⠀⠀/⠀ ⠀ |   ||||||||||||||||||||||||||||||||||
|⠀️⠀️⠀️ﾉ⠀¯¯\⠀￣￣ヽ ノ   |||||||||||||||||||||||||||||||||
ヽ＿＿＿⠀⠀＞､＿_／    ||||||||||||||||||||||||||||||||||
⠀⠀｜  (⠀王⠀)〈        ||||||||||||||||||||||||||||||||
⠀⠀/   ﾐ`——彡  \ 

```
