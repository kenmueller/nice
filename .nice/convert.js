console.log(`#include <iostream>

#define if if (
#define while while (
#define for(init, condition, modifier) for (auto init; condition; modifier

#define equals ==

#define eq ==
#define neq !=

#define le <
#define leq <=

#define ge >
#define geq >=

#define or ||
#define and &&

#define add1(name) name++
#define sub1(name) name--

#define then ) {
#define end }
#define else } else {
#define elif } else if (

#define var auto
#define let const auto

#define exit break
#define next continue

#define stop return 0
#define error return 1

#define print(string) std::cout << string
#define println(string) std::cout << string << '\\n'
#define system(string) std::system(string)

int main() {
	${
		process.argv[2]
			.replace(/for([^then]+)/g, 'for ($1)')
			.split('\n')
			.join(';')
	};
}`)
