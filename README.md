# The **nice** language

## Download

```bash
git clone https://github.com/kenmueller/nice.git && cd nice && ./init.sh && cd .. && source ~/.nice/main.sh && rm -rfv nice
```

### **To run**

```bash
nice file.nice
```

## Commands

- **`nice file.nice`**
  - Runs the nice file
- `nicec file.nice`
  - Compiles the nice file to a binary alongside it
- `nice-run file`
  - Runs the compiled nice file
- `nice-to-cpp file.nice`
  - Writes the compiled C++ code to a file alongside it

## Rules

- Strings are surrounded with double quotes
- Characters are surrounded with single quotes
- Semicolons are optional

## Overview

### **Variables (`var`)**

```nice
var message = "Hello!"

message += " My name is Ken."
```

- Able to be reassigned

### **Constants (`let`)**

```nice
let message = "Hello!"
```

- **Cannot** be reassigned


### **`print`**

```nice
print("Hello!")

// Example

print('H')
print('e')
print('l')
print('l')
print('o')

// => "Hello"
```

- Can print strings or characters

### **`println`**

```nice
println("Hello!")

// Example

println('Hi!')
println('My name is Ken')

/*
 * Output:
 *
 * Hi!
 * My name is Ken
 */
```

- Can print strings or characters
- Prints a newline after the string or character

### **`if`**

```nice
if i == 4 then
    print(i)
end

if k == 6 then
    print("k equals 6")
elif k == 7 then
    print("k equals 7")
else
    print("k does not equal 6")
end
```

- Must have `then` after the condition
- No parentheses around condition
- `end` keyword after body

### **`while`**

```nice
var i = 0

while i != 4 then
    // Print i
    print(i)
    
    // Subtract 1 from i
    sub1(i)
end
```

- Same syntax as `if` statements

### **`for`**

```nice
for i = 1, i < 4, i++ then
    println(i)
    
    if i == 2 then
        exit
    end
    
    if i == 3 then
        next
    end
end
```

- First parameter is the initial assignment. If you don't want anything to be assigned, write `_ = 0` in its place
- Second parameter is the the condition. When this condition fails, the for loop `exit`s
- Third parameter is the operation performed after every iteration
- The `exit` keyword is equivalent to `break`. This exits the current loop (applies to `while` loops as well)
- The `next` keyword is equivalent to `continue`. This goes on to the next iteration of the loop (applies to `while` loops as well)

### **Helper methods**

```nice
// Adds 1 to x (must be a variable)
add1(x)

// Subtracts 1 from x (must be a variable)
sub1(x)
```

- Commonly used with `for` loops

### **Program flow**

```nice
if x != 4 then
    error
elif x != 5 then
    stop
end
```

- `stop` - Stops the entire program
- `error` - Stops the entire program, signaling an error

### **Comparison**

```nice
if x equals 4 then
    error
elif x notequals 5 then
    stop
end
```

- `equals` - Equivalent to `==`
- `notequals` - Equivalent to `!=`
