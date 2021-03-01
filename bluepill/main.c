void Reset() {
    while (1);
    
}

// Acording to section 5.9 of the Cortex-M3 TRM

#define STACK_SIZE 256
unsigned int stack[STACK_SIZE];

// Vector table size from STM32F103xx Reference Manual, Table 63.
const void *vector_table[76] __attribute__((section(".vectors"))) = {
    stack + sizeof(stack), // descendent stack (stack starts at the end of the array)
    Reset,
    0
};
