/* Generated by firmware/Makefile */
    .section .rodata
    .p2align 3
_fw_tsp_imagis_ist3038h_a3x_fw_bin:
    .incbin "./firmware/tsp_imagis/ist3038h_a3x.fw"
_fw_end:
   .section .rodata.str,"aMS",@progbits,1
    .p2align 3
_fw_tsp_imagis_ist3038h_a3x_fw_name:
    .string "tsp_imagis/ist3038h_a3x.fw"
    .section .builtin_fw,"a",@progbits
    .p2align 3
    .quad _fw_tsp_imagis_ist3038h_a3x_fw_name
    .quad _fw_tsp_imagis_ist3038h_a3x_fw_bin
    .quad _fw_end - _fw_tsp_imagis_ist3038h_a3x_fw_bin
