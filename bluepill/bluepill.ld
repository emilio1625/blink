/* Addresses and lengths from the stm32f103c8 datasheet */
MEMORY {
    flash (RX) : ORIGIN = 0x08000000, LENGTH = 64K
    sram (!RX) : ORIGIN = 0x20000000, LENGTH = 20K
}

SECTIONS {
    .vectors : { *(.vectors) } >flash
    .text    : { *(.text)    } >flash
    .rodata  : { *(.rodata)  } >flash
    .bss     : { *(.bss)     } >sram
}