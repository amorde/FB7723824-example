
An example project for Apple Feedback FB7723824 

Most relevant section of code is here: https://github.com/amorde/FB7723824-example/blob/d4d9795d7ea66d67bfec2a9009e9646f971e773b/CoreDataMemoryLeak/ViewController.m#L50-L64

# Notes

Running the app will start some benchmarks and show an alert at the end, prompting you to check the memory graph debugger.

# Workaround

The code below makes the problem less severe but does not eliminate it entirely:
```

Method m = class_getInstanceMethod([NSEntityDescription class], @selector(_addFactoryToRetainList:));
method_setImplementation(m, imp_implementationWithBlock(^void(id self, id _unused, int factory){
    /// Do nothing
}));
```

# Results

## iOS 17
```
iteration 500, time since start: 4.011935949325562, time since last chunk: 4.011935949325562
iteration 1,000, time since start: 9.808746933937073, time since last chunk: 5.796810984611511
iteration 1,500, time since start: 18.77914297580719, time since last chunk: 8.970396041870117
iteration 2,000, time since start: 34.32950091362, time since last chunk: 15.55035793781281
iteration 2,500, time since start: 49.83159899711609, time since last chunk: 15.50209808349609
iteration 3,000, time since start: 70.21706998348236, time since last chunk: 20.38547098636627
```


## iOS 13
```
iteration 500, time since start: 4.710741996765137, time since last chunk: 4.710741996765137
iteration 1000, time since start: 12.13597202301025, time since last chunk: 7.425230026245117
iteration 1500, time since start: 25.14089000225067, time since last chunk: 13.00491797924042
iteration 2000, time since start: 48.76982605457306, time since last chunk: 23.62893605232239
iteration 2500, time since start: 87.52643001079559, time since last chunk: 38.75660395622253
iteration 3000, time since start: 129.2212740182877, time since last chunk: 41.69484400749207
```

## iOS 12
```
iteration 500, time since start: 3.63465690612793, time since last chunk: 3.63465690612793
iteration 1000, time since start: 8.937957882881165, time since last chunk: 5.303300976753235
iteration 1500, time since start: 16.94324791431427, time since last chunk: 8.005290031433105
iteration 2000, time since start: 27.02429795265198, time since last chunk: 10.08105003833771
iteration 2500, time since start: 38.47879695892334, time since last chunk: 11.45449900627136
iteration 3000, time since start: 52.48985195159912, time since last chunk: 14.01105499267578
```
