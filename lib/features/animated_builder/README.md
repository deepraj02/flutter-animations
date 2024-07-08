## This Feature Contains Animations that can be achieved with Flutter's `AnimatedBuilder` widget.

### Setup

- [x] Add `SingleTickerProviderStateMixin` mixin class in your Stateful Widget
- [x] Override `initState` and `dispose` methods to initialize and dispose the controllers.

  ``` dart
    @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animation = Tween<double>(begin: 0, end: 2 * pi).animate(_controller);

    /// To repeat the animation
    ///
    _controller.repeat();
  }

  /// Disposing Conntrollers to avoid performance leaks
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  ```

- [x] Use the `Transform` widget with `AnimatedBuilder` to Achieve the desired Animation.

```dart
AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..rotateY(
                    _animation.value,
                  ),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                ),
              );
            }),
```