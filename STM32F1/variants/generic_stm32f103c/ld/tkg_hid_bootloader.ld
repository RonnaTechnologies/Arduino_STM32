/*
 * TKG-HID FLASH BUILD LINKER SCRIPT - V3.1
 * STM32F103C8 / STM32F103CB
 */
MEMORY
{
  /* Real RAM size of the board */
  ram (rwx) : ORIGIN = 0x20000000, LENGTH = 20K
  /* Flash RAM size of the board minus 4K */
  rom (rx)  : ORIGIN = 0x08001000, LENGTH = 124K
}

/* Provide memory region aliases for common.inc */
REGION_ALIAS("REGION_TEXT", rom);
REGION_ALIAS("REGION_DATA", ram);
REGION_ALIAS("REGION_BSS", ram);
REGION_ALIAS("REGION_RODATA", rom);

/* Let common.inc handle the real work. */
INCLUDE common.inc
