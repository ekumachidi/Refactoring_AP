# Refactoring / Null Object Part One

Hey there! We're [thoughtbot](https://thoughtbot.com), a design and
development consultancy that brings your digital product ideas to life.
We also love to share what we learn.

This coding exercise comes from [Upcase](https://thoughtbot.com/upcase),
the online learning platform we run. It's part of the
[Refactoring](https://thoughtbot.com/upcase/refactoring) course and is just one small sample of all
the great material available on Upcase, so be sure to visit and check out the rest.

## Exercise Intro

In this exercise, you'll create a class following the Null Object pattern in order to encapsulate conditional logic.

[Watch a relevant example from The Weekly Iteration](https://upcase.com/videos/live-coding-session-replace-conditional-with-null-object).

## Instructions

To start, you'll want to clone and run the setup script for the repo

    git clone git@github.com:thoughtbot-upcase-exercises/null-object-part-one.git
    cd null-object-part-one
    bin/setup

1. Open `lib/user.rb` in your favorite editor.
2. Look for conditionals related to `nil`.
3. Introduce a Null Object. Think of a good name based on what `nil` represents
   in this context.
4. Replace a single conditional by moving the nil logic to the Null Object.
5. Repeat step four until the `nil` cases are fully encapsulated within the Null
   Object.
6. Make sure all tests pass by running `rake`.


## Forum Discussion

If you find yourself stuck, be sure to check out the associated
[Upcase Forum discussion](https://forum.upcase.com/t/refactoring-null-object-part-one/4640)
for this exercise to see what other folks have said.

## Next Steps

When you've finished the exercise, head on back to the
[Refactoring](https://thoughtbot.com/upcase/refactoring) course to find the next exercise,
or explore any of the other great content on
[Upcase](https://thoughtbot.com/upcase).

## License

null-object-part-one is Copyright © 2015-2018 thoughtbot, inc. It is free software,
and may be redistributed under the terms specified in the
[LICENSE](/LICENSE.md) file.

## Credits

![thoughtbot](https://presskit.thoughtbot.com/assets/images/logo.svg)

This exercise is maintained and funded by
[thoughtbot, inc](http://thoughtbot.com/community).

The names and logos for Upcase and thoughtbot are registered trademarks of
thoughtbot, inc.
