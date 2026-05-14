pragma Warnings (Off);
pragma Ada_95;
with System;
with System.Parameters;
with System.Secondary_Stack;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: 15.2.0" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   GNAT_Version_Address : constant System.Address := GNAT_Version'Address;
   pragma Export (C, GNAT_Version_Address, "__gnat_version_address");

   Ada_Main_Program_Name : constant String := "_ada_phctop" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#739ffd0a#;
   pragma Export (C, u00001, "phctopB");
   u00002 : constant Version_32 := 16#c9d5c3c5#;
   pragma Export (C, u00002, "phctopS");
   u00003 : constant Version_32 := 16#b2cfab41#;
   pragma Export (C, u00003, "system__standard_libraryB");
   u00004 : constant Version_32 := 16#ba677807#;
   pragma Export (C, u00004, "system__standard_libraryS");
   u00005 : constant Version_32 := 16#d43ce5fa#;
   pragma Export (C, u00005, "actions_and_optionsB");
   u00006 : constant Version_32 := 16#d0e53fa3#;
   pragma Export (C, u00006, "actions_and_optionsS");
   u00007 : constant Version_32 := 16#a201b8c5#;
   pragma Export (C, u00007, "ada__strings__text_buffersB");
   u00008 : constant Version_32 := 16#a7cfd09b#;
   pragma Export (C, u00008, "ada__strings__text_buffersS");
   u00009 : constant Version_32 := 16#76789da1#;
   pragma Export (C, u00009, "adaS");
   u00010 : constant Version_32 := 16#e6d4fa36#;
   pragma Export (C, u00010, "ada__stringsS");
   u00011 : constant Version_32 := 16#a869df9e#;
   pragma Export (C, u00011, "systemS");
   u00012 : constant Version_32 := 16#45e1965e#;
   pragma Export (C, u00012, "system__exception_tableB");
   u00013 : constant Version_32 := 16#2542a987#;
   pragma Export (C, u00013, "system__exception_tableS");
   u00014 : constant Version_32 := 16#7fa0a598#;
   pragma Export (C, u00014, "system__soft_linksB");
   u00015 : constant Version_32 := 16#7be26ab7#;
   pragma Export (C, u00015, "system__soft_linksS");
   u00016 : constant Version_32 := 16#d0b087d0#;
   pragma Export (C, u00016, "system__secondary_stackB");
   u00017 : constant Version_32 := 16#06a28e92#;
   pragma Export (C, u00017, "system__secondary_stackS");
   u00018 : constant Version_32 := 16#ebbee607#;
   pragma Export (C, u00018, "ada__exceptionsB");
   u00019 : constant Version_32 := 16#d8988d8d#;
   pragma Export (C, u00019, "ada__exceptionsS");
   u00020 : constant Version_32 := 16#85bf25f7#;
   pragma Export (C, u00020, "ada__exceptions__last_chance_handlerB");
   u00021 : constant Version_32 := 16#a028f72d#;
   pragma Export (C, u00021, "ada__exceptions__last_chance_handlerS");
   u00022 : constant Version_32 := 16#9acc60ac#;
   pragma Export (C, u00022, "system__exceptionsS");
   u00023 : constant Version_32 := 16#c367aa24#;
   pragma Export (C, u00023, "system__exceptions__machineB");
   u00024 : constant Version_32 := 16#ec13924a#;
   pragma Export (C, u00024, "system__exceptions__machineS");
   u00025 : constant Version_32 := 16#7706238d#;
   pragma Export (C, u00025, "system__exceptions_debugB");
   u00026 : constant Version_32 := 16#986787cd#;
   pragma Export (C, u00026, "system__exceptions_debugS");
   u00027 : constant Version_32 := 16#8af69cdf#;
   pragma Export (C, u00027, "system__img_intS");
   u00028 : constant Version_32 := 16#f2c63a02#;
   pragma Export (C, u00028, "ada__numericsS");
   u00029 : constant Version_32 := 16#174f5472#;
   pragma Export (C, u00029, "ada__numerics__big_numbersS");
   u00030 : constant Version_32 := 16#5243a0c7#;
   pragma Export (C, u00030, "system__unsigned_typesS");
   u00031 : constant Version_32 := 16#64b70b76#;
   pragma Export (C, u00031, "system__storage_elementsS");
   u00032 : constant Version_32 := 16#5c7d9c20#;
   pragma Export (C, u00032, "system__tracebackB");
   u00033 : constant Version_32 := 16#2ef32b23#;
   pragma Export (C, u00033, "system__tracebackS");
   u00034 : constant Version_32 := 16#5f6b6486#;
   pragma Export (C, u00034, "system__traceback_entriesB");
   u00035 : constant Version_32 := 16#60756012#;
   pragma Export (C, u00035, "system__traceback_entriesS");
   u00036 : constant Version_32 := 16#b69e050b#;
   pragma Export (C, u00036, "system__traceback__symbolicB");
   u00037 : constant Version_32 := 16#140ceb78#;
   pragma Export (C, u00037, "system__traceback__symbolicS");
   u00038 : constant Version_32 := 16#179d7d28#;
   pragma Export (C, u00038, "ada__containersS");
   u00039 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00039, "ada__exceptions__tracebackB");
   u00040 : constant Version_32 := 16#26ed0985#;
   pragma Export (C, u00040, "ada__exceptions__tracebackS");
   u00041 : constant Version_32 := 16#9111f9c1#;
   pragma Export (C, u00041, "interfacesS");
   u00042 : constant Version_32 := 16#401f6fd6#;
   pragma Export (C, u00042, "interfaces__cB");
   u00043 : constant Version_32 := 16#e5a34c24#;
   pragma Export (C, u00043, "interfaces__cS");
   u00044 : constant Version_32 := 16#a43efea2#;
   pragma Export (C, u00044, "system__parametersB");
   u00045 : constant Version_32 := 16#9dfe238f#;
   pragma Export (C, u00045, "system__parametersS");
   u00046 : constant Version_32 := 16#0978786d#;
   pragma Export (C, u00046, "system__bounded_stringsB");
   u00047 : constant Version_32 := 16#df94fe87#;
   pragma Export (C, u00047, "system__bounded_stringsS");
   u00048 : constant Version_32 := 16#234db811#;
   pragma Export (C, u00048, "system__crtlS");
   u00049 : constant Version_32 := 16#799f87ee#;
   pragma Export (C, u00049, "system__dwarf_linesB");
   u00050 : constant Version_32 := 16#d0240b99#;
   pragma Export (C, u00050, "system__dwarf_linesS");
   u00051 : constant Version_32 := 16#5b4659fa#;
   pragma Export (C, u00051, "ada__charactersS");
   u00052 : constant Version_32 := 16#9de61c25#;
   pragma Export (C, u00052, "ada__characters__handlingB");
   u00053 : constant Version_32 := 16#729cc5db#;
   pragma Export (C, u00053, "ada__characters__handlingS");
   u00054 : constant Version_32 := 16#cde9ea2d#;
   pragma Export (C, u00054, "ada__characters__latin_1S");
   u00055 : constant Version_32 := 16#203d5282#;
   pragma Export (C, u00055, "ada__strings__mapsB");
   u00056 : constant Version_32 := 16#6feaa257#;
   pragma Export (C, u00056, "ada__strings__mapsS");
   u00057 : constant Version_32 := 16#b451a498#;
   pragma Export (C, u00057, "system__bit_opsB");
   u00058 : constant Version_32 := 16#659a73a2#;
   pragma Export (C, u00058, "system__bit_opsS");
   u00059 : constant Version_32 := 16#b459efcb#;
   pragma Export (C, u00059, "ada__strings__maps__constantsS");
   u00060 : constant Version_32 := 16#f9910acc#;
   pragma Export (C, u00060, "system__address_imageB");
   u00061 : constant Version_32 := 16#098542a4#;
   pragma Export (C, u00061, "system__address_imageS");
   u00062 : constant Version_32 := 16#9dd7353b#;
   pragma Export (C, u00062, "system__img_address_32S");
   u00063 : constant Version_32 := 16#b0f794b9#;
   pragma Export (C, u00063, "system__img_address_64S");
   u00064 : constant Version_32 := 16#c1e0ea20#;
   pragma Export (C, u00064, "system__img_unsS");
   u00065 : constant Version_32 := 16#20ec7aa3#;
   pragma Export (C, u00065, "system__ioB");
   u00066 : constant Version_32 := 16#362b28d1#;
   pragma Export (C, u00066, "system__ioS");
   u00067 : constant Version_32 := 16#264c804d#;
   pragma Export (C, u00067, "system__mmapB");
   u00068 : constant Version_32 := 16#25542119#;
   pragma Export (C, u00068, "system__mmapS");
   u00069 : constant Version_32 := 16#367911c4#;
   pragma Export (C, u00069, "ada__io_exceptionsS");
   u00070 : constant Version_32 := 16#5102ad93#;
   pragma Export (C, u00070, "system__mmap__os_interfaceB");
   u00071 : constant Version_32 := 16#52ab6463#;
   pragma Export (C, u00071, "system__mmap__os_interfaceS");
   u00072 : constant Version_32 := 16#c04dcb27#;
   pragma Export (C, u00072, "system__os_libB");
   u00073 : constant Version_32 := 16#2d02400e#;
   pragma Export (C, u00073, "system__os_libS");
   u00074 : constant Version_32 := 16#94d23d25#;
   pragma Export (C, u00074, "system__atomic_operations__test_and_setB");
   u00075 : constant Version_32 := 16#57acee8e#;
   pragma Export (C, u00075, "system__atomic_operations__test_and_setS");
   u00076 : constant Version_32 := 16#6f0aa5bb#;
   pragma Export (C, u00076, "system__atomic_operationsS");
   u00077 : constant Version_32 := 16#553a519e#;
   pragma Export (C, u00077, "system__atomic_primitivesB");
   u00078 : constant Version_32 := 16#a0b9547d#;
   pragma Export (C, u00078, "system__atomic_primitivesS");
   u00079 : constant Version_32 := 16#b98923bf#;
   pragma Export (C, u00079, "system__case_utilB");
   u00080 : constant Version_32 := 16#677a08cb#;
   pragma Export (C, u00080, "system__case_utilS");
   u00081 : constant Version_32 := 16#256dbbe5#;
   pragma Export (C, u00081, "system__stringsB");
   u00082 : constant Version_32 := 16#33ebdf86#;
   pragma Export (C, u00082, "system__stringsS");
   u00083 : constant Version_32 := 16#836ccd31#;
   pragma Export (C, u00083, "system__object_readerB");
   u00084 : constant Version_32 := 16#a4fd4a87#;
   pragma Export (C, u00084, "system__object_readerS");
   u00085 : constant Version_32 := 16#c901dc12#;
   pragma Export (C, u00085, "system__val_lliS");
   u00086 : constant Version_32 := 16#3fcf5e91#;
   pragma Export (C, u00086, "system__val_lluS");
   u00087 : constant Version_32 := 16#fb981c03#;
   pragma Export (C, u00087, "system__sparkS");
   u00088 : constant Version_32 := 16#a571a4dc#;
   pragma Export (C, u00088, "system__spark__cut_operationsB");
   u00089 : constant Version_32 := 16#629c0fb7#;
   pragma Export (C, u00089, "system__spark__cut_operationsS");
   u00090 : constant Version_32 := 16#365e21c1#;
   pragma Export (C, u00090, "system__val_utilB");
   u00091 : constant Version_32 := 16#2bae8e00#;
   pragma Export (C, u00091, "system__val_utilS");
   u00092 : constant Version_32 := 16#382ef1e7#;
   pragma Export (C, u00092, "system__exception_tracesB");
   u00093 : constant Version_32 := 16#44f1b6f8#;
   pragma Export (C, u00093, "system__exception_tracesS");
   u00094 : constant Version_32 := 16#b65cce28#;
   pragma Export (C, u00094, "system__win32S");
   u00095 : constant Version_32 := 16#fd158a37#;
   pragma Export (C, u00095, "system__wch_conB");
   u00096 : constant Version_32 := 16#716afcfd#;
   pragma Export (C, u00096, "system__wch_conS");
   u00097 : constant Version_32 := 16#5c289972#;
   pragma Export (C, u00097, "system__wch_stwB");
   u00098 : constant Version_32 := 16#5c7bd0fc#;
   pragma Export (C, u00098, "system__wch_stwS");
   u00099 : constant Version_32 := 16#7cd63de5#;
   pragma Export (C, u00099, "system__wch_cnvB");
   u00100 : constant Version_32 := 16#77aa368d#;
   pragma Export (C, u00100, "system__wch_cnvS");
   u00101 : constant Version_32 := 16#e538de43#;
   pragma Export (C, u00101, "system__wch_jisB");
   u00102 : constant Version_32 := 16#c21d54a7#;
   pragma Export (C, u00102, "system__wch_jisS");
   u00103 : constant Version_32 := 16#0286ce9f#;
   pragma Export (C, u00103, "system__soft_links__initializeB");
   u00104 : constant Version_32 := 16#ac2e8b53#;
   pragma Export (C, u00104, "system__soft_links__initializeS");
   u00105 : constant Version_32 := 16#8599b27b#;
   pragma Export (C, u00105, "system__stack_checkingB");
   u00106 : constant Version_32 := 16#6f36ca88#;
   pragma Export (C, u00106, "system__stack_checkingS");
   u00107 : constant Version_32 := 16#8b7604c4#;
   pragma Export (C, u00107, "ada__strings__utf_encodingB");
   u00108 : constant Version_32 := 16#c9e86997#;
   pragma Export (C, u00108, "ada__strings__utf_encodingS");
   u00109 : constant Version_32 := 16#bb780f45#;
   pragma Export (C, u00109, "ada__strings__utf_encoding__stringsB");
   u00110 : constant Version_32 := 16#b85ff4b6#;
   pragma Export (C, u00110, "ada__strings__utf_encoding__stringsS");
   u00111 : constant Version_32 := 16#d1d1ed0b#;
   pragma Export (C, u00111, "ada__strings__utf_encoding__wide_stringsB");
   u00112 : constant Version_32 := 16#5678478f#;
   pragma Export (C, u00112, "ada__strings__utf_encoding__wide_stringsS");
   u00113 : constant Version_32 := 16#c2b98963#;
   pragma Export (C, u00113, "ada__strings__utf_encoding__wide_wide_stringsB");
   u00114 : constant Version_32 := 16#d7af3358#;
   pragma Export (C, u00114, "ada__strings__utf_encoding__wide_wide_stringsS");
   u00115 : constant Version_32 := 16#683e3bb7#;
   pragma Export (C, u00115, "ada__tagsB");
   u00116 : constant Version_32 := 16#4ff764f3#;
   pragma Export (C, u00116, "ada__tagsS");
   u00117 : constant Version_32 := 16#3548d972#;
   pragma Export (C, u00117, "system__htableB");
   u00118 : constant Version_32 := 16#29b08775#;
   pragma Export (C, u00118, "system__htableS");
   u00119 : constant Version_32 := 16#1f1abe38#;
   pragma Export (C, u00119, "system__string_hashB");
   u00120 : constant Version_32 := 16#8ef5070a#;
   pragma Export (C, u00120, "system__string_hashS");
   u00121 : constant Version_32 := 16#d0c89005#;
   pragma Export (C, u00121, "characters_and_numbersB");
   u00122 : constant Version_32 := 16#72bc624b#;
   pragma Export (C, u00122, "characters_and_numbersS");
   u00123 : constant Version_32 := 16#16dd0bdd#;
   pragma Export (C, u00123, "standard_floating_numbersB");
   u00124 : constant Version_32 := 16#d80182a7#;
   pragma Export (C, u00124, "standard_floating_numbersS");
   u00125 : constant Version_32 := 16#b332bdc5#;
   pragma Export (C, u00125, "standard_integer_numbersB");
   u00126 : constant Version_32 := 16#7fe0621b#;
   pragma Export (C, u00126, "standard_integer_numbersS");
   u00127 : constant Version_32 := 16#68348474#;
   pragma Export (C, u00127, "standard_natural_numbersB");
   u00128 : constant Version_32 := 16#017761d1#;
   pragma Export (C, u00128, "standard_natural_numbersS");
   u00129 : constant Version_32 := 16#155d8f46#;
   pragma Export (C, u00129, "text_ioS");
   u00130 : constant Version_32 := 16#27ac21ac#;
   pragma Export (C, u00130, "ada__text_ioB");
   u00131 : constant Version_32 := 16#b8eab78e#;
   pragma Export (C, u00131, "ada__text_ioS");
   u00132 : constant Version_32 := 16#b228eb1e#;
   pragma Export (C, u00132, "ada__streamsB");
   u00133 : constant Version_32 := 16#613fe11c#;
   pragma Export (C, u00133, "ada__streamsS");
   u00134 : constant Version_32 := 16#05222263#;
   pragma Export (C, u00134, "system__put_imagesB");
   u00135 : constant Version_32 := 16#b4c7d881#;
   pragma Export (C, u00135, "system__put_imagesS");
   u00136 : constant Version_32 := 16#22b9eb9f#;
   pragma Export (C, u00136, "ada__strings__text_buffers__utilsB");
   u00137 : constant Version_32 := 16#89062ac3#;
   pragma Export (C, u00137, "ada__strings__text_buffers__utilsS");
   u00138 : constant Version_32 := 16#1cacf006#;
   pragma Export (C, u00138, "interfaces__c_streamsB");
   u00139 : constant Version_32 := 16#d07279c2#;
   pragma Export (C, u00139, "interfaces__c_streamsS");
   u00140 : constant Version_32 := 16#ec2f4d1e#;
   pragma Export (C, u00140, "system__file_ioB");
   u00141 : constant Version_32 := 16#ce268ad8#;
   pragma Export (C, u00141, "system__file_ioS");
   u00142 : constant Version_32 := 16#c34b231e#;
   pragma Export (C, u00142, "ada__finalizationS");
   u00143 : constant Version_32 := 16#d00f339c#;
   pragma Export (C, u00143, "system__finalization_rootB");
   u00144 : constant Version_32 := 16#a215e14a#;
   pragma Export (C, u00144, "system__finalization_rootS");
   u00145 : constant Version_32 := 16#ef3c5c6f#;
   pragma Export (C, u00145, "system__finalization_primitivesB");
   u00146 : constant Version_32 := 16#b52c8f67#;
   pragma Export (C, u00146, "system__finalization_primitivesS");
   u00147 : constant Version_32 := 16#3eb79f63#;
   pragma Export (C, u00147, "system__os_locksS");
   u00148 : constant Version_32 := 16#221c42f4#;
   pragma Export (C, u00148, "system__file_control_blockS");
   u00149 : constant Version_32 := 16#acc680df#;
   pragma Export (C, u00149, "number_of_coresB");
   u00150 : constant Version_32 := 16#364f4b98#;
   pragma Export (C, u00150, "number_of_coresS");
   u00151 : constant Version_32 := 16#73dc29bf#;
   pragma Export (C, u00151, "system__multiprocessorsB");
   u00152 : constant Version_32 := 16#90c540ed#;
   pragma Export (C, u00152, "system__multiprocessorsS");
   u00153 : constant Version_32 := 16#a5653cf9#;
   pragma Export (C, u00153, "string_splittersB");
   u00154 : constant Version_32 := 16#09f98fc8#;
   pragma Export (C, u00154, "string_splittersS");
   u00155 : constant Version_32 := 16#40bb28b7#;
   pragma Export (C, u00155, "file_scanningB");
   u00156 : constant Version_32 := 16#ae92c354#;
   pragma Export (C, u00156, "file_scanningS");
   u00157 : constant Version_32 := 16#83adf5a5#;
   pragma Export (C, u00157, "integer_ioB");
   u00158 : constant Version_32 := 16#a21f3d3d#;
   pragma Export (C, u00158, "integer_ioS");
   u00159 : constant Version_32 := 16#5e511f79#;
   pragma Export (C, u00159, "ada__text_io__generic_auxB");
   u00160 : constant Version_32 := 16#d2ac8a2d#;
   pragma Export (C, u00160, "ada__text_io__generic_auxS");
   u00161 : constant Version_32 := 16#619e5c60#;
   pragma Export (C, u00161, "system__img_biuS");
   u00162 : constant Version_32 := 16#2cc09bbe#;
   pragma Export (C, u00162, "system__img_llbS");
   u00163 : constant Version_32 := 16#e2af0aa4#;
   pragma Export (C, u00163, "system__img_lliS");
   u00164 : constant Version_32 := 16#5b316ecc#;
   pragma Export (C, u00164, "system__img_lllbS");
   u00165 : constant Version_32 := 16#11c76942#;
   pragma Export (C, u00165, "system__img_llliS");
   u00166 : constant Version_32 := 16#514577c0#;
   pragma Export (C, u00166, "system__img_lllwS");
   u00167 : constant Version_32 := 16#70f2eeb5#;
   pragma Export (C, u00167, "system__img_llwS");
   u00168 : constant Version_32 := 16#5e44e752#;
   pragma Export (C, u00168, "system__img_wiuS");
   u00169 : constant Version_32 := 16#1640d433#;
   pragma Export (C, u00169, "system__val_intS");
   u00170 : constant Version_32 := 16#e1e75f5b#;
   pragma Export (C, u00170, "system__val_unsS");
   u00171 : constant Version_32 := 16#19bf570a#;
   pragma Export (C, u00171, "system__val_llliS");
   u00172 : constant Version_32 := 16#a20b98e8#;
   pragma Export (C, u00172, "system__val_llluS");
   u00173 : constant Version_32 := 16#0c3b95ed#;
   pragma Export (C, u00173, "option_handlersB");
   u00174 : constant Version_32 := 16#ff19fbbf#;
   pragma Export (C, u00174, "option_handlersS");
   u00175 : constant Version_32 := 16#9a4aaaad#;
   pragma Export (C, u00175, "black_box_root_countersB");
   u00176 : constant Version_32 := 16#19840b4b#;
   pragma Export (C, u00176, "black_box_root_countersS");
   u00177 : constant Version_32 := 16#78511131#;
   pragma Export (C, u00177, "ada__calendarB");
   u00178 : constant Version_32 := 16#c907a168#;
   pragma Export (C, u00178, "ada__calendarS");
   u00179 : constant Version_32 := 16#f169b552#;
   pragma Export (C, u00179, "system__os_primitivesB");
   u00180 : constant Version_32 := 16#af94ba68#;
   pragma Export (C, u00180, "system__os_primitivesS");
   u00181 : constant Version_32 := 16#afdc38b2#;
   pragma Export (C, u00181, "system__arith_64B");
   u00182 : constant Version_32 := 16#ecde1f4c#;
   pragma Export (C, u00182, "system__arith_64S");
   u00183 : constant Version_32 := 16#ff7f7d40#;
   pragma Export (C, u00183, "system__task_lockB");
   u00184 : constant Version_32 := 16#c9e3e8f0#;
   pragma Export (C, u00184, "system__task_lockS");
   u00185 : constant Version_32 := 16#8f947e37#;
   pragma Export (C, u00185, "system__win32__extS");
   u00186 : constant Version_32 := 16#1700a8b1#;
   pragma Export (C, u00186, "apply_induced_permutationsB");
   u00187 : constant Version_32 := 16#41d46aa3#;
   pragma Export (C, u00187, "apply_induced_permutationsS");
   u00188 : constant Version_32 := 16#adc3d92e#;
   pragma Export (C, u00188, "black_mixed_volume_computationsB");
   u00189 : constant Version_32 := 16#f80f4752#;
   pragma Export (C, u00189, "black_mixed_volume_computationsS");
   u00190 : constant Version_32 := 16#939026dc#;
   pragma Export (C, u00190, "cayley_trickB");
   u00191 : constant Version_32 := 16#ff7ad078#;
   pragma Export (C, u00191, "cayley_trickS");
   u00192 : constant Version_32 := 16#ecdb7001#;
   pragma Export (C, u00192, "cayley_embeddingB");
   u00193 : constant Version_32 := 16#c2905ec6#;
   pragma Export (C, u00193, "cayley_embeddingS");
   u00194 : constant Version_32 := 16#37c9873e#;
   pragma Export (C, u00194, "standard_integer_vecvecsB");
   u00195 : constant Version_32 := 16#37826084#;
   pragma Export (C, u00195, "standard_integer_vecvecsS");
   u00196 : constant Version_32 := 16#e7c27303#;
   pragma Export (C, u00196, "abstract_ringS");
   u00197 : constant Version_32 := 16#c1b40574#;
   pragma Export (C, u00197, "generic_vectorsB");
   u00198 : constant Version_32 := 16#1cb7bfe9#;
   pragma Export (C, u00198, "generic_vectorsS");
   u00199 : constant Version_32 := 16#da6c59d7#;
   pragma Export (C, u00199, "generic_vecvecsB");
   u00200 : constant Version_32 := 16#862a5d50#;
   pragma Export (C, u00200, "generic_vecvecsS");
   u00201 : constant Version_32 := 16#83a34794#;
   pragma Export (C, u00201, "standard_integer_ringS");
   u00202 : constant Version_32 := 16#8157538f#;
   pragma Export (C, u00202, "standard_integer_vectorsB");
   u00203 : constant Version_32 := 16#1e43abf2#;
   pragma Export (C, u00203, "standard_integer_vectorsS");
   u00204 : constant Version_32 := 16#1062c910#;
   pragma Export (C, u00204, "arrays_of_integer_vector_listsB");
   u00205 : constant Version_32 := 16#5c0c7e9c#;
   pragma Export (C, u00205, "arrays_of_integer_vector_listsS");
   u00206 : constant Version_32 := 16#aef81f10#;
   pragma Export (C, u00206, "generic_arrays_of_vector_listsB");
   u00207 : constant Version_32 := 16#0f93c409#;
   pragma Export (C, u00207, "generic_arrays_of_vector_listsS");
   u00208 : constant Version_32 := 16#cee08cc8#;
   pragma Export (C, u00208, "generic_lists_of_vectorsB");
   u00209 : constant Version_32 := 16#f028056e#;
   pragma Export (C, u00209, "generic_lists_of_vectorsS");
   u00210 : constant Version_32 := 16#602f86ec#;
   pragma Export (C, u00210, "generic_listsB");
   u00211 : constant Version_32 := 16#6cfe715e#;
   pragma Export (C, u00211, "generic_listsS");
   u00212 : constant Version_32 := 16#0dd4e793#;
   pragma Export (C, u00212, "lists_of_integer_vectorsB");
   u00213 : constant Version_32 := 16#c4a04f04#;
   pragma Export (C, u00213, "lists_of_integer_vectorsS");
   u00214 : constant Version_32 := 16#ae5b86de#;
   pragma Export (C, u00214, "system__pool_globalB");
   u00215 : constant Version_32 := 16#1c3dab8f#;
   pragma Export (C, u00215, "system__pool_globalS");
   u00216 : constant Version_32 := 16#0ddbd91f#;
   pragma Export (C, u00216, "system__memoryB");
   u00217 : constant Version_32 := 16#b0fd4384#;
   pragma Export (C, u00217, "system__memoryS");
   u00218 : constant Version_32 := 16#35d6ef80#;
   pragma Export (C, u00218, "system__storage_poolsB");
   u00219 : constant Version_32 := 16#3202a6c5#;
   pragma Export (C, u00219, "system__storage_poolsS");
   u00220 : constant Version_32 := 16#5598dc1f#;
   pragma Export (C, u00220, "integer_mixed_subdivisionsB");
   u00221 : constant Version_32 := 16#1c07dc36#;
   pragma Export (C, u00221, "integer_mixed_subdivisionsS");
   u00222 : constant Version_32 := 16#89d93079#;
   pragma Export (C, u00222, "integer_support_functionsB");
   u00223 : constant Version_32 := 16#1f1b4be3#;
   pragma Export (C, u00223, "integer_support_functionsS");
   u00224 : constant Version_32 := 16#edb4180d#;
   pragma Export (C, u00224, "graded_lexicographic_orderB");
   u00225 : constant Version_32 := 16#c695b525#;
   pragma Export (C, u00225, "graded_lexicographic_orderS");
   u00226 : constant Version_32 := 16#b129c652#;
   pragma Export (C, u00226, "standard_natural_vectorsB");
   u00227 : constant Version_32 := 16#a8f8c446#;
   pragma Export (C, u00227, "standard_natural_vectorsS");
   u00228 : constant Version_32 := 16#7bf1be37#;
   pragma Export (C, u00228, "standard_natural_ringS");
   u00229 : constant Version_32 := 16#34df0966#;
   pragma Export (C, u00229, "standard_integer_linear_solversB");
   u00230 : constant Version_32 := 16#d2ac6d27#;
   pragma Export (C, u00230, "standard_integer_linear_solversS");
   u00231 : constant Version_32 := 16#d7f88576#;
   pragma Export (C, u00231, "abstract_ring__domainS");
   u00232 : constant Version_32 := 16#9c2ecbc9#;
   pragma Export (C, u00232, "generic_integer_linear_solversB");
   u00233 : constant Version_32 := 16#6d11c184#;
   pragma Export (C, u00233, "generic_integer_linear_solversS");
   u00234 : constant Version_32 := 16#52967604#;
   pragma Export (C, u00234, "generic_matricesB");
   u00235 : constant Version_32 := 16#9fb79146#;
   pragma Export (C, u00235, "generic_matricesS");
   u00236 : constant Version_32 := 16#94deb218#;
   pragma Export (C, u00236, "greatest_common_divisorsB");
   u00237 : constant Version_32 := 16#68960144#;
   pragma Export (C, u00237, "greatest_common_divisorsS");
   u00238 : constant Version_32 := 16#4afd8fcb#;
   pragma Export (C, u00238, "standard_common_divisorsB");
   u00239 : constant Version_32 := 16#bd335184#;
   pragma Export (C, u00239, "standard_common_divisorsS");
   u00240 : constant Version_32 := 16#1cfb989f#;
   pragma Export (C, u00240, "standard_integer_ring__ddomainS");
   u00241 : constant Version_32 := 16#99dc9372#;
   pragma Export (C, u00241, "standard_integer_matricesB");
   u00242 : constant Version_32 := 16#800ab8de#;
   pragma Export (C, u00242, "standard_integer_matricesS");
   u00243 : constant Version_32 := 16#42d84e3f#;
   pragma Export (C, u00243, "standard_integer_normsB");
   u00244 : constant Version_32 := 16#62406fe0#;
   pragma Export (C, u00244, "standard_integer_normsS");
   u00245 : constant Version_32 := 16#d6300ee4#;
   pragma Export (C, u00245, "standard64_common_divisorsB");
   u00246 : constant Version_32 := 16#d8e67a16#;
   pragma Export (C, u00246, "standard64_common_divisorsS");
   u00247 : constant Version_32 := 16#70b59781#;
   pragma Export (C, u00247, "standard_integer64_ringS");
   u00248 : constant Version_32 := 16#16f5e237#;
   pragma Export (C, u00248, "standard_integer64_ring__ddomainS");
   u00249 : constant Version_32 := 16#3427bed1#;
   pragma Export (C, u00249, "standard_integer64_vectorsB");
   u00250 : constant Version_32 := 16#582596b9#;
   pragma Export (C, u00250, "standard_integer64_vectorsS");
   u00251 : constant Version_32 := 16#c4c47bad#;
   pragma Export (C, u00251, "standard_integer32_simplicesB");
   u00252 : constant Version_32 := 16#4a08d193#;
   pragma Export (C, u00252, "standard_integer32_simplicesS");
   u00253 : constant Version_32 := 16#17c9689b#;
   pragma Export (C, u00253, "standard_integer32_transformationsB");
   u00254 : constant Version_32 := 16#aeebfde8#;
   pragma Export (C, u00254, "standard_integer32_transformationsS");
   u00255 : constant Version_32 := 16#f51a44b9#;
   pragma Export (C, u00255, "standard_complex_numbersB");
   u00256 : constant Version_32 := 16#2f2a46b6#;
   pragma Export (C, u00256, "standard_complex_numbersS");
   u00257 : constant Version_32 := 16#1daff539#;
   pragma Export (C, u00257, "standard_complex_vectorsB");
   u00258 : constant Version_32 := 16#32dd5e56#;
   pragma Export (C, u00258, "standard_complex_vectorsS");
   u00259 : constant Version_32 := 16#bb0eb28c#;
   pragma Export (C, u00259, "standard_complex_ringS");
   u00260 : constant Version_32 := 16#da209121#;
   pragma Export (C, u00260, "standard_integer32_triangulationsB");
   u00261 : constant Version_32 := 16#f28ca94d#;
   pragma Export (C, u00261, "standard_integer32_triangulationsS");
   u00262 : constant Version_32 := 16#e9f758a7#;
   pragma Export (C, u00262, "standard_random_numbersB");
   u00263 : constant Version_32 := 16#35aa4acf#;
   pragma Export (C, u00263, "standard_random_numbersS");
   u00264 : constant Version_32 := 16#a08132f8#;
   pragma Export (C, u00264, "machinesB");
   u00265 : constant Version_32 := 16#7f431eff#;
   pragma Export (C, u00265, "machinesS");
   u00266 : constant Version_32 := 16#62abe8b7#;
   pragma Export (C, u00266, "system_callB");
   u00267 : constant Version_32 := 16#e2afd090#;
   pragma Export (C, u00267, "system_callS");
   u00268 : constant Version_32 := 16#5408c811#;
   pragma Export (C, u00268, "standard_mathematical_functionsB");
   u00269 : constant Version_32 := 16#be6512fc#;
   pragma Export (C, u00269, "standard_mathematical_functionsS");
   u00270 : constant Version_32 := 16#edf015bc#;
   pragma Export (C, u00270, "ada__numerics__aux_floatS");
   u00271 : constant Version_32 := 16#effcb9fc#;
   pragma Export (C, u00271, "ada__numerics__aux_linker_optionsS");
   u00272 : constant Version_32 := 16#8272e858#;
   pragma Export (C, u00272, "ada__numerics__aux_long_floatS");
   u00273 : constant Version_32 := 16#8333dc5f#;
   pragma Export (C, u00273, "ada__numerics__aux_long_long_floatS");
   u00274 : constant Version_32 := 16#33fcdf18#;
   pragma Export (C, u00274, "ada__numerics__aux_short_floatS");
   u00275 : constant Version_32 := 16#b33811be#;
   pragma Export (C, u00275, "system__exn_lfltS");
   u00276 : constant Version_32 := 16#4d6909ff#;
   pragma Export (C, u00276, "system__fat_lfltS");
   u00277 : constant Version_32 := 16#975426d6#;
   pragma Export (C, u00277, "flatten_mixed_subdivisionsB");
   u00278 : constant Version_32 := 16#6504c2dd#;
   pragma Export (C, u00278, "flatten_mixed_subdivisionsS");
   u00279 : constant Version_32 := 16#cea7592c#;
   pragma Export (C, u00279, "standard_dynamic32_triangulationsB");
   u00280 : constant Version_32 := 16#e06a2e48#;
   pragma Export (C, u00280, "standard_dynamic32_triangulationsS");
   u00281 : constant Version_32 := 16#1b44fed1#;
   pragma Export (C, u00281, "dynamic32_lifting_functionsB");
   u00282 : constant Version_32 := 16#c0a20806#;
   pragma Export (C, u00282, "dynamic32_lifting_functionsS");
   u00283 : constant Version_32 := 16#ad61e74b#;
   pragma Export (C, u00283, "global_dynamic32_triangulationB");
   u00284 : constant Version_32 := 16#71213c69#;
   pragma Export (C, u00284, "global_dynamic32_triangulationS");
   u00285 : constant Version_32 := 16#61059cf6#;
   pragma Export (C, u00285, "standard_integer32_verticesB");
   u00286 : constant Version_32 := 16#04b6d388#;
   pragma Export (C, u00286, "standard_integer32_verticesS");
   u00287 : constant Version_32 := 16#0b60baec#;
   pragma Export (C, u00287, "dictionariesB");
   u00288 : constant Version_32 := 16#6869b36b#;
   pragma Export (C, u00288, "dictionariesS");
   u00289 : constant Version_32 := 16#49b1fb7f#;
   pragma Export (C, u00289, "standard_floating_matricesB");
   u00290 : constant Version_32 := 16#9ae01d86#;
   pragma Export (C, u00290, "standard_floating_matricesS");
   u00291 : constant Version_32 := 16#343f612c#;
   pragma Export (C, u00291, "standard_floating_ringS");
   u00292 : constant Version_32 := 16#253a5b14#;
   pragma Export (C, u00292, "standard_floating_vectorsB");
   u00293 : constant Version_32 := 16#d4c466a7#;
   pragma Export (C, u00293, "standard_floating_vectorsS");
   u00294 : constant Version_32 := 16#8678c28a#;
   pragma Export (C, u00294, "integer32_vectors_utilitiesB");
   u00295 : constant Version_32 := 16#0ee7a7d4#;
   pragma Export (C, u00295, "integer32_vectors_utilitiesS");
   u00296 : constant Version_32 := 16#17af93e5#;
   pragma Export (C, u00296, "linear_programmingB");
   u00297 : constant Version_32 := 16#de51dd17#;
   pragma Export (C, u00297, "linear_programmingS");
   u00298 : constant Version_32 := 16#bf74a22e#;
   pragma Export (C, u00298, "lists_of_vectors32_utilitiesB");
   u00299 : constant Version_32 := 16#11acddf0#;
   pragma Export (C, u00299, "lists_of_vectors32_utilitiesS");
   u00300 : constant Version_32 := 16#e3d37c4e#;
   pragma Export (C, u00300, "transforming_integer32_vector_listsB");
   u00301 : constant Version_32 := 16#dc41da53#;
   pragma Export (C, u00301, "transforming_integer32_vector_listsS");
   u00302 : constant Version_32 := 16#b9e983ef#;
   pragma Export (C, u00302, "integer_lifting_utilitiesB");
   u00303 : constant Version_32 := 16#7eb264f2#;
   pragma Export (C, u00303, "integer_lifting_utilitiesS");
   u00304 : constant Version_32 := 16#102fcc76#;
   pragma Export (C, u00304, "standard_complex_laur_systemsB");
   u00305 : constant Version_32 := 16#6f941f21#;
   pragma Export (C, u00305, "standard_complex_laur_systemsS");
   u00306 : constant Version_32 := 16#ea2f5be0#;
   pragma Export (C, u00306, "generic_laur_poly_systemsB");
   u00307 : constant Version_32 := 16#0568d58c#;
   pragma Export (C, u00307, "generic_laur_poly_systemsS");
   u00308 : constant Version_32 := 16#091c0510#;
   pragma Export (C, u00308, "generic_laurent_polynomialsB");
   u00309 : constant Version_32 := 16#48f4f280#;
   pragma Export (C, u00309, "generic_laurent_polynomialsS");
   u00310 : constant Version_32 := 16#751eb2c5#;
   pragma Export (C, u00310, "standard_complex_laurentialsB");
   u00311 : constant Version_32 := 16#52afb040#;
   pragma Export (C, u00311, "standard_complex_laurentialsS");
   u00312 : constant Version_32 := 16#197e6134#;
   pragma Export (C, u00312, "drivers_for_mixedvol_algorithmB");
   u00313 : constant Version_32 := 16#273cd985#;
   pragma Export (C, u00313, "drivers_for_mixedvol_algorithmS");
   u00314 : constant Version_32 := 16#538f458c#;
   pragma Export (C, u00314, "cell_stackB");
   u00315 : constant Version_32 := 16#84ab77d9#;
   pragma Export (C, u00315, "cell_stackS");
   u00316 : constant Version_32 := 16#fcb3c698#;
   pragma Export (C, u00316, "communications_with_userB");
   u00317 : constant Version_32 := 16#42442c61#;
   pragma Export (C, u00317, "communications_with_userS");
   u00318 : constant Version_32 := 16#73918e21#;
   pragma Export (C, u00318, "continuation_parametersB");
   u00319 : constant Version_32 := 16#275126e3#;
   pragma Export (C, u00319, "continuation_parametersS");
   u00320 : constant Version_32 := 16#21d985d5#;
   pragma Export (C, u00320, "dobldobl_complex_laur_functionsB");
   u00321 : constant Version_32 := 16#a17cd310#;
   pragma Export (C, u00321, "dobldobl_complex_laur_functionsS");
   u00322 : constant Version_32 := 16#a6341e69#;
   pragma Export (C, u00322, "abstract_ring__fieldS");
   u00323 : constant Version_32 := 16#041a8972#;
   pragma Export (C, u00323, "dobldobl_complex_laurentialsB");
   u00324 : constant Version_32 := 16#7c5b12e9#;
   pragma Export (C, u00324, "dobldobl_complex_laurentialsS");
   u00325 : constant Version_32 := 16#47120117#;
   pragma Export (C, u00325, "dobldobl_complex_ringS");
   u00326 : constant Version_32 := 16#6bdefc12#;
   pragma Export (C, u00326, "dobldobl_complex_numbersB");
   u00327 : constant Version_32 := 16#b00e7c5f#;
   pragma Export (C, u00327, "dobldobl_complex_numbersS");
   u00328 : constant Version_32 := 16#26e7fc30#;
   pragma Export (C, u00328, "double_double_numbersB");
   u00329 : constant Version_32 := 16#425f13a6#;
   pragma Export (C, u00329, "double_double_numbersS");
   u00330 : constant Version_32 := 16#122831c1#;
   pragma Export (C, u00330, "double_double_basicsB");
   u00331 : constant Version_32 := 16#e749fa23#;
   pragma Export (C, u00331, "double_double_basicsS");
   u00332 : constant Version_32 := 16#8459ea2e#;
   pragma Export (C, u00332, "dobldobl_complex_ring__ffieldS");
   u00333 : constant Version_32 := 16#b8c7048c#;
   pragma Export (C, u00333, "dobldobl_complex_vectorsB");
   u00334 : constant Version_32 := 16#c84536fd#;
   pragma Export (C, u00334, "dobldobl_complex_vectorsS");
   u00335 : constant Version_32 := 16#3a1ed1eb#;
   pragma Export (C, u00335, "generic_laur_poly_functionsB");
   u00336 : constant Version_32 := 16#8810fbf3#;
   pragma Export (C, u00336, "generic_laur_poly_functionsS");
   u00337 : constant Version_32 := 16#0db367b1#;
   pragma Export (C, u00337, "dobldobl_complex_laur_jacomatsB");
   u00338 : constant Version_32 := 16#e8eb5f5d#;
   pragma Export (C, u00338, "dobldobl_complex_laur_jacomatsS");
   u00339 : constant Version_32 := 16#7bfc0ee3#;
   pragma Export (C, u00339, "dobldobl_complex_laur_sysfunB");
   u00340 : constant Version_32 := 16#f621cf3d#;
   pragma Export (C, u00340, "dobldobl_complex_laur_sysfunS");
   u00341 : constant Version_32 := 16#306c2e67#;
   pragma Export (C, u00341, "dobldobl_complex_laur_systemsB");
   u00342 : constant Version_32 := 16#61235f99#;
   pragma Export (C, u00342, "dobldobl_complex_laur_systemsS");
   u00343 : constant Version_32 := 16#10a3a3c4#;
   pragma Export (C, u00343, "dobldobl_complex_vecvecsB");
   u00344 : constant Version_32 := 16#c6eed971#;
   pragma Export (C, u00344, "dobldobl_complex_vecvecsS");
   u00345 : constant Version_32 := 16#fac1fba7#;
   pragma Export (C, u00345, "generic_laur_system_functionsB");
   u00346 : constant Version_32 := 16#e6a6cc40#;
   pragma Export (C, u00346, "generic_laur_system_functionsS");
   u00347 : constant Version_32 := 16#6c70dcc1#;
   pragma Export (C, u00347, "dobldobl_complex_matricesB");
   u00348 : constant Version_32 := 16#a3a06a62#;
   pragma Export (C, u00348, "dobldobl_complex_matricesS");
   u00349 : constant Version_32 := 16#48c07110#;
   pragma Export (C, u00349, "generic_laur_jaco_matricesB");
   u00350 : constant Version_32 := 16#4fc678f9#;
   pragma Export (C, u00350, "generic_laur_jaco_matricesS");
   u00351 : constant Version_32 := 16#278abc9f#;
   pragma Export (C, u00351, "dobldobl_complex_solutions_ioB");
   u00352 : constant Version_32 := 16#8e427ab5#;
   pragma Export (C, u00352, "dobldobl_complex_solutions_ioS");
   u00353 : constant Version_32 := 16#83df4757#;
   pragma Export (C, u00353, "dobldobl_complex_numbers_ioB");
   u00354 : constant Version_32 := 16#ddd08877#;
   pragma Export (C, u00354, "dobldobl_complex_numbers_ioS");
   u00355 : constant Version_32 := 16#b71b55e9#;
   pragma Export (C, u00355, "double_double_numbers_ioB");
   u00356 : constant Version_32 := 16#79484e39#;
   pragma Export (C, u00356, "double_double_numbers_ioS");
   u00357 : constant Version_32 := 16#01838abd#;
   pragma Export (C, u00357, "standard_complex_solutions_ioB");
   u00358 : constant Version_32 := 16#47b1af57#;
   pragma Export (C, u00358, "standard_complex_solutions_ioS");
   u00359 : constant Version_32 := 16#beef076e#;
   pragma Export (C, u00359, "standard_complex_numbers_ioB");
   u00360 : constant Version_32 := 16#f52beee1#;
   pragma Export (C, u00360, "standard_complex_numbers_ioS");
   u00361 : constant Version_32 := 16#3bf2322c#;
   pragma Export (C, u00361, "standard_floating_numbers_ioB");
   u00362 : constant Version_32 := 16#8edcd08c#;
   pragma Export (C, u00362, "standard_floating_numbers_ioS");
   u00363 : constant Version_32 := 16#6b5b00f2#;
   pragma Export (C, u00363, "system__fat_fltS");
   u00364 : constant Version_32 := 16#a7542c27#;
   pragma Export (C, u00364, "system__img_fltS");
   u00365 : constant Version_32 := 16#1b28662b#;
   pragma Export (C, u00365, "system__float_controlB");
   u00366 : constant Version_32 := 16#48959ca2#;
   pragma Export (C, u00366, "system__float_controlS");
   u00367 : constant Version_32 := 16#1efd3382#;
   pragma Export (C, u00367, "system__img_utilB");
   u00368 : constant Version_32 := 16#df707b27#;
   pragma Export (C, u00368, "system__img_utilS");
   u00369 : constant Version_32 := 16#0d736626#;
   pragma Export (C, u00369, "system__powten_fltS");
   u00370 : constant Version_32 := 16#7a2d56a8#;
   pragma Export (C, u00370, "system__img_lfltS");
   u00371 : constant Version_32 := 16#3879c38a#;
   pragma Export (C, u00371, "system__img_lluS");
   u00372 : constant Version_32 := 16#04618d56#;
   pragma Export (C, u00372, "system__powten_lfltS");
   u00373 : constant Version_32 := 16#31fd71c4#;
   pragma Export (C, u00373, "system__img_llfS");
   u00374 : constant Version_32 := 16#37b9a715#;
   pragma Export (C, u00374, "system__fat_llfS");
   u00375 : constant Version_32 := 16#33f037dd#;
   pragma Export (C, u00375, "system__powten_llfS");
   u00376 : constant Version_32 := 16#7ffc0659#;
   pragma Export (C, u00376, "system__val_fltS");
   u00377 : constant Version_32 := 16#0d79f067#;
   pragma Export (C, u00377, "system__exn_fltS");
   u00378 : constant Version_32 := 16#9a5048a8#;
   pragma Export (C, u00378, "system__val_lfltS");
   u00379 : constant Version_32 := 16#3a87fae5#;
   pragma Export (C, u00379, "system__val_llfS");
   u00380 : constant Version_32 := 16#9e96d1ce#;
   pragma Export (C, u00380, "system__exn_llfS");
   u00381 : constant Version_32 := 16#b3c2bc01#;
   pragma Export (C, u00381, "standard_integer_numbers_ioB");
   u00382 : constant Version_32 := 16#85574a6e#;
   pragma Export (C, u00382, "standard_integer_numbers_ioS");
   u00383 : constant Version_32 := 16#145fc2ef#;
   pragma Export (C, u00383, "standard_natural_numbers_ioB");
   u00384 : constant Version_32 := 16#3b080162#;
   pragma Export (C, u00384, "standard_natural_numbers_ioS");
   u00385 : constant Version_32 := 16#def39906#;
   pragma Export (C, u00385, "symbols_ioB");
   u00386 : constant Version_32 := 16#40e0448a#;
   pragma Export (C, u00386, "symbols_ioS");
   u00387 : constant Version_32 := 16#2392cfc7#;
   pragma Export (C, u00387, "symbol_table_ioB");
   u00388 : constant Version_32 := 16#cef8d8e5#;
   pragma Export (C, u00388, "symbol_table_ioS");
   u00389 : constant Version_32 := 16#41ef8731#;
   pragma Export (C, u00389, "symbol_tableB");
   u00390 : constant Version_32 := 16#d3b0dc24#;
   pragma Export (C, u00390, "symbol_tableS");
   u00391 : constant Version_32 := 16#c850508a#;
   pragma Export (C, u00391, "parse_polynomial_exceptionsS");
   u00392 : constant Version_32 := 16#803e4e55#;
   pragma Export (C, u00392, "standard_complex_solutionsB");
   u00393 : constant Version_32 := 16#037c9a13#;
   pragma Export (C, u00393, "standard_complex_solutionsS");
   u00394 : constant Version_32 := 16#434117fa#;
   pragma Export (C, u00394, "standard_complex_norms_equalsB");
   u00395 : constant Version_32 := 16#70ec13a1#;
   pragma Export (C, u00395, "standard_complex_norms_equalsS");
   u00396 : constant Version_32 := 16#280e7fbd#;
   pragma Export (C, u00396, "standard_complex_matricesB");
   u00397 : constant Version_32 := 16#1d46a1b5#;
   pragma Export (C, u00397, "standard_complex_matricesS");
   u00398 : constant Version_32 := 16#fa27b322#;
   pragma Export (C, u00398, "dobldobl_complex_solutionsB");
   u00399 : constant Version_32 := 16#5d6124c3#;
   pragma Export (C, u00399, "dobldobl_complex_solutionsS");
   u00400 : constant Version_32 := 16#ab81bdd4#;
   pragma Export (C, u00400, "dobldobl_complex_numbers_cvB");
   u00401 : constant Version_32 := 16#a69d3cb4#;
   pragma Export (C, u00401, "dobldobl_complex_numbers_cvS");
   u00402 : constant Version_32 := 16#867988f9#;
   pragma Export (C, u00402, "multprec_dobldobl_convertorsB");
   u00403 : constant Version_32 := 16#560f495e#;
   pragma Export (C, u00403, "multprec_dobldobl_convertorsS");
   u00404 : constant Version_32 := 16#c42ed68d#;
   pragma Export (C, u00404, "multprec_floating_numbers_ioB");
   u00405 : constant Version_32 := 16#c5786e4b#;
   pragma Export (C, u00405, "multprec_floating_numbers_ioS");
   u00406 : constant Version_32 := 16#f469faf6#;
   pragma Export (C, u00406, "multprec_integer_numbersB");
   u00407 : constant Version_32 := 16#ea235684#;
   pragma Export (C, u00407, "multprec_integer_numbersS");
   u00408 : constant Version_32 := 16#cb8b30df#;
   pragma Export (C, u00408, "multprec_natural_coefficientsB");
   u00409 : constant Version_32 := 16#d8887488#;
   pragma Export (C, u00409, "multprec_natural_coefficientsS");
   u00410 : constant Version_32 := 16#0ce3f358#;
   pragma Export (C, u00410, "system__exn_intS");
   u00411 : constant Version_32 := 16#a709c8e0#;
   pragma Export (C, u00411, "multprec_natural_numbersB");
   u00412 : constant Version_32 := 16#a50c182b#;
   pragma Export (C, u00412, "multprec_natural_numbersS");
   u00413 : constant Version_32 := 16#4da9e087#;
   pragma Export (C, u00413, "multprec_integer_numbers_ioB");
   u00414 : constant Version_32 := 16#031ae550#;
   pragma Export (C, u00414, "multprec_integer_numbers_ioS");
   u00415 : constant Version_32 := 16#d011e388#;
   pragma Export (C, u00415, "multprec_natural_numbers_ioB");
   u00416 : constant Version_32 := 16#9c7c737d#;
   pragma Export (C, u00416, "multprec_natural_numbers_ioS");
   u00417 : constant Version_32 := 16#13788527#;
   pragma Export (C, u00417, "multprec_parse_numbersB");
   u00418 : constant Version_32 := 16#690e2470#;
   pragma Export (C, u00418, "multprec_parse_numbersS");
   u00419 : constant Version_32 := 16#341d363b#;
   pragma Export (C, u00419, "standard_parse_numbersB");
   u00420 : constant Version_32 := 16#66aaf626#;
   pragma Export (C, u00420, "standard_parse_numbersS");
   u00421 : constant Version_32 := 16#ff042e10#;
   pragma Export (C, u00421, "multprec_complex_numbersB");
   u00422 : constant Version_32 := 16#14ccb20f#;
   pragma Export (C, u00422, "multprec_complex_numbersS");
   u00423 : constant Version_32 := 16#69598a46#;
   pragma Export (C, u00423, "generic_complex_numbersB");
   u00424 : constant Version_32 := 16#71ee0ab9#;
   pragma Export (C, u00424, "generic_complex_numbersS");
   u00425 : constant Version_32 := 16#d205da56#;
   pragma Export (C, u00425, "multprec_floating_ringS");
   u00426 : constant Version_32 := 16#83368ee6#;
   pragma Export (C, u00426, "multprec_floating_numbersB");
   u00427 : constant Version_32 := 16#ccc0891a#;
   pragma Export (C, u00427, "multprec_floating_numbersS");
   u00428 : constant Version_32 := 16#36b44f3a#;
   pragma Export (C, u00428, "multprec_floating_ring__ffieldS");
   u00429 : constant Version_32 := 16#ffa38782#;
   pragma Export (C, u00429, "dobldobl_complex_vectors_cvB");
   u00430 : constant Version_32 := 16#2912ae85#;
   pragma Export (C, u00430, "dobldobl_complex_vectors_cvS");
   u00431 : constant Version_32 := 16#3b5cf575#;
   pragma Export (C, u00431, "multprec_complex_vectorsB");
   u00432 : constant Version_32 := 16#85414552#;
   pragma Export (C, u00432, "multprec_complex_vectorsS");
   u00433 : constant Version_32 := 16#224e43c5#;
   pragma Export (C, u00433, "multprec_complex_ringS");
   u00434 : constant Version_32 := 16#92bdb1d7#;
   pragma Export (C, u00434, "multprec_complex_solutionsB");
   u00435 : constant Version_32 := 16#15b56dd0#;
   pragma Export (C, u00435, "multprec_complex_solutionsS");
   u00436 : constant Version_32 := 16#e8405338#;
   pragma Export (C, u00436, "multprec_complex_norms_equalsB");
   u00437 : constant Version_32 := 16#bbe9f9c5#;
   pragma Export (C, u00437, "multprec_complex_norms_equalsS");
   u00438 : constant Version_32 := 16#2ced37e2#;
   pragma Export (C, u00438, "multprec_mathematical_functionsB");
   u00439 : constant Version_32 := 16#72631715#;
   pragma Export (C, u00439, "multprec_mathematical_functionsS");
   u00440 : constant Version_32 := 16#6077e5ee#;
   pragma Export (C, u00440, "multprec_complex_number_toolsB");
   u00441 : constant Version_32 := 16#71686316#;
   pragma Export (C, u00441, "multprec_complex_number_toolsS");
   u00442 : constant Version_32 := 16#4ff326b2#;
   pragma Export (C, u00442, "multprec_complex_vector_toolsB");
   u00443 : constant Version_32 := 16#79581c0f#;
   pragma Export (C, u00443, "multprec_complex_vector_toolsS");
   u00444 : constant Version_32 := 16#b42f0858#;
   pragma Export (C, u00444, "multprec_complex_vecvecsB");
   u00445 : constant Version_32 := 16#2f660142#;
   pragma Export (C, u00445, "multprec_complex_vecvecsS");
   u00446 : constant Version_32 := 16#fde7288b#;
   pragma Export (C, u00446, "standard_complex_vecvecsB");
   u00447 : constant Version_32 := 16#d1323a95#;
   pragma Export (C, u00447, "standard_complex_vecvecsS");
   u00448 : constant Version_32 := 16#d2c5a126#;
   pragma Export (C, u00448, "dobldobl_laur_poly_convertorsB");
   u00449 : constant Version_32 := 16#187995b4#;
   pragma Export (C, u00449, "dobldobl_laur_poly_convertorsS");
   u00450 : constant Version_32 := 16#1cc767a4#;
   pragma Export (C, u00450, "dobldobl_complex_poly_systemsB");
   u00451 : constant Version_32 := 16#3b422145#;
   pragma Export (C, u00451, "dobldobl_complex_poly_systemsS");
   u00452 : constant Version_32 := 16#6a18d9c1#;
   pragma Export (C, u00452, "dobldobl_complex_polynomialsB");
   u00453 : constant Version_32 := 16#9bec29fe#;
   pragma Export (C, u00453, "dobldobl_complex_polynomialsS");
   u00454 : constant Version_32 := 16#6c617c09#;
   pragma Export (C, u00454, "generic_polynomialsB");
   u00455 : constant Version_32 := 16#4016caab#;
   pragma Export (C, u00455, "generic_polynomialsS");
   u00456 : constant Version_32 := 16#fe7461e2#;
   pragma Export (C, u00456, "generic_polynomial_systemsB");
   u00457 : constant Version_32 := 16#9415d984#;
   pragma Export (C, u00457, "generic_polynomial_systemsS");
   u00458 : constant Version_32 := 16#18734238#;
   pragma Export (C, u00458, "dobldobl_poly_laur_convertorsB");
   u00459 : constant Version_32 := 16#b03d0c2f#;
   pragma Export (C, u00459, "dobldobl_poly_laur_convertorsS");
   u00460 : constant Version_32 := 16#7bc188b5#;
   pragma Export (C, u00460, "dobldobl_polyhedral_continuationB");
   u00461 : constant Version_32 := 16#d465bb1e#;
   pragma Export (C, u00461, "dobldobl_polyhedral_continuationS");
   u00462 : constant Version_32 := 16#11566188#;
   pragma Export (C, u00462, "dobldobl_complex_laur_systems_ioB");
   u00463 : constant Version_32 := 16#c45f8fc0#;
   pragma Export (C, u00463, "dobldobl_complex_laur_systems_ioS");
   u00464 : constant Version_32 := 16#4051c755#;
   pragma Export (C, u00464, "dobldobl_complex_laurentials_ioB");
   u00465 : constant Version_32 := 16#264c437b#;
   pragma Export (C, u00465, "dobldobl_complex_laurentials_ioS");
   u00466 : constant Version_32 := 16#024e6c1b#;
   pragma Export (C, u00466, "dobldobl_polynomial_convertorsB");
   u00467 : constant Version_32 := 16#8f6ec87c#;
   pragma Export (C, u00467, "dobldobl_polynomial_convertorsS");
   u00468 : constant Version_32 := 16#b3d27733#;
   pragma Export (C, u00468, "double_double_poly_systemsB");
   u00469 : constant Version_32 := 16#b4bd5eb1#;
   pragma Export (C, u00469, "double_double_poly_systemsS");
   u00470 : constant Version_32 := 16#95e3c047#;
   pragma Export (C, u00470, "double_double_polynomialsB");
   u00471 : constant Version_32 := 16#bb06469d#;
   pragma Export (C, u00471, "double_double_polynomialsS");
   u00472 : constant Version_32 := 16#569a0867#;
   pragma Export (C, u00472, "double_double_ringS");
   u00473 : constant Version_32 := 16#a570232d#;
   pragma Export (C, u00473, "multprec_complex_laur_systemsB");
   u00474 : constant Version_32 := 16#e065e0b7#;
   pragma Export (C, u00474, "multprec_complex_laur_systemsS");
   u00475 : constant Version_32 := 16#dedfb940#;
   pragma Export (C, u00475, "multprec_complex_laurentialsB");
   u00476 : constant Version_32 := 16#6801a08d#;
   pragma Export (C, u00476, "multprec_complex_laurentialsS");
   u00477 : constant Version_32 := 16#ff1af8f0#;
   pragma Export (C, u00477, "multprec_complex_poly_systemsB");
   u00478 : constant Version_32 := 16#686292cd#;
   pragma Export (C, u00478, "multprec_complex_poly_systemsS");
   u00479 : constant Version_32 := 16#147a774b#;
   pragma Export (C, u00479, "multprec_complex_polynomialsB");
   u00480 : constant Version_32 := 16#2b110522#;
   pragma Export (C, u00480, "multprec_complex_polynomialsS");
   u00481 : constant Version_32 := 16#1ba1f5ce#;
   pragma Export (C, u00481, "standard_complex_poly_systemsB");
   u00482 : constant Version_32 := 16#683ce334#;
   pragma Export (C, u00482, "standard_complex_poly_systemsS");
   u00483 : constant Version_32 := 16#61f010c4#;
   pragma Export (C, u00483, "standard_complex_polynomialsB");
   u00484 : constant Version_32 := 16#cff479e5#;
   pragma Export (C, u00484, "standard_complex_polynomialsS");
   u00485 : constant Version_32 := 16#68e0d0cf#;
   pragma Export (C, u00485, "multprec_complex_laurentials_ioB");
   u00486 : constant Version_32 := 16#1f3e88db#;
   pragma Export (C, u00486, "multprec_complex_laurentials_ioS");
   u00487 : constant Version_32 := 16#de619da6#;
   pragma Export (C, u00487, "multprec_write_numbersB");
   u00488 : constant Version_32 := 16#3eff5a52#;
   pragma Export (C, u00488, "multprec_write_numbersS");
   u00489 : constant Version_32 := 16#c3ddea77#;
   pragma Export (C, u00489, "multprec_complex_laur_systems_ioB");
   u00490 : constant Version_32 := 16#fd6b2d0c#;
   pragma Export (C, u00490, "multprec_complex_laur_systems_ioS");
   u00491 : constant Version_32 := 16#3dcde4b5#;
   pragma Export (C, u00491, "numbers_ioB");
   u00492 : constant Version_32 := 16#e7f8781e#;
   pragma Export (C, u00492, "numbers_ioS");
   u00493 : constant Version_32 := 16#dc157342#;
   pragma Export (C, u00493, "quad_double_numbers_ioB");
   u00494 : constant Version_32 := 16#bf02e19b#;
   pragma Export (C, u00494, "quad_double_numbers_ioS");
   u00495 : constant Version_32 := 16#3f6ee7f4#;
   pragma Export (C, u00495, "quad_double_numbersB");
   u00496 : constant Version_32 := 16#73eef75e#;
   pragma Export (C, u00496, "quad_double_numbersS");
   u00497 : constant Version_32 := 16#d8da2244#;
   pragma Export (C, u00497, "quad_double_renormalizationsB");
   u00498 : constant Version_32 := 16#cf9b062a#;
   pragma Export (C, u00498, "quad_double_renormalizationsS");
   u00499 : constant Version_32 := 16#f4b8aa9d#;
   pragma Export (C, u00499, "triple_double_numbersB");
   u00500 : constant Version_32 := 16#3d65a8b1#;
   pragma Export (C, u00500, "triple_double_numbersS");
   u00501 : constant Version_32 := 16#1c1bc379#;
   pragma Export (C, u00501, "fast_double_renormalizationsB");
   u00502 : constant Version_32 := 16#53669449#;
   pragma Export (C, u00502, "fast_double_renormalizationsS");
   u00503 : constant Version_32 := 16#7cd3eeac#;
   pragma Export (C, u00503, "dobldobl_complex_vector_normsB");
   u00504 : constant Version_32 := 16#20547be1#;
   pragma Export (C, u00504, "dobldobl_complex_vector_normsS");
   u00505 : constant Version_32 := 16#73a069be#;
   pragma Export (C, u00505, "dobldobl_mathematical_functionsB");
   u00506 : constant Version_32 := 16#35d959dc#;
   pragma Export (C, u00506, "dobldobl_mathematical_functionsS");
   u00507 : constant Version_32 := 16#f10c79f3#;
   pragma Export (C, u00507, "double_double_constantsS");
   u00508 : constant Version_32 := 16#076e5a9f#;
   pragma Export (C, u00508, "dobldobl_incfix_continuationB");
   u00509 : constant Version_32 := 16#f1ed5243#;
   pragma Export (C, u00509, "dobldobl_incfix_continuationS");
   u00510 : constant Version_32 := 16#fe489a9d#;
   pragma Export (C, u00510, "dobldobl_continuation_dataB");
   u00511 : constant Version_32 := 16#e5dd765d#;
   pragma Export (C, u00511, "dobldobl_continuation_dataS");
   u00512 : constant Version_32 := 16#951c4252#;
   pragma Export (C, u00512, "dobldobl_continuation_data_ioB");
   u00513 : constant Version_32 := 16#da94bf66#;
   pragma Export (C, u00513, "dobldobl_continuation_data_ioS");
   u00514 : constant Version_32 := 16#7aff9bc1#;
   pragma Export (C, u00514, "dobldobl_path_trackersB");
   u00515 : constant Version_32 := 16#2d285f8f#;
   pragma Export (C, u00515, "dobldobl_path_trackersS");
   u00516 : constant Version_32 := 16#4df583b1#;
   pragma Export (C, u00516, "directions_of_dobldobl_pathsB");
   u00517 : constant Version_32 := 16#66f2a385#;
   pragma Export (C, u00517, "directions_of_dobldobl_pathsS");
   u00518 : constant Version_32 := 16#be8be006#;
   pragma Export (C, u00518, "dobldobl_vlprs_algorithmB");
   u00519 : constant Version_32 := 16#df8e7fdf#;
   pragma Export (C, u00519, "dobldobl_vlprs_algorithmS");
   u00520 : constant Version_32 := 16#f39798a5#;
   pragma Export (C, u00520, "dobldobl_vlprs_tablesB");
   u00521 : constant Version_32 := 16#d8ed8c5e#;
   pragma Export (C, u00521, "dobldobl_vlprs_tablesS");
   u00522 : constant Version_32 := 16#0bbeb89f#;
   pragma Export (C, u00522, "double_double_matricesB");
   u00523 : constant Version_32 := 16#5c5565e8#;
   pragma Export (C, u00523, "double_double_matricesS");
   u00524 : constant Version_32 := 16#ffed19bd#;
   pragma Export (C, u00524, "double_double_vectorsB");
   u00525 : constant Version_32 := 16#507e5d29#;
   pragma Export (C, u00525, "double_double_vectorsS");
   u00526 : constant Version_32 := 16#0bbd0eed#;
   pragma Export (C, u00526, "double_double_vector_normsB");
   u00527 : constant Version_32 := 16#251e73e5#;
   pragma Export (C, u00527, "double_double_vector_normsS");
   u00528 : constant Version_32 := 16#27cc2b67#;
   pragma Export (C, u00528, "double_double_vectors_ioB");
   u00529 : constant Version_32 := 16#ec2a960d#;
   pragma Export (C, u00529, "double_double_vectors_ioS");
   u00530 : constant Version_32 := 16#0c234456#;
   pragma Export (C, u00530, "abstract_ring_ioS");
   u00531 : constant Version_32 := 16#4635caba#;
   pragma Export (C, u00531, "double_double_ring_ioS");
   u00532 : constant Version_32 := 16#4f217078#;
   pragma Export (C, u00532, "generic_vectors_ioB");
   u00533 : constant Version_32 := 16#415b97da#;
   pragma Export (C, u00533, "generic_vectors_ioS");
   u00534 : constant Version_32 := 16#e534e05b#;
   pragma Export (C, u00534, "double_double_vecvecsB");
   u00535 : constant Version_32 := 16#ab42f13a#;
   pragma Export (C, u00535, "double_double_vecvecsS");
   u00536 : constant Version_32 := 16#19500866#;
   pragma Export (C, u00536, "dobldobl_complex_equality_testsB");
   u00537 : constant Version_32 := 16#b547b963#;
   pragma Export (C, u00537, "dobldobl_complex_equality_testsS");
   u00538 : constant Version_32 := 16#27f1fda4#;
   pragma Export (C, u00538, "dobldobl_correctorsB");
   u00539 : constant Version_32 := 16#92f49118#;
   pragma Export (C, u00539, "dobldobl_correctorsS");
   u00540 : constant Version_32 := 16#8f9a7b1c#;
   pragma Export (C, u00540, "dobldobl_complex_linear_solversB");
   u00541 : constant Version_32 := 16#49428678#;
   pragma Export (C, u00541, "dobldobl_complex_linear_solversS");
   u00542 : constant Version_32 := 16#78a8ba57#;
   pragma Export (C, u00542, "standard_natural_matricesB");
   u00543 : constant Version_32 := 16#d7c5fe4f#;
   pragma Export (C, u00543, "standard_natural_matricesS");
   u00544 : constant Version_32 := 16#14eec5a6#;
   pragma Export (C, u00544, "process_ioB");
   u00545 : constant Version_32 := 16#fdf3895b#;
   pragma Export (C, u00545, "process_ioS");
   u00546 : constant Version_32 := 16#496f3f43#;
   pragma Export (C, u00546, "multprec_complex_numbers_ioB");
   u00547 : constant Version_32 := 16#3c298a1f#;
   pragma Export (C, u00547, "multprec_complex_numbers_ioS");
   u00548 : constant Version_32 := 16#83c2622a#;
   pragma Export (C, u00548, "multprec_complex_solutions_ioB");
   u00549 : constant Version_32 := 16#09db4973#;
   pragma Export (C, u00549, "multprec_complex_solutions_ioS");
   u00550 : constant Version_32 := 16#fb0c8835#;
   pragma Export (C, u00550, "quaddobl_complex_numbers_ioB");
   u00551 : constant Version_32 := 16#b68e5225#;
   pragma Export (C, u00551, "quaddobl_complex_numbers_ioS");
   u00552 : constant Version_32 := 16#e4febe7e#;
   pragma Export (C, u00552, "quaddobl_complex_numbersB");
   u00553 : constant Version_32 := 16#cc545363#;
   pragma Export (C, u00553, "quaddobl_complex_numbersS");
   u00554 : constant Version_32 := 16#bae5ca43#;
   pragma Export (C, u00554, "quad_double_ringS");
   u00555 : constant Version_32 := 16#9d362e2d#;
   pragma Export (C, u00555, "quad_double_ring__ffieldS");
   u00556 : constant Version_32 := 16#7f6046fd#;
   pragma Export (C, u00556, "quaddobl_complex_solutions_ioB");
   u00557 : constant Version_32 := 16#f9516e05#;
   pragma Export (C, u00557, "quaddobl_complex_solutions_ioS");
   u00558 : constant Version_32 := 16#6e0cd23a#;
   pragma Export (C, u00558, "quaddobl_complex_solutionsB");
   u00559 : constant Version_32 := 16#10f41477#;
   pragma Export (C, u00559, "quaddobl_complex_solutionsS");
   u00560 : constant Version_32 := 16#402553bf#;
   pragma Export (C, u00560, "multprec_quaddobl_convertorsB");
   u00561 : constant Version_32 := 16#e0e5cb7d#;
   pragma Export (C, u00561, "multprec_quaddobl_convertorsS");
   u00562 : constant Version_32 := 16#f549cd34#;
   pragma Export (C, u00562, "quaddobl_complex_numbers_cvB");
   u00563 : constant Version_32 := 16#a2aa433f#;
   pragma Export (C, u00563, "quaddobl_complex_numbers_cvS");
   u00564 : constant Version_32 := 16#c635fac5#;
   pragma Export (C, u00564, "tripdobl_complex_numbersB");
   u00565 : constant Version_32 := 16#d528c098#;
   pragma Export (C, u00565, "tripdobl_complex_numbersS");
   u00566 : constant Version_32 := 16#68365c99#;
   pragma Export (C, u00566, "triple_double_ringS");
   u00567 : constant Version_32 := 16#74526fb7#;
   pragma Export (C, u00567, "triple_double_ring__ffieldS");
   u00568 : constant Version_32 := 16#27cd2393#;
   pragma Export (C, u00568, "quaddobl_complex_vectors_cvB");
   u00569 : constant Version_32 := 16#e989a896#;
   pragma Export (C, u00569, "quaddobl_complex_vectors_cvS");
   u00570 : constant Version_32 := 16#aabba852#;
   pragma Export (C, u00570, "quaddobl_complex_vectorsB");
   u00571 : constant Version_32 := 16#ae0e2c61#;
   pragma Export (C, u00571, "quaddobl_complex_vectorsS");
   u00572 : constant Version_32 := 16#831ce7bf#;
   pragma Export (C, u00572, "quaddobl_complex_ringS");
   u00573 : constant Version_32 := 16#95f72cfe#;
   pragma Export (C, u00573, "quaddobl_complex_vecvecsB");
   u00574 : constant Version_32 := 16#25f14cd7#;
   pragma Export (C, u00574, "quaddobl_complex_vecvecsS");
   u00575 : constant Version_32 := 16#0e6ebbef#;
   pragma Export (C, u00575, "tripdobl_complex_vectorsB");
   u00576 : constant Version_32 := 16#571306d5#;
   pragma Export (C, u00576, "tripdobl_complex_vectorsS");
   u00577 : constant Version_32 := 16#fc1f9a0d#;
   pragma Export (C, u00577, "tripdobl_complex_ringS");
   u00578 : constant Version_32 := 16#e5269d04#;
   pragma Export (C, u00578, "tripdobl_complex_vecvecsB");
   u00579 : constant Version_32 := 16#ac3dd799#;
   pragma Export (C, u00579, "tripdobl_complex_vecvecsS");
   u00580 : constant Version_32 := 16#a55987db#;
   pragma Export (C, u00580, "dobldobl_data_on_pathB");
   u00581 : constant Version_32 := 16#5a03f9fe#;
   pragma Export (C, u00581, "dobldobl_data_on_pathS");
   u00582 : constant Version_32 := 16#dd6d8895#;
   pragma Export (C, u00582, "standard_data_on_pathB");
   u00583 : constant Version_32 := 16#7edc744f#;
   pragma Export (C, u00583, "standard_data_on_pathS");
   u00584 : constant Version_32 := 16#400a651c#;
   pragma Export (C, u00584, "directions_of_standard_pathsB");
   u00585 : constant Version_32 := 16#41ff7785#;
   pragma Export (C, u00585, "directions_of_standard_pathsS");
   u00586 : constant Version_32 := 16#63acee70#;
   pragma Export (C, u00586, "standard_floating_matrices_ioB");
   u00587 : constant Version_32 := 16#8a61b28d#;
   pragma Export (C, u00587, "standard_floating_matrices_ioS");
   u00588 : constant Version_32 := 16#df21c86f#;
   pragma Export (C, u00588, "generic_matrices_ioB");
   u00589 : constant Version_32 := 16#d9db925a#;
   pragma Export (C, u00589, "generic_matrices_ioS");
   u00590 : constant Version_32 := 16#79c94e2a#;
   pragma Export (C, u00590, "standard_floating_ring_ioS");
   u00591 : constant Version_32 := 16#2c744f31#;
   pragma Export (C, u00591, "standard_floating_vector_normsB");
   u00592 : constant Version_32 := 16#169d6265#;
   pragma Export (C, u00592, "standard_floating_vector_normsS");
   u00593 : constant Version_32 := 16#9f873e12#;
   pragma Export (C, u00593, "standard_floating_vectors_ioB");
   u00594 : constant Version_32 := 16#5b9bd0a4#;
   pragma Export (C, u00594, "standard_floating_vectors_ioS");
   u00595 : constant Version_32 := 16#aea9aff6#;
   pragma Export (C, u00595, "standard_integer_vectors_ioB");
   u00596 : constant Version_32 := 16#be3b6a1b#;
   pragma Export (C, u00596, "standard_integer_vectors_ioS");
   u00597 : constant Version_32 := 16#b53dd1b0#;
   pragma Export (C, u00597, "standard_integer_ring_ioS");
   u00598 : constant Version_32 := 16#faa79042#;
   pragma Export (C, u00598, "standard_vlprs_algorithmB");
   u00599 : constant Version_32 := 16#53495d89#;
   pragma Export (C, u00599, "standard_vlprs_algorithmS");
   u00600 : constant Version_32 := 16#e2a89604#;
   pragma Export (C, u00600, "standard_vlprs_tablesB");
   u00601 : constant Version_32 := 16#8a935137#;
   pragma Export (C, u00601, "standard_vlprs_tablesS");
   u00602 : constant Version_32 := 16#e1ba2a52#;
   pragma Export (C, u00602, "standard_floating_vecvecsB");
   u00603 : constant Version_32 := 16#2b7600bd#;
   pragma Export (C, u00603, "standard_floating_vecvecsS");
   u00604 : constant Version_32 := 16#9dbc24b6#;
   pragma Export (C, u00604, "standard_continuation_dataB");
   u00605 : constant Version_32 := 16#b552ee80#;
   pragma Export (C, u00605, "standard_continuation_dataS");
   u00606 : constant Version_32 := 16#717e4393#;
   pragma Export (C, u00606, "dobldobl_dispatch_predictorsB");
   u00607 : constant Version_32 := 16#b04b4c8e#;
   pragma Export (C, u00607, "dobldobl_dispatch_predictorsS");
   u00608 : constant Version_32 := 16#d4d2a688#;
   pragma Export (C, u00608, "dobldobl_predictorsB");
   u00609 : constant Version_32 := 16#e08d7357#;
   pragma Export (C, u00609, "dobldobl_predictorsS");
   u00610 : constant Version_32 := 16#095ff920#;
   pragma Export (C, u00610, "dobldobl_extrapolatorsB");
   u00611 : constant Version_32 := 16#e75ad16e#;
   pragma Export (C, u00611, "dobldobl_extrapolatorsS");
   u00612 : constant Version_32 := 16#f92924b1#;
   pragma Export (C, u00612, "dobldobl_orthogonal_correctorsB");
   u00613 : constant Version_32 := 16#0605619b#;
   pragma Export (C, u00613, "dobldobl_orthogonal_correctorsS");
   u00614 : constant Version_32 := 16#0715367a#;
   pragma Export (C, u00614, "dobldobl_complex_qr_least_squaresB");
   u00615 : constant Version_32 := 16#a70567f6#;
   pragma Export (C, u00615, "dobldobl_complex_qr_least_squaresS");
   u00616 : constant Version_32 := 16#70bd6870#;
   pragma Export (C, u00616, "dobldobl_complex_singular_valuesB");
   u00617 : constant Version_32 := 16#579cbe02#;
   pragma Export (C, u00617, "dobldobl_complex_singular_valuesS");
   u00618 : constant Version_32 := 16#9aa672de#;
   pragma Export (C, u00618, "dobldobl_simpomial_solversB");
   u00619 : constant Version_32 := 16#0865bc35#;
   pragma Export (C, u00619, "dobldobl_simpomial_solversS");
   u00620 : constant Version_32 := 16#c624628d#;
   pragma Export (C, u00620, "dobldobl_simplex_solversB");
   u00621 : constant Version_32 := 16#a4731b9c#;
   pragma Export (C, u00621, "dobldobl_simplex_solversS");
   u00622 : constant Version_32 := 16#0c48bb6f#;
   pragma Export (C, u00622, "dobldobl_binomial_solversB");
   u00623 : constant Version_32 := 16#e2887a8a#;
   pragma Export (C, u00623, "dobldobl_binomial_solversS");
   u00624 : constant Version_32 := 16#9c7b0f8f#;
   pragma Export (C, u00624, "dobldobl_binomial_systemsB");
   u00625 : constant Version_32 := 16#dc52a0e8#;
   pragma Export (C, u00625, "dobldobl_binomial_systemsS");
   u00626 : constant Version_32 := 16#fae39d90#;
   pragma Export (C, u00626, "dobldobl_complex_exponentiationB");
   u00627 : constant Version_32 := 16#0821b916#;
   pragma Export (C, u00627, "dobldobl_complex_exponentiationS");
   u00628 : constant Version_32 := 16#db938d05#;
   pragma Export (C, u00628, "dobldobl_complex_numbers_polarB");
   u00629 : constant Version_32 := 16#7bcbfbde#;
   pragma Export (C, u00629, "dobldobl_complex_numbers_polarS");
   u00630 : constant Version_32 := 16#a160f7e8#;
   pragma Export (C, u00630, "multprec_floating_constantsB");
   u00631 : constant Version_32 := 16#8a616be8#;
   pragma Export (C, u00631, "multprec_floating_constantsS");
   u00632 : constant Version_32 := 16#c6e1382a#;
   pragma Export (C, u00632, "quad_double_constantsS");
   u00633 : constant Version_32 := 16#5bc56e03#;
   pragma Export (C, u00633, "standard_complex_exponentiationB");
   u00634 : constant Version_32 := 16#8a08f7ad#;
   pragma Export (C, u00634, "standard_complex_exponentiationS");
   u00635 : constant Version_32 := 16#05ba6e7e#;
   pragma Export (C, u00635, "standard_complex_numbers_polarB");
   u00636 : constant Version_32 := 16#ad496a24#;
   pragma Export (C, u00636, "standard_complex_numbers_polarS");
   u00637 : constant Version_32 := 16#8272df49#;
   pragma Export (C, u00637, "multprec_integer_matricesB");
   u00638 : constant Version_32 := 16#7e6f72cb#;
   pragma Export (C, u00638, "multprec_integer_matricesS");
   u00639 : constant Version_32 := 16#0fb48f59#;
   pragma Export (C, u00639, "multprec_integer_ringS");
   u00640 : constant Version_32 := 16#a7a453c3#;
   pragma Export (C, u00640, "multprec_integer_vectorsB");
   u00641 : constant Version_32 := 16#fb882ddc#;
   pragma Export (C, u00641, "multprec_integer_vectorsS");
   u00642 : constant Version_32 := 16#7c853ee2#;
   pragma Export (C, u00642, "standard_integer64_matricesB");
   u00643 : constant Version_32 := 16#23352805#;
   pragma Export (C, u00643, "standard_integer64_matricesS");
   u00644 : constant Version_32 := 16#6c4df959#;
   pragma Export (C, u00644, "dobldobl_complex_vectors_ioB");
   u00645 : constant Version_32 := 16#dd6e886f#;
   pragma Export (C, u00645, "dobldobl_complex_vectors_ioS");
   u00646 : constant Version_32 := 16#b12ab6f2#;
   pragma Export (C, u00646, "dobldobl_complex_ring_ioS");
   u00647 : constant Version_32 := 16#c478172f#;
   pragma Export (C, u00647, "dobldobl_radial_solversB");
   u00648 : constant Version_32 := 16#d30ace18#;
   pragma Export (C, u00648, "dobldobl_radial_solversS");
   u00649 : constant Version_32 := 16#9fbd00e9#;
   pragma Export (C, u00649, "multprec_floating_vectorsB");
   u00650 : constant Version_32 := 16#77654ce7#;
   pragma Export (C, u00650, "multprec_floating_vectorsS");
   u00651 : constant Version_32 := 16#90006296#;
   pragma Export (C, u00651, "dobldobl_random_vectorsB");
   u00652 : constant Version_32 := 16#afca0dc8#;
   pragma Export (C, u00652, "dobldobl_random_vectorsS");
   u00653 : constant Version_32 := 16#204caaca#;
   pragma Export (C, u00653, "dobldobl_random_numbersB");
   u00654 : constant Version_32 := 16#6ec20d48#;
   pragma Export (C, u00654, "dobldobl_random_numbersS");
   u00655 : constant Version_32 := 16#d022cd74#;
   pragma Export (C, u00655, "multprec_integer_linear_solversB");
   u00656 : constant Version_32 := 16#bdd30554#;
   pragma Export (C, u00656, "multprec_integer_linear_solversS");
   u00657 : constant Version_32 := 16#e33b6ba7#;
   pragma Export (C, u00657, "multprec_common_divisorsB");
   u00658 : constant Version_32 := 16#c01f7ea4#;
   pragma Export (C, u00658, "multprec_common_divisorsS");
   u00659 : constant Version_32 := 16#0db0ba38#;
   pragma Export (C, u00659, "multprec_integer_matrices_ioB");
   u00660 : constant Version_32 := 16#303dbf77#;
   pragma Export (C, u00660, "multprec_integer_matrices_ioS");
   u00661 : constant Version_32 := 16#5299e0d0#;
   pragma Export (C, u00661, "multprec_integer_ring_ioS");
   u00662 : constant Version_32 := 16#261c3465#;
   pragma Export (C, u00662, "standard_integer64_linear_solversB");
   u00663 : constant Version_32 := 16#f5933b78#;
   pragma Export (C, u00663, "standard_integer64_linear_solversS");
   u00664 : constant Version_32 := 16#f2861309#;
   pragma Export (C, u00664, "standard_integer64_matrices_ioB");
   u00665 : constant Version_32 := 16#5955183f#;
   pragma Export (C, u00665, "standard_integer64_matrices_ioS");
   u00666 : constant Version_32 := 16#50ff55f6#;
   pragma Export (C, u00666, "standard_integer64_ring_ioS");
   u00667 : constant Version_32 := 16#aa4da0a6#;
   pragma Export (C, u00667, "dobldobl_complex_matrices_ioB");
   u00668 : constant Version_32 := 16#137e4465#;
   pragma Export (C, u00668, "dobldobl_complex_matrices_ioS");
   u00669 : constant Version_32 := 16#2577276c#;
   pragma Export (C, u00669, "dobldobl_simplex_systemsB");
   u00670 : constant Version_32 := 16#9df022da#;
   pragma Export (C, u00670, "dobldobl_simplex_systemsS");
   u00671 : constant Version_32 := 16#42136db0#;
   pragma Export (C, u00671, "floating_integer_convertorsB");
   u00672 : constant Version_32 := 16#bc9c11b5#;
   pragma Export (C, u00672, "floating_integer_convertorsS");
   u00673 : constant Version_32 := 16#692438df#;
   pragma Export (C, u00673, "arrays_of_floating_vector_listsB");
   u00674 : constant Version_32 := 16#9836f526#;
   pragma Export (C, u00674, "arrays_of_floating_vector_listsS");
   u00675 : constant Version_32 := 16#ac5cfddf#;
   pragma Export (C, u00675, "lists_of_floating_vectorsB");
   u00676 : constant Version_32 := 16#79dc3571#;
   pragma Export (C, u00676, "lists_of_floating_vectorsS");
   u00677 : constant Version_32 := 16#5a31bdfe#;
   pragma Export (C, u00677, "floating_mixed_subdivisionsB");
   u00678 : constant Version_32 := 16#bed0da8f#;
   pragma Export (C, u00678, "floating_mixed_subdivisionsS");
   u00679 : constant Version_32 := 16#02cede09#;
   pragma Export (C, u00679, "floating_lifting_utilitiesB");
   u00680 : constant Version_32 := 16#747c731e#;
   pragma Export (C, u00680, "floating_lifting_utilitiesS");
   u00681 : constant Version_32 := 16#6a4a14f4#;
   pragma Export (C, u00681, "floating_support_functionsB");
   u00682 : constant Version_32 := 16#0245702a#;
   pragma Export (C, u00682, "floating_support_functionsS");
   u00683 : constant Version_32 := 16#67f1c68d#;
   pragma Export (C, u00683, "standard_floating_linear_solversB");
   u00684 : constant Version_32 := 16#e9081533#;
   pragma Export (C, u00684, "standard_floating_linear_solversS");
   u00685 : constant Version_32 := 16#4e345094#;
   pragma Export (C, u00685, "generic_floating_linear_solversB");
   u00686 : constant Version_32 := 16#0cead201#;
   pragma Export (C, u00686, "generic_floating_linear_solversS");
   u00687 : constant Version_32 := 16#5b2dcb65#;
   pragma Export (C, u00687, "standard_floating_ring__ffieldS");
   u00688 : constant Version_32 := 16#a8b3b316#;
   pragma Export (C, u00688, "polyhedral_coefficient_homotopiesB");
   u00689 : constant Version_32 := 16#9a11ec79#;
   pragma Export (C, u00689, "polyhedral_coefficient_homotopiesS");
   u00690 : constant Version_32 := 16#bf196306#;
   pragma Export (C, u00690, "quaddobl_mathematical_functionsB");
   u00691 : constant Version_32 := 16#ecb5002a#;
   pragma Export (C, u00691, "quaddobl_mathematical_functionsS");
   u00692 : constant Version_32 := 16#5c9a1c20#;
   pragma Export (C, u00692, "exponent_vectorsB");
   u00693 : constant Version_32 := 16#d341ecb5#;
   pragma Export (C, u00693, "exponent_vectorsS");
   u00694 : constant Version_32 := 16#eabba5a7#;
   pragma Export (C, u00694, "quaddobl_complex_laur_systemsB");
   u00695 : constant Version_32 := 16#467975e7#;
   pragma Export (C, u00695, "quaddobl_complex_laur_systemsS");
   u00696 : constant Version_32 := 16#8da09e8e#;
   pragma Export (C, u00696, "quaddobl_complex_laurentialsB");
   u00697 : constant Version_32 := 16#81d6b357#;
   pragma Export (C, u00697, "quaddobl_complex_laurentialsS");
   u00698 : constant Version_32 := 16#28e6b01b#;
   pragma Export (C, u00698, "quaddobl_complex_poly_systemsB");
   u00699 : constant Version_32 := 16#6ed2cb13#;
   pragma Export (C, u00699, "quaddobl_complex_poly_systemsS");
   u00700 : constant Version_32 := 16#7f9e526a#;
   pragma Export (C, u00700, "quaddobl_complex_polynomialsB");
   u00701 : constant Version_32 := 16#fa5d1417#;
   pragma Export (C, u00701, "quaddobl_complex_polynomialsS");
   u00702 : constant Version_32 := 16#2b318192#;
   pragma Export (C, u00702, "supports_of_polynomial_systemsB");
   u00703 : constant Version_32 := 16#534bd90e#;
   pragma Export (C, u00703, "supports_of_polynomial_systemsS");
   u00704 : constant Version_32 := 16#3c50c069#;
   pragma Export (C, u00704, "dobldobl_system_and_solutions_ioB");
   u00705 : constant Version_32 := 16#5059e2fe#;
   pragma Export (C, u00705, "dobldobl_system_and_solutions_ioS");
   u00706 : constant Version_32 := 16#0778171f#;
   pragma Export (C, u00706, "dobldobl_complex_poly_systems_ioB");
   u00707 : constant Version_32 := 16#73924d7c#;
   pragma Export (C, u00707, "dobldobl_complex_poly_systems_ioS");
   u00708 : constant Version_32 := 16#18fc006a#;
   pragma Export (C, u00708, "dobldobl_complex_polynomials_ioB");
   u00709 : constant Version_32 := 16#b61b521f#;
   pragma Export (C, u00709, "dobldobl_complex_polynomials_ioS");
   u00710 : constant Version_32 := 16#262b4b95#;
   pragma Export (C, u00710, "multprec_complex_polynomials_ioB");
   u00711 : constant Version_32 := 16#31958125#;
   pragma Export (C, u00711, "multprec_complex_polynomials_ioS");
   u00712 : constant Version_32 := 16#396f7063#;
   pragma Export (C, u00712, "standard_complex_polynomials_ioB");
   u00713 : constant Version_32 := 16#9a807691#;
   pragma Export (C, u00713, "standard_complex_polynomials_ioS");
   u00714 : constant Version_32 := 16#0f19c7d8#;
   pragma Export (C, u00714, "line_breaksB");
   u00715 : constant Version_32 := 16#a6065486#;
   pragma Export (C, u00715, "line_breaksS");
   u00716 : constant Version_32 := 16#a66a0a5c#;
   pragma Export (C, u00716, "standard_write_numbersB");
   u00717 : constant Version_32 := 16#8ced50a6#;
   pragma Export (C, u00717, "standard_write_numbersS");
   u00718 : constant Version_32 := 16#bf2b2d43#;
   pragma Export (C, u00718, "write_factorsB");
   u00719 : constant Version_32 := 16#4b929b9f#;
   pragma Export (C, u00719, "write_factorsS");
   u00720 : constant Version_32 := 16#1c2876ea#;
   pragma Export (C, u00720, "multprec_complex_poly_systems_ioB");
   u00721 : constant Version_32 := 16#918d8429#;
   pragma Export (C, u00721, "multprec_complex_poly_systems_ioS");
   u00722 : constant Version_32 := 16#f6b83b15#;
   pragma Export (C, u00722, "drivers_for_static_liftingB");
   u00723 : constant Version_32 := 16#b833641d#;
   pragma Export (C, u00723, "drivers_for_static_liftingS");
   u00724 : constant Version_32 := 16#c67f81e7#;
   pragma Export (C, u00724, "driver_for_criterionB");
   u00725 : constant Version_32 := 16#a52a7b61#;
   pragma Export (C, u00725, "driver_for_criterionS");
   u00726 : constant Version_32 := 16#c5e0db9d#;
   pragma Export (C, u00726, "drivers_for_mixed_contributionsB");
   u00727 : constant Version_32 := 16#1c785835#;
   pragma Export (C, u00727, "drivers_for_mixed_contributionsS");
   u00728 : constant Version_32 := 16#b2c16385#;
   pragma Export (C, u00728, "contributions_to_mixed_volumeB");
   u00729 : constant Version_32 := 16#0382c3af#;
   pragma Export (C, u00729, "contributions_to_mixed_volumeS");
   u00730 : constant Version_32 := 16#94342d38#;
   pragma Export (C, u00730, "inner_normal_conesB");
   u00731 : constant Version_32 := 16#b0f2345e#;
   pragma Export (C, u00731, "inner_normal_conesS");
   u00732 : constant Version_32 := 16#df2dac5d#;
   pragma Export (C, u00732, "integer_faces_of_polytopeB");
   u00733 : constant Version_32 := 16#7273315f#;
   pragma Export (C, u00733, "integer_faces_of_polytopeS");
   u00734 : constant Version_32 := 16#20730b15#;
   pragma Export (C, u00734, "integer_face_enumeratorsB");
   u00735 : constant Version_32 := 16#0b3b26dd#;
   pragma Export (C, u00735, "integer_face_enumeratorsS");
   u00736 : constant Version_32 := 16#32cc8eee#;
   pragma Export (C, u00736, "face_enumerators_utilitiesB");
   u00737 : constant Version_32 := 16#e12baf18#;
   pragma Export (C, u00737, "face_enumerators_utilitiesS");
   u00738 : constant Version_32 := 16#e3863294#;
   pragma Export (C, u00738, "integer_linear_inequalitiesB");
   u00739 : constant Version_32 := 16#c9b13b1b#;
   pragma Export (C, u00739, "integer_linear_inequalitiesS");
   u00740 : constant Version_32 := 16#1a2a9d76#;
   pragma Export (C, u00740, "floating_linear_inequalitiesB");
   u00741 : constant Version_32 := 16#e2032098#;
   pragma Export (C, u00741, "floating_linear_inequalitiesS");
   u00742 : constant Version_32 := 16#5746c8ec#;
   pragma Export (C, u00742, "givens_rotationsB");
   u00743 : constant Version_32 := 16#516020ac#;
   pragma Export (C, u00743, "givens_rotationsS");
   u00744 : constant Version_32 := 16#f4bb547c#;
   pragma Export (C, u00744, "linear_minimizationB");
   u00745 : constant Version_32 := 16#effe2b6d#;
   pragma Export (C, u00745, "linear_minimizationS");
   u00746 : constant Version_32 := 16#36c601d0#;
   pragma Export (C, u00746, "basis_exchangesB");
   u00747 : constant Version_32 := 16#5c7ff5f1#;
   pragma Export (C, u00747, "basis_exchangesS");
   u00748 : constant Version_32 := 16#003f0ee4#;
   pragma Export (C, u00748, "normal_cone_intersectionsB");
   u00749 : constant Version_32 := 16#9cf0127d#;
   pragma Export (C, u00749, "normal_cone_intersectionsS");
   u00750 : constant Version_32 := 16#e503abeb#;
   pragma Export (C, u00750, "timing_packageB");
   u00751 : constant Version_32 := 16#273520fa#;
   pragma Export (C, u00751, "timing_packageS");
   u00752 : constant Version_32 := 16#35fecda4#;
   pragma Export (C, u00752, "system__img_fixed_128S");
   u00753 : constant Version_32 := 16#928370ed#;
   pragma Export (C, u00753, "system__arith_128B");
   u00754 : constant Version_32 := 16#2b1de90b#;
   pragma Export (C, u00754, "system__arith_128S");
   u00755 : constant Version_32 := 16#c778b32c#;
   pragma Export (C, u00755, "system__exn_llliS");
   u00756 : constant Version_32 := 16#9d116bfa#;
   pragma Export (C, u00756, "system__img_fixed_32S");
   u00757 : constant Version_32 := 16#78776468#;
   pragma Export (C, u00757, "system__arith_32B");
   u00758 : constant Version_32 := 16#e0d54688#;
   pragma Export (C, u00758, "system__arith_32S");
   u00759 : constant Version_32 := 16#35f4a3c6#;
   pragma Export (C, u00759, "system__img_fixed_64S");
   u00760 : constant Version_32 := 16#d65a15cf#;
   pragma Export (C, u00760, "system__exn_lliS");
   u00761 : constant Version_32 := 16#1f818b37#;
   pragma Export (C, u00761, "system__val_fixed_128S");
   u00762 : constant Version_32 := 16#7f950d11#;
   pragma Export (C, u00762, "system__val_fixed_32S");
   u00763 : constant Version_32 := 16#b60bbeb4#;
   pragma Export (C, u00763, "system__val_fixed_64S");
   u00764 : constant Version_32 := 16#50ca2467#;
   pragma Export (C, u00764, "main_vertex_pointsB");
   u00765 : constant Version_32 := 16#4e77d725#;
   pragma Export (C, u00765, "main_vertex_pointsS");
   u00766 : constant Version_32 := 16#de566e5c#;
   pragma Export (C, u00766, "lists_of_integer_vectors_ioB");
   u00767 : constant Version_32 := 16#70395dd3#;
   pragma Export (C, u00767, "lists_of_integer_vectors_ioS");
   u00768 : constant Version_32 := 16#d0a2f87e#;
   pragma Export (C, u00768, "generic_lists_of_vectors_ioB");
   u00769 : constant Version_32 := 16#bbcb688e#;
   pragma Export (C, u00769, "generic_lists_of_vectors_ioS");
   u00770 : constant Version_32 := 16#66287c69#;
   pragma Export (C, u00770, "standard_complex_poly_systems_ioB");
   u00771 : constant Version_32 := 16#a687e086#;
   pragma Export (C, u00771, "standard_complex_poly_systems_ioS");
   u00772 : constant Version_32 := 16#fbb14ae7#;
   pragma Export (C, u00772, "drivers_for_coefficient_systemsB");
   u00773 : constant Version_32 := 16#0112ee8a#;
   pragma Export (C, u00773, "drivers_for_coefficient_systemsS");
   u00774 : constant Version_32 := 16#fc4d31e9#;
   pragma Export (C, u00774, "main_poly_continuationB");
   u00775 : constant Version_32 := 16#897cc40a#;
   pragma Export (C, u00775, "main_poly_continuationS");
   u00776 : constant Version_32 := 16#0f88fe35#;
   pragma Export (C, u00776, "continuation_parameters_ioB");
   u00777 : constant Version_32 := 16#6a8c933c#;
   pragma Export (C, u00777, "continuation_parameters_ioS");
   u00778 : constant Version_32 := 16#336667f3#;
   pragma Export (C, u00778, "dobldobl_homotopyB");
   u00779 : constant Version_32 := 16#35331807#;
   pragma Export (C, u00779, "dobldobl_homotopyS");
   u00780 : constant Version_32 := 16#835481de#;
   pragma Export (C, u00780, "dobldobl_complex_jaco_matricesB");
   u00781 : constant Version_32 := 16#da5a470c#;
   pragma Export (C, u00781, "dobldobl_complex_jaco_matricesS");
   u00782 : constant Version_32 := 16#c33d968a#;
   pragma Export (C, u00782, "dobldobl_complex_poly_functionsB");
   u00783 : constant Version_32 := 16#36965b40#;
   pragma Export (C, u00783, "dobldobl_complex_poly_functionsS");
   u00784 : constant Version_32 := 16#363eb710#;
   pragma Export (C, u00784, "generic_polynomial_functionsB");
   u00785 : constant Version_32 := 16#ca375f51#;
   pragma Export (C, u00785, "generic_polynomial_functionsS");
   u00786 : constant Version_32 := 16#d88794b5#;
   pragma Export (C, u00786, "dobldobl_complex_poly_sysfunB");
   u00787 : constant Version_32 := 16#dd952367#;
   pragma Export (C, u00787, "dobldobl_complex_poly_sysfunS");
   u00788 : constant Version_32 := 16#e8c6700b#;
   pragma Export (C, u00788, "generic_poly_system_functionsB");
   u00789 : constant Version_32 := 16#05a31abd#;
   pragma Export (C, u00789, "generic_poly_system_functionsS");
   u00790 : constant Version_32 := 16#db6ab190#;
   pragma Export (C, u00790, "generic_jacobian_matricesB");
   u00791 : constant Version_32 := 16#82cba993#;
   pragma Export (C, u00791, "generic_jacobian_matricesS");
   u00792 : constant Version_32 := 16#a50bed13#;
   pragma Export (C, u00792, "dobldobl_laurent_homotopyB");
   u00793 : constant Version_32 := 16#72e6de42#;
   pragma Export (C, u00793, "dobldobl_laurent_homotopyS");
   u00794 : constant Version_32 := 16#243d3e82#;
   pragma Export (C, u00794, "drivers_for_homotopy_creationB");
   u00795 : constant Version_32 := 16#4f891ff8#;
   pragma Export (C, u00795, "drivers_for_homotopy_creationS");
   u00796 : constant Version_32 := 16#9f57f2d5#;
   pragma Export (C, u00796, "dobldobl_complex_laur_stringsB");
   u00797 : constant Version_32 := 16#83f52fe9#;
   pragma Export (C, u00797, "dobldobl_complex_laur_stringsS");
   u00798 : constant Version_32 := 16#7c53bba8#;
   pragma Export (C, u00798, "multprec_complex_laur_stringsB");
   u00799 : constant Version_32 := 16#df5d204b#;
   pragma Export (C, u00799, "multprec_complex_laur_stringsS");
   u00800 : constant Version_32 := 16#731b3ede#;
   pragma Export (C, u00800, "standard_complex_poly_stringsB");
   u00801 : constant Version_32 := 16#0622909b#;
   pragma Export (C, u00801, "standard_complex_poly_stringsS");
   u00802 : constant Version_32 := 16#162645b9#;
   pragma Export (C, u00802, "standard_complex_term_lists_ioB");
   u00803 : constant Version_32 := 16#c23938bd#;
   pragma Export (C, u00803, "standard_complex_term_lists_ioS");
   u00804 : constant Version_32 := 16#41c126ae#;
   pragma Export (C, u00804, "standard_natural_vectors_ioB");
   u00805 : constant Version_32 := 16#0d56db48#;
   pragma Export (C, u00805, "standard_natural_vectors_ioS");
   u00806 : constant Version_32 := 16#9e3caf18#;
   pragma Export (C, u00806, "standard_natural_ring_ioS");
   u00807 : constant Version_32 := 16#a13b822a#;
   pragma Export (C, u00807, "standard_complex_term_listsB");
   u00808 : constant Version_32 := 16#bee3c8fe#;
   pragma Export (C, u00808, "standard_complex_term_listsS");
   u00809 : constant Version_32 := 16#91249e74#;
   pragma Export (C, u00809, "generic_lists_of_termsB");
   u00810 : constant Version_32 := 16#258732a6#;
   pragma Export (C, u00810, "generic_lists_of_termsS");
   u00811 : constant Version_32 := 16#19d22087#;
   pragma Export (C, u00811, "strings_and_numbersB");
   u00812 : constant Version_32 := 16#07c7db84#;
   pragma Export (C, u00812, "strings_and_numbersS");
   u00813 : constant Version_32 := 16#095960e9#;
   pragma Export (C, u00813, "dobldobl_complex_poly_stringsB");
   u00814 : constant Version_32 := 16#8286efd9#;
   pragma Export (C, u00814, "dobldobl_complex_poly_stringsS");
   u00815 : constant Version_32 := 16#b44ec394#;
   pragma Export (C, u00815, "multprec_complex_poly_stringsB");
   u00816 : constant Version_32 := 16#0de3a172#;
   pragma Export (C, u00816, "multprec_complex_poly_stringsS");
   u00817 : constant Version_32 := 16#a1a96a7e#;
   pragma Export (C, u00817, "multprec_complex_term_listsB");
   u00818 : constant Version_32 := 16#5a945c6d#;
   pragma Export (C, u00818, "multprec_complex_term_listsS");
   u00819 : constant Version_32 := 16#3801d89f#;
   pragma Export (C, u00819, "dobldobl_complex_term_listsB");
   u00820 : constant Version_32 := 16#73c1c250#;
   pragma Export (C, u00820, "dobldobl_complex_term_listsS");
   u00821 : constant Version_32 := 16#95e87ed4#;
   pragma Export (C, u00821, "homogenizationB");
   u00822 : constant Version_32 := 16#61786754#;
   pragma Export (C, u00822, "homogenizationS");
   u00823 : constant Version_32 := 16#551eb7fa#;
   pragma Export (C, u00823, "deca_double_numbersB");
   u00824 : constant Version_32 := 16#579dd309#;
   pragma Export (C, u00824, "deca_double_numbersS");
   u00825 : constant Version_32 := 16#a3151201#;
   pragma Export (C, u00825, "octo_double_numbersB");
   u00826 : constant Version_32 := 16#4804c1fa#;
   pragma Export (C, u00826, "octo_double_numbersS");
   u00827 : constant Version_32 := 16#fc9e5ea1#;
   pragma Export (C, u00827, "penta_double_numbersB");
   u00828 : constant Version_32 := 16#facdb729#;
   pragma Export (C, u00828, "penta_double_numbersS");
   u00829 : constant Version_32 := 16#ebde9c60#;
   pragma Export (C, u00829, "decadobl_complex_numbersB");
   u00830 : constant Version_32 := 16#1b488252#;
   pragma Export (C, u00830, "decadobl_complex_numbersS");
   u00831 : constant Version_32 := 16#d6160f82#;
   pragma Export (C, u00831, "deca_double_ringS");
   u00832 : constant Version_32 := 16#29f918c3#;
   pragma Export (C, u00832, "deca_double_ring__ffieldS");
   u00833 : constant Version_32 := 16#36973b57#;
   pragma Export (C, u00833, "decadobl_random_numbersB");
   u00834 : constant Version_32 := 16#77a2b542#;
   pragma Export (C, u00834, "decadobl_random_numbersS");
   u00835 : constant Version_32 := 16#1a1dd705#;
   pragma Export (C, u00835, "deca_double_constantsS");
   u00836 : constant Version_32 := 16#6b310d00#;
   pragma Export (C, u00836, "decadobl_mathematical_functionsB");
   u00837 : constant Version_32 := 16#324b1080#;
   pragma Export (C, u00837, "decadobl_mathematical_functionsS");
   u00838 : constant Version_32 := 16#909abe9b#;
   pragma Export (C, u00838, "hexa_double_numbersB");
   u00839 : constant Version_32 := 16#7d2f2f65#;
   pragma Export (C, u00839, "hexa_double_numbersS");
   u00840 : constant Version_32 := 16#dc378e03#;
   pragma Export (C, u00840, "hexadobl_complex_numbersB");
   u00841 : constant Version_32 := 16#df0006d7#;
   pragma Export (C, u00841, "hexadobl_complex_numbersS");
   u00842 : constant Version_32 := 16#6ee1443d#;
   pragma Export (C, u00842, "hexa_double_ringS");
   u00843 : constant Version_32 := 16#62afc59a#;
   pragma Export (C, u00843, "hexa_double_ring__ffieldS");
   u00844 : constant Version_32 := 16#caad24ae#;
   pragma Export (C, u00844, "hexadobl_random_numbersB");
   u00845 : constant Version_32 := 16#555fa1a8#;
   pragma Export (C, u00845, "hexadobl_random_numbersS");
   u00846 : constant Version_32 := 16#7d9285d4#;
   pragma Export (C, u00846, "hexa_double_constantsS");
   u00847 : constant Version_32 := 16#cdac9bf0#;
   pragma Export (C, u00847, "hexadobl_mathematical_functionsB");
   u00848 : constant Version_32 := 16#1386f05d#;
   pragma Export (C, u00848, "hexadobl_mathematical_functionsS");
   u00849 : constant Version_32 := 16#050d17ae#;
   pragma Export (C, u00849, "octodobl_complex_numbersB");
   u00850 : constant Version_32 := 16#d00f3735#;
   pragma Export (C, u00850, "octodobl_complex_numbersS");
   u00851 : constant Version_32 := 16#44482b70#;
   pragma Export (C, u00851, "octo_double_ringS");
   u00852 : constant Version_32 := 16#9e330298#;
   pragma Export (C, u00852, "octo_double_ring__ffieldS");
   u00853 : constant Version_32 := 16#a06c2f4d#;
   pragma Export (C, u00853, "octodobl_random_numbersB");
   u00854 : constant Version_32 := 16#2e90a6f6#;
   pragma Export (C, u00854, "octodobl_random_numbersS");
   u00855 : constant Version_32 := 16#57dabe75#;
   pragma Export (C, u00855, "octo_double_constantsS");
   u00856 : constant Version_32 := 16#4c879849#;
   pragma Export (C, u00856, "octodobl_mathematical_functionsB");
   u00857 : constant Version_32 := 16#e5013d40#;
   pragma Export (C, u00857, "octodobl_mathematical_functionsS");
   u00858 : constant Version_32 := 16#b4bf41fd#;
   pragma Export (C, u00858, "pentdobl_complex_numbersB");
   u00859 : constant Version_32 := 16#0fdaa8bb#;
   pragma Export (C, u00859, "pentdobl_complex_numbersS");
   u00860 : constant Version_32 := 16#79a221e9#;
   pragma Export (C, u00860, "penta_double_ringS");
   u00861 : constant Version_32 := 16#cdbec1dc#;
   pragma Export (C, u00861, "penta_double_ring__ffieldS");
   u00862 : constant Version_32 := 16#cea45dd7#;
   pragma Export (C, u00862, "pentdobl_random_numbersB");
   u00863 : constant Version_32 := 16#fae35503#;
   pragma Export (C, u00863, "pentdobl_random_numbersS");
   u00864 : constant Version_32 := 16#756ba147#;
   pragma Export (C, u00864, "penta_double_constantsS");
   u00865 : constant Version_32 := 16#3844ddac#;
   pragma Export (C, u00865, "pentdobl_mathematical_functionsB");
   u00866 : constant Version_32 := 16#75c2172e#;
   pragma Export (C, u00866, "pentdobl_mathematical_functionsS");
   u00867 : constant Version_32 := 16#23f3c392#;
   pragma Export (C, u00867, "quaddobl_random_numbersB");
   u00868 : constant Version_32 := 16#839c8dc0#;
   pragma Export (C, u00868, "quaddobl_random_numbersS");
   u00869 : constant Version_32 := 16#8e46eaab#;
   pragma Export (C, u00869, "tripdobl_random_numbersB");
   u00870 : constant Version_32 := 16#ad0c2589#;
   pragma Export (C, u00870, "tripdobl_random_numbersS");
   u00871 : constant Version_32 := 16#b55804a1#;
   pragma Export (C, u00871, "tripdobl_mathematical_functionsB");
   u00872 : constant Version_32 := 16#3baf2441#;
   pragma Export (C, u00872, "tripdobl_mathematical_functionsS");
   u00873 : constant Version_32 := 16#fd165c74#;
   pragma Export (C, u00873, "triple_double_constantsS");
   u00874 : constant Version_32 := 16#22819e34#;
   pragma Export (C, u00874, "decadobl_complex_poly_systemsB");
   u00875 : constant Version_32 := 16#c2c3d289#;
   pragma Export (C, u00875, "decadobl_complex_poly_systemsS");
   u00876 : constant Version_32 := 16#43c8f541#;
   pragma Export (C, u00876, "decadobl_complex_polynomialsB");
   u00877 : constant Version_32 := 16#5c2b23a2#;
   pragma Export (C, u00877, "decadobl_complex_polynomialsS");
   u00878 : constant Version_32 := 16#161c553f#;
   pragma Export (C, u00878, "decadobl_complex_ringS");
   u00879 : constant Version_32 := 16#7b1e606c#;
   pragma Export (C, u00879, "hexadobl_complex_poly_systemsB");
   u00880 : constant Version_32 := 16#8c2e10e7#;
   pragma Export (C, u00880, "hexadobl_complex_poly_systemsS");
   u00881 : constant Version_32 := 16#6915d63a#;
   pragma Export (C, u00881, "hexadobl_complex_polynomialsB");
   u00882 : constant Version_32 := 16#4b591f94#;
   pragma Export (C, u00882, "hexadobl_complex_polynomialsS");
   u00883 : constant Version_32 := 16#1c5a5811#;
   pragma Export (C, u00883, "hexadobl_complex_ringS");
   u00884 : constant Version_32 := 16#4c33eaea#;
   pragma Export (C, u00884, "octodobl_complex_poly_systemsB");
   u00885 : constant Version_32 := 16#e40c48db#;
   pragma Export (C, u00885, "octodobl_complex_poly_systemsS");
   u00886 : constant Version_32 := 16#07e3d54b#;
   pragma Export (C, u00886, "octodobl_complex_polynomialsB");
   u00887 : constant Version_32 := 16#1456cd2e#;
   pragma Export (C, u00887, "octodobl_complex_polynomialsS");
   u00888 : constant Version_32 := 16#f4991077#;
   pragma Export (C, u00888, "octodobl_complex_ringS");
   u00889 : constant Version_32 := 16#a94fcefd#;
   pragma Export (C, u00889, "pentdobl_complex_poly_systemsB");
   u00890 : constant Version_32 := 16#8dc3d370#;
   pragma Export (C, u00890, "pentdobl_complex_poly_systemsS");
   u00891 : constant Version_32 := 16#d8e89970#;
   pragma Export (C, u00891, "pentdobl_complex_polynomialsB");
   u00892 : constant Version_32 := 16#98e57292#;
   pragma Export (C, u00892, "pentdobl_complex_polynomialsS");
   u00893 : constant Version_32 := 16#1693b5a3#;
   pragma Export (C, u00893, "pentdobl_complex_ringS");
   u00894 : constant Version_32 := 16#61e39000#;
   pragma Export (C, u00894, "tripdobl_complex_poly_systemsB");
   u00895 : constant Version_32 := 16#a1ff0b9c#;
   pragma Export (C, u00895, "tripdobl_complex_poly_systemsS");
   u00896 : constant Version_32 := 16#a47e8bf7#;
   pragma Export (C, u00896, "tripdobl_complex_polynomialsB");
   u00897 : constant Version_32 := 16#7c75f483#;
   pragma Export (C, u00897, "tripdobl_complex_polynomialsS");
   u00898 : constant Version_32 := 16#cfe84f0e#;
   pragma Export (C, u00898, "multprec_homotopyB");
   u00899 : constant Version_32 := 16#524d8b4d#;
   pragma Export (C, u00899, "multprec_homotopyS");
   u00900 : constant Version_32 := 16#a61c1b69#;
   pragma Export (C, u00900, "multprec_complex_jaco_matricesB");
   u00901 : constant Version_32 := 16#3aba1042#;
   pragma Export (C, u00901, "multprec_complex_jaco_matricesS");
   u00902 : constant Version_32 := 16#ed92d39d#;
   pragma Export (C, u00902, "multprec_complex_matricesB");
   u00903 : constant Version_32 := 16#6f461691#;
   pragma Export (C, u00903, "multprec_complex_matricesS");
   u00904 : constant Version_32 := 16#be2675a6#;
   pragma Export (C, u00904, "multprec_complex_poly_functionsB");
   u00905 : constant Version_32 := 16#78eb6549#;
   pragma Export (C, u00905, "multprec_complex_poly_functionsS");
   u00906 : constant Version_32 := 16#95e15cd1#;
   pragma Export (C, u00906, "multprec_complex_poly_sysfunB");
   u00907 : constant Version_32 := 16#99dfe1c2#;
   pragma Export (C, u00907, "multprec_complex_poly_sysfunS");
   u00908 : constant Version_32 := 16#781a79ab#;
   pragma Export (C, u00908, "projective_transformationsB");
   u00909 : constant Version_32 := 16#85ff0410#;
   pragma Export (C, u00909, "projective_transformationsS");
   u00910 : constant Version_32 := 16#649420c5#;
   pragma Export (C, u00910, "decadobl_complex_solutionsB");
   u00911 : constant Version_32 := 16#8ba39f54#;
   pragma Export (C, u00911, "decadobl_complex_solutionsS");
   u00912 : constant Version_32 := 16#8eb7e894#;
   pragma Export (C, u00912, "decadobl_complex_numbers_cvB");
   u00913 : constant Version_32 := 16#a0124201#;
   pragma Export (C, u00913, "decadobl_complex_numbers_cvS");
   u00914 : constant Version_32 := 16#3134e014#;
   pragma Export (C, u00914, "multprec_decadobl_convertorsB");
   u00915 : constant Version_32 := 16#905968b4#;
   pragma Export (C, u00915, "multprec_decadobl_convertorsS");
   u00916 : constant Version_32 := 16#bfaa3b12#;
   pragma Export (C, u00916, "deca_double_numbers_ioB");
   u00917 : constant Version_32 := 16#e6d34983#;
   pragma Export (C, u00917, "deca_double_numbers_ioS");
   u00918 : constant Version_32 := 16#fb973948#;
   pragma Export (C, u00918, "decadobl_complex_vectors_cvB");
   u00919 : constant Version_32 := 16#281de05d#;
   pragma Export (C, u00919, "decadobl_complex_vectors_cvS");
   u00920 : constant Version_32 := 16#4d9bee00#;
   pragma Export (C, u00920, "decadobl_complex_vectorsB");
   u00921 : constant Version_32 := 16#d30efaad#;
   pragma Export (C, u00921, "decadobl_complex_vectorsS");
   u00922 : constant Version_32 := 16#e08fc24c#;
   pragma Export (C, u00922, "decadobl_complex_vecvecsB");
   u00923 : constant Version_32 := 16#2d8974a9#;
   pragma Export (C, u00923, "decadobl_complex_vecvecsS");
   u00924 : constant Version_32 := 16#dd7cfb0a#;
   pragma Export (C, u00924, "octodobl_complex_vectorsB");
   u00925 : constant Version_32 := 16#4fbf2121#;
   pragma Export (C, u00925, "octodobl_complex_vectorsS");
   u00926 : constant Version_32 := 16#92f09117#;
   pragma Export (C, u00926, "octodobl_complex_vecvecsB");
   u00927 : constant Version_32 := 16#c347fc7e#;
   pragma Export (C, u00927, "octodobl_complex_vecvecsS");
   u00928 : constant Version_32 := 16#25aaa105#;
   pragma Export (C, u00928, "pentdobl_complex_vectorsB");
   u00929 : constant Version_32 := 16#e4d188a9#;
   pragma Export (C, u00929, "pentdobl_complex_vectorsS");
   u00930 : constant Version_32 := 16#aeca69ac#;
   pragma Export (C, u00930, "pentdobl_complex_vecvecsB");
   u00931 : constant Version_32 := 16#5413ad4d#;
   pragma Export (C, u00931, "pentdobl_complex_vecvecsS");
   u00932 : constant Version_32 := 16#847288c7#;
   pragma Export (C, u00932, "hexadobl_complex_solutionsB");
   u00933 : constant Version_32 := 16#08cf3040#;
   pragma Export (C, u00933, "hexadobl_complex_solutionsS");
   u00934 : constant Version_32 := 16#5ba99fdc#;
   pragma Export (C, u00934, "hexadobl_complex_numbers_cvB");
   u00935 : constant Version_32 := 16#a9203749#;
   pragma Export (C, u00935, "hexadobl_complex_numbers_cvS");
   u00936 : constant Version_32 := 16#466e0657#;
   pragma Export (C, u00936, "multprec_hexadobl_convertorsB");
   u00937 : constant Version_32 := 16#3f683807#;
   pragma Export (C, u00937, "multprec_hexadobl_convertorsS");
   u00938 : constant Version_32 := 16#60d581c1#;
   pragma Export (C, u00938, "hexa_double_numbers_ioB");
   u00939 : constant Version_32 := 16#4845dbdf#;
   pragma Export (C, u00939, "hexa_double_numbers_ioS");
   u00940 : constant Version_32 := 16#3e5e9c07#;
   pragma Export (C, u00940, "hexadobl_complex_vectors_cvB");
   u00941 : constant Version_32 := 16#54422f6c#;
   pragma Export (C, u00941, "hexadobl_complex_vectors_cvS");
   u00942 : constant Version_32 := 16#a781f1af#;
   pragma Export (C, u00942, "hexadobl_complex_vectorsB");
   u00943 : constant Version_32 := 16#04bbfa4f#;
   pragma Export (C, u00943, "hexadobl_complex_vectorsS");
   u00944 : constant Version_32 := 16#9e0b8be9#;
   pragma Export (C, u00944, "hexadobl_complex_vecvecsB");
   u00945 : constant Version_32 := 16#84b83dee#;
   pragma Export (C, u00945, "hexadobl_complex_vecvecsS");
   u00946 : constant Version_32 := 16#98bbdbe9#;
   pragma Export (C, u00946, "octodobl_complex_solutionsB");
   u00947 : constant Version_32 := 16#5460c333#;
   pragma Export (C, u00947, "octodobl_complex_solutionsS");
   u00948 : constant Version_32 := 16#2a77db92#;
   pragma Export (C, u00948, "multprec_octodobl_convertorsB");
   u00949 : constant Version_32 := 16#a3e96c43#;
   pragma Export (C, u00949, "multprec_octodobl_convertorsS");
   u00950 : constant Version_32 := 16#409a06f8#;
   pragma Export (C, u00950, "octo_double_numbers_ioB");
   u00951 : constant Version_32 := 16#929a7116#;
   pragma Export (C, u00951, "octo_double_numbers_ioS");
   u00952 : constant Version_32 := 16#4fe36a00#;
   pragma Export (C, u00952, "octodobl_complex_numbers_cvB");
   u00953 : constant Version_32 := 16#3fead0c9#;
   pragma Export (C, u00953, "octodobl_complex_numbers_cvS");
   u00954 : constant Version_32 := 16#a257ffa5#;
   pragma Export (C, u00954, "octodobl_complex_vectors_cvB");
   u00955 : constant Version_32 := 16#e80ff980#;
   pragma Export (C, u00955, "octodobl_complex_vectors_cvS");
   u00956 : constant Version_32 := 16#1d48bbeb#;
   pragma Export (C, u00956, "pentdobl_complex_solutionsB");
   u00957 : constant Version_32 := 16#5811ee9b#;
   pragma Export (C, u00957, "pentdobl_complex_solutionsS");
   u00958 : constant Version_32 := 16#3a229a3c#;
   pragma Export (C, u00958, "multprec_pentdobl_convertorsB");
   u00959 : constant Version_32 := 16#6a52019b#;
   pragma Export (C, u00959, "multprec_pentdobl_convertorsS");
   u00960 : constant Version_32 := 16#c158b379#;
   pragma Export (C, u00960, "penta_double_numbers_ioB");
   u00961 : constant Version_32 := 16#30d72567#;
   pragma Export (C, u00961, "penta_double_numbers_ioS");
   u00962 : constant Version_32 := 16#0d04836f#;
   pragma Export (C, u00962, "pentdobl_complex_numbers_cvB");
   u00963 : constant Version_32 := 16#89362f62#;
   pragma Export (C, u00963, "pentdobl_complex_numbers_cvS");
   u00964 : constant Version_32 := 16#ab50baac#;
   pragma Export (C, u00964, "pentdobl_complex_vectors_cvB");
   u00965 : constant Version_32 := 16#fa916514#;
   pragma Export (C, u00965, "pentdobl_complex_vectors_cvS");
   u00966 : constant Version_32 := 16#fed6da62#;
   pragma Export (C, u00966, "tripdobl_complex_solutionsB");
   u00967 : constant Version_32 := 16#66b2f502#;
   pragma Export (C, u00967, "tripdobl_complex_solutionsS");
   u00968 : constant Version_32 := 16#819da4c3#;
   pragma Export (C, u00968, "multprec_tripdobl_convertorsB");
   u00969 : constant Version_32 := 16#78ffb26a#;
   pragma Export (C, u00969, "multprec_tripdobl_convertorsS");
   u00970 : constant Version_32 := 16#c201f37d#;
   pragma Export (C, u00970, "triple_double_numbers_ioB");
   u00971 : constant Version_32 := 16#0389612b#;
   pragma Export (C, u00971, "triple_double_numbers_ioS");
   u00972 : constant Version_32 := 16#6ec86637#;
   pragma Export (C, u00972, "tripdobl_complex_numbers_cvB");
   u00973 : constant Version_32 := 16#e6e7122c#;
   pragma Export (C, u00973, "tripdobl_complex_numbers_cvS");
   u00974 : constant Version_32 := 16#a08b37e4#;
   pragma Export (C, u00974, "tripdobl_complex_vectors_cvB");
   u00975 : constant Version_32 := 16#6736402b#;
   pragma Export (C, u00975, "tripdobl_complex_vectors_cvS");
   u00976 : constant Version_32 := 16#4f819bf6#;
   pragma Export (C, u00976, "quaddobl_complex_laur_stringsB");
   u00977 : constant Version_32 := 16#8c4c5210#;
   pragma Export (C, u00977, "quaddobl_complex_laur_stringsS");
   u00978 : constant Version_32 := 16#a247604b#;
   pragma Export (C, u00978, "quaddobl_polynomial_convertorsB");
   u00979 : constant Version_32 := 16#9194bcd1#;
   pragma Export (C, u00979, "quaddobl_polynomial_convertorsS");
   u00980 : constant Version_32 := 16#68e27e3a#;
   pragma Export (C, u00980, "quad_double_poly_systemsB");
   u00981 : constant Version_32 := 16#cf295147#;
   pragma Export (C, u00981, "quad_double_poly_systemsS");
   u00982 : constant Version_32 := 16#97b35b73#;
   pragma Export (C, u00982, "quad_double_polynomialsB");
   u00983 : constant Version_32 := 16#1ba24062#;
   pragma Export (C, u00983, "quad_double_polynomialsS");
   u00984 : constant Version_32 := 16#7eb42053#;
   pragma Export (C, u00984, "quaddobl_complex_poly_stringsB");
   u00985 : constant Version_32 := 16#f944e1b9#;
   pragma Export (C, u00985, "quaddobl_complex_poly_stringsS");
   u00986 : constant Version_32 := 16#8d48daec#;
   pragma Export (C, u00986, "quaddobl_complex_term_listsB");
   u00987 : constant Version_32 := 16#a739fdca#;
   pragma Export (C, u00987, "quaddobl_complex_term_listsS");
   u00988 : constant Version_32 := 16#e7f616ce#;
   pragma Export (C, u00988, "quaddobl_homotopyB");
   u00989 : constant Version_32 := 16#84dfcd15#;
   pragma Export (C, u00989, "quaddobl_homotopyS");
   u00990 : constant Version_32 := 16#aad21012#;
   pragma Export (C, u00990, "quaddobl_complex_jaco_matricesB");
   u00991 : constant Version_32 := 16#1ceb2a1f#;
   pragma Export (C, u00991, "quaddobl_complex_jaco_matricesS");
   u00992 : constant Version_32 := 16#8855e00a#;
   pragma Export (C, u00992, "quaddobl_complex_matricesB");
   u00993 : constant Version_32 := 16#21ce4c35#;
   pragma Export (C, u00993, "quaddobl_complex_matricesS");
   u00994 : constant Version_32 := 16#0ffc73e2#;
   pragma Export (C, u00994, "quaddobl_complex_poly_functionsB");
   u00995 : constant Version_32 := 16#899a2f1f#;
   pragma Export (C, u00995, "quaddobl_complex_poly_functionsS");
   u00996 : constant Version_32 := 16#ddec787b#;
   pragma Export (C, u00996, "quaddobl_complex_poly_sysfunB");
   u00997 : constant Version_32 := 16#d687e373#;
   pragma Export (C, u00997, "quaddobl_complex_poly_sysfunS");
   u00998 : constant Version_32 := 16#9e3cb515#;
   pragma Export (C, u00998, "quaddobl_laurent_homotopyB");
   u00999 : constant Version_32 := 16#35602922#;
   pragma Export (C, u00999, "quaddobl_laurent_homotopyS");
   u01000 : constant Version_32 := 16#d2fb7c00#;
   pragma Export (C, u01000, "quaddobl_complex_laur_functionsB");
   u01001 : constant Version_32 := 16#e84e4f3d#;
   pragma Export (C, u01001, "quaddobl_complex_laur_functionsS");
   u01002 : constant Version_32 := 16#6181d25c#;
   pragma Export (C, u01002, "quaddobl_complex_ring__ffieldS");
   u01003 : constant Version_32 := 16#9838ef7b#;
   pragma Export (C, u01003, "quaddobl_complex_laur_jacomatsB");
   u01004 : constant Version_32 := 16#b3640fb0#;
   pragma Export (C, u01004, "quaddobl_complex_laur_jacomatsS");
   u01005 : constant Version_32 := 16#476c72d8#;
   pragma Export (C, u01005, "quaddobl_complex_laur_sysfunB");
   u01006 : constant Version_32 := 16#dc002bd1#;
   pragma Export (C, u01006, "quaddobl_complex_laur_sysfunS");
   u01007 : constant Version_32 := 16#65944951#;
   pragma Export (C, u01007, "standard_coefficient_homotopyB");
   u01008 : constant Version_32 := 16#bc28f603#;
   pragma Export (C, u01008, "standard_coefficient_homotopyS");
   u01009 : constant Version_32 := 16#36a67fd1#;
   pragma Export (C, u01009, "standard_complex_jaco_matricesB");
   u01010 : constant Version_32 := 16#5b263b21#;
   pragma Export (C, u01010, "standard_complex_jaco_matricesS");
   u01011 : constant Version_32 := 16#1c12548d#;
   pragma Export (C, u01011, "standard_complex_poly_functionsB");
   u01012 : constant Version_32 := 16#18c938e9#;
   pragma Export (C, u01012, "standard_complex_poly_functionsS");
   u01013 : constant Version_32 := 16#6c0acf67#;
   pragma Export (C, u01013, "standard_complex_poly_sysfunB");
   u01014 : constant Version_32 := 16#ad650239#;
   pragma Export (C, u01014, "standard_complex_poly_sysfunS");
   u01015 : constant Version_32 := 16#de67b975#;
   pragma Export (C, u01015, "standard_homotopyB");
   u01016 : constant Version_32 := 16#fb3ff9ee#;
   pragma Export (C, u01016, "standard_homotopyS");
   u01017 : constant Version_32 := 16#5a1fd5de#;
   pragma Export (C, u01017, "standard_laurent_homotopyB");
   u01018 : constant Version_32 := 16#362de925#;
   pragma Export (C, u01018, "standard_laurent_homotopyS");
   u01019 : constant Version_32 := 16#b680d0a9#;
   pragma Export (C, u01019, "standard_complex_laur_functionsB");
   u01020 : constant Version_32 := 16#97637095#;
   pragma Export (C, u01020, "standard_complex_laur_functionsS");
   u01021 : constant Version_32 := 16#0d6f654e#;
   pragma Export (C, u01021, "standard_complex_ring__ffieldS");
   u01022 : constant Version_32 := 16#c8a210ce#;
   pragma Export (C, u01022, "standard_complex_laur_jacomatsB");
   u01023 : constant Version_32 := 16#9381a77d#;
   pragma Export (C, u01023, "standard_complex_laur_jacomatsS");
   u01024 : constant Version_32 := 16#7ae1e81b#;
   pragma Export (C, u01024, "standard_complex_laur_sysfunB");
   u01025 : constant Version_32 := 16#0c24e31e#;
   pragma Export (C, u01025, "standard_complex_laur_sysfunS");
   u01026 : constant Version_32 := 16#6589dc94#;
   pragma Export (C, u01026, "standard_to_multprec_convertorsB");
   u01027 : constant Version_32 := 16#f6200720#;
   pragma Export (C, u01027, "standard_to_multprec_convertorsS");
   u01028 : constant Version_32 := 16#7a661675#;
   pragma Export (C, u01028, "multprec_floating_poly_systemsB");
   u01029 : constant Version_32 := 16#7e32aa19#;
   pragma Export (C, u01029, "multprec_floating_poly_systemsS");
   u01030 : constant Version_32 := 16#d1935d33#;
   pragma Export (C, u01030, "multprec_floating_polynomialsB");
   u01031 : constant Version_32 := 16#b83dd373#;
   pragma Export (C, u01031, "multprec_floating_polynomialsS");
   u01032 : constant Version_32 := 16#a807ed54#;
   pragma Export (C, u01032, "drivers_for_path_directionsB");
   u01033 : constant Version_32 := 16#18efcb3f#;
   pragma Export (C, u01033, "drivers_for_path_directionsS");
   u01034 : constant Version_32 := 16#85914a32#;
   pragma Export (C, u01034, "quad_double_vectors_ioB");
   u01035 : constant Version_32 := 16#77f12767#;
   pragma Export (C, u01035, "quad_double_vectors_ioS");
   u01036 : constant Version_32 := 16#d1db438a#;
   pragma Export (C, u01036, "quad_double_ring_ioS");
   u01037 : constant Version_32 := 16#7bb02d34#;
   pragma Export (C, u01037, "quad_double_vectorsB");
   u01038 : constant Version_32 := 16#76d7f46b#;
   pragma Export (C, u01038, "quad_double_vectorsS");
   u01039 : constant Version_32 := 16#6d169622#;
   pragma Export (C, u01039, "quaddobl_complex_vector_normsB");
   u01040 : constant Version_32 := 16#6796ead6#;
   pragma Export (C, u01040, "quaddobl_complex_vector_normsS");
   u01041 : constant Version_32 := 16#1028b047#;
   pragma Export (C, u01041, "quaddobl_incfix_continuationB");
   u01042 : constant Version_32 := 16#e321b7da#;
   pragma Export (C, u01042, "quaddobl_incfix_continuationS");
   u01043 : constant Version_32 := 16#52ba7348#;
   pragma Export (C, u01043, "quaddobl_continuation_dataB");
   u01044 : constant Version_32 := 16#44428f96#;
   pragma Export (C, u01044, "quaddobl_continuation_dataS");
   u01045 : constant Version_32 := 16#8a38428d#;
   pragma Export (C, u01045, "quaddobl_continuation_data_ioB");
   u01046 : constant Version_32 := 16#7a704636#;
   pragma Export (C, u01046, "quaddobl_continuation_data_ioS");
   u01047 : constant Version_32 := 16#7e708ad7#;
   pragma Export (C, u01047, "quaddobl_path_trackersB");
   u01048 : constant Version_32 := 16#1f6966c4#;
   pragma Export (C, u01048, "quaddobl_path_trackersS");
   u01049 : constant Version_32 := 16#7687f4be#;
   pragma Export (C, u01049, "directions_of_quaddobl_pathsB");
   u01050 : constant Version_32 := 16#95ba7fe9#;
   pragma Export (C, u01050, "directions_of_quaddobl_pathsS");
   u01051 : constant Version_32 := 16#efda1b93#;
   pragma Export (C, u01051, "quad_double_matricesB");
   u01052 : constant Version_32 := 16#9e986fa6#;
   pragma Export (C, u01052, "quad_double_matricesS");
   u01053 : constant Version_32 := 16#273b9997#;
   pragma Export (C, u01053, "quad_double_matrices_ioB");
   u01054 : constant Version_32 := 16#5ee1a665#;
   pragma Export (C, u01054, "quad_double_matrices_ioS");
   u01055 : constant Version_32 := 16#d791a2e3#;
   pragma Export (C, u01055, "quad_double_vector_normsB");
   u01056 : constant Version_32 := 16#ab06c52c#;
   pragma Export (C, u01056, "quad_double_vector_normsS");
   u01057 : constant Version_32 := 16#a8e86e58#;
   pragma Export (C, u01057, "quaddobl_vlprs_algorithmB");
   u01058 : constant Version_32 := 16#87e9056d#;
   pragma Export (C, u01058, "quaddobl_vlprs_algorithmS");
   u01059 : constant Version_32 := 16#f25b1325#;
   pragma Export (C, u01059, "quaddobl_vlprs_tablesB");
   u01060 : constant Version_32 := 16#9f21d860#;
   pragma Export (C, u01060, "quaddobl_vlprs_tablesS");
   u01061 : constant Version_32 := 16#5abfdeff#;
   pragma Export (C, u01061, "quad_double_vecvecsB");
   u01062 : constant Version_32 := 16#326066dc#;
   pragma Export (C, u01062, "quad_double_vecvecsS");
   u01063 : constant Version_32 := 16#658c7a4a#;
   pragma Export (C, u01063, "quaddobl_complex_equality_testsB");
   u01064 : constant Version_32 := 16#1b080ad7#;
   pragma Export (C, u01064, "quaddobl_complex_equality_testsS");
   u01065 : constant Version_32 := 16#2f885cbc#;
   pragma Export (C, u01065, "quaddobl_correctorsB");
   u01066 : constant Version_32 := 16#f0194953#;
   pragma Export (C, u01066, "quaddobl_correctorsS");
   u01067 : constant Version_32 := 16#2e44b194#;
   pragma Export (C, u01067, "quaddobl_complex_linear_solversB");
   u01068 : constant Version_32 := 16#c5a6b04f#;
   pragma Export (C, u01068, "quaddobl_complex_linear_solversS");
   u01069 : constant Version_32 := 16#40b584b1#;
   pragma Export (C, u01069, "quaddobl_data_on_pathB");
   u01070 : constant Version_32 := 16#1735a778#;
   pragma Export (C, u01070, "quaddobl_data_on_pathS");
   u01071 : constant Version_32 := 16#95e154dc#;
   pragma Export (C, u01071, "quaddobl_dispatch_predictorsB");
   u01072 : constant Version_32 := 16#f8d6aaff#;
   pragma Export (C, u01072, "quaddobl_dispatch_predictorsS");
   u01073 : constant Version_32 := 16#1346d989#;
   pragma Export (C, u01073, "quaddobl_predictorsB");
   u01074 : constant Version_32 := 16#cd208add#;
   pragma Export (C, u01074, "quaddobl_predictorsS");
   u01075 : constant Version_32 := 16#79dcdeac#;
   pragma Export (C, u01075, "quaddobl_extrapolatorsB");
   u01076 : constant Version_32 := 16#151a4ed4#;
   pragma Export (C, u01076, "quaddobl_extrapolatorsS");
   u01077 : constant Version_32 := 16#73740a43#;
   pragma Export (C, u01077, "quaddobl_orthogonal_correctorsB");
   u01078 : constant Version_32 := 16#ec6e30a3#;
   pragma Export (C, u01078, "quaddobl_orthogonal_correctorsS");
   u01079 : constant Version_32 := 16#43de1ce1#;
   pragma Export (C, u01079, "quaddobl_complex_qr_least_squaresB");
   u01080 : constant Version_32 := 16#3e2833ea#;
   pragma Export (C, u01080, "quaddobl_complex_qr_least_squaresS");
   u01081 : constant Version_32 := 16#c395de12#;
   pragma Export (C, u01081, "quaddobl_complex_singular_valuesB");
   u01082 : constant Version_32 := 16#4b4b0414#;
   pragma Export (C, u01082, "quaddobl_complex_singular_valuesS");
   u01083 : constant Version_32 := 16#384c41a2#;
   pragma Export (C, u01083, "standard_incfix_continuationB");
   u01084 : constant Version_32 := 16#50300bb8#;
   pragma Export (C, u01084, "standard_incfix_continuationS");
   u01085 : constant Version_32 := 16#ebc2ecd9#;
   pragma Export (C, u01085, "standard_path_trackersB");
   u01086 : constant Version_32 := 16#e5bdb4cc#;
   pragma Export (C, u01086, "standard_path_trackersS");
   u01087 : constant Version_32 := 16#6df878fb#;
   pragma Export (C, u01087, "standard_correctorsB");
   u01088 : constant Version_32 := 16#13fde737#;
   pragma Export (C, u01088, "standard_correctorsS");
   u01089 : constant Version_32 := 16#e08a2565#;
   pragma Export (C, u01089, "handle_underflow_gracefullyB");
   u01090 : constant Version_32 := 16#6e0b336c#;
   pragma Export (C, u01090, "handle_underflow_gracefullyS");
   u01091 : constant Version_32 := 16#28dce51a#;
   pragma Export (C, u01091, "standard_complex_linear_solversB");
   u01092 : constant Version_32 := 16#f053aeea#;
   pragma Export (C, u01092, "standard_complex_linear_solversS");
   u01093 : constant Version_32 := 16#f88e4d0a#;
   pragma Export (C, u01093, "standard_dispatch_predictorsB");
   u01094 : constant Version_32 := 16#86cbd6c3#;
   pragma Export (C, u01094, "standard_dispatch_predictorsS");
   u01095 : constant Version_32 := 16#728d2b30#;
   pragma Export (C, u01095, "standard_predictorsB");
   u01096 : constant Version_32 := 16#bdbd66e6#;
   pragma Export (C, u01096, "standard_predictorsS");
   u01097 : constant Version_32 := 16#5f25f845#;
   pragma Export (C, u01097, "standard_extrapolatorsB");
   u01098 : constant Version_32 := 16#e5eeaefe#;
   pragma Export (C, u01098, "standard_extrapolatorsS");
   u01099 : constant Version_32 := 16#eddc3c19#;
   pragma Export (C, u01099, "standard_orthogonal_correctorsB");
   u01100 : constant Version_32 := 16#bdedccf0#;
   pragma Export (C, u01100, "standard_orthogonal_correctorsS");
   u01101 : constant Version_32 := 16#013ea646#;
   pragma Export (C, u01101, "standard_complex_qr_least_squaresB");
   u01102 : constant Version_32 := 16#1c6e7645#;
   pragma Export (C, u01102, "standard_complex_qr_least_squaresS");
   u01103 : constant Version_32 := 16#735036bd#;
   pragma Export (C, u01103, "standard_complex_singular_valuesB");
   u01104 : constant Version_32 := 16#2e4be230#;
   pragma Export (C, u01104, "standard_complex_singular_valuesS");
   u01105 : constant Version_32 := 16#8dbbe26f#;
   pragma Export (C, u01105, "standard_complex_blas_helpersB");
   u01106 : constant Version_32 := 16#0a31868d#;
   pragma Export (C, u01106, "standard_complex_blas_helpersS");
   u01107 : constant Version_32 := 16#9252223e#;
   pragma Export (C, u01107, "valid_vector_checksB");
   u01108 : constant Version_32 := 16#7f1945fb#;
   pragma Export (C, u01108, "valid_vector_checksS");
   u01109 : constant Version_32 := 16#b1aa112d#;
   pragma Export (C, u01109, "multprec_incfix_continuationB");
   u01110 : constant Version_32 := 16#9cd15c39#;
   pragma Export (C, u01110, "multprec_incfix_continuationS");
   u01111 : constant Version_32 := 16#7cfa0b13#;
   pragma Export (C, u01111, "multprec_continuation_dataB");
   u01112 : constant Version_32 := 16#683e31df#;
   pragma Export (C, u01112, "multprec_continuation_dataS");
   u01113 : constant Version_32 := 16#8f56d32c#;
   pragma Export (C, u01113, "multprec_path_trackersB");
   u01114 : constant Version_32 := 16#16b8efe0#;
   pragma Export (C, u01114, "multprec_path_trackersS");
   u01115 : constant Version_32 := 16#f7aaf960#;
   pragma Export (C, u01115, "multprec_correctorsB");
   u01116 : constant Version_32 := 16#eeccc805#;
   pragma Export (C, u01116, "multprec_correctorsS");
   u01117 : constant Version_32 := 16#9c49d375#;
   pragma Export (C, u01117, "multprec_complex_linear_solversB");
   u01118 : constant Version_32 := 16#549029d2#;
   pragma Export (C, u01118, "multprec_complex_linear_solversS");
   u01119 : constant Version_32 := 16#4a1d3bfc#;
   pragma Export (C, u01119, "multprec_data_on_pathB");
   u01120 : constant Version_32 := 16#a5899317#;
   pragma Export (C, u01120, "multprec_data_on_pathS");
   u01121 : constant Version_32 := 16#72ce816e#;
   pragma Export (C, u01121, "multprec_floating_vectors_ioB");
   u01122 : constant Version_32 := 16#f3d4844b#;
   pragma Export (C, u01122, "multprec_floating_vectors_ioS");
   u01123 : constant Version_32 := 16#2bd6fbf9#;
   pragma Export (C, u01123, "multprec_floating_ring_ioS");
   u01124 : constant Version_32 := 16#4a3cb42f#;
   pragma Export (C, u01124, "multprec_floating_vecvecsB");
   u01125 : constant Version_32 := 16#2351b480#;
   pragma Export (C, u01125, "multprec_floating_vecvecsS");
   u01126 : constant Version_32 := 16#a63450f3#;
   pragma Export (C, u01126, "multprec_dispatch_predictorsB");
   u01127 : constant Version_32 := 16#917b9ed4#;
   pragma Export (C, u01127, "multprec_dispatch_predictorsS");
   u01128 : constant Version_32 := 16#92fa2811#;
   pragma Export (C, u01128, "multprec_predictorsB");
   u01129 : constant Version_32 := 16#755a71d8#;
   pragma Export (C, u01129, "multprec_predictorsS");
   u01130 : constant Version_32 := 16#744d2cb1#;
   pragma Export (C, u01130, "multprec_extrapolatorsB");
   u01131 : constant Version_32 := 16#00a7d0ae#;
   pragma Export (C, u01131, "multprec_extrapolatorsS");
   u01132 : constant Version_32 := 16#340280cd#;
   pragma Export (C, u01132, "standard_continuation_data_ioB");
   u01133 : constant Version_32 := 16#5ea94887#;
   pragma Export (C, u01133, "standard_continuation_data_ioS");
   u01134 : constant Version_32 := 16#15d7f30f#;
   pragma Export (C, u01134, "quaddobl_complex_poly_systems_ioB");
   u01135 : constant Version_32 := 16#effd12e9#;
   pragma Export (C, u01135, "quaddobl_complex_poly_systems_ioS");
   u01136 : constant Version_32 := 16#b1f49c17#;
   pragma Export (C, u01136, "quaddobl_complex_polynomials_ioB");
   u01137 : constant Version_32 := 16#47e8490f#;
   pragma Export (C, u01137, "quaddobl_complex_polynomials_ioS");
   u01138 : constant Version_32 := 16#a4d8af77#;
   pragma Export (C, u01138, "standard_complex_laur_systems_ioB");
   u01139 : constant Version_32 := 16#6c553382#;
   pragma Export (C, u01139, "standard_complex_laur_systems_ioS");
   u01140 : constant Version_32 := 16#b3291aed#;
   pragma Export (C, u01140, "standard_complex_laurentials_ioB");
   u01141 : constant Version_32 := 16#23b1ef46#;
   pragma Export (C, u01141, "standard_complex_laurentials_ioS");
   u01142 : constant Version_32 := 16#3421540b#;
   pragma Export (C, u01142, "standard_complex_laur_readersB");
   u01143 : constant Version_32 := 16#77ef6a44#;
   pragma Export (C, u01143, "standard_complex_laur_readersS");
   u01144 : constant Version_32 := 16#fcfcd623#;
   pragma Export (C, u01144, "standard_complex_laur_randomizersB");
   u01145 : constant Version_32 := 16#af524cfc#;
   pragma Export (C, u01145, "standard_complex_laur_randomizersS");
   u01146 : constant Version_32 := 16#61ed2f6b#;
   pragma Export (C, u01146, "standard_complex_poly_randomizersB");
   u01147 : constant Version_32 := 16#9434dcd5#;
   pragma Export (C, u01147, "standard_complex_poly_randomizersS");
   u01148 : constant Version_32 := 16#b1fa05e2#;
   pragma Export (C, u01148, "floating_faces_of_polytopeB");
   u01149 : constant Version_32 := 16#ed27dbfb#;
   pragma Export (C, u01149, "floating_faces_of_polytopeS");
   u01150 : constant Version_32 := 16#a56b70eb#;
   pragma Export (C, u01150, "facet_vertex_enumerationB");
   u01151 : constant Version_32 := 16#a3491fba#;
   pragma Export (C, u01151, "facet_vertex_enumerationS");
   u01152 : constant Version_32 := 16#76ba452e#;
   pragma Export (C, u01152, "standard_floating_norms_equalsB");
   u01153 : constant Version_32 := 16#3409ec2f#;
   pragma Export (C, u01153, "standard_floating_norms_equalsS");
   u01154 : constant Version_32 := 16#7d558bd7#;
   pragma Export (C, u01154, "generic_norms_equalsB");
   u01155 : constant Version_32 := 16#46bf237d#;
   pragma Export (C, u01155, "generic_norms_equalsS");
   u01156 : constant Version_32 := 16#3c35b2e7#;
   pragma Export (C, u01156, "floating_face_enumeratorsB");
   u01157 : constant Version_32 := 16#95ba8e1a#;
   pragma Export (C, u01157, "floating_face_enumeratorsS");
   u01158 : constant Version_32 := 16#eb9dcf3c#;
   pragma Export (C, u01158, "floating_lifting_functionsB");
   u01159 : constant Version_32 := 16#65c78bc3#;
   pragma Export (C, u01159, "floating_lifting_functionsS");
   u01160 : constant Version_32 := 16#cbbb3289#;
   pragma Export (C, u01160, "floating_mixed_subdivisions_ioB");
   u01161 : constant Version_32 := 16#34084959#;
   pragma Export (C, u01161, "floating_mixed_subdivisions_ioS");
   u01162 : constant Version_32 := 16#71ffe65f#;
   pragma Export (C, u01162, "lists_of_floating_vectors_ioB");
   u01163 : constant Version_32 := 16#4dcbd84f#;
   pragma Export (C, u01163, "lists_of_floating_vectors_ioS");
   u01164 : constant Version_32 := 16#3f0a5f7b#;
   pragma Export (C, u01164, "mixed_volume_computationB");
   u01165 : constant Version_32 := 16#6514ee73#;
   pragma Export (C, u01165, "mixed_volume_computationS");
   u01166 : constant Version_32 := 16#78206f5f#;
   pragma Export (C, u01166, "arrays_of_integer_vector_lists_ioB");
   u01167 : constant Version_32 := 16#cf60c880#;
   pragma Export (C, u01167, "arrays_of_integer_vector_lists_ioS");
   u01168 : constant Version_32 := 16#4cdef4d0#;
   pragma Export (C, u01168, "generic_arrays_of_vector_lists_ioB");
   u01169 : constant Version_32 := 16#353a78a5#;
   pragma Export (C, u01169, "generic_arrays_of_vector_lists_ioS");
   u01170 : constant Version_32 := 16#f24828a4#;
   pragma Export (C, u01170, "integer_lifting_functionsB");
   u01171 : constant Version_32 := 16#6911c5e0#;
   pragma Export (C, u01171, "integer_lifting_functionsS");
   u01172 : constant Version_32 := 16#5721c902#;
   pragma Export (C, u01172, "integer_mixed_subdivisions_ioB");
   u01173 : constant Version_32 := 16#ddff0477#;
   pragma Export (C, u01173, "integer_mixed_subdivisions_ioS");
   u01174 : constant Version_32 := 16#84a9caa2#;
   pragma Export (C, u01174, "integer_pruning_methodsB");
   u01175 : constant Version_32 := 16#9425b71e#;
   pragma Export (C, u01175, "integer_pruning_methodsS");
   u01176 : constant Version_32 := 16#0b9b93a9#;
   pragma Export (C, u01176, "floating_linear_inequality_solversB");
   u01177 : constant Version_32 := 16#4ec47b4e#;
   pragma Export (C, u01177, "floating_linear_inequality_solversS");
   u01178 : constant Version_32 := 16#9b4ec892#;
   pragma Export (C, u01178, "standard_integer_linear_equalitiesB");
   u01179 : constant Version_32 := 16#5a621312#;
   pragma Export (C, u01179, "standard_integer_linear_equalitiesS");
   u01180 : constant Version_32 := 16#ce80b864#;
   pragma Export (C, u01180, "floating_polyhedral_continuationB");
   u01181 : constant Version_32 := 16#e56d7f5e#;
   pragma Export (C, u01181, "floating_polyhedral_continuationS");
   u01182 : constant Version_32 := 16#c95e13c3#;
   pragma Export (C, u01182, "bkk_bound_computationsB");
   u01183 : constant Version_32 := 16#dd75ce07#;
   pragma Export (C, u01183, "bkk_bound_computationsS");
   u01184 : constant Version_32 := 16#f2225860#;
   pragma Export (C, u01184, "integer_polyhedral_continuationB");
   u01185 : constant Version_32 := 16#bb48dfb1#;
   pragma Export (C, u01185, "integer_polyhedral_continuationS");
   u01186 : constant Version_32 := 16#a8d42890#;
   pragma Export (C, u01186, "standard_laur_poly_convertorsB");
   u01187 : constant Version_32 := 16#ff31de67#;
   pragma Export (C, u01187, "standard_laur_poly_convertorsS");
   u01188 : constant Version_32 := 16#f97a3e16#;
   pragma Export (C, u01188, "standard_simpomial_solversB");
   u01189 : constant Version_32 := 16#1a264509#;
   pragma Export (C, u01189, "standard_simpomial_solversS");
   u01190 : constant Version_32 := 16#6d75a679#;
   pragma Export (C, u01190, "standard_simplex_solversB");
   u01191 : constant Version_32 := 16#b1c86610#;
   pragma Export (C, u01191, "standard_simplex_solversS");
   u01192 : constant Version_32 := 16#84fea4c4#;
   pragma Export (C, u01192, "standard_binomial_solversB");
   u01193 : constant Version_32 := 16#23eb0580#;
   pragma Export (C, u01193, "standard_binomial_solversS");
   u01194 : constant Version_32 := 16#6a74f48d#;
   pragma Export (C, u01194, "standard_binomial_systemsB");
   u01195 : constant Version_32 := 16#b83441d8#;
   pragma Export (C, u01195, "standard_binomial_systemsS");
   u01196 : constant Version_32 := 16#7146aed4#;
   pragma Export (C, u01196, "standard_complex_vectors_ioB");
   u01197 : constant Version_32 := 16#d0ef2fb9#;
   pragma Export (C, u01197, "standard_complex_vectors_ioS");
   u01198 : constant Version_32 := 16#d02f6211#;
   pragma Export (C, u01198, "standard_complex_ring_ioS");
   u01199 : constant Version_32 := 16#18b45ab2#;
   pragma Export (C, u01199, "standard_integer_matrices_ioB");
   u01200 : constant Version_32 := 16#f59a4519#;
   pragma Export (C, u01200, "standard_integer_matrices_ioS");
   u01201 : constant Version_32 := 16#f352c07e#;
   pragma Export (C, u01201, "standard_radial_solversB");
   u01202 : constant Version_32 := 16#fd2786b0#;
   pragma Export (C, u01202, "standard_radial_solversS");
   u01203 : constant Version_32 := 16#9b5725bd#;
   pragma Export (C, u01203, "standard_random_vectorsB");
   u01204 : constant Version_32 := 16#0f4c72b1#;
   pragma Export (C, u01204, "standard_random_vectorsS");
   u01205 : constant Version_32 := 16#907cac95#;
   pragma Export (C, u01205, "standard_complex_matrices_ioB");
   u01206 : constant Version_32 := 16#7dbb1b71#;
   pragma Export (C, u01206, "standard_complex_matrices_ioS");
   u01207 : constant Version_32 := 16#c1913b58#;
   pragma Export (C, u01207, "standard_simplex_systemsB");
   u01208 : constant Version_32 := 16#fe23f5ec#;
   pragma Export (C, u01208, "standard_simplex_systemsS");
   u01209 : constant Version_32 := 16#b6a95cba#;
   pragma Export (C, u01209, "transforming_laurent_systemsB");
   u01210 : constant Version_32 := 16#49e10922#;
   pragma Export (C, u01210, "transforming_laurent_systemsS");
   u01211 : constant Version_32 := 16#4275eca0#;
   pragma Export (C, u01211, "mixed_homotopy_continuationB");
   u01212 : constant Version_32 := 16#f95c9ea6#;
   pragma Export (C, u01212, "mixed_homotopy_continuationS");
   u01213 : constant Version_32 := 16#5c7d689b#;
   pragma Export (C, u01213, "arrays_of_lists_utilitiesB");
   u01214 : constant Version_32 := 16#31e3b052#;
   pragma Export (C, u01214, "arrays_of_lists_utilitiesS");
   u01215 : constant Version_32 := 16#f3d2c234#;
   pragma Export (C, u01215, "standard_durand_kernerB");
   u01216 : constant Version_32 := 16#74941ab7#;
   pragma Export (C, u01216, "standard_durand_kernerS");
   u01217 : constant Version_32 := 16#862e3e30#;
   pragma Export (C, u01217, "standard_root_refinersB");
   u01218 : constant Version_32 := 16#4b68c910#;
   pragma Export (C, u01218, "standard_root_refinersS");
   u01219 : constant Version_32 := 16#b433a75c#;
   pragma Export (C, u01219, "monomial_hashingB");
   u01220 : constant Version_32 := 16#4a404a69#;
   pragma Export (C, u01220, "monomial_hashingS");
   u01221 : constant Version_32 := 16#625c93b1#;
   pragma Export (C, u01221, "standard_natural64_vectorsB");
   u01222 : constant Version_32 := 16#6b71d37d#;
   pragma Export (C, u01222, "standard_natural64_vectorsS");
   u01223 : constant Version_32 := 16#6b0dfcef#;
   pragma Export (C, u01223, "standard_natural64_ringS");
   u01224 : constant Version_32 := 16#74e50acc#;
   pragma Export (C, u01224, "standard_natural64_vecvecsB");
   u01225 : constant Version_32 := 16#019c95f9#;
   pragma Export (C, u01225, "standard_natural64_vecvecsS");
   u01226 : constant Version_32 := 16#c808781f#;
   pragma Export (C, u01226, "standard_complex_newton_stepsB");
   u01227 : constant Version_32 := 16#e7ae51f3#;
   pragma Export (C, u01227, "standard_complex_newton_stepsS");
   u01228 : constant Version_32 := 16#700b884e#;
   pragma Export (C, u01228, "standard_numerical_rankB");
   u01229 : constant Version_32 := 16#11027f64#;
   pragma Export (C, u01229, "standard_numerical_rankS");
   u01230 : constant Version_32 := 16#b003b36b#;
   pragma Export (C, u01230, "standard_complex_vecmatsB");
   u01231 : constant Version_32 := 16#bd756197#;
   pragma Export (C, u01231, "standard_complex_vecmatsS");
   u01232 : constant Version_32 := 16#28a431f5#;
   pragma Export (C, u01232, "generic_vecmatsB");
   u01233 : constant Version_32 := 16#0c87cca0#;
   pragma Export (C, u01233, "generic_vecmatsS");
   u01234 : constant Version_32 := 16#6b8d270f#;
   pragma Export (C, u01234, "standard_condition_reportB");
   u01235 : constant Version_32 := 16#33c7381b#;
   pragma Export (C, u01235, "standard_condition_reportS");
   u01236 : constant Version_32 := 16#6036a28a#;
   pragma Export (C, u01236, "standard_condition_tablesB");
   u01237 : constant Version_32 := 16#7e8ccd00#;
   pragma Export (C, u01237, "standard_condition_tablesS");
   u01238 : constant Version_32 := 16#5c7b2bb2#;
   pragma Export (C, u01238, "standard_select_solutionsB");
   u01239 : constant Version_32 := 16#3d30ae8a#;
   pragma Export (C, u01239, "standard_select_solutionsS");
   u01240 : constant Version_32 := 16#02836ea1#;
   pragma Export (C, u01240, "drivers_for_condition_tablesB");
   u01241 : constant Version_32 := 16#5579bd38#;
   pragma Export (C, u01241, "drivers_for_condition_tablesS");
   u01242 : constant Version_32 := 16#40cf5436#;
   pragma Export (C, u01242, "dobldobl_condition_reportB");
   u01243 : constant Version_32 := 16#35975c83#;
   pragma Export (C, u01243, "dobldobl_condition_reportS");
   u01244 : constant Version_32 := 16#a76ba855#;
   pragma Export (C, u01244, "dobldobl_condition_tablesB");
   u01245 : constant Version_32 := 16#54692302#;
   pragma Export (C, u01245, "dobldobl_condition_tablesS");
   u01246 : constant Version_32 := 16#a9a680e5#;
   pragma Export (C, u01246, "dobldobl_select_solutionsB");
   u01247 : constant Version_32 := 16#a37f1807#;
   pragma Export (C, u01247, "dobldobl_select_solutionsS");
   u01248 : constant Version_32 := 16#ff637385#;
   pragma Export (C, u01248, "dobldobl_solution_diagnosticsB");
   u01249 : constant Version_32 := 16#b9a70946#;
   pragma Export (C, u01249, "dobldobl_solution_diagnosticsS");
   u01250 : constant Version_32 := 16#9b33b2ab#;
   pragma Export (C, u01250, "dobldobl_point_listsB");
   u01251 : constant Version_32 := 16#0c15faf8#;
   pragma Export (C, u01251, "dobldobl_point_listsS");
   u01252 : constant Version_32 := 16#65ce0a50#;
   pragma Export (C, u01252, "dobldobl_quad_treesB");
   u01253 : constant Version_32 := 16#966fa45e#;
   pragma Export (C, u01253, "dobldobl_quad_treesS");
   u01254 : constant Version_32 := 16#ee61de2f#;
   pragma Export (C, u01254, "drivers_for_failed_pathsB");
   u01255 : constant Version_32 := 16#6cd30166#;
   pragma Export (C, u01255, "drivers_for_failed_pathsS");
   u01256 : constant Version_32 := 16#3d328d12#;
   pragma Export (C, u01256, "dobldobl_solution_filtersB");
   u01257 : constant Version_32 := 16#6cc4f280#;
   pragma Export (C, u01257, "dobldobl_solution_filtersS");
   u01258 : constant Version_32 := 16#73936973#;
   pragma Export (C, u01258, "dobldobl_tracked_solutions_ioB");
   u01259 : constant Version_32 := 16#ec912e63#;
   pragma Export (C, u01259, "dobldobl_tracked_solutions_ioS");
   u01260 : constant Version_32 := 16#b2b62f84#;
   pragma Export (C, u01260, "quaddobl_complex_laur_systems_ioB");
   u01261 : constant Version_32 := 16#40762e31#;
   pragma Export (C, u01261, "quaddobl_complex_laur_systems_ioS");
   u01262 : constant Version_32 := 16#63eafc6f#;
   pragma Export (C, u01262, "quaddobl_complex_laurentials_ioB");
   u01263 : constant Version_32 := 16#a80b41f3#;
   pragma Export (C, u01263, "quaddobl_complex_laurentials_ioS");
   u01264 : constant Version_32 := 16#c88864e0#;
   pragma Export (C, u01264, "quaddobl_solution_filtersB");
   u01265 : constant Version_32 := 16#59458985#;
   pragma Export (C, u01265, "quaddobl_solution_filtersS");
   u01266 : constant Version_32 := 16#eb8d83d6#;
   pragma Export (C, u01266, "quaddobl_solution_diagnosticsB");
   u01267 : constant Version_32 := 16#6b53f585#;
   pragma Export (C, u01267, "quaddobl_solution_diagnosticsS");
   u01268 : constant Version_32 := 16#7d2e2966#;
   pragma Export (C, u01268, "quaddobl_tracked_solutions_ioB");
   u01269 : constant Version_32 := 16#f5ed6712#;
   pragma Export (C, u01269, "quaddobl_tracked_solutions_ioS");
   u01270 : constant Version_32 := 16#0a430c3d#;
   pragma Export (C, u01270, "standard_solution_filtersB");
   u01271 : constant Version_32 := 16#9fbe2254#;
   pragma Export (C, u01271, "standard_solution_filtersS");
   u01272 : constant Version_32 := 16#18db2584#;
   pragma Export (C, u01272, "standard_solution_diagnosticsB");
   u01273 : constant Version_32 := 16#11d0d564#;
   pragma Export (C, u01273, "standard_solution_diagnosticsS");
   u01274 : constant Version_32 := 16#6a5ad0fa#;
   pragma Export (C, u01274, "standard_tracked_solutions_ioB");
   u01275 : constant Version_32 := 16#ae4f127b#;
   pragma Export (C, u01275, "standard_tracked_solutions_ioS");
   u01276 : constant Version_32 := 16#ca06751f#;
   pragma Export (C, u01276, "quaddobl_condition_reportB");
   u01277 : constant Version_32 := 16#6f046777#;
   pragma Export (C, u01277, "quaddobl_condition_reportS");
   u01278 : constant Version_32 := 16#de623e54#;
   pragma Export (C, u01278, "quaddobl_condition_tablesB");
   u01279 : constant Version_32 := 16#0860c591#;
   pragma Export (C, u01279, "quaddobl_condition_tablesS");
   u01280 : constant Version_32 := 16#31fba770#;
   pragma Export (C, u01280, "quaddobl_random_vectorsB");
   u01281 : constant Version_32 := 16#ed417569#;
   pragma Export (C, u01281, "quaddobl_random_vectorsS");
   u01282 : constant Version_32 := 16#7f75ac4d#;
   pragma Export (C, u01282, "quaddobl_select_solutionsB");
   u01283 : constant Version_32 := 16#a3143f46#;
   pragma Export (C, u01283, "quaddobl_select_solutionsS");
   u01284 : constant Version_32 := 16#142498bc#;
   pragma Export (C, u01284, "quaddobl_point_listsB");
   u01285 : constant Version_32 := 16#94f95eef#;
   pragma Export (C, u01285, "quaddobl_point_listsS");
   u01286 : constant Version_32 := 16#838f785c#;
   pragma Export (C, u01286, "quaddobl_quad_treesB");
   u01287 : constant Version_32 := 16#f4f3fc13#;
   pragma Export (C, u01287, "quaddobl_quad_treesS");
   u01288 : constant Version_32 := 16#11272366#;
   pragma Export (C, u01288, "standard_point_listsB");
   u01289 : constant Version_32 := 16#c4e70b4f#;
   pragma Export (C, u01289, "standard_point_listsS");
   u01290 : constant Version_32 := 16#e42d6ab1#;
   pragma Export (C, u01290, "standard_quad_treesB");
   u01291 : constant Version_32 := 16#ddfab58d#;
   pragma Export (C, u01291, "standard_quad_treesS");
   u01292 : constant Version_32 := 16#0872e42a#;
   pragma Export (C, u01292, "standard_deflation_methodsB");
   u01293 : constant Version_32 := 16#c46f71e2#;
   pragma Export (C, u01293, "standard_deflation_methodsS");
   u01294 : constant Version_32 := 16#354ac9ac#;
   pragma Export (C, u01294, "standard_deflate_singularitiesB");
   u01295 : constant Version_32 := 16#cb21575b#;
   pragma Export (C, u01295, "standard_deflate_singularitiesS");
   u01296 : constant Version_32 := 16#23f4a36b#;
   pragma Export (C, u01296, "standard_embed_polynomialsB");
   u01297 : constant Version_32 := 16#c0971cd8#;
   pragma Export (C, u01297, "standard_embed_polynomialsS");
   u01298 : constant Version_32 := 16#88f232bd#;
   pragma Export (C, u01298, "standard_complex_poly_matricesB");
   u01299 : constant Version_32 := 16#651252c7#;
   pragma Export (C, u01299, "standard_complex_poly_matricesS");
   u01300 : constant Version_32 := 16#f784b5d6#;
   pragma Export (C, u01300, "standard_complex_poly_ringS");
   u01301 : constant Version_32 := 16#1f5698c4#;
   pragma Export (C, u01301, "standard_complex_poly_vectorsB");
   u01302 : constant Version_32 := 16#ea75e024#;
   pragma Export (C, u01302, "standard_complex_poly_vectorsS");
   u01303 : constant Version_32 := 16#980c9eed#;
   pragma Export (C, u01303, "standard_random_matricesB");
   u01304 : constant Version_32 := 16#4742812f#;
   pragma Export (C, u01304, "standard_random_matricesS");
   u01305 : constant Version_32 := 16#f5c9b224#;
   pragma Export (C, u01305, "standard_floating_qr_least_squaresB");
   u01306 : constant Version_32 := 16#fcaaaced#;
   pragma Export (C, u01306, "standard_floating_qr_least_squaresS");
   u01307 : constant Version_32 := 16#6bd2b435#;
   pragma Export (C, u01307, "boolean_matricesB");
   u01308 : constant Version_32 := 16#aea58362#;
   pragma Export (C, u01308, "boolean_matricesS");
   u01309 : constant Version_32 := 16#ffd6fd4c#;
   pragma Export (C, u01309, "boolean_ringS");
   u01310 : constant Version_32 := 16#14d5a679#;
   pragma Export (C, u01310, "boolean_numbersB");
   u01311 : constant Version_32 := 16#464cf11b#;
   pragma Export (C, u01311, "boolean_numbersS");
   u01312 : constant Version_32 := 16#182f66ac#;
   pragma Export (C, u01312, "boolean_vectorsB");
   u01313 : constant Version_32 := 16#c2e2b709#;
   pragma Export (C, u01313, "boolean_vectorsS");
   u01314 : constant Version_32 := 16#3d2e7fef#;
   pragma Export (C, u01314, "standard_deflation_treesB");
   u01315 : constant Version_32 := 16#8b7e89ec#;
   pragma Export (C, u01315, "standard_deflation_treesS");
   u01316 : constant Version_32 := 16#80a0a0e2#;
   pragma Export (C, u01316, "standard_deflation_trees_ioB");
   u01317 : constant Version_32 := 16#972aea97#;
   pragma Export (C, u01317, "standard_deflation_trees_ioS");
   u01318 : constant Version_32 := 16#d2a18c29#;
   pragma Export (C, u01318, "standard_multiple_solutionsB");
   u01319 : constant Version_32 := 16#777e4c27#;
   pragma Export (C, u01319, "standard_multiple_solutionsS");
   u01320 : constant Version_32 := 16#4b805612#;
   pragma Export (C, u01320, "standard_evaluate_deflationB");
   u01321 : constant Version_32 := 16#d48df574#;
   pragma Export (C, u01321, "standard_evaluate_deflationS");
   u01322 : constant Version_32 := 16#d10e1682#;
   pragma Export (C, u01322, "standard_deflation_matricesB");
   u01323 : constant Version_32 := 16#b1b9e3ea#;
   pragma Export (C, u01323, "standard_deflation_matricesS");
   u01324 : constant Version_32 := 16#71085daf#;
   pragma Export (C, u01324, "standard_jacobian_treesB");
   u01325 : constant Version_32 := 16#3a0e54f3#;
   pragma Export (C, u01325, "standard_jacobian_treesS");
   u01326 : constant Version_32 := 16#659c81d4#;
   pragma Export (C, u01326, "standard_natural_vecvecsB");
   u01327 : constant Version_32 := 16#d36c09da#;
   pragma Export (C, u01327, "standard_natural_vecvecsS");
   u01328 : constant Version_32 := 16#c150a75d#;
   pragma Export (C, u01328, "standard_evaluate_deflation_ioB");
   u01329 : constant Version_32 := 16#9c7cfb41#;
   pragma Export (C, u01329, "standard_evaluate_deflation_ioS");
   u01330 : constant Version_32 := 16#e808c34d#;
   pragma Export (C, u01330, "standard_mixed_residualsB");
   u01331 : constant Version_32 := 16#bc6b3060#;
   pragma Export (C, u01331, "standard_mixed_residualsS");
   u01332 : constant Version_32 := 16#19655c95#;
   pragma Export (C, u01332, "standard_complex_vector_normsB");
   u01333 : constant Version_32 := 16#9c9ca79f#;
   pragma Export (C, u01333, "standard_complex_vector_normsS");
   u01334 : constant Version_32 := 16#1b98d337#;
   pragma Export (C, u01334, "transforming_solutionsB");
   u01335 : constant Version_32 := 16#91fe1b01#;
   pragma Export (C, u01335, "transforming_solutionsS");
   u01336 : constant Version_32 := 16#81f675c8#;
   pragma Export (C, u01336, "volumesB");
   u01337 : constant Version_32 := 16#8c56cd98#;
   pragma Export (C, u01337, "volumesS");
   u01338 : constant Version_32 := 16#d6bc9114#;
   pragma Export (C, u01338, "trees_of_vectorsB");
   u01339 : constant Version_32 := 16#3f80d124#;
   pragma Export (C, u01339, "trees_of_vectorsS");
   u01340 : constant Version_32 := 16#0a30c4db#;
   pragma Export (C, u01340, "standard_poly_laur_convertorsB");
   u01341 : constant Version_32 := 16#19ac60a7#;
   pragma Export (C, u01341, "standard_poly_laur_convertorsS");
   u01342 : constant Version_32 := 16#b04e544c#;
   pragma Export (C, u01342, "trees_of_vectors_ioB");
   u01343 : constant Version_32 := 16#048cee5e#;
   pragma Export (C, u01343, "trees_of_vectors_ioS");
   u01344 : constant Version_32 := 16#687a3ad6#;
   pragma Export (C, u01344, "floating_pruning_methodsB");
   u01345 : constant Version_32 := 16#6eee9a44#;
   pragma Export (C, u01345, "floating_pruning_methodsS");
   u01346 : constant Version_32 := 16#ce9571f7#;
   pragma Export (C, u01346, "main_lifting_functionsB");
   u01347 : constant Version_32 := 16#a88b3c8d#;
   pragma Export (C, u01347, "main_lifting_functionsS");
   u01348 : constant Version_32 := 16#7bc2db60#;
   pragma Export (C, u01348, "multitasking_polyhedral_trackersB");
   u01349 : constant Version_32 := 16#41525f3e#;
   pragma Export (C, u01349, "multitasking_polyhedral_trackersS");
   u01350 : constant Version_32 := 16#eda0337a#;
   pragma Export (C, u01350, "ada__real_timeB");
   u01351 : constant Version_32 := 16#d2689d96#;
   pragma Export (C, u01351, "ada__real_timeS");
   u01352 : constant Version_32 := 16#9351de22#;
   pragma Export (C, u01352, "system__taskingB");
   u01353 : constant Version_32 := 16#72282cb1#;
   pragma Export (C, u01353, "system__taskingS");
   u01354 : constant Version_32 := 16#8272aa88#;
   pragma Export (C, u01354, "system__task_primitivesS");
   u01355 : constant Version_32 := 16#518231e9#;
   pragma Export (C, u01355, "system__os_interfaceS");
   u01356 : constant Version_32 := 16#e483ae2d#;
   pragma Export (C, u01356, "interfaces__c__stringsB");
   u01357 : constant Version_32 := 16#bd4557ce#;
   pragma Export (C, u01357, "interfaces__c__stringsS");
   u01358 : constant Version_32 := 16#5bcdc5be#;
   pragma Export (C, u01358, "system__task_primitives__operationsB");
   u01359 : constant Version_32 := 16#2d30bc7b#;
   pragma Export (C, u01359, "system__task_primitives__operationsS");
   u01360 : constant Version_32 := 16#2cd40a52#;
   pragma Export (C, u01360, "system__interrupt_managementB");
   u01361 : constant Version_32 := 16#de9cb701#;
   pragma Export (C, u01361, "system__interrupt_managementS");
   u01362 : constant Version_32 := 16#6c8afeef#;
   pragma Export (C, u01362, "system__task_infoB");
   u01363 : constant Version_32 := 16#3f0f3330#;
   pragma Export (C, u01363, "system__task_infoS");
   u01364 : constant Version_32 := 16#3b5b4667#;
   pragma Export (C, u01364, "system__tasking__debugB");
   u01365 : constant Version_32 := 16#ac0addd7#;
   pragma Export (C, u01365, "system__tasking__debugS");
   u01366 : constant Version_32 := 16#ca878138#;
   pragma Export (C, u01366, "system__concat_2B");
   u01367 : constant Version_32 := 16#1d92ac69#;
   pragma Export (C, u01367, "system__concat_2S");
   u01368 : constant Version_32 := 16#752a67ed#;
   pragma Export (C, u01368, "system__concat_3B");
   u01369 : constant Version_32 := 16#2213c63c#;
   pragma Export (C, u01369, "system__concat_3S");
   u01370 : constant Version_32 := 16#3066cab0#;
   pragma Export (C, u01370, "system__stack_usageB");
   u01371 : constant Version_32 := 16#f629478f#;
   pragma Export (C, u01371, "system__stack_usageS");
   u01372 : constant Version_32 := 16#427caad9#;
   pragma Export (C, u01372, "mixed_cells_queueB");
   u01373 : constant Version_32 := 16#d365f9f2#;
   pragma Export (C, u01373, "mixed_cells_queueS");
   u01374 : constant Version_32 := 16#06506da7#;
   pragma Export (C, u01374, "semaphoreB");
   u01375 : constant Version_32 := 16#4d315e0d#;
   pragma Export (C, u01375, "semaphoreS");
   u01376 : constant Version_32 := 16#3938641c#;
   pragma Export (C, u01376, "system__tasking__protected_objectsB");
   u01377 : constant Version_32 := 16#94fe996c#;
   pragma Export (C, u01377, "system__tasking__protected_objectsS");
   u01378 : constant Version_32 := 16#85efc30a#;
   pragma Export (C, u01378, "system__soft_links__taskingB");
   u01379 : constant Version_32 := 16#13803e06#;
   pragma Export (C, u01379, "system__soft_links__taskingS");
   u01380 : constant Version_32 := 16#3880736e#;
   pragma Export (C, u01380, "ada__exceptions__is_null_occurrenceB");
   u01381 : constant Version_32 := 16#2f594863#;
   pragma Export (C, u01381, "ada__exceptions__is_null_occurrenceS");
   u01382 : constant Version_32 := 16#5cc76ab2#;
   pragma Export (C, u01382, "system__tasking__protected_objects__entriesB");
   u01383 : constant Version_32 := 16#7daf93e7#;
   pragma Export (C, u01383, "system__tasking__protected_objects__entriesS");
   u01384 : constant Version_32 := 16#49c205ec#;
   pragma Export (C, u01384, "system__restrictionsB");
   u01385 : constant Version_32 := 16#050a8d0f#;
   pragma Export (C, u01385, "system__restrictionsS");
   u01386 : constant Version_32 := 16#8cbb5d5b#;
   pragma Export (C, u01386, "system__tasking__initializationB");
   u01387 : constant Version_32 := 16#7ddd8125#;
   pragma Export (C, u01387, "system__tasking__initializationS");
   u01388 : constant Version_32 := 16#22e08be4#;
   pragma Export (C, u01388, "system__tasking__task_attributesB");
   u01389 : constant Version_32 := 16#c000b6ef#;
   pragma Export (C, u01389, "system__tasking__task_attributesS");
   u01390 : constant Version_32 := 16#8e05f478#;
   pragma Export (C, u01390, "system__tasking__protected_objects__operationsB");
   u01391 : constant Version_32 := 16#74b8b389#;
   pragma Export (C, u01391, "system__tasking__protected_objects__operationsS");
   u01392 : constant Version_32 := 16#d993ce9d#;
   pragma Export (C, u01392, "system__tasking__entry_callsB");
   u01393 : constant Version_32 := 16#e2bc808d#;
   pragma Export (C, u01393, "system__tasking__entry_callsS");
   u01394 : constant Version_32 := 16#8a281bf3#;
   pragma Export (C, u01394, "system__tasking__queuingB");
   u01395 : constant Version_32 := 16#c332098d#;
   pragma Export (C, u01395, "system__tasking__queuingS");
   u01396 : constant Version_32 := 16#1bad0f8b#;
   pragma Export (C, u01396, "system__tasking__utilitiesB");
   u01397 : constant Version_32 := 16#1abda1a9#;
   pragma Export (C, u01397, "system__tasking__utilitiesS");
   u01398 : constant Version_32 := 16#233462d7#;
   pragma Export (C, u01398, "system__tasking__rendezvousB");
   u01399 : constant Version_32 := 16#1968381f#;
   pragma Export (C, u01399, "system__tasking__rendezvousS");
   u01400 : constant Version_32 := 16#84dd5197#;
   pragma Export (C, u01400, "multitaskingB");
   u01401 : constant Version_32 := 16#0a4a7e75#;
   pragma Export (C, u01401, "multitaskingS");
   u01402 : constant Version_32 := 16#d498f483#;
   pragma Export (C, u01402, "multitasking_volume_computationB");
   u01403 : constant Version_32 := 16#d9bf43d7#;
   pragma Export (C, u01403, "multitasking_volume_computationS");
   u01404 : constant Version_32 := 16#78d205ae#;
   pragma Export (C, u01404, "system__tasking__stagesB");
   u01405 : constant Version_32 := 16#7013282b#;
   pragma Export (C, u01405, "system__tasking__stagesS");
   u01406 : constant Version_32 := 16#2d236812#;
   pragma Export (C, u01406, "ada__task_initializationB");
   u01407 : constant Version_32 := 16#d7b0c315#;
   pragma Export (C, u01407, "ada__task_initializationS");
   u01408 : constant Version_32 := 16#ce865699#;
   pragma Export (C, u01408, "polyhedral_start_systemsB");
   u01409 : constant Version_32 := 16#730001fc#;
   pragma Export (C, u01409, "polyhedral_start_systemsS");
   u01410 : constant Version_32 := 16#0347267e#;
   pragma Export (C, u01410, "dobldobl_tableau_formatsB");
   u01411 : constant Version_32 := 16#610d6971#;
   pragma Export (C, u01411, "dobldobl_tableau_formatsS");
   u01412 : constant Version_32 := 16#8a1ead80#;
   pragma Export (C, u01412, "quaddobl_binomial_solversB");
   u01413 : constant Version_32 := 16#700f9bd4#;
   pragma Export (C, u01413, "quaddobl_binomial_solversS");
   u01414 : constant Version_32 := 16#976bcd33#;
   pragma Export (C, u01414, "quaddobl_binomial_systemsB");
   u01415 : constant Version_32 := 16#abbc66ce#;
   pragma Export (C, u01415, "quaddobl_binomial_systemsS");
   u01416 : constant Version_32 := 16#267c8908#;
   pragma Export (C, u01416, "quaddobl_complex_exponentiationB");
   u01417 : constant Version_32 := 16#260bbbd2#;
   pragma Export (C, u01417, "quaddobl_complex_exponentiationS");
   u01418 : constant Version_32 := 16#42eb7a81#;
   pragma Export (C, u01418, "quaddobl_complex_numbers_polarB");
   u01419 : constant Version_32 := 16#271703d7#;
   pragma Export (C, u01419, "quaddobl_complex_numbers_polarS");
   u01420 : constant Version_32 := 16#8c837a5d#;
   pragma Export (C, u01420, "quaddobl_complex_vectors_ioB");
   u01421 : constant Version_32 := 16#1501bc17#;
   pragma Export (C, u01421, "quaddobl_complex_vectors_ioS");
   u01422 : constant Version_32 := 16#24a791aa#;
   pragma Export (C, u01422, "quaddobl_complex_ring_ioS");
   u01423 : constant Version_32 := 16#5a8e6b47#;
   pragma Export (C, u01423, "quaddobl_radial_solversB");
   u01424 : constant Version_32 := 16#eaffee28#;
   pragma Export (C, u01424, "quaddobl_radial_solversS");
   u01425 : constant Version_32 := 16#d4ca9bc4#;
   pragma Export (C, u01425, "quaddobl_complex_matrices_ioB");
   u01426 : constant Version_32 := 16#a17df4b0#;
   pragma Export (C, u01426, "quaddobl_complex_matrices_ioS");
   u01427 : constant Version_32 := 16#47f6e1d6#;
   pragma Export (C, u01427, "quaddobl_tableau_formatsB");
   u01428 : constant Version_32 := 16#b8779bcd#;
   pragma Export (C, u01428, "quaddobl_tableau_formatsS");
   u01429 : constant Version_32 := 16#29defb03#;
   pragma Export (C, u01429, "standard_tableau_formatsB");
   u01430 : constant Version_32 := 16#0bee18f4#;
   pragma Export (C, u01430, "standard_tableau_formatsS");
   u01431 : constant Version_32 := 16#bcd14ca4#;
   pragma Export (C, u01431, "single_polyhedral_trackersB");
   u01432 : constant Version_32 := 16#8cf0f1f6#;
   pragma Export (C, u01432, "single_polyhedral_trackersS");
   u01433 : constant Version_32 := 16#ae451c9d#;
   pragma Export (C, u01433, "pruning_statisticsB");
   u01434 : constant Version_32 := 16#acd484f4#;
   pragma Export (C, u01434, "pruning_statisticsS");
   u01435 : constant Version_32 := 16#00eeeb2d#;
   pragma Export (C, u01435, "stable_polyhedral_continuationB");
   u01436 : constant Version_32 := 16#40d3a11c#;
   pragma Export (C, u01436, "stable_polyhedral_continuationS");
   u01437 : constant Version_32 := 16#ed5f2108#;
   pragma Export (C, u01437, "dobldobl_stable_homotopiesB");
   u01438 : constant Version_32 := 16#c030afcb#;
   pragma Export (C, u01438, "dobldobl_stable_homotopiesS");
   u01439 : constant Version_32 := 16#c7679ec3#;
   pragma Export (C, u01439, "quaddobl_polyhedral_continuationB");
   u01440 : constant Version_32 := 16#afd34097#;
   pragma Export (C, u01440, "quaddobl_polyhedral_continuationS");
   u01441 : constant Version_32 := 16#b0a3c365#;
   pragma Export (C, u01441, "quaddobl_simpomial_solversB");
   u01442 : constant Version_32 := 16#bad24302#;
   pragma Export (C, u01442, "quaddobl_simpomial_solversS");
   u01443 : constant Version_32 := 16#53412112#;
   pragma Export (C, u01443, "quaddobl_simplex_solversB");
   u01444 : constant Version_32 := 16#b2fbdf63#;
   pragma Export (C, u01444, "quaddobl_simplex_solversS");
   u01445 : constant Version_32 := 16#68cf5450#;
   pragma Export (C, u01445, "quaddobl_simplex_systemsB");
   u01446 : constant Version_32 := 16#0b8b4da6#;
   pragma Export (C, u01446, "quaddobl_simplex_systemsS");
   u01447 : constant Version_32 := 16#4916fec5#;
   pragma Export (C, u01447, "quaddobl_stable_homotopiesB");
   u01448 : constant Version_32 := 16#9fff5878#;
   pragma Export (C, u01448, "quaddobl_stable_homotopiesS");
   u01449 : constant Version_32 := 16#cd73de8c#;
   pragma Export (C, u01449, "standard_stable_homotopiesB");
   u01450 : constant Version_32 := 16#7420bca2#;
   pragma Export (C, u01450, "standard_stable_homotopiesS");
   u01451 : constant Version_32 := 16#df8de31a#;
   pragma Export (C, u01451, "mixedvol_algorithmB");
   u01452 : constant Version_32 := 16#db750b05#;
   pragma Export (C, u01452, "mixedvol_algorithmS");
   u01453 : constant Version_32 := 16#bdc237b7#;
   pragma Export (C, u01453, "mixed_volumeB");
   u01454 : constant Version_32 := 16#d3da3cd1#;
   pragma Export (C, u01454, "mixed_volumeS");
   u01455 : constant Version_32 := 16#292d6220#;
   pragma Export (C, u01455, "form_lpB");
   u01456 : constant Version_32 := 16#464f8645#;
   pragma Export (C, u01456, "form_lpS");
   u01457 : constant Version_32 := 16#5d73d2e9#;
   pragma Export (C, u01457, "index_tree_lpB");
   u01458 : constant Version_32 := 16#908f4056#;
   pragma Export (C, u01458, "index_tree_lpS");
   u01459 : constant Version_32 := 16#e385661d#;
   pragma Export (C, u01459, "relation_tableB");
   u01460 : constant Version_32 := 16#2fa88398#;
   pragma Export (C, u01460, "relation_tableS");
   u01461 : constant Version_32 := 16#5f792f4b#;
   pragma Export (C, u01461, "simplex_pivotingB");
   u01462 : constant Version_32 := 16#cc2ddaec#;
   pragma Export (C, u01462, "simplex_pivotingS");
   u01463 : constant Version_32 := 16#59f2ffe0#;
   pragma Export (C, u01463, "zero_index_treeB");
   u01464 : constant Version_32 := 16#5fffe9a6#;
   pragma Export (C, u01464, "zero_index_treeS");
   u01465 : constant Version_32 := 16#f2e8d6f0#;
   pragma Export (C, u01465, "standard_floating_vecmatsB");
   u01466 : constant Version_32 := 16#7838b83f#;
   pragma Export (C, u01466, "standard_floating_vecmatsS");
   u01467 : constant Version_32 := 16#8196063b#;
   pragma Export (C, u01467, "one_level_lpB");
   u01468 : constant Version_32 := 16#fc3a8249#;
   pragma Export (C, u01468, "one_level_lpS");
   u01469 : constant Version_32 := 16#f68d20bc#;
   pragma Export (C, u01469, "prepare_for_mvB");
   u01470 : constant Version_32 := 16#7ca6be85#;
   pragma Export (C, u01470, "prepare_for_mvS");
   u01471 : constant Version_32 := 16#016d045c#;
   pragma Export (C, u01471, "pipelined_polyhedral_driversB");
   u01472 : constant Version_32 := 16#86d6a61c#;
   pragma Export (C, u01472, "pipelined_polyhedral_driversS");
   u01473 : constant Version_32 := 16#7d4b5e44#;
   pragma Export (C, u01473, "pipelined_labeled_cellsB");
   u01474 : constant Version_32 := 16#ce173f1c#;
   pragma Export (C, u01474, "pipelined_labeled_cellsS");
   u01475 : constant Version_32 := 16#56646774#;
   pragma Export (C, u01475, "mixed_labels_queueB");
   u01476 : constant Version_32 := 16#af523e4d#;
   pragma Export (C, u01476, "mixed_labels_queueS");
   u01477 : constant Version_32 := 16#0b9b8beb#;
   pragma Export (C, u01477, "pipelined_polyhedral_trackersB");
   u01478 : constant Version_32 := 16#2ce678b4#;
   pragma Export (C, u01478, "pipelined_polyhedral_trackersS");
   u01479 : constant Version_32 := 16#cfa09930#;
   pragma Export (C, u01479, "induced_permutationsB");
   u01480 : constant Version_32 := 16#2378d1f4#;
   pragma Export (C, u01480, "induced_permutationsS");
   u01481 : constant Version_32 := 16#693e7734#;
   pragma Export (C, u01481, "pipelined_cell_trackersB");
   u01482 : constant Version_32 := 16#d0772966#;
   pragma Export (C, u01482, "pipelined_cell_trackersS");
   u01483 : constant Version_32 := 16#555ad945#;
   pragma Export (C, u01483, "random_coefficient_systemsB");
   u01484 : constant Version_32 := 16#411e44c0#;
   pragma Export (C, u01484, "random_coefficient_systemsS");
   u01485 : constant Version_32 := 16#8667a797#;
   pragma Export (C, u01485, "quaddobl_laur_poly_convertorsB");
   u01486 : constant Version_32 := 16#56ef99aa#;
   pragma Export (C, u01486, "quaddobl_laur_poly_convertorsS");
   u01487 : constant Version_32 := 16#50a7c288#;
   pragma Export (C, u01487, "quaddobl_poly_laur_convertorsB");
   u01488 : constant Version_32 := 16#3f10650c#;
   pragma Export (C, u01488, "quaddobl_poly_laur_convertorsS");
   u01489 : constant Version_32 := 16#a3ca4906#;
   pragma Export (C, u01489, "quaddobl_system_and_solutions_ioB");
   u01490 : constant Version_32 := 16#3329328a#;
   pragma Export (C, u01490, "quaddobl_system_and_solutions_ioS");
   u01491 : constant Version_32 := 16#3278ea73#;
   pragma Export (C, u01491, "standard_system_and_solutions_ioB");
   u01492 : constant Version_32 := 16#0dabab1d#;
   pragma Export (C, u01492, "standard_system_and_solutions_ioS");
   u01493 : constant Version_32 := 16#46bdc66b#;
   pragma Export (C, u01493, "triangulations_and_subdivisionsB");
   u01494 : constant Version_32 := 16#fabf26ba#;
   pragma Export (C, u01494, "triangulations_and_subdivisionsS");
   u01495 : constant Version_32 := 16#020dff6b#;
   pragma Export (C, u01495, "unfolding_subdivisionsB");
   u01496 : constant Version_32 := 16#feb2ff5f#;
   pragma Export (C, u01496, "unfolding_subdivisionsS");
   u01497 : constant Version_32 := 16#7debdd60#;
   pragma Export (C, u01497, "black_polyhedral_continuationsB");
   u01498 : constant Version_32 := 16#7b0b93bf#;
   pragma Export (C, u01498, "black_polyhedral_continuationsS");
   u01499 : constant Version_32 := 16#be205922#;
   pragma Export (C, u01499, "time_stampsB");
   u01500 : constant Version_32 := 16#c10645c1#;
   pragma Export (C, u01500, "time_stampsS");
   u01501 : constant Version_32 := 16#86bccd6e#;
   pragma Export (C, u01501, "duration_ioB");
   u01502 : constant Version_32 := 16#a70e05f6#;
   pragma Export (C, u01502, "duration_ioS");
   u01503 : constant Version_32 := 16#a73499cb#;
   pragma Export (C, u01503, "m_homogeneous_bezout_numbersB");
   u01504 : constant Version_32 := 16#b248bce3#;
   pragma Export (C, u01504, "m_homogeneous_bezout_numbersS");
   u01505 : constant Version_32 := 16#e84202fd#;
   pragma Export (C, u01505, "degrees_in_sets_of_unknownsB");
   u01506 : constant Version_32 := 16#80f1326e#;
   pragma Export (C, u01506, "degrees_in_sets_of_unknownsS");
   u01507 : constant Version_32 := 16#668e5036#;
   pragma Export (C, u01507, "partitions_of_sets_of_unknownsB");
   u01508 : constant Version_32 := 16#cdc30aee#;
   pragma Export (C, u01508, "partitions_of_sets_of_unknownsS");
   u01509 : constant Version_32 := 16#246327ae#;
   pragma Export (C, u01509, "sets_of_unknownsB");
   u01510 : constant Version_32 := 16#4eaefcf5#;
   pragma Export (C, u01510, "sets_of_unknownsS");
   u01511 : constant Version_32 := 16#80bfd885#;
   pragma Export (C, u01511, "m_homogeneous_start_systemsB");
   u01512 : constant Version_32 := 16#5d3c6f30#;
   pragma Export (C, u01512, "m_homogeneous_start_systemsS");
   u01513 : constant Version_32 := 16#90394088#;
   pragma Export (C, u01513, "m_homogeneous_permanent_factorsB");
   u01514 : constant Version_32 := 16#1ac0302b#;
   pragma Export (C, u01514, "m_homogeneous_permanent_factorsS");
   u01515 : constant Version_32 := 16#709cc65b#;
   pragma Export (C, u01515, "standard_linear_product_systemB");
   u01516 : constant Version_32 := 16#5f502480#;
   pragma Export (C, u01516, "standard_linear_product_systemS");
   u01517 : constant Version_32 := 16#39e941ba#;
   pragma Export (C, u01517, "lexicographic_root_enumerationB");
   u01518 : constant Version_32 := 16#7fae2b23#;
   pragma Export (C, u01518, "lexicographic_root_enumerationS");
   u01519 : constant Version_32 := 16#db6308ef#;
   pragma Export (C, u01519, "standard_complex_row_reductionB");
   u01520 : constant Version_32 := 16#c1b0c263#;
   pragma Export (C, u01520, "standard_complex_row_reductionS");
   u01521 : constant Version_32 := 16#ee6ef244#;
   pragma Export (C, u01521, "standard_complex_prod_planesB");
   u01522 : constant Version_32 := 16#202718ac#;
   pragma Export (C, u01522, "standard_complex_prod_planesS");
   u01523 : constant Version_32 := 16#7d1ae4f6#;
   pragma Export (C, u01523, "standard_complex_poly_listsB");
   u01524 : constant Version_32 := 16#5354026b#;
   pragma Export (C, u01524, "standard_complex_poly_listsS");
   u01525 : constant Version_32 := 16#54f98d9b#;
   pragma Export (C, u01525, "standard_complex_prod_systemsB");
   u01526 : constant Version_32 := 16#95d0f9ef#;
   pragma Export (C, u01526, "standard_complex_prod_systemsS");
   u01527 : constant Version_32 := 16#625c6dba#;
   pragma Export (C, u01527, "random_product_start_systemsB");
   u01528 : constant Version_32 := 16#3f889d1a#;
   pragma Export (C, u01528, "random_product_start_systemsS");
   u01529 : constant Version_32 := 16#c233fa8f#;
   pragma Export (C, u01529, "set_structureB");
   u01530 : constant Version_32 := 16#f74dea9c#;
   pragma Export (C, u01530, "set_structureS");
   u01531 : constant Version_32 := 16#588de907#;
   pragma Export (C, u01531, "generate_unionsB");
   u01532 : constant Version_32 := 16#8595c7dd#;
   pragma Export (C, u01532, "generate_unionsS");
   u01533 : constant Version_32 := 16#e09cbf4c#;
   pragma Export (C, u01533, "root_counters_outputB");
   u01534 : constant Version_32 := 16#4a3e0a98#;
   pragma Export (C, u01534, "root_counters_outputS");
   u01535 : constant Version_32 := 16#453ca8a6#;
   pragma Export (C, u01535, "partitions_of_sets_of_unknowns_ioB");
   u01536 : constant Version_32 := 16#0bf93249#;
   pragma Export (C, u01536, "partitions_of_sets_of_unknowns_ioS");
   u01537 : constant Version_32 := 16#b66344db#;
   pragma Export (C, u01537, "sets_of_unknowns_ioB");
   u01538 : constant Version_32 := 16#1ceefcd4#;
   pragma Export (C, u01538, "sets_of_unknowns_ioS");
   u01539 : constant Version_32 := 16#30673b3f#;
   pragma Export (C, u01539, "partitions_of_sets_stringsB");
   u01540 : constant Version_32 := 16#29fd0cbf#;
   pragma Export (C, u01540, "partitions_of_sets_stringsS");
   u01541 : constant Version_32 := 16#c3979247#;
   pragma Export (C, u01541, "sets_of_unknowns_stringsB");
   u01542 : constant Version_32 := 16#8aa6e385#;
   pragma Export (C, u01542, "sets_of_unknowns_stringsS");
   u01543 : constant Version_32 := 16#767775ba#;
   pragma Export (C, u01543, "set_structure_ioB");
   u01544 : constant Version_32 := 16#f18278a2#;
   pragma Export (C, u01544, "set_structure_ioS");
   u01545 : constant Version_32 := 16#21c3a1fc#;
   pragma Export (C, u01545, "set_structure_stringsB");
   u01546 : constant Version_32 := 16#79ebb1ea#;
   pragma Export (C, u01546, "set_structure_stringsS");
   u01547 : constant Version_32 := 16#0bda3243#;
   pragma Export (C, u01547, "standard_complex_prod_systems_ioB");
   u01548 : constant Version_32 := 16#a2f85304#;
   pragma Export (C, u01548, "standard_complex_prod_systems_ioS");
   u01549 : constant Version_32 := 16#bde91932#;
   pragma Export (C, u01549, "standard_complex_poly_lists_ioB");
   u01550 : constant Version_32 := 16#50b8b4c3#;
   pragma Export (C, u01550, "standard_complex_poly_lists_ioS");
   u01551 : constant Version_32 := 16#4710bf6a#;
   pragma Export (C, u01551, "total_degree_start_systemsB");
   u01552 : constant Version_32 := 16#f6927644#;
   pragma Export (C, u01552, "total_degree_start_systemsS");
   u01553 : constant Version_32 := 16#a3c56370#;
   pragma Export (C, u01553, "black_box_root_refinersB");
   u01554 : constant Version_32 := 16#fcd4c82d#;
   pragma Export (C, u01554, "black_box_root_refinersS");
   u01555 : constant Version_32 := 16#1280a018#;
   pragma Export (C, u01555, "dobldobl_root_refinersB");
   u01556 : constant Version_32 := 16#f31148f6#;
   pragma Export (C, u01556, "dobldobl_root_refinersS");
   u01557 : constant Version_32 := 16#1b09f088#;
   pragma Export (C, u01557, "dobldobl_complex_vecmatsB");
   u01558 : constant Version_32 := 16#a899e9a3#;
   pragma Export (C, u01558, "dobldobl_complex_vecmatsS");
   u01559 : constant Version_32 := 16#1a8baa50#;
   pragma Export (C, u01559, "dobldobl_deflation_methodsB");
   u01560 : constant Version_32 := 16#4ff869b5#;
   pragma Export (C, u01560, "dobldobl_deflation_methodsS");
   u01561 : constant Version_32 := 16#b0989176#;
   pragma Export (C, u01561, "dobldobl_complex_newton_stepsB");
   u01562 : constant Version_32 := 16#9d510202#;
   pragma Export (C, u01562, "dobldobl_complex_newton_stepsS");
   u01563 : constant Version_32 := 16#2ddca6f0#;
   pragma Export (C, u01563, "dobldobl_numerical_rankB");
   u01564 : constant Version_32 := 16#643bf562#;
   pragma Export (C, u01564, "dobldobl_numerical_rankS");
   u01565 : constant Version_32 := 16#77de82f3#;
   pragma Export (C, u01565, "dobldobl_deflate_singularitiesB");
   u01566 : constant Version_32 := 16#b07f7e8c#;
   pragma Export (C, u01566, "dobldobl_deflate_singularitiesS");
   u01567 : constant Version_32 := 16#fc19d207#;
   pragma Export (C, u01567, "dobldobl_embed_polynomialsB");
   u01568 : constant Version_32 := 16#0f285c39#;
   pragma Export (C, u01568, "dobldobl_embed_polynomialsS");
   u01569 : constant Version_32 := 16#bc2be122#;
   pragma Export (C, u01569, "dobldobl_complex_poly_matricesB");
   u01570 : constant Version_32 := 16#0355268e#;
   pragma Export (C, u01570, "dobldobl_complex_poly_matricesS");
   u01571 : constant Version_32 := 16#de2037cf#;
   pragma Export (C, u01571, "dobldobl_complex_poly_ringS");
   u01572 : constant Version_32 := 16#6f84740e#;
   pragma Export (C, u01572, "dobldobl_complex_poly_vectorsB");
   u01573 : constant Version_32 := 16#b8eb47f2#;
   pragma Export (C, u01573, "dobldobl_complex_poly_vectorsS");
   u01574 : constant Version_32 := 16#55598459#;
   pragma Export (C, u01574, "dobldobl_random_matricesB");
   u01575 : constant Version_32 := 16#f4ceb434#;
   pragma Export (C, u01575, "dobldobl_random_matricesS");
   u01576 : constant Version_32 := 16#13b5298b#;
   pragma Export (C, u01576, "double_double_qr_least_squaresB");
   u01577 : constant Version_32 := 16#9669d934#;
   pragma Export (C, u01577, "double_double_qr_least_squaresS");
   u01578 : constant Version_32 := 16#200f31e8#;
   pragma Export (C, u01578, "dobldobl_deflation_treesB");
   u01579 : constant Version_32 := 16#1688e75e#;
   pragma Export (C, u01579, "dobldobl_deflation_treesS");
   u01580 : constant Version_32 := 16#9143b711#;
   pragma Export (C, u01580, "dobldobl_deflation_trees_ioB");
   u01581 : constant Version_32 := 16#7d65db64#;
   pragma Export (C, u01581, "dobldobl_deflation_trees_ioS");
   u01582 : constant Version_32 := 16#b1005b82#;
   pragma Export (C, u01582, "dobldobl_multiple_solutionsB");
   u01583 : constant Version_32 := 16#5014c56b#;
   pragma Export (C, u01583, "dobldobl_multiple_solutionsS");
   u01584 : constant Version_32 := 16#b54e443b#;
   pragma Export (C, u01584, "dobldobl_evaluate_deflationB");
   u01585 : constant Version_32 := 16#b88df708#;
   pragma Export (C, u01585, "dobldobl_evaluate_deflationS");
   u01586 : constant Version_32 := 16#36fe7f1f#;
   pragma Export (C, u01586, "dobldobl_deflation_matricesB");
   u01587 : constant Version_32 := 16#bf03ad48#;
   pragma Export (C, u01587, "dobldobl_deflation_matricesS");
   u01588 : constant Version_32 := 16#fc911c1d#;
   pragma Export (C, u01588, "dobldobl_jacobian_treesB");
   u01589 : constant Version_32 := 16#33dbe85b#;
   pragma Export (C, u01589, "dobldobl_jacobian_treesS");
   u01590 : constant Version_32 := 16#b3f2e29c#;
   pragma Export (C, u01590, "dobldobl_evaluate_deflation_ioB");
   u01591 : constant Version_32 := 16#757aef74#;
   pragma Export (C, u01591, "dobldobl_evaluate_deflation_ioS");
   u01592 : constant Version_32 := 16#6fc6a937#;
   pragma Export (C, u01592, "dobldobl_mixed_residualsB");
   u01593 : constant Version_32 := 16#f7b5dec0#;
   pragma Export (C, u01593, "dobldobl_mixed_residualsS");
   u01594 : constant Version_32 := 16#54d75c4a#;
   pragma Export (C, u01594, "dobldobl_jacobian_circuitsB");
   u01595 : constant Version_32 := 16#8974073f#;
   pragma Export (C, u01595, "dobldobl_jacobian_circuitsS");
   u01596 : constant Version_32 := 16#7151b139#;
   pragma Export (C, u01596, "coefficient_supported_polynomialsB");
   u01597 : constant Version_32 := 16#c7b823f4#;
   pragma Export (C, u01597, "coefficient_supported_polynomialsS");
   u01598 : constant Version_32 := 16#83a0b779#;
   pragma Export (C, u01598, "dobldobl_jacobian_evaluationsB");
   u01599 : constant Version_32 := 16#c50d1c01#;
   pragma Export (C, u01599, "dobldobl_jacobian_evaluationsS");
   u01600 : constant Version_32 := 16#32ddd704#;
   pragma Export (C, u01600, "dobldobl_gradient_evaluationsB");
   u01601 : constant Version_32 := 16#44698c61#;
   pragma Export (C, u01601, "dobldobl_gradient_evaluationsS");
   u01602 : constant Version_32 := 16#d03f30c0#;
   pragma Export (C, u01602, "dobldobl_monomial_evaluationsB");
   u01603 : constant Version_32 := 16#9dcad5fb#;
   pragma Export (C, u01603, "dobldobl_monomial_evaluationsS");
   u01604 : constant Version_32 := 16#10341795#;
   pragma Export (C, u01604, "standard_monomial_evaluationsB");
   u01605 : constant Version_32 := 16#90bd492d#;
   pragma Export (C, u01605, "standard_monomial_evaluationsS");
   u01606 : constant Version_32 := 16#293eadcc#;
   pragma Export (C, u01606, "dobldobl_speelpenning_productsB");
   u01607 : constant Version_32 := 16#52e3dceb#;
   pragma Export (C, u01607, "dobldobl_speelpenning_productsS");
   u01608 : constant Version_32 := 16#24a6a56a#;
   pragma Export (C, u01608, "standard_speelpenning_productsB");
   u01609 : constant Version_32 := 16#0d37f648#;
   pragma Export (C, u01609, "standard_speelpenning_productsS");
   u01610 : constant Version_32 := 16#c85e17bc#;
   pragma Export (C, u01610, "standard_gradient_evaluationsB");
   u01611 : constant Version_32 := 16#42e3ae42#;
   pragma Export (C, u01611, "standard_gradient_evaluationsS");
   u01612 : constant Version_32 := 16#b71e408b#;
   pragma Export (C, u01612, "standard_jacobian_evaluationsB");
   u01613 : constant Version_32 := 16#9fad4e44#;
   pragma Export (C, u01613, "standard_jacobian_evaluationsS");
   u01614 : constant Version_32 := 16#08a06b15#;
   pragma Export (C, u01614, "dobldobl_polynomial_flattenersB");
   u01615 : constant Version_32 := 16#3bf86578#;
   pragma Export (C, u01615, "dobldobl_polynomial_flattenersS");
   u01616 : constant Version_32 := 16#7fafe605#;
   pragma Export (C, u01616, "lexicographical_supportsB");
   u01617 : constant Version_32 := 16#874cca9f#;
   pragma Export (C, u01617, "lexicographical_supportsS");
   u01618 : constant Version_32 := 16#6133b550#;
   pragma Export (C, u01618, "prompt_for_solutionsB");
   u01619 : constant Version_32 := 16#4ed673aa#;
   pragma Export (C, u01619, "prompt_for_solutionsS");
   u01620 : constant Version_32 := 16#a253d726#;
   pragma Export (C, u01620, "prompt_for_systemsB");
   u01621 : constant Version_32 := 16#7bf474bd#;
   pragma Export (C, u01621, "prompt_for_systemsS");
   u01622 : constant Version_32 := 16#98d55cab#;
   pragma Export (C, u01622, "quaddobl_root_refinersB");
   u01623 : constant Version_32 := 16#7fd76259#;
   pragma Export (C, u01623, "quaddobl_root_refinersS");
   u01624 : constant Version_32 := 16#3a6aa9c0#;
   pragma Export (C, u01624, "quaddobl_complex_vecmatsB");
   u01625 : constant Version_32 := 16#0b9496bc#;
   pragma Export (C, u01625, "quaddobl_complex_vecmatsS");
   u01626 : constant Version_32 := 16#2a57f35b#;
   pragma Export (C, u01626, "quaddobl_deflation_methodsB");
   u01627 : constant Version_32 := 16#bfacc3f3#;
   pragma Export (C, u01627, "quaddobl_deflation_methodsS");
   u01628 : constant Version_32 := 16#a6a85859#;
   pragma Export (C, u01628, "quaddobl_complex_newton_stepsB");
   u01629 : constant Version_32 := 16#7f2ffc2a#;
   pragma Export (C, u01629, "quaddobl_complex_newton_stepsS");
   u01630 : constant Version_32 := 16#52d0bbc7#;
   pragma Export (C, u01630, "quaddobl_numerical_rankB");
   u01631 : constant Version_32 := 16#8682007b#;
   pragma Export (C, u01631, "quaddobl_numerical_rankS");
   u01632 : constant Version_32 := 16#22ce99a6#;
   pragma Export (C, u01632, "quaddobl_deflate_singularitiesB");
   u01633 : constant Version_32 := 16#982ecd8f#;
   pragma Export (C, u01633, "quaddobl_deflate_singularitiesS");
   u01634 : constant Version_32 := 16#90878d1f#;
   pragma Export (C, u01634, "quaddobl_embed_polynomialsB");
   u01635 : constant Version_32 := 16#b9e66157#;
   pragma Export (C, u01635, "quaddobl_embed_polynomialsS");
   u01636 : constant Version_32 := 16#5647f8e0#;
   pragma Export (C, u01636, "quaddobl_complex_poly_matricesB");
   u01637 : constant Version_32 := 16#f5645643#;
   pragma Export (C, u01637, "quaddobl_complex_poly_matricesS");
   u01638 : constant Version_32 := 16#67c1fc01#;
   pragma Export (C, u01638, "quaddobl_complex_poly_ringS");
   u01639 : constant Version_32 := 16#dfbe5d64#;
   pragma Export (C, u01639, "quaddobl_complex_poly_vectorsB");
   u01640 : constant Version_32 := 16#a4b62efd#;
   pragma Export (C, u01640, "quaddobl_complex_poly_vectorsS");
   u01641 : constant Version_32 := 16#6d83e09c#;
   pragma Export (C, u01641, "quaddobl_random_matricesB");
   u01642 : constant Version_32 := 16#1e13e0ba#;
   pragma Export (C, u01642, "quaddobl_random_matricesS");
   u01643 : constant Version_32 := 16#a4d8a2ea#;
   pragma Export (C, u01643, "quad_double_qr_least_squaresB");
   u01644 : constant Version_32 := 16#dc251624#;
   pragma Export (C, u01644, "quad_double_qr_least_squaresS");
   u01645 : constant Version_32 := 16#af6190ec#;
   pragma Export (C, u01645, "quaddobl_deflation_treesB");
   u01646 : constant Version_32 := 16#ab1a9dd3#;
   pragma Export (C, u01646, "quaddobl_deflation_treesS");
   u01647 : constant Version_32 := 16#4d8afcd9#;
   pragma Export (C, u01647, "quaddobl_deflation_trees_ioB");
   u01648 : constant Version_32 := 16#716104aa#;
   pragma Export (C, u01648, "quaddobl_deflation_trees_ioS");
   u01649 : constant Version_32 := 16#31bca4bd#;
   pragma Export (C, u01649, "quaddobl_multiple_solutionsB");
   u01650 : constant Version_32 := 16#e8dab500#;
   pragma Export (C, u01650, "quaddobl_multiple_solutionsS");
   u01651 : constant Version_32 := 16#bd6928bf#;
   pragma Export (C, u01651, "quaddobl_evaluate_deflationB");
   u01652 : constant Version_32 := 16#0c33deb7#;
   pragma Export (C, u01652, "quaddobl_evaluate_deflationS");
   u01653 : constant Version_32 := 16#55344a45#;
   pragma Export (C, u01653, "quaddobl_deflation_matricesB");
   u01654 : constant Version_32 := 16#a4112704#;
   pragma Export (C, u01654, "quaddobl_deflation_matricesS");
   u01655 : constant Version_32 := 16#97bb319e#;
   pragma Export (C, u01655, "quaddobl_jacobian_treesB");
   u01656 : constant Version_32 := 16#c1b46e43#;
   pragma Export (C, u01656, "quaddobl_jacobian_treesS");
   u01657 : constant Version_32 := 16#eb372a38#;
   pragma Export (C, u01657, "quaddobl_evaluate_deflation_ioB");
   u01658 : constant Version_32 := 16#02bfacdf#;
   pragma Export (C, u01658, "quaddobl_evaluate_deflation_ioS");
   u01659 : constant Version_32 := 16#5a9601dd#;
   pragma Export (C, u01659, "quaddobl_mixed_residualsB");
   u01660 : constant Version_32 := 16#c06d3078#;
   pragma Export (C, u01660, "quaddobl_mixed_residualsS");
   u01661 : constant Version_32 := 16#bab620a9#;
   pragma Export (C, u01661, "quaddobl_jacobian_circuitsB");
   u01662 : constant Version_32 := 16#3ee02ff0#;
   pragma Export (C, u01662, "quaddobl_jacobian_circuitsS");
   u01663 : constant Version_32 := 16#c468831c#;
   pragma Export (C, u01663, "quaddobl_jacobian_evaluationsB");
   u01664 : constant Version_32 := 16#bfb46237#;
   pragma Export (C, u01664, "quaddobl_jacobian_evaluationsS");
   u01665 : constant Version_32 := 16#df0c25a1#;
   pragma Export (C, u01665, "quaddobl_gradient_evaluationsB");
   u01666 : constant Version_32 := 16#652255d6#;
   pragma Export (C, u01666, "quaddobl_gradient_evaluationsS");
   u01667 : constant Version_32 := 16#23945919#;
   pragma Export (C, u01667, "quaddobl_monomial_evaluationsB");
   u01668 : constant Version_32 := 16#9c10fdf5#;
   pragma Export (C, u01668, "quaddobl_monomial_evaluationsS");
   u01669 : constant Version_32 := 16#6b6c43b1#;
   pragma Export (C, u01669, "quaddobl_speelpenning_productsB");
   u01670 : constant Version_32 := 16#29a9f55d#;
   pragma Export (C, u01670, "quaddobl_speelpenning_productsS");
   u01671 : constant Version_32 := 16#a1579693#;
   pragma Export (C, u01671, "quaddobl_polynomial_flattenersB");
   u01672 : constant Version_32 := 16#7c87236a#;
   pragma Export (C, u01672, "quaddobl_polynomial_flattenersS");
   u01673 : constant Version_32 := 16#52d53025#;
   pragma Export (C, u01673, "root_refining_parametersB");
   u01674 : constant Version_32 := 16#f08471ae#;
   pragma Export (C, u01674, "root_refining_parametersS");
   u01675 : constant Version_32 := 16#a983cecb#;
   pragma Export (C, u01675, "dobldobl_blackbox_continuationsB");
   u01676 : constant Version_32 := 16#a2d7959f#;
   pragma Export (C, u01676, "dobldobl_blackbox_continuationsS");
   u01677 : constant Version_32 := 16#814ac353#;
   pragma Export (C, u01677, "dobldobl_blackbox_refinersB");
   u01678 : constant Version_32 := 16#7bc40ded#;
   pragma Export (C, u01678, "dobldobl_blackbox_refinersS");
   u01679 : constant Version_32 := 16#83117a98#;
   pragma Export (C, u01679, "dobldobl_solution_manipulatorsB");
   u01680 : constant Version_32 := 16#eaea18a0#;
   pragma Export (C, u01680, "dobldobl_solution_manipulatorsS");
   u01681 : constant Version_32 := 16#b2f00177#;
   pragma Export (C, u01681, "dobldobl_solution_splittersB");
   u01682 : constant Version_32 := 16#c6c92e0c#;
   pragma Export (C, u01682, "dobldobl_solution_splittersS");
   u01683 : constant Version_32 := 16#15af5df4#;
   pragma Export (C, u01683, "multitasking_root_refinersB");
   u01684 : constant Version_32 := 16#7c2f9cef#;
   pragma Export (C, u01684, "multitasking_root_refinersS");
   u01685 : constant Version_32 := 16#e9ed3e87#;
   pragma Export (C, u01685, "dobldobl_coefficient_homotopyB");
   u01686 : constant Version_32 := 16#ee0aa2d8#;
   pragma Export (C, u01686, "dobldobl_coefficient_homotopyS");
   u01687 : constant Version_32 := 16#321c7f0b#;
   pragma Export (C, u01687, "dobldobl_scalingB");
   u01688 : constant Version_32 := 16#e535c5e6#;
   pragma Export (C, u01688, "dobldobl_scalingS");
   u01689 : constant Version_32 := 16#75fa730e#;
   pragma Export (C, u01689, "multitasking_continuationB");
   u01690 : constant Version_32 := 16#da989511#;
   pragma Export (C, u01690, "multitasking_continuationS");
   u01691 : constant Version_32 := 16#5bc8b2fd#;
   pragma Export (C, u01691, "dobldobl_solutions_queueB");
   u01692 : constant Version_32 := 16#6c7b0540#;
   pragma Export (C, u01692, "dobldobl_solutions_queueS");
   u01693 : constant Version_32 := 16#de9a1e99#;
   pragma Export (C, u01693, "phcpack_operationsB");
   u01694 : constant Version_32 := 16#14596450#;
   pragma Export (C, u01694, "phcpack_operationsS");
   u01695 : constant Version_32 := 16#c7c999f9#;
   pragma Export (C, u01695, "dobldobl_diagonal_solutionsB");
   u01696 : constant Version_32 := 16#993c793e#;
   pragma Export (C, u01696, "dobldobl_diagonal_solutionsS");
   u01697 : constant Version_32 := 16#43ba3f14#;
   pragma Export (C, u01697, "extrinsic_diagonal_homotopiesB");
   u01698 : constant Version_32 := 16#3bd2a750#;
   pragma Export (C, u01698, "extrinsic_diagonal_homotopiesS");
   u01699 : constant Version_32 := 16#e2266f67#;
   pragma Export (C, u01699, "dobldobl_diagonal_polynomialsB");
   u01700 : constant Version_32 := 16#6f223267#;
   pragma Export (C, u01700, "dobldobl_diagonal_polynomialsS");
   u01701 : constant Version_32 := 16#23c9bfd6#;
   pragma Export (C, u01701, "planes_and_polynomialsB");
   u01702 : constant Version_32 := 16#c45388c6#;
   pragma Export (C, u01702, "planes_and_polynomialsS");
   u01703 : constant Version_32 := 16#68689822#;
   pragma Export (C, u01703, "witness_setsB");
   u01704 : constant Version_32 := 16#3bf3e64b#;
   pragma Export (C, u01704, "witness_setsS");
   u01705 : constant Version_32 := 16#4b06d35a#;
   pragma Export (C, u01705, "dobldobl_embed_laurentialsB");
   u01706 : constant Version_32 := 16#85cccfed#;
   pragma Export (C, u01706, "dobldobl_embed_laurentialsS");
   u01707 : constant Version_32 := 16#422f5862#;
   pragma Export (C, u01707, "multprec_random_vectorsB");
   u01708 : constant Version_32 := 16#e63f040f#;
   pragma Export (C, u01708, "multprec_random_vectorsS");
   u01709 : constant Version_32 := 16#3c7d4e4d#;
   pragma Export (C, u01709, "multprec_random_numbersB");
   u01710 : constant Version_32 := 16#2ab653a5#;
   pragma Export (C, u01710, "multprec_random_numbersS");
   u01711 : constant Version_32 := 16#81ea73ef#;
   pragma Export (C, u01711, "multprec_natural64_coefficientsB");
   u01712 : constant Version_32 := 16#2b95c785#;
   pragma Export (C, u01712, "multprec_natural64_coefficientsS");
   u01713 : constant Version_32 := 16#f3310008#;
   pragma Export (C, u01713, "multprec_floating64_numbersB");
   u01714 : constant Version_32 := 16#a44e339e#;
   pragma Export (C, u01714, "multprec_floating64_numbersS");
   u01715 : constant Version_32 := 16#b2641df2#;
   pragma Export (C, u01715, "multprec_integer64_numbersB");
   u01716 : constant Version_32 := 16#9747ea04#;
   pragma Export (C, u01716, "multprec_integer64_numbersS");
   u01717 : constant Version_32 := 16#dd890dab#;
   pragma Export (C, u01717, "multprec_natural64_numbersB");
   u01718 : constant Version_32 := 16#0994759f#;
   pragma Export (C, u01718, "multprec_natural64_numbersS");
   u01719 : constant Version_32 := 16#c263d2b8#;
   pragma Export (C, u01719, "quaddobl_embed_laurentialsB");
   u01720 : constant Version_32 := 16#65bc3591#;
   pragma Export (C, u01720, "quaddobl_embed_laurentialsS");
   u01721 : constant Version_32 := 16#17c3f7ce#;
   pragma Export (C, u01721, "standard_complex_substitutorsB");
   u01722 : constant Version_32 := 16#8e638c6f#;
   pragma Export (C, u01722, "standard_complex_substitutorsS");
   u01723 : constant Version_32 := 16#0eee97cc#;
   pragma Export (C, u01723, "standard_embed_laurentialsB");
   u01724 : constant Version_32 := 16#19a41823#;
   pragma Export (C, u01724, "standard_embed_laurentialsS");
   u01725 : constant Version_32 := 16#71590137#;
   pragma Export (C, u01725, "permutationsB");
   u01726 : constant Version_32 := 16#c7371ce2#;
   pragma Export (C, u01726, "permutationsS");
   u01727 : constant Version_32 := 16#d033d699#;
   pragma Export (C, u01727, "quaddobl_diagonal_polynomialsB");
   u01728 : constant Version_32 := 16#256d4c7f#;
   pragma Export (C, u01728, "quaddobl_diagonal_polynomialsS");
   u01729 : constant Version_32 := 16#0a93c642#;
   pragma Export (C, u01729, "quaddobl_diagonal_solutionsB");
   u01730 : constant Version_32 := 16#b4a4c2fe#;
   pragma Export (C, u01730, "quaddobl_diagonal_solutionsS");
   u01731 : constant Version_32 := 16#6b560bc4#;
   pragma Export (C, u01731, "standard_diagonal_polynomialsB");
   u01732 : constant Version_32 := 16#f47a0d66#;
   pragma Export (C, u01732, "standard_diagonal_polynomialsS");
   u01733 : constant Version_32 := 16#de100e5b#;
   pragma Export (C, u01733, "standard_diagonal_solutionsB");
   u01734 : constant Version_32 := 16#541a0c1b#;
   pragma Export (C, u01734, "standard_diagonal_solutionsS");
   u01735 : constant Version_32 := 16#4c7ce1c3#;
   pragma Export (C, u01735, "numerical_tropisms_containerB");
   u01736 : constant Version_32 := 16#1a7ec09e#;
   pragma Export (C, u01736, "numerical_tropisms_containerS");
   u01737 : constant Version_32 := 16#2ecfbb44#;
   pragma Export (C, u01737, "witness_sets_ioB");
   u01738 : constant Version_32 := 16#cadf80e9#;
   pragma Export (C, u01738, "witness_sets_ioS");
   u01739 : constant Version_32 := 16#65125c8d#;
   pragma Export (C, u01739, "permute_operationsB");
   u01740 : constant Version_32 := 16#7fc75d2c#;
   pragma Export (C, u01740, "permute_operationsS");
   u01741 : constant Version_32 := 16#5a735281#;
   pragma Export (C, u01741, "quaddobl_solutions_queueB");
   u01742 : constant Version_32 := 16#1b08210a#;
   pragma Export (C, u01742, "quaddobl_solutions_queueS");
   u01743 : constant Version_32 := 16#a2b70d50#;
   pragma Export (C, u01743, "standard_solutions_queueB");
   u01744 : constant Version_32 := 16#118d414c#;
   pragma Export (C, u01744, "standard_solutions_queueS");
   u01745 : constant Version_32 := 16#a0f671ba#;
   pragma Export (C, u01745, "dobldobl_blackbox_solversB");
   u01746 : constant Version_32 := 16#61873d32#;
   pragma Export (C, u01746, "dobldobl_blackbox_solversS");
   u01747 : constant Version_32 := 16#737a79cb#;
   pragma Export (C, u01747, "bablsolveB");
   u01748 : constant Version_32 := 16#e9dd1767#;
   pragma Export (C, u01748, "bablsolveS");
   u01749 : constant Version_32 := 16#1194dbc8#;
   pragma Export (C, u01749, "main_eqn_by_eqn_solversB");
   u01750 : constant Version_32 := 16#cf86650c#;
   pragma Export (C, u01750, "main_eqn_by_eqn_solversS");
   u01751 : constant Version_32 := 16#6308bb01#;
   pragma Export (C, u01751, "equation_by_equation_solversB");
   u01752 : constant Version_32 := 16#5ebff10d#;
   pragma Export (C, u01752, "equation_by_equation_solversS");
   u01753 : constant Version_32 := 16#363dcc5e#;
   pragma Export (C, u01753, "extrinsic_diagonal_continuationB");
   u01754 : constant Version_32 := 16#8b1f917a#;
   pragma Export (C, u01754, "extrinsic_diagonal_continuationS");
   u01755 : constant Version_32 := 16#10f5a313#;
   pragma Export (C, u01755, "extrinsic_diagonal_homotopies_ioB");
   u01756 : constant Version_32 := 16#1ccc776f#;
   pragma Export (C, u01756, "extrinsic_diagonal_homotopies_ioS");
   u01757 : constant Version_32 := 16#9b324040#;
   pragma Export (C, u01757, "standard_cascading_planesB");
   u01758 : constant Version_32 := 16#fe36979d#;
   pragma Export (C, u01758, "standard_cascading_planesS");
   u01759 : constant Version_32 := 16#d26cf2e5#;
   pragma Export (C, u01759, "standard_moving_planesB");
   u01760 : constant Version_32 := 16#3a07bdaa#;
   pragma Export (C, u01760, "standard_moving_planesS");
   u01761 : constant Version_32 := 16#bf133d62#;
   pragma Export (C, u01761, "standard_plane_representationsB");
   u01762 : constant Version_32 := 16#50b16c17#;
   pragma Export (C, u01762, "standard_plane_representationsS");
   u01763 : constant Version_32 := 16#2065cd5b#;
   pragma Export (C, u01763, "standard_plane_operationsB");
   u01764 : constant Version_32 := 16#dc10497a#;
   pragma Export (C, u01764, "standard_plane_operationsS");
   u01765 : constant Version_32 := 16#d15832a9#;
   pragma Export (C, u01765, "standard_point_coordinatesB");
   u01766 : constant Version_32 := 16#59325c89#;
   pragma Export (C, u01766, "standard_point_coordinatesS");
   u01767 : constant Version_32 := 16#ef003612#;
   pragma Export (C, u01767, "standard_solution_splittersB");
   u01768 : constant Version_32 := 16#e6d435b0#;
   pragma Export (C, u01768, "standard_solution_splittersS");
   u01769 : constant Version_32 := 16#6e776b5e#;
   pragma Export (C, u01769, "flow_tablesB");
   u01770 : constant Version_32 := 16#14bae697#;
   pragma Export (C, u01770, "flow_tablesS");
   u01771 : constant Version_32 := 16#e7f17891#;
   pragma Export (C, u01771, "hypersurfaces_and_filtersB");
   u01772 : constant Version_32 := 16#190a0c13#;
   pragma Export (C, u01772, "hypersurfaces_and_filtersS");
   u01773 : constant Version_32 := 16#a3453b63#;
   pragma Export (C, u01773, "dobldobl_hypersurface_witsetsB");
   u01774 : constant Version_32 := 16#3a64e835#;
   pragma Export (C, u01774, "dobldobl_hypersurface_witsetsS");
   u01775 : constant Version_32 := 16#370fe2b8#;
   pragma Export (C, u01775, "quaddobl_hypersurface_witsetsB");
   u01776 : constant Version_32 := 16#3c57a6a3#;
   pragma Export (C, u01776, "quaddobl_hypersurface_witsetsS");
   u01777 : constant Version_32 := 16#fd6a34bd#;
   pragma Export (C, u01777, "standard_hypersurface_witsetsB");
   u01778 : constant Version_32 := 16#f3fd8270#;
   pragma Export (C, u01778, "standard_hypersurface_witsetsS");
   u01779 : constant Version_32 := 16#00f3a1b5#;
   pragma Export (C, u01779, "intrinsic_diagonal_continuationB");
   u01780 : constant Version_32 := 16#615ecfe4#;
   pragma Export (C, u01780, "intrinsic_diagonal_continuationS");
   u01781 : constant Version_32 := 16#be6edea2#;
   pragma Export (C, u01781, "standard_intrinsic_continuationB");
   u01782 : constant Version_32 := 16#4e9c8180#;
   pragma Export (C, u01782, "standard_intrinsic_continuationS");
   u01783 : constant Version_32 := 16#8a33664f#;
   pragma Export (C, u01783, "standard_intrinsic_newtonB");
   u01784 : constant Version_32 := 16#a790162e#;
   pragma Export (C, u01784, "standard_intrinsic_newtonS");
   u01785 : constant Version_32 := 16#34943397#;
   pragma Export (C, u01785, "standard_intrinsic_trackersB");
   u01786 : constant Version_32 := 16#2776becb#;
   pragma Export (C, u01786, "standard_intrinsic_trackersS");
   u01787 : constant Version_32 := 16#a22fa927#;
   pragma Export (C, u01787, "standard_rescaling_coordinatesB");
   u01788 : constant Version_32 := 16#987522d1#;
   pragma Export (C, u01788, "standard_rescaling_coordinatesS");
   u01789 : constant Version_32 := 16#ff01b652#;
   pragma Export (C, u01789, "standard_intrinsic_solutionsB");
   u01790 : constant Version_32 := 16#c79bfb17#;
   pragma Export (C, u01790, "standard_intrinsic_solutionsS");
   u01791 : constant Version_32 := 16#73120512#;
   pragma Export (C, u01791, "intrinsic_witness_sets_ioB");
   u01792 : constant Version_32 := 16#431fc3e6#;
   pragma Export (C, u01792, "intrinsic_witness_sets_ioS");
   u01793 : constant Version_32 := 16#34eb858a#;
   pragma Export (C, u01793, "dobldobl_intrinsic_solutionsB");
   u01794 : constant Version_32 := 16#5f73ed1c#;
   pragma Export (C, u01794, "dobldobl_intrinsic_solutionsS");
   u01795 : constant Version_32 := 16#3e21ddd2#;
   pragma Export (C, u01795, "dobldobl_point_coordinatesB");
   u01796 : constant Version_32 := 16#b8633262#;
   pragma Export (C, u01796, "dobldobl_point_coordinatesS");
   u01797 : constant Version_32 := 16#da408e6e#;
   pragma Export (C, u01797, "dobldobl_plane_representationsB");
   u01798 : constant Version_32 := 16#cfd73519#;
   pragma Export (C, u01798, "dobldobl_plane_representationsS");
   u01799 : constant Version_32 := 16#74bb7d8b#;
   pragma Export (C, u01799, "quaddobl_intrinsic_solutionsB");
   u01800 : constant Version_32 := 16#c636f4e9#;
   pragma Export (C, u01800, "quaddobl_intrinsic_solutionsS");
   u01801 : constant Version_32 := 16#beee08b2#;
   pragma Export (C, u01801, "quaddobl_point_coordinatesB");
   u01802 : constant Version_32 := 16#986cf26d#;
   pragma Export (C, u01802, "quaddobl_point_coordinatesS");
   u01803 : constant Version_32 := 16#a80059df#;
   pragma Export (C, u01803, "quaddobl_plane_representationsB");
   u01804 : constant Version_32 := 16#f6fe12f2#;
   pragma Export (C, u01804, "quaddobl_plane_representationsS");
   u01805 : constant Version_32 := 16#115f6e98#;
   pragma Export (C, u01805, "shuffle_polynomialsB");
   u01806 : constant Version_32 := 16#bd308195#;
   pragma Export (C, u01806, "shuffle_polynomialsS");
   u01807 : constant Version_32 := 16#ad812593#;
   pragma Export (C, u01807, "black_box_linear_solversB");
   u01808 : constant Version_32 := 16#e4a6e5fb#;
   pragma Export (C, u01808, "black_box_linear_solversS");
   u01809 : constant Version_32 := 16#db79776f#;
   pragma Export (C, u01809, "black_box_helpersB");
   u01810 : constant Version_32 := 16#ecd94842#;
   pragma Export (C, u01810, "black_box_helpersS");
   u01811 : constant Version_32 := 16#c19fa6a7#;
   pragma Export (C, u01811, "dobldobl_linear_poly_solversB");
   u01812 : constant Version_32 := 16#976a1544#;
   pragma Export (C, u01812, "dobldobl_linear_poly_solversS");
   u01813 : constant Version_32 := 16#2847c3b0#;
   pragma Export (C, u01813, "quaddobl_linear_poly_solversB");
   u01814 : constant Version_32 := 16#d8c2af77#;
   pragma Export (C, u01814, "quaddobl_linear_poly_solversS");
   u01815 : constant Version_32 := 16#451890c5#;
   pragma Export (C, u01815, "standard_linear_poly_solversB");
   u01816 : constant Version_32 := 16#b67630cf#;
   pragma Export (C, u01816, "standard_linear_poly_solversS");
   u01817 : constant Version_32 := 16#7451fdd5#;
   pragma Export (C, u01817, "black_box_single_solversB");
   u01818 : constant Version_32 := 16#2135afe3#;
   pragma Export (C, u01818, "black_box_single_solversS");
   u01819 : constant Version_32 := 16#7175b577#;
   pragma Export (C, u01819, "black_box_factorizationB");
   u01820 : constant Version_32 := 16#622ba14f#;
   pragma Export (C, u01820, "black_box_factorizationS");
   u01821 : constant Version_32 := 16#82357927#;
   pragma Export (C, u01821, "drivers_to_factor_polynomialsB");
   u01822 : constant Version_32 := 16#8663625b#;
   pragma Export (C, u01822, "drivers_to_factor_polynomialsS");
   u01823 : constant Version_32 := 16#ff3880d4#;
   pragma Export (C, u01823, "interpolate_multivariate_factorB");
   u01824 : constant Version_32 := 16#24dd26b4#;
   pragma Export (C, u01824, "interpolate_multivariate_factorS");
   u01825 : constant Version_32 := 16#1b0fe8d7#;
   pragma Export (C, u01825, "dobldobl_divided_differencesB");
   u01826 : constant Version_32 := 16#34a36d98#;
   pragma Export (C, u01826, "dobldobl_divided_differencesS");
   u01827 : constant Version_32 := 16#f4cabb8b#;
   pragma Export (C, u01827, "dobldobl_rectangular_sample_gridsB");
   u01828 : constant Version_32 := 16#8ebab26e#;
   pragma Export (C, u01828, "dobldobl_rectangular_sample_gridsS");
   u01829 : constant Version_32 := 16#c833f904#;
   pragma Export (C, u01829, "dobldobl_sample_listsB");
   u01830 : constant Version_32 := 16#bb95791d#;
   pragma Export (C, u01830, "dobldobl_sample_listsS");
   u01831 : constant Version_32 := 16#84c294ed#;
   pragma Export (C, u01831, "dobldobl_sampling_laurent_machineB");
   u01832 : constant Version_32 := 16#5fc35b40#;
   pragma Export (C, u01832, "dobldobl_sampling_laurent_machineS");
   u01833 : constant Version_32 := 16#e34c9d62#;
   pragma Export (C, u01833, "dobldobl_sampling_machineB");
   u01834 : constant Version_32 := 16#78f2fc40#;
   pragma Export (C, u01834, "dobldobl_sampling_machineS");
   u01835 : constant Version_32 := 16#ecaee2d7#;
   pragma Export (C, u01835, "dobldobl_sample_pointsB");
   u01836 : constant Version_32 := 16#38fde649#;
   pragma Export (C, u01836, "dobldobl_sample_pointsS");
   u01837 : constant Version_32 := 16#f94aacb3#;
   pragma Export (C, u01837, "dobldobl_stacked_sample_gridsB");
   u01838 : constant Version_32 := 16#ada37cd3#;
   pragma Export (C, u01838, "dobldobl_stacked_sample_gridsS");
   u01839 : constant Version_32 := 16#ceb83ceb#;
   pragma Export (C, u01839, "double_double_matrices_ioB");
   u01840 : constant Version_32 := 16#6a80702a#;
   pragma Export (C, u01840, "double_double_matrices_ioS");
   u01841 : constant Version_32 := 16#5445b26a#;
   pragma Export (C, u01841, "dobldobl_gridded_hypersurfacesB");
   u01842 : constant Version_32 := 16#42f4869b#;
   pragma Export (C, u01842, "dobldobl_gridded_hypersurfacesS");
   u01843 : constant Version_32 := 16#2dc52f7f#;
   pragma Export (C, u01843, "dobldobl_lined_hypersurfacesB");
   u01844 : constant Version_32 := 16#b61ce830#;
   pragma Export (C, u01844, "dobldobl_lined_hypersurfacesS");
   u01845 : constant Version_32 := 16#ed7c8e35#;
   pragma Export (C, u01845, "dobldobl_trace_interpolatorsB");
   u01846 : constant Version_32 := 16#dce3418f#;
   pragma Export (C, u01846, "dobldobl_trace_interpolatorsS");
   u01847 : constant Version_32 := 16#01ad67d6#;
   pragma Export (C, u01847, "dobldobl_complex_nesvecsB");
   u01848 : constant Version_32 := 16#f3757b44#;
   pragma Export (C, u01848, "dobldobl_complex_nesvecsS");
   u01849 : constant Version_32 := 16#a94ad08c#;
   pragma Export (C, u01849, "generic_nesvecsB");
   u01850 : constant Version_32 := 16#a3c85aa6#;
   pragma Export (C, u01850, "generic_nesvecsS");
   u01851 : constant Version_32 := 16#312ecbe7#;
   pragma Export (C, u01851, "dobldobl_complex_nesvecs_ioB");
   u01852 : constant Version_32 := 16#d08dace2#;
   pragma Export (C, u01852, "dobldobl_complex_nesvecs_ioS");
   u01853 : constant Version_32 := 16#a7d2d6a8#;
   pragma Export (C, u01853, "generic_nesvecs_ioB");
   u01854 : constant Version_32 := 16#ed6bf457#;
   pragma Export (C, u01854, "generic_nesvecs_ioS");
   u01855 : constant Version_32 := 16#cc18a728#;
   pragma Export (C, u01855, "dobldobl_complex_vecvecs_ioB");
   u01856 : constant Version_32 := 16#44b4bc9e#;
   pragma Export (C, u01856, "dobldobl_complex_vecvecs_ioS");
   u01857 : constant Version_32 := 16#0f448f0b#;
   pragma Export (C, u01857, "generic_vecvecs_ioB");
   u01858 : constant Version_32 := 16#b0884b00#;
   pragma Export (C, u01858, "generic_vecvecs_ioS");
   u01859 : constant Version_32 := 16#99e010cb#;
   pragma Export (C, u01859, "dobldobl_durand_kernerB");
   u01860 : constant Version_32 := 16#9d09781c#;
   pragma Export (C, u01860, "dobldobl_durand_kernerS");
   u01861 : constant Version_32 := 16#f79d7c12#;
   pragma Export (C, u01861, "dobldobl_power_tracesB");
   u01862 : constant Version_32 := 16#513420f5#;
   pragma Export (C, u01862, "dobldobl_power_tracesS");
   u01863 : constant Version_32 := 16#5f329300#;
   pragma Export (C, u01863, "dobldobl_univariate_interpolatorsB");
   u01864 : constant Version_32 := 16#393d9107#;
   pragma Export (C, u01864, "dobldobl_univariate_interpolatorsS");
   u01865 : constant Version_32 := 16#0d80cc91#;
   pragma Export (C, u01865, "dobldobl_nvariate_interpolatorsB");
   u01866 : constant Version_32 := 16#26682b6c#;
   pragma Export (C, u01866, "dobldobl_nvariate_interpolatorsS");
   u01867 : constant Version_32 := 16#1ef8cca2#;
   pragma Export (C, u01867, "hypersurface_sample_gridsB");
   u01868 : constant Version_32 := 16#d14d0018#;
   pragma Export (C, u01868, "hypersurface_sample_gridsS");
   u01869 : constant Version_32 := 16#d584578c#;
   pragma Export (C, u01869, "standard_lined_hypersurfacesB");
   u01870 : constant Version_32 := 16#93d9269c#;
   pragma Export (C, u01870, "standard_lined_hypersurfacesS");
   u01871 : constant Version_32 := 16#e700b573#;
   pragma Export (C, u01871, "sample_point_listsB");
   u01872 : constant Version_32 := 16#b1e56473#;
   pragma Export (C, u01872, "sample_point_listsS");
   u01873 : constant Version_32 := 16#b1ea2c48#;
   pragma Export (C, u01873, "sampling_laurent_machineB");
   u01874 : constant Version_32 := 16#38b1f271#;
   pragma Export (C, u01874, "sampling_laurent_machineS");
   u01875 : constant Version_32 := 16#f8a3f86a#;
   pragma Export (C, u01875, "multprec_complex_laur_functionsB");
   u01876 : constant Version_32 := 16#21938c41#;
   pragma Export (C, u01876, "multprec_complex_laur_functionsS");
   u01877 : constant Version_32 := 16#e1ce4bd9#;
   pragma Export (C, u01877, "multprec_complex_ring__ffieldS");
   u01878 : constant Version_32 := 16#2f76b61a#;
   pragma Export (C, u01878, "multprec_complex_laur_jacomatsB");
   u01879 : constant Version_32 := 16#94389bc2#;
   pragma Export (C, u01879, "multprec_complex_laur_jacomatsS");
   u01880 : constant Version_32 := 16#1577ed0c#;
   pragma Export (C, u01880, "multprec_complex_laur_sysfunB");
   u01881 : constant Version_32 := 16#29d5d555#;
   pragma Export (C, u01881, "multprec_complex_laur_sysfunS");
   u01882 : constant Version_32 := 16#00694471#;
   pragma Export (C, u01882, "multprec_root_refinersB");
   u01883 : constant Version_32 := 16#a89094ca#;
   pragma Export (C, u01883, "multprec_root_refinersS");
   u01884 : constant Version_32 := 16#7849f51e#;
   pragma Export (C, u01884, "multprec_complex_newton_stepsB");
   u01885 : constant Version_32 := 16#c8d4e933#;
   pragma Export (C, u01885, "multprec_complex_newton_stepsS");
   u01886 : constant Version_32 := 16#a6fe2f09#;
   pragma Export (C, u01886, "multprec_complex_singular_valuesB");
   u01887 : constant Version_32 := 16#0bdc02bb#;
   pragma Export (C, u01887, "multprec_complex_singular_valuesS");
   u01888 : constant Version_32 := 16#5ea44993#;
   pragma Export (C, u01888, "multprec_complex_vectors_ioB");
   u01889 : constant Version_32 := 16#34009e21#;
   pragma Export (C, u01889, "multprec_complex_vectors_ioS");
   u01890 : constant Version_32 := 16#6d93a135#;
   pragma Export (C, u01890, "multprec_complex_ring_ioS");
   u01891 : constant Version_32 := 16#94997bf1#;
   pragma Export (C, u01891, "multprec_numerical_rankB");
   u01892 : constant Version_32 := 16#0d6bc6fc#;
   pragma Export (C, u01892, "multprec_numerical_rankS");
   u01893 : constant Version_32 := 16#9151eab0#;
   pragma Export (C, u01893, "multprec_condition_tablesB");
   u01894 : constant Version_32 := 16#8be7053e#;
   pragma Export (C, u01894, "multprec_condition_tablesS");
   u01895 : constant Version_32 := 16#925a2d03#;
   pragma Export (C, u01895, "multprec_solution_diagnosticsB");
   u01896 : constant Version_32 := 16#be0df8a7#;
   pragma Export (C, u01896, "multprec_solution_diagnosticsS");
   u01897 : constant Version_32 := 16#84fd892f#;
   pragma Export (C, u01897, "sampling_machineB");
   u01898 : constant Version_32 := 16#468378f4#;
   pragma Export (C, u01898, "sampling_machineS");
   u01899 : constant Version_32 := 16#ab77580b#;
   pragma Export (C, u01899, "sample_pointsB");
   u01900 : constant Version_32 := 16#0a6206ec#;
   pragma Export (C, u01900, "sample_pointsS");
   u01901 : constant Version_32 := 16#fe91df01#;
   pragma Export (C, u01901, "standard_stacked_sample_gridsB");
   u01902 : constant Version_32 := 16#15c0bf15#;
   pragma Export (C, u01902, "standard_stacked_sample_gridsS");
   u01903 : constant Version_32 := 16#85751b08#;
   pragma Export (C, u01903, "rectangular_sample_gridsB");
   u01904 : constant Version_32 := 16#9b46a6ca#;
   pragma Export (C, u01904, "rectangular_sample_gridsS");
   u01905 : constant Version_32 := 16#d2e55017#;
   pragma Export (C, u01905, "extended_random_numbersB");
   u01906 : constant Version_32 := 16#b5229fcc#;
   pragma Export (C, u01906, "extended_random_numbersS");
   u01907 : constant Version_32 := 16#3f73095d#;
   pragma Export (C, u01907, "multprec_complex_numbers_polarB");
   u01908 : constant Version_32 := 16#8392836e#;
   pragma Export (C, u01908, "multprec_complex_numbers_polarS");
   u01909 : constant Version_32 := 16#120c027b#;
   pragma Export (C, u01909, "multprec_floating_matricesB");
   u01910 : constant Version_32 := 16#62fccec2#;
   pragma Export (C, u01910, "multprec_floating_matricesS");
   u01911 : constant Version_32 := 16#dc0e0bff#;
   pragma Export (C, u01911, "quaddobl_divided_differencesB");
   u01912 : constant Version_32 := 16#4063a46c#;
   pragma Export (C, u01912, "quaddobl_divided_differencesS");
   u01913 : constant Version_32 := 16#157acb77#;
   pragma Export (C, u01913, "quaddobl_rectangular_sample_gridsB");
   u01914 : constant Version_32 := 16#a1b1f776#;
   pragma Export (C, u01914, "quaddobl_rectangular_sample_gridsS");
   u01915 : constant Version_32 := 16#87d6194c#;
   pragma Export (C, u01915, "quaddobl_sample_listsB");
   u01916 : constant Version_32 := 16#20b08fd0#;
   pragma Export (C, u01916, "quaddobl_sample_listsS");
   u01917 : constant Version_32 := 16#4b8e63ce#;
   pragma Export (C, u01917, "quaddobl_sampling_laurent_machineB");
   u01918 : constant Version_32 := 16#fb8aacf6#;
   pragma Export (C, u01918, "quaddobl_sampling_laurent_machineS");
   u01919 : constant Version_32 := 16#f27185b9#;
   pragma Export (C, u01919, "quaddobl_sampling_machineB");
   u01920 : constant Version_32 := 16#91ed98bb#;
   pragma Export (C, u01920, "quaddobl_sampling_machineS");
   u01921 : constant Version_32 := 16#a0cd5fbd#;
   pragma Export (C, u01921, "quaddobl_sample_pointsB");
   u01922 : constant Version_32 := 16#d33b3ef2#;
   pragma Export (C, u01922, "quaddobl_sample_pointsS");
   u01923 : constant Version_32 := 16#0f7978dc#;
   pragma Export (C, u01923, "quaddobl_stacked_sample_gridsB");
   u01924 : constant Version_32 := 16#45f95bb6#;
   pragma Export (C, u01924, "quaddobl_stacked_sample_gridsS");
   u01925 : constant Version_32 := 16#af47c497#;
   pragma Export (C, u01925, "quaddobl_gridded_hypersurfacesB");
   u01926 : constant Version_32 := 16#a7f62e7d#;
   pragma Export (C, u01926, "quaddobl_gridded_hypersurfacesS");
   u01927 : constant Version_32 := 16#af378154#;
   pragma Export (C, u01927, "quaddobl_lined_hypersurfacesB");
   u01928 : constant Version_32 := 16#875cdfe7#;
   pragma Export (C, u01928, "quaddobl_lined_hypersurfacesS");
   u01929 : constant Version_32 := 16#fe14b2c1#;
   pragma Export (C, u01929, "quaddobl_trace_interpolatorsB");
   u01930 : constant Version_32 := 16#a8fadbb1#;
   pragma Export (C, u01930, "quaddobl_trace_interpolatorsS");
   u01931 : constant Version_32 := 16#84f9e8ec#;
   pragma Export (C, u01931, "quaddobl_complex_nesvecsB");
   u01932 : constant Version_32 := 16#106aeee2#;
   pragma Export (C, u01932, "quaddobl_complex_nesvecsS");
   u01933 : constant Version_32 := 16#c428be52#;
   pragma Export (C, u01933, "quaddobl_complex_nesvecs_ioB");
   u01934 : constant Version_32 := 16#68b06215#;
   pragma Export (C, u01934, "quaddobl_complex_nesvecs_ioS");
   u01935 : constant Version_32 := 16#391ed29d#;
   pragma Export (C, u01935, "quaddobl_complex_vecvecs_ioB");
   u01936 : constant Version_32 := 16#fc897269#;
   pragma Export (C, u01936, "quaddobl_complex_vecvecs_ioS");
   u01937 : constant Version_32 := 16#e270873e#;
   pragma Export (C, u01937, "quaddobl_durand_kernerB");
   u01938 : constant Version_32 := 16#b7e603e1#;
   pragma Export (C, u01938, "quaddobl_durand_kernerS");
   u01939 : constant Version_32 := 16#1015b61e#;
   pragma Export (C, u01939, "quaddobl_power_tracesB");
   u01940 : constant Version_32 := 16#2e650ff4#;
   pragma Export (C, u01940, "quaddobl_power_tracesS");
   u01941 : constant Version_32 := 16#43e3f235#;
   pragma Export (C, u01941, "quaddobl_univariate_interpolatorsB");
   u01942 : constant Version_32 := 16#f1e9af64#;
   pragma Export (C, u01942, "quaddobl_univariate_interpolatorsS");
   u01943 : constant Version_32 := 16#1ecb7a66#;
   pragma Export (C, u01943, "quaddobl_nvariate_interpolatorsB");
   u01944 : constant Version_32 := 16#42770422#;
   pragma Export (C, u01944, "quaddobl_nvariate_interpolatorsS");
   u01945 : constant Version_32 := 16#a9d4ccf5#;
   pragma Export (C, u01945, "sample_point_lists_ioB");
   u01946 : constant Version_32 := 16#1970902d#;
   pragma Export (C, u01946, "sample_point_lists_ioS");
   u01947 : constant Version_32 := 16#80660797#;
   pragma Export (C, u01947, "sample_points_ioB");
   u01948 : constant Version_32 := 16#89112d42#;
   pragma Export (C, u01948, "sample_points_ioS");
   u01949 : constant Version_32 := 16#d6ea41b6#;
   pragma Export (C, u01949, "multprec_complex_vecvecs_ioB");
   u01950 : constant Version_32 := 16#13a4e7d2#;
   pragma Export (C, u01950, "multprec_complex_vecvecs_ioS");
   u01951 : constant Version_32 := 16#92e10bc1#;
   pragma Export (C, u01951, "standard_complex_vecvecs_ioB");
   u01952 : constant Version_32 := 16#fa883cee#;
   pragma Export (C, u01952, "standard_complex_vecvecs_ioS");
   u01953 : constant Version_32 := 16#ac6fc64c#;
   pragma Export (C, u01953, "standard_divided_differencesB");
   u01954 : constant Version_32 := 16#3dc34850#;
   pragma Export (C, u01954, "standard_divided_differencesS");
   u01955 : constant Version_32 := 16#8fe14bac#;
   pragma Export (C, u01955, "standard_trace_interpolatorsB");
   u01956 : constant Version_32 := 16#ed93bd37#;
   pragma Export (C, u01956, "standard_trace_interpolatorsS");
   u01957 : constant Version_32 := 16#ece9ec99#;
   pragma Export (C, u01957, "standard_complex_nesvecsB");
   u01958 : constant Version_32 := 16#e4a998a0#;
   pragma Export (C, u01958, "standard_complex_nesvecsS");
   u01959 : constant Version_32 := 16#6fd7670e#;
   pragma Export (C, u01959, "standard_complex_nesvecs_ioB");
   u01960 : constant Version_32 := 16#6eb12c92#;
   pragma Export (C, u01960, "standard_complex_nesvecs_ioS");
   u01961 : constant Version_32 := 16#491afc49#;
   pragma Export (C, u01961, "standard_power_tracesB");
   u01962 : constant Version_32 := 16#f8b25038#;
   pragma Export (C, u01962, "standard_power_tracesS");
   u01963 : constant Version_32 := 16#0583453e#;
   pragma Export (C, u01963, "standard_univariate_interpolatorsB");
   u01964 : constant Version_32 := 16#4c9dfb01#;
   pragma Export (C, u01964, "standard_univariate_interpolatorsS");
   u01965 : constant Version_32 := 16#84702835#;
   pragma Export (C, u01965, "standard_nvariate_interpolatorsB");
   u01966 : constant Version_32 := 16#269d9a02#;
   pragma Export (C, u01966, "standard_nvariate_interpolatorsS");
   u01967 : constant Version_32 := 16#9f21481a#;
   pragma Export (C, u01967, "monodromy_partitionsB");
   u01968 : constant Version_32 := 16#985b47f2#;
   pragma Export (C, u01968, "monodromy_partitionsS");
   u01969 : constant Version_32 := 16#6361a288#;
   pragma Export (C, u01969, "multivariate_factorizationB");
   u01970 : constant Version_32 := 16#c540b212#;
   pragma Export (C, u01970, "multivariate_factorizationS");
   u01971 : constant Version_32 := 16#5078620c#;
   pragma Export (C, u01971, "certify_factor_with_traceB");
   u01972 : constant Version_32 := 16#73880d53#;
   pragma Export (C, u01972, "certify_factor_with_traceS");
   u01973 : constant Version_32 := 16#384b35ba#;
   pragma Export (C, u01973, "combinatorial_factorizationB");
   u01974 : constant Version_32 := 16#b0086ade#;
   pragma Export (C, u01974, "combinatorial_factorizationS");
   u01975 : constant Version_32 := 16#981b3ae5#;
   pragma Export (C, u01975, "factored_witness_vectorsB");
   u01976 : constant Version_32 := 16#ea3c13a9#;
   pragma Export (C, u01976, "factored_witness_vectorsS");
   u01977 : constant Version_32 := 16#088adf39#;
   pragma Export (C, u01977, "monodromy_polynomial_breakupB");
   u01978 : constant Version_32 := 16#2fc1df71#;
   pragma Export (C, u01978, "monodromy_polynomial_breakupS");
   u01979 : constant Version_32 := 16#c0d4e74b#;
   pragma Export (C, u01979, "dobldobl_complex_veclistsB");
   u01980 : constant Version_32 := 16#f8ccf629#;
   pragma Export (C, u01980, "dobldobl_complex_veclistsS");
   u01981 : constant Version_32 := 16#eb3ea298#;
   pragma Export (C, u01981, "quaddobl_complex_veclistsB");
   u01982 : constant Version_32 := 16#3039265c#;
   pragma Export (C, u01982, "quaddobl_complex_veclistsS");
   u01983 : constant Version_32 := 16#105d69ea#;
   pragma Export (C, u01983, "standard_complex_veclistsB");
   u01984 : constant Version_32 := 16#3f999b6c#;
   pragma Export (C, u01984, "standard_complex_veclistsS");
   u01985 : constant Version_32 := 16#69916259#;
   pragma Export (C, u01985, "black_box_univariate_solversB");
   u01986 : constant Version_32 := 16#0760bc21#;
   pragma Export (C, u01986, "black_box_univariate_solversS");
   u01987 : constant Version_32 := 16#f04c98a5#;
   pragma Export (C, u01987, "multprec_durand_kernerB");
   u01988 : constant Version_32 := 16#5b8c605e#;
   pragma Export (C, u01988, "multprec_durand_kernerS");
   u01989 : constant Version_32 := 16#47ab33e4#;
   pragma Export (C, u01989, "black_box_square_solversB");
   u01990 : constant Version_32 := 16#66e852fa#;
   pragma Export (C, u01990, "black_box_square_solversS");
   u01991 : constant Version_32 := 16#fcff24e8#;
   pragma Export (C, u01991, "black_box_binomial_solversB");
   u01992 : constant Version_32 := 16#c2f901e4#;
   pragma Export (C, u01992, "black_box_binomial_solversS");
   u01993 : constant Version_32 := 16#b2ae7354#;
   pragma Export (C, u01993, "standard_monomial_map_filtersB");
   u01994 : constant Version_32 := 16#82799e65#;
   pragma Export (C, u01994, "standard_monomial_map_filtersS");
   u01995 : constant Version_32 := 16#a9fb38da#;
   pragma Export (C, u01995, "standard_monomial_maps_ioB");
   u01996 : constant Version_32 := 16#3abea909#;
   pragma Export (C, u01996, "standard_monomial_maps_ioS");
   u01997 : constant Version_32 := 16#70500c04#;
   pragma Export (C, u01997, "standard_binomial_varieties_ioB");
   u01998 : constant Version_32 := 16#11ced7b9#;
   pragma Export (C, u01998, "standard_binomial_varieties_ioS");
   u01999 : constant Version_32 := 16#09741512#;
   pragma Export (C, u01999, "standard_binomial_varietiesB");
   u02000 : constant Version_32 := 16#734a68b7#;
   pragma Export (C, u02000, "standard_binomial_varietiesS");
   u02001 : constant Version_32 := 16#78fb97a3#;
   pragma Export (C, u02001, "standard_exponent_transformationsB");
   u02002 : constant Version_32 := 16#bc471432#;
   pragma Export (C, u02002, "standard_exponent_transformationsS");
   u02003 : constant Version_32 := 16#e32584b7#;
   pragma Export (C, u02003, "evaluated_minorsB");
   u02004 : constant Version_32 := 16#c5abe649#;
   pragma Export (C, u02004, "evaluated_minorsS");
   u02005 : constant Version_32 := 16#8df1b795#;
   pragma Export (C, u02005, "double_double_linear_solversB");
   u02006 : constant Version_32 := 16#eaf75a13#;
   pragma Export (C, u02006, "double_double_linear_solversS");
   u02007 : constant Version_32 := 16#48af9d5f#;
   pragma Export (C, u02007, "double_double_ring__ffieldS");
   u02008 : constant Version_32 := 16#a78b8dcc#;
   pragma Export (C, u02008, "quad_double_linear_solversB");
   u02009 : constant Version_32 := 16#99528699#;
   pragma Export (C, u02009, "quad_double_linear_solversS");
   u02010 : constant Version_32 := 16#5d62a841#;
   pragma Export (C, u02010, "bracketsB");
   u02011 : constant Version_32 := 16#b9483a3c#;
   pragma Export (C, u02011, "bracketsS");
   u02012 : constant Version_32 := 16#e92daffc#;
   pragma Export (C, u02012, "standard_integer_kernelB");
   u02013 : constant Version_32 := 16#de669b23#;
   pragma Export (C, u02013, "standard_integer_kernelS");
   u02014 : constant Version_32 := 16#f6044e0b#;
   pragma Export (C, u02014, "standard_integer_matrix_inverseB");
   u02015 : constant Version_32 := 16#c1da1dc1#;
   pragma Export (C, u02015, "standard_integer_matrix_inverseS");
   u02016 : constant Version_32 := 16#9b20d2b9#;
   pragma Export (C, u02016, "standard_smith_normal_formB");
   u02017 : constant Version_32 := 16#e23b9e8e#;
   pragma Export (C, u02017, "standard_smith_normal_formS");
   u02018 : constant Version_32 := 16#5bdd5c46#;
   pragma Export (C, u02018, "standard_integer64_kernelB");
   u02019 : constant Version_32 := 16#53529d4c#;
   pragma Export (C, u02019, "standard_integer64_kernelS");
   u02020 : constant Version_32 := 16#7ece720a#;
   pragma Export (C, u02020, "standard_monomial_mapsB");
   u02021 : constant Version_32 := 16#f8b18850#;
   pragma Export (C, u02021, "standard_monomial_mapsS");
   u02022 : constant Version_32 := 16#3bc67e6b#;
   pragma Export (C, u02022, "standard_permanent_factorsB");
   u02023 : constant Version_32 := 16#a8f9b20a#;
   pragma Export (C, u02023, "standard_permanent_factorsS");
   u02024 : constant Version_32 := 16#3ad332d4#;
   pragma Export (C, u02024, "affine_binomial_iteratorB");
   u02025 : constant Version_32 := 16#68d5941a#;
   pragma Export (C, u02025, "affine_binomial_iteratorS");
   u02026 : constant Version_32 := 16#5465e4ef#;
   pragma Export (C, u02026, "standard_affine_binomialsB");
   u02027 : constant Version_32 := 16#9cc1d0b3#;
   pragma Export (C, u02027, "standard_affine_binomialsS");
   u02028 : constant Version_32 := 16#c99540de#;
   pragma Export (C, u02028, "standard_monomial_map_solversB");
   u02029 : constant Version_32 := 16#9497a701#;
   pragma Export (C, u02029, "standard_monomial_map_solversS");
   u02030 : constant Version_32 := 16#2c08ea55#;
   pragma Export (C, u02030, "dobldobl_monomial_mapsB");
   u02031 : constant Version_32 := 16#6251600e#;
   pragma Export (C, u02031, "dobldobl_monomial_mapsS");
   u02032 : constant Version_32 := 16#54e20dd8#;
   pragma Export (C, u02032, "quaddobl_monomial_mapsB");
   u02033 : constant Version_32 := 16#7197dc4f#;
   pragma Export (C, u02033, "quaddobl_monomial_mapsS");
   u02034 : constant Version_32 := 16#5b535c8d#;
   pragma Export (C, u02034, "black_box_simplex_solversB");
   u02035 : constant Version_32 := 16#bc675cc5#;
   pragma Export (C, u02035, "black_box_simplex_solversS");
   u02036 : constant Version_32 := 16#dd8a13cb#;
   pragma Export (C, u02036, "greeting_bannersB");
   u02037 : constant Version_32 := 16#0470dd63#;
   pragma Export (C, u02037, "greeting_bannersS");
   u02038 : constant Version_32 := 16#8508e5d1#;
   pragma Export (C, u02038, "quaddobl_blackbox_continuationsB");
   u02039 : constant Version_32 := 16#24e86142#;
   pragma Export (C, u02039, "quaddobl_blackbox_continuationsS");
   u02040 : constant Version_32 := 16#0892efaf#;
   pragma Export (C, u02040, "quaddobl_blackbox_refinersB");
   u02041 : constant Version_32 := 16#b98c2bda#;
   pragma Export (C, u02041, "quaddobl_blackbox_refinersS");
   u02042 : constant Version_32 := 16#e76032a7#;
   pragma Export (C, u02042, "quaddobl_solution_manipulatorsB");
   u02043 : constant Version_32 := 16#ad670b67#;
   pragma Export (C, u02043, "quaddobl_solution_manipulatorsS");
   u02044 : constant Version_32 := 16#3318fd17#;
   pragma Export (C, u02044, "quaddobl_solution_splittersB");
   u02045 : constant Version_32 := 16#92131dd0#;
   pragma Export (C, u02045, "quaddobl_solution_splittersS");
   u02046 : constant Version_32 := 16#f3efaa18#;
   pragma Export (C, u02046, "quaddobl_coefficient_homotopyB");
   u02047 : constant Version_32 := 16#49493bdd#;
   pragma Export (C, u02047, "quaddobl_coefficient_homotopyS");
   u02048 : constant Version_32 := 16#9e4a9c31#;
   pragma Export (C, u02048, "quaddobl_scalingB");
   u02049 : constant Version_32 := 16#3e33f946#;
   pragma Export (C, u02049, "quaddobl_scalingS");
   u02050 : constant Version_32 := 16#5d01db33#;
   pragma Export (C, u02050, "standard_blackbox_continuationsB");
   u02051 : constant Version_32 := 16#4bdb98e1#;
   pragma Export (C, u02051, "standard_blackbox_continuationsS");
   u02052 : constant Version_32 := 16#cc96e0a8#;
   pragma Export (C, u02052, "standard_blackbox_refinersB");
   u02053 : constant Version_32 := 16#dee3a3b4#;
   pragma Export (C, u02053, "standard_blackbox_refinersS");
   u02054 : constant Version_32 := 16#62810801#;
   pragma Export (C, u02054, "standard_solution_manipulatorsB");
   u02055 : constant Version_32 := 16#541547c5#;
   pragma Export (C, u02055, "standard_solution_manipulatorsS");
   u02056 : constant Version_32 := 16#1d11cdd5#;
   pragma Export (C, u02056, "standard_scalingB");
   u02057 : constant Version_32 := 16#fe5f691f#;
   pragma Export (C, u02057, "standard_scalingS");
   u02058 : constant Version_32 := 16#04d31830#;
   pragma Export (C, u02058, "write_number_of_tasksB");
   u02059 : constant Version_32 := 16#0f753aac#;
   pragma Export (C, u02059, "write_number_of_tasksS");
   u02060 : constant Version_32 := 16#063e3111#;
   pragma Export (C, u02060, "write_seed_numberB");
   u02061 : constant Version_32 := 16#75aef93f#;
   pragma Export (C, u02061, "write_seed_numberS");
   u02062 : constant Version_32 := 16#0b981474#;
   pragma Export (C, u02062, "dobldobl_system_readersB");
   u02063 : constant Version_32 := 16#f8b00e39#;
   pragma Export (C, u02063, "dobldobl_system_readersS");
   u02064 : constant Version_32 := 16#2798f2c2#;
   pragma Export (C, u02064, "main_component_solversB");
   u02065 : constant Version_32 := 16#10b8f53b#;
   pragma Export (C, u02065, "main_component_solversS");
   u02066 : constant Version_32 := 16#bb12a20a#;
   pragma Export (C, u02066, "embeddings_and_cascadesB");
   u02067 : constant Version_32 := 16#0a6c2f00#;
   pragma Export (C, u02067, "embeddings_and_cascadesS");
   u02068 : constant Version_32 := 16#67712bfb#;
   pragma Export (C, u02068, "black_box_solversB");
   u02069 : constant Version_32 := 16#db42683d#;
   pragma Export (C, u02069, "black_box_solversS");
   u02070 : constant Version_32 := 16#cf56f04e#;
   pragma Export (C, u02070, "black_box_solver_casesB");
   u02071 : constant Version_32 := 16#d5d99e4d#;
   pragma Export (C, u02071, "black_box_solver_casesS");
   u02072 : constant Version_32 := 16#9668de75#;
   pragma Export (C, u02072, "running_cascadesB");
   u02073 : constant Version_32 := 16#0c56b241#;
   pragma Export (C, u02073, "running_cascadesS");
   u02074 : constant Version_32 := 16#c7c1fb69#;
   pragma Export (C, u02074, "cascade_homotopiesB");
   u02075 : constant Version_32 := 16#79947b16#;
   pragma Export (C, u02075, "cascade_homotopiesS");
   u02076 : constant Version_32 := 16#e57d7878#;
   pragma Export (C, u02076, "cascade_homotopies_ioB");
   u02077 : constant Version_32 := 16#eba0ac9b#;
   pragma Export (C, u02077, "cascade_homotopies_ioS");
   u02078 : constant Version_32 := 16#0c8e1826#;
   pragma Export (C, u02078, "cascade_homotopy_stepsB");
   u02079 : constant Version_32 := 16#f346acc9#;
   pragma Export (C, u02079, "cascade_homotopy_stepsS");
   u02080 : constant Version_32 := 16#c8212a1a#;
   pragma Export (C, u02080, "path_counts_tableB");
   u02081 : constant Version_32 := 16#b8ae808d#;
   pragma Export (C, u02081, "path_counts_tableS");
   u02082 : constant Version_32 := 16#48a82767#;
   pragma Export (C, u02082, "cascade_homotopy_filtersB");
   u02083 : constant Version_32 := 16#41d00df6#;
   pragma Export (C, u02083, "cascade_homotopy_filtersS");
   u02084 : constant Version_32 := 16#ea30800d#;
   pragma Export (C, u02084, "cascade_membership_filtersB");
   u02085 : constant Version_32 := 16#0bc3705a#;
   pragma Export (C, u02085, "cascade_membership_filtersS");
   u02086 : constant Version_32 := 16#8f5e90a4#;
   pragma Export (C, u02086, "homotopy_membership_filtersB");
   u02087 : constant Version_32 := 16#2ecfeb92#;
   pragma Export (C, u02087, "homotopy_membership_filtersS");
   u02088 : constant Version_32 := 16#7715f909#;
   pragma Export (C, u02088, "homotopy_membership_testsB");
   u02089 : constant Version_32 := 16#0c7fb23b#;
   pragma Export (C, u02089, "homotopy_membership_testsS");
   u02090 : constant Version_32 := 16#e5c42402#;
   pragma Export (C, u02090, "homotopy_membership_targetB");
   u02091 : constant Version_32 := 16#1d3480f9#;
   pragma Export (C, u02091, "homotopy_membership_targetS");
   u02092 : constant Version_32 := 16#e51993d5#;
   pragma Export (C, u02092, "multitasking_membership_testsB");
   u02093 : constant Version_32 := 16#ce286714#;
   pragma Export (C, u02093, "multitasking_membership_testsS");
   u02094 : constant Version_32 := 16#30f428f8#;
   pragma Export (C, u02094, "monodromy_homotopiesB");
   u02095 : constant Version_32 := 16#46ea648b#;
   pragma Export (C, u02095, "monodromy_homotopiesS");
   u02096 : constant Version_32 := 16#80f1a221#;
   pragma Export (C, u02096, "monodromy_component_breakupB");
   u02097 : constant Version_32 := 16#382821bd#;
   pragma Export (C, u02097, "monodromy_component_breakupS");
   u02098 : constant Version_32 := 16#4b155b48#;
   pragma Export (C, u02098, "dobldobl_sample_gridsB");
   u02099 : constant Version_32 := 16#1d04b4f3#;
   pragma Export (C, u02099, "dobldobl_sample_gridsS");
   u02100 : constant Version_32 := 16#88abad2b#;
   pragma Export (C, u02100, "make_sample_gridsB");
   u02101 : constant Version_32 := 16#b08da1ad#;
   pragma Export (C, u02101, "make_sample_gridsS");
   u02102 : constant Version_32 := 16#fb618dd1#;
   pragma Export (C, u02102, "multprec_stacked_sample_gridsB");
   u02103 : constant Version_32 := 16#78aa628d#;
   pragma Export (C, u02103, "multprec_stacked_sample_gridsS");
   u02104 : constant Version_32 := 16#461a74e3#;
   pragma Export (C, u02104, "multprec_floating_matrices_ioB");
   u02105 : constant Version_32 := 16#b16c3a89#;
   pragma Export (C, u02105, "multprec_floating_matrices_ioS");
   u02106 : constant Version_32 := 16#9d90b96c#;
   pragma Export (C, u02106, "quaddobl_sample_gridsB");
   u02107 : constant Version_32 := 16#b0c7945f#;
   pragma Export (C, u02107, "quaddobl_sample_gridsS");
   u02108 : constant Version_32 := 16#ad7abdc3#;
   pragma Export (C, u02108, "sample_point_gridsB");
   u02109 : constant Version_32 := 16#83b10875#;
   pragma Export (C, u02109, "sample_point_gridsS");
   u02110 : constant Version_32 := 16#dc6eae38#;
   pragma Export (C, u02110, "monodromy_homotopies_ioB");
   u02111 : constant Version_32 := 16#2fa14169#;
   pragma Export (C, u02111, "monodromy_homotopies_ioS");
   u02112 : constant Version_32 := 16#84ee8576#;
   pragma Export (C, u02112, "square_and_embed_systemsB");
   u02113 : constant Version_32 := 16#4084a454#;
   pragma Export (C, u02113, "square_and_embed_systemsS");
   u02114 : constant Version_32 := 16#057e1672#;
   pragma Export (C, u02114, "greetings_and_conclusionsB");
   u02115 : constant Version_32 := 16#7223d659#;
   pragma Export (C, u02115, "greetings_and_conclusionsS");
   u02116 : constant Version_32 := 16#759e6c53#;
   pragma Export (C, u02116, "quaddobl_system_readersB");
   u02117 : constant Version_32 := 16#4d7c0482#;
   pragma Export (C, u02117, "quaddobl_system_readersS");
   u02118 : constant Version_32 := 16#7149bfd6#;
   pragma Export (C, u02118, "standard_system_readersB");
   u02119 : constant Version_32 := 16#542cfabc#;
   pragma Export (C, u02119, "standard_system_readersS");
   u02120 : constant Version_32 := 16#03f2a40d#;
   pragma Export (C, u02120, "main_decompositionB");
   u02121 : constant Version_32 := 16#66088a18#;
   pragma Export (C, u02121, "main_decompositionS");
   u02122 : constant Version_32 := 16#f9b1dc2a#;
   pragma Export (C, u02122, "add_and_remove_embeddingB");
   u02123 : constant Version_32 := 16#5c5b2211#;
   pragma Export (C, u02123, "add_and_remove_embeddingS");
   u02124 : constant Version_32 := 16#6bebef08#;
   pragma Export (C, u02124, "driver_to_rank_supportsB");
   u02125 : constant Version_32 := 16#ca040023#;
   pragma Export (C, u02125, "driver_to_rank_supportsS");
   u02126 : constant Version_32 := 16#473e5b57#;
   pragma Export (C, u02126, "span_of_supportsB");
   u02127 : constant Version_32 := 16#e82a5ae2#;
   pragma Export (C, u02127, "span_of_supportsS");
   u02128 : constant Version_32 := 16#5b0330b7#;
   pragma Export (C, u02128, "transformation_of_supportsB");
   u02129 : constant Version_32 := 16#387778c8#;
   pragma Export (C, u02129, "transformation_of_supportsS");
   u02130 : constant Version_32 := 16#49093a17#;
   pragma Export (C, u02130, "drivers_to_cascade_filteringB");
   u02131 : constant Version_32 := 16#32beeca0#;
   pragma Export (C, u02131, "drivers_to_cascade_filteringS");
   u02132 : constant Version_32 := 16#73f57d19#;
   pragma Export (C, u02132, "drivers_to_intersect_varietiesB");
   u02133 : constant Version_32 := 16#28c60d17#;
   pragma Export (C, u02133, "drivers_to_intersect_varietiesS");
   u02134 : constant Version_32 := 16#5cb52658#;
   pragma Export (C, u02134, "drivers_to_witness_generateB");
   u02135 : constant Version_32 := 16#7128987e#;
   pragma Export (C, u02135, "drivers_to_witness_generateS");
   u02136 : constant Version_32 := 16#63cf7089#;
   pragma Export (C, u02136, "drivers_to_breakup_componentsB");
   u02137 : constant Version_32 := 16#f7aca53a#;
   pragma Export (C, u02137, "drivers_to_breakup_componentsS");
   u02138 : constant Version_32 := 16#5f4d0017#;
   pragma Export (C, u02138, "monodromy_group_actionsB");
   u02139 : constant Version_32 := 16#119fb741#;
   pragma Export (C, u02139, "monodromy_group_actionsS");
   u02140 : constant Version_32 := 16#c8c51254#;
   pragma Export (C, u02140, "monodromy_group_actions_ioB");
   u02141 : constant Version_32 := 16#35d3b701#;
   pragma Export (C, u02141, "monodromy_group_actions_ioS");
   u02142 : constant Version_32 := 16#77ded293#;
   pragma Export (C, u02142, "multprec_breakup_componentsB");
   u02143 : constant Version_32 := 16#890dccb1#;
   pragma Export (C, u02143, "multprec_breakup_componentsS");
   u02144 : constant Version_32 := 16#01a7d958#;
   pragma Export (C, u02144, "multprec_central_projectionsB");
   u02145 : constant Version_32 := 16#e6d35972#;
   pragma Export (C, u02145, "multprec_central_projectionsS");
   u02146 : constant Version_32 := 16#514b7844#;
   pragma Export (C, u02146, "multprec_linear_projectionsB");
   u02147 : constant Version_32 := 16#68646f63#;
   pragma Export (C, u02147, "multprec_linear_projectionsS");
   u02148 : constant Version_32 := 16#21de20d4#;
   pragma Export (C, u02148, "multprec_membership_testsB");
   u02149 : constant Version_32 := 16#5bfd0100#;
   pragma Export (C, u02149, "multprec_membership_testsS");
   u02150 : constant Version_32 := 16#9f8227cc#;
   pragma Export (C, u02150, "multprec_polynomial_interpolatorsB");
   u02151 : constant Version_32 := 16#ac3b84bc#;
   pragma Export (C, u02151, "multprec_polynomial_interpolatorsS");
   u02152 : constant Version_32 := 16#f5166964#;
   pragma Export (C, u02152, "multprec_complex_qr_least_squaresB");
   u02153 : constant Version_32 := 16#30aafab3#;
   pragma Export (C, u02153, "multprec_complex_qr_least_squaresS");
   u02154 : constant Version_32 := 16#2ab084ba#;
   pragma Export (C, u02154, "multprec_subspace_restrictionsB");
   u02155 : constant Version_32 := 16#5d6ceee6#;
   pragma Export (C, u02155, "multprec_subspace_restrictionsS");
   u02156 : constant Version_32 := 16#85784c1f#;
   pragma Export (C, u02156, "multprec_complex_matrices_ioB");
   u02157 : constant Version_32 := 16#662e0104#;
   pragma Export (C, u02157, "multprec_complex_matrices_ioS");
   u02158 : constant Version_32 := 16#4019fb99#;
   pragma Export (C, u02158, "multprec_linear_spacesB");
   u02159 : constant Version_32 := 16#f2cc7e41#;
   pragma Export (C, u02159, "multprec_linear_spacesS");
   u02160 : constant Version_32 := 16#c6f296fe#;
   pragma Export (C, u02160, "multprec_to_standard_convertorsB");
   u02161 : constant Version_32 := 16#e4643f04#;
   pragma Export (C, u02161, "multprec_to_standard_convertorsS");
   u02162 : constant Version_32 := 16#00ba907e#;
   pragma Export (C, u02162, "standard_breakup_componentsB");
   u02163 : constant Version_32 := 16#ac324a30#;
   pragma Export (C, u02163, "standard_breakup_componentsS");
   u02164 : constant Version_32 := 16#21fbd70f#;
   pragma Export (C, u02164, "standard_central_projectionsB");
   u02165 : constant Version_32 := 16#24697508#;
   pragma Export (C, u02165, "standard_central_projectionsS");
   u02166 : constant Version_32 := 16#87e5f45f#;
   pragma Export (C, u02166, "standard_linear_projectionsB");
   u02167 : constant Version_32 := 16#6ae25e05#;
   pragma Export (C, u02167, "standard_linear_projectionsS");
   u02168 : constant Version_32 := 16#b4f6670c#;
   pragma Export (C, u02168, "standard_membership_testsB");
   u02169 : constant Version_32 := 16#e0aa2672#;
   pragma Export (C, u02169, "standard_membership_testsS");
   u02170 : constant Version_32 := 16#a6f2f6c9#;
   pragma Export (C, u02170, "standard_polynomial_interpolatorsB");
   u02171 : constant Version_32 := 16#2ade9f2c#;
   pragma Export (C, u02171, "standard_polynomial_interpolatorsS");
   u02172 : constant Version_32 := 16#8fd43015#;
   pragma Export (C, u02172, "standard_subspace_restrictionsB");
   u02173 : constant Version_32 := 16#7ece2509#;
   pragma Export (C, u02173, "standard_subspace_restrictionsS");
   u02174 : constant Version_32 := 16#ba676bfc#;
   pragma Export (C, u02174, "standard_linear_spacesB");
   u02175 : constant Version_32 := 16#ff6349fc#;
   pragma Export (C, u02175, "standard_linear_spacesS");
   u02176 : constant Version_32 := 16#f064d1b6#;
   pragma Export (C, u02176, "homotopy_cascade_filterB");
   u02177 : constant Version_32 := 16#e5dbce56#;
   pragma Export (C, u02177, "homotopy_cascade_filterS");
   u02178 : constant Version_32 := 16#3a7dc150#;
   pragma Export (C, u02178, "filtered_pointsB");
   u02179 : constant Version_32 := 16#9a11016a#;
   pragma Export (C, u02179, "filtered_pointsS");
   u02180 : constant Version_32 := 16#306c038c#;
   pragma Export (C, u02180, "multprec_irreducible_decompB");
   u02181 : constant Version_32 := 16#9d295b47#;
   pragma Export (C, u02181, "multprec_irreducible_decompS");
   u02182 : constant Version_32 := 16#21a65a0c#;
   pragma Export (C, u02182, "standard_irreducible_decompB");
   u02183 : constant Version_32 := 16#a77bab67#;
   pragma Export (C, u02183, "standard_irreducible_decompS");
   u02184 : constant Version_32 := 16#725be7ac#;
   pragma Export (C, u02184, "multprec_irreducible_decomp_ioB");
   u02185 : constant Version_32 := 16#9491ed49#;
   pragma Export (C, u02185, "multprec_irreducible_decomp_ioS");
   u02186 : constant Version_32 := 16#a8327a02#;
   pragma Export (C, u02186, "standard_irreducible_decomp_ioB");
   u02187 : constant Version_32 := 16#8c526435#;
   pragma Export (C, u02187, "standard_irreducible_decomp_ioS");
   u02188 : constant Version_32 := 16#80d7ed5d#;
   pragma Export (C, u02188, "extrinsic_diagonal_solversB");
   u02189 : constant Version_32 := 16#fcd6c243#;
   pragma Export (C, u02189, "extrinsic_diagonal_solversS");
   u02190 : constant Version_32 := 16#8e20f1bd#;
   pragma Export (C, u02190, "main_dictionary_solutionsB");
   u02191 : constant Version_32 := 16#800e12d4#;
   pragma Export (C, u02191, "main_dictionary_solutionsS");
   u02192 : constant Version_32 := 16#9be4716c#;
   pragma Export (C, u02192, "standard_dictionary_solutions_ioB");
   u02193 : constant Version_32 := 16#abf56a3d#;
   pragma Export (C, u02193, "standard_dictionary_solutions_ioS");
   u02194 : constant Version_32 := 16#833b6042#;
   pragma Export (C, u02194, "lists_of_symbolsB");
   u02195 : constant Version_32 := 16#92e121c3#;
   pragma Export (C, u02195, "lists_of_symbolsS");
   u02196 : constant Version_32 := 16#b8a582a5#;
   pragma Export (C, u02196, "main_factorizationB");
   u02197 : constant Version_32 := 16#e23b625a#;
   pragma Export (C, u02197, "main_factorizationS");
   u02198 : constant Version_32 := 16#38a8c2ba#;
   pragma Export (C, u02198, "driver_for_common_factorB");
   u02199 : constant Version_32 := 16#334b0d71#;
   pragma Export (C, u02199, "driver_for_common_factorS");
   u02200 : constant Version_32 := 16#f26a3c8f#;
   pragma Export (C, u02200, "standard_binomial_factorsB");
   u02201 : constant Version_32 := 16#5fed84a8#;
   pragma Export (C, u02201, "standard_binomial_factorsS");
   u02202 : constant Version_32 := 16#4c3d67d4#;
   pragma Export (C, u02202, "standard_initial_formsB");
   u02203 : constant Version_32 := 16#4461ec28#;
   pragma Export (C, u02203, "standard_initial_formsS");
   u02204 : constant Version_32 := 16#7db55b27#;
   pragma Export (C, u02204, "standard_lattice_polygonsB");
   u02205 : constant Version_32 := 16#119cfdba#;
   pragma Export (C, u02205, "standard_lattice_polygonsS");
   u02206 : constant Version_32 := 16#aef71505#;
   pragma Export (C, u02206, "standard_integer64_vectors_ioB");
   u02207 : constant Version_32 := 16#1dc169e5#;
   pragma Export (C, u02207, "standard_integer64_vectors_ioS");
   u02208 : constant Version_32 := 16#524ef91e#;
   pragma Export (C, u02208, "standard_power_transformationsB");
   u02209 : constant Version_32 := 16#6bd9d896#;
   pragma Export (C, u02209, "standard_power_transformationsS");
   u02210 : constant Version_32 := 16#9c936287#;
   pragma Export (C, u02210, "standard_binomial_factors_ioB");
   u02211 : constant Version_32 := 16#cb700a1d#;
   pragma Export (C, u02211, "standard_binomial_factors_ioS");
   u02212 : constant Version_32 := 16#aa8e65da#;
   pragma Export (C, u02212, "standard_puiseux_certificatesB");
   u02213 : constant Version_32 := 16#b46615dd#;
   pragma Export (C, u02213, "standard_puiseux_certificatesS");
   u02214 : constant Version_32 := 16#95e880f9#;
   pragma Export (C, u02214, "standard_puiseux_certificates_ioB");
   u02215 : constant Version_32 := 16#51b2cb9b#;
   pragma Export (C, u02215, "standard_puiseux_certificates_ioS");
   u02216 : constant Version_32 := 16#ee81277a#;
   pragma Export (C, u02216, "drivers_to_breakup_solutionsB");
   u02217 : constant Version_32 := 16#5b01fd88#;
   pragma Export (C, u02217, "drivers_to_breakup_solutionsS");
   u02218 : constant Version_32 := 16#65e54fd4#;
   pragma Export (C, u02218, "drivers_to_factor_componentsB");
   u02219 : constant Version_32 := 16#d59b3a99#;
   pragma Export (C, u02219, "drivers_to_factor_componentsS");
   u02220 : constant Version_32 := 16#b0f4b4a4#;
   pragma Export (C, u02220, "drivers_to_component_creatorsB");
   u02221 : constant Version_32 := 16#dbf2d6e2#;
   pragma Export (C, u02221, "drivers_to_component_creatorsS");
   u02222 : constant Version_32 := 16#2aa8edc1#;
   pragma Export (C, u02222, "interpolation_filtersB");
   u02223 : constant Version_32 := 16#471915a0#;
   pragma Export (C, u02223, "interpolation_filtersS");
   u02224 : constant Version_32 := 16#58248ec3#;
   pragma Export (C, u02224, "interpolation_pointsB");
   u02225 : constant Version_32 := 16#e4368e5d#;
   pragma Export (C, u02225, "interpolation_pointsS");
   u02226 : constant Version_32 := 16#bb6c292a#;
   pragma Export (C, u02226, "interpolation_point_listsB");
   u02227 : constant Version_32 := 16#61450813#;
   pragma Export (C, u02227, "interpolation_point_listsS");
   u02228 : constant Version_32 := 16#a0a0014f#;
   pragma Export (C, u02228, "projection_operatorsB");
   u02229 : constant Version_32 := 16#aafef1b4#;
   pragma Export (C, u02229, "projection_operatorsS");
   u02230 : constant Version_32 := 16#eb3a9069#;
   pragma Export (C, u02230, "irreducible_componentsB");
   u02231 : constant Version_32 := 16#4a6bc41a#;
   pragma Export (C, u02231, "irreducible_componentsS");
   u02232 : constant Version_32 := 16#3340ce51#;
   pragma Export (C, u02232, "span_of_componentB");
   u02233 : constant Version_32 := 16#199ee406#;
   pragma Export (C, u02233, "span_of_componentS");
   u02234 : constant Version_32 := 16#f5b42b8d#;
   pragma Export (C, u02234, "irreducible_component_listsB");
   u02235 : constant Version_32 := 16#66c91b41#;
   pragma Export (C, u02235, "irreducible_component_listsS");
   u02236 : constant Version_32 := 16#869e5ff9#;
   pragma Export (C, u02236, "irreducible_component_creatorsB");
   u02237 : constant Version_32 := 16#ee6e1195#;
   pragma Export (C, u02237, "irreducible_component_creatorsS");
   u02238 : constant Version_32 := 16#1c4e541b#;
   pragma Export (C, u02238, "span_of_component_creatorsB");
   u02239 : constant Version_32 := 16#26084eb5#;
   pragma Export (C, u02239, "span_of_component_creatorsS");
   u02240 : constant Version_32 := 16#97fd3d05#;
   pragma Export (C, u02240, "span_of_component_ioB");
   u02241 : constant Version_32 := 16#df828002#;
   pragma Export (C, u02241, "span_of_component_ioS");
   u02242 : constant Version_32 := 16#137a7329#;
   pragma Export (C, u02242, "multprec_divided_differencesB");
   u02243 : constant Version_32 := 16#9a74f6a4#;
   pragma Export (C, u02243, "multprec_divided_differencesS");
   u02244 : constant Version_32 := 16#7ec9e175#;
   pragma Export (C, u02244, "multprec_trace_interpolatorsB");
   u02245 : constant Version_32 := 16#857cb504#;
   pragma Export (C, u02245, "multprec_trace_interpolatorsS");
   u02246 : constant Version_32 := 16#7e5bd6ad#;
   pragma Export (C, u02246, "hybrid_durand_kernerB");
   u02247 : constant Version_32 := 16#3f1ebfcf#;
   pragma Export (C, u02247, "hybrid_durand_kernerS");
   u02248 : constant Version_32 := 16#a521cc4a#;
   pragma Export (C, u02248, "multprec_complex_nesvecsB");
   u02249 : constant Version_32 := 16#1afda377#;
   pragma Export (C, u02249, "multprec_complex_nesvecsS");
   u02250 : constant Version_32 := 16#2bdc2d79#;
   pragma Export (C, u02250, "multprec_complex_nesvecs_ioB");
   u02251 : constant Version_32 := 16#879df7ae#;
   pragma Export (C, u02251, "multprec_complex_nesvecs_ioS");
   u02252 : constant Version_32 := 16#a099b34f#;
   pragma Export (C, u02252, "multprec_nvariate_interpolatorsB");
   u02253 : constant Version_32 := 16#e32f00eb#;
   pragma Export (C, u02253, "multprec_nvariate_interpolatorsS");
   u02254 : constant Version_32 := 16#6fa1b17e#;
   pragma Export (C, u02254, "multprec_power_tracesB");
   u02255 : constant Version_32 := 16#0cdc1373#;
   pragma Export (C, u02255, "multprec_power_tracesS");
   u02256 : constant Version_32 := 16#7748df46#;
   pragma Export (C, u02256, "multprec_univariate_interpolatorsB");
   u02257 : constant Version_32 := 16#7fa89f77#;
   pragma Export (C, u02257, "multprec_univariate_interpolatorsS");
   u02258 : constant Version_32 := 16#0e4b1158#;
   pragma Export (C, u02258, "monodromy_actions_breakupB");
   u02259 : constant Version_32 := 16#6d3cbf1f#;
   pragma Export (C, u02259, "monodromy_actions_breakupS");
   u02260 : constant Version_32 := 16#426d635f#;
   pragma Export (C, u02260, "irreducible_component_lists_ioB");
   u02261 : constant Version_32 := 16#03cd3e47#;
   pragma Export (C, u02261, "irreducible_component_lists_ioS");
   u02262 : constant Version_32 := 16#51ae6728#;
   pragma Export (C, u02262, "irreducible_components_ioB");
   u02263 : constant Version_32 := 16#3271ab06#;
   pragma Export (C, u02263, "irreducible_components_ioS");
   u02264 : constant Version_32 := 16#d956db28#;
   pragma Export (C, u02264, "interpolation_filters_ioB");
   u02265 : constant Version_32 := 16#1ac53b25#;
   pragma Export (C, u02265, "interpolation_filters_ioS");
   u02266 : constant Version_32 := 16#c60aa851#;
   pragma Export (C, u02266, "main_solution_filtersB");
   u02267 : constant Version_32 := 16#972762df#;
   pragma Export (C, u02267, "main_solution_filtersS");
   u02268 : constant Version_32 := 16#932314ae#;
   pragma Export (C, u02268, "main_homotopy_continuationB");
   u02269 : constant Version_32 := 16#f59eb674#;
   pragma Export (C, u02269, "main_homotopy_continuationS");
   u02270 : constant Version_32 := 16#5f4e81e2#;
   pragma Export (C, u02270, "dobldobl_complex_to_real_polyB");
   u02271 : constant Version_32 := 16#e3d319df#;
   pragma Export (C, u02271, "dobldobl_complex_to_real_polyS");
   u02272 : constant Version_32 := 16#3fd73a62#;
   pragma Export (C, u02272, "dobldobl_parameter_systemsB");
   u02273 : constant Version_32 := 16#509f024c#;
   pragma Export (C, u02273, "dobldobl_parameter_systemsS");
   u02274 : constant Version_32 := 16#a25ef8a5#;
   pragma Export (C, u02274, "standard_parameter_systemsB");
   u02275 : constant Version_32 := 16#812d3adf#;
   pragma Export (C, u02275, "standard_parameter_systemsS");
   u02276 : constant Version_32 := 16#86b27fa0#;
   pragma Export (C, u02276, "parameter_homotopy_continuationB");
   u02277 : constant Version_32 := 16#322f4969#;
   pragma Export (C, u02277, "parameter_homotopy_continuationS");
   u02278 : constant Version_32 := 16#b226593e#;
   pragma Export (C, u02278, "complex_convex_continuationB");
   u02279 : constant Version_32 := 16#bf617644#;
   pragma Export (C, u02279, "complex_convex_continuationS");
   u02280 : constant Version_32 := 16#d59dac0e#;
   pragma Export (C, u02280, "dobldobl_parameter_solutionsB");
   u02281 : constant Version_32 := 16#cadf9dfe#;
   pragma Export (C, u02281, "dobldobl_parameter_solutionsS");
   u02282 : constant Version_32 := 16#a9eed124#;
   pragma Export (C, u02282, "dobldobl_quad_parametersB");
   u02283 : constant Version_32 := 16#d101551b#;
   pragma Export (C, u02283, "dobldobl_quad_parametersS");
   u02284 : constant Version_32 := 16#0a04f76a#;
   pragma Export (C, u02284, "dobldobl_quad_sweepersB");
   u02285 : constant Version_32 := 16#eebbc44c#;
   pragma Export (C, u02285, "dobldobl_quad_sweepersS");
   u02286 : constant Version_32 := 16#9aef0857#;
   pragma Export (C, u02286, "dobldobl_quad_turn_pointsB");
   u02287 : constant Version_32 := 16#4e99f9bf#;
   pragma Export (C, u02287, "dobldobl_quad_turn_pointsS");
   u02288 : constant Version_32 := 16#05f504fc#;
   pragma Export (C, u02288, "dobldobl_quad_turn_points_ioB");
   u02289 : constant Version_32 := 16#4ccac32f#;
   pragma Export (C, u02289, "dobldobl_quad_turn_points_ioS");
   u02290 : constant Version_32 := 16#f900f285#;
   pragma Export (C, u02290, "double_double_eigenvaluesB");
   u02291 : constant Version_32 := 16#7612ca2a#;
   pragma Export (C, u02291, "double_double_eigenvaluesS");
   u02292 : constant Version_32 := 16#cd2a784a#;
   pragma Export (C, u02292, "double_double_two_normsB");
   u02293 : constant Version_32 := 16#c225ea30#;
   pragma Export (C, u02293, "double_double_two_normsS");
   u02294 : constant Version_32 := 16#3dddafe1#;
   pragma Export (C, u02294, "double_double_jaco_matricesB");
   u02295 : constant Version_32 := 16#61c9a7dc#;
   pragma Export (C, u02295, "double_double_jaco_matricesS");
   u02296 : constant Version_32 := 16#942c307e#;
   pragma Export (C, u02296, "double_double_poly_functionsB");
   u02297 : constant Version_32 := 16#06478fe6#;
   pragma Export (C, u02297, "double_double_poly_functionsS");
   u02298 : constant Version_32 := 16#d000b9aa#;
   pragma Export (C, u02298, "double_double_poly_sysfunB");
   u02299 : constant Version_32 := 16#bf4189d6#;
   pragma Export (C, u02299, "double_double_poly_sysfunS");
   u02300 : constant Version_32 := 16#754950be#;
   pragma Export (C, u02300, "double_double_poly_systems_ioB");
   u02301 : constant Version_32 := 16#2725595e#;
   pragma Export (C, u02301, "double_double_poly_systems_ioS");
   u02302 : constant Version_32 := 16#19840194#;
   pragma Export (C, u02302, "quaddobl_complex_to_real_polyB");
   u02303 : constant Version_32 := 16#b4616a4a#;
   pragma Export (C, u02303, "quaddobl_complex_to_real_polyS");
   u02304 : constant Version_32 := 16#b1af6dfa#;
   pragma Export (C, u02304, "quaddobl_parameter_solutionsB");
   u02305 : constant Version_32 := 16#d35ed6a9#;
   pragma Export (C, u02305, "quaddobl_parameter_solutionsS");
   u02306 : constant Version_32 := 16#6d03333d#;
   pragma Export (C, u02306, "quaddobl_parameter_systemsB");
   u02307 : constant Version_32 := 16#52ca6208#;
   pragma Export (C, u02307, "quaddobl_parameter_systemsS");
   u02308 : constant Version_32 := 16#22b833a0#;
   pragma Export (C, u02308, "quaddobl_quad_parametersB");
   u02309 : constant Version_32 := 16#e32b059a#;
   pragma Export (C, u02309, "quaddobl_quad_parametersS");
   u02310 : constant Version_32 := 16#0aa423e2#;
   pragma Export (C, u02310, "quaddobl_quad_sweepersB");
   u02311 : constant Version_32 := 16#ac027204#;
   pragma Export (C, u02311, "quaddobl_quad_sweepersS");
   u02312 : constant Version_32 := 16#0a0bf21f#;
   pragma Export (C, u02312, "quad_double_poly_systems_ioB");
   u02313 : constant Version_32 := 16#4067852d#;
   pragma Export (C, u02313, "quad_double_poly_systems_ioS");
   u02314 : constant Version_32 := 16#f3e1fc9d#;
   pragma Export (C, u02314, "quaddobl_quad_turn_pointsB");
   u02315 : constant Version_32 := 16#b652947d#;
   pragma Export (C, u02315, "quaddobl_quad_turn_pointsS");
   u02316 : constant Version_32 := 16#614234d1#;
   pragma Export (C, u02316, "quad_double_eigenvaluesB");
   u02317 : constant Version_32 := 16#3dd6509b#;
   pragma Export (C, u02317, "quad_double_eigenvaluesS");
   u02318 : constant Version_32 := 16#7f841314#;
   pragma Export (C, u02318, "quad_double_two_normsB");
   u02319 : constant Version_32 := 16#586bc3c8#;
   pragma Export (C, u02319, "quad_double_two_normsS");
   u02320 : constant Version_32 := 16#d8defe6a#;
   pragma Export (C, u02320, "quaddobl_quad_turn_points_ioB");
   u02321 : constant Version_32 := 16#cc0526c9#;
   pragma Export (C, u02321, "quaddobl_quad_turn_points_ioS");
   u02322 : constant Version_32 := 16#e6a64841#;
   pragma Export (C, u02322, "quad_double_jaco_matricesB");
   u02323 : constant Version_32 := 16#fdc7bd9c#;
   pragma Export (C, u02323, "quad_double_jaco_matricesS");
   u02324 : constant Version_32 := 16#d36789b7#;
   pragma Export (C, u02324, "quad_double_poly_functionsB");
   u02325 : constant Version_32 := 16#65f50459#;
   pragma Export (C, u02325, "quad_double_poly_functionsS");
   u02326 : constant Version_32 := 16#74185b54#;
   pragma Export (C, u02326, "quad_double_poly_sysfunB");
   u02327 : constant Version_32 := 16#1c50d73a#;
   pragma Export (C, u02327, "quad_double_poly_sysfunS");
   u02328 : constant Version_32 := 16#3f38c5f7#;
   pragma Export (C, u02328, "standard_complex_to_real_polyB");
   u02329 : constant Version_32 := 16#66d349f3#;
   pragma Export (C, u02329, "standard_complex_to_real_polyS");
   u02330 : constant Version_32 := 16#59417179#;
   pragma Export (C, u02330, "standard_floating_poly_systemsB");
   u02331 : constant Version_32 := 16#78772095#;
   pragma Export (C, u02331, "standard_floating_poly_systemsS");
   u02332 : constant Version_32 := 16#edd7c10e#;
   pragma Export (C, u02332, "standard_floating_polynomialsB");
   u02333 : constant Version_32 := 16#9d5f3ef3#;
   pragma Export (C, u02333, "standard_floating_polynomialsS");
   u02334 : constant Version_32 := 16#0a9bb0b8#;
   pragma Export (C, u02334, "standard_parameter_solutionsB");
   u02335 : constant Version_32 := 16#65cc3f28#;
   pragma Export (C, u02335, "standard_parameter_solutionsS");
   u02336 : constant Version_32 := 16#c48fcb5b#;
   pragma Export (C, u02336, "standard_quad_parametersB");
   u02337 : constant Version_32 := 16#45cfdc6e#;
   pragma Export (C, u02337, "standard_quad_parametersS");
   u02338 : constant Version_32 := 16#4ded5a77#;
   pragma Export (C, u02338, "standard_quad_sweepersB");
   u02339 : constant Version_32 := 16#21c1c0e2#;
   pragma Export (C, u02339, "standard_quad_sweepersS");
   u02340 : constant Version_32 := 16#6adf2915#;
   pragma Export (C, u02340, "standard_floating_poly_systems_ioB");
   u02341 : constant Version_32 := 16#c2d43d8b#;
   pragma Export (C, u02341, "standard_floating_poly_systems_ioS");
   u02342 : constant Version_32 := 16#d18caf5d#;
   pragma Export (C, u02342, "standard_quad_turn_pointsB");
   u02343 : constant Version_32 := 16#91d2a56b#;
   pragma Export (C, u02343, "standard_quad_turn_pointsS");
   u02344 : constant Version_32 := 16#91ea2ef4#;
   pragma Export (C, u02344, "standard_floating_eigenvaluesB");
   u02345 : constant Version_32 := 16#eb1c9867#;
   pragma Export (C, u02345, "standard_floating_eigenvaluesS");
   u02346 : constant Version_32 := 16#0ed9f7d1#;
   pragma Export (C, u02346, "standard_floating_two_normsB");
   u02347 : constant Version_32 := 16#ba6dfd23#;
   pragma Export (C, u02347, "standard_floating_two_normsS");
   u02348 : constant Version_32 := 16#58c8dc70#;
   pragma Export (C, u02348, "standard_quad_turn_points_ioB");
   u02349 : constant Version_32 := 16#01cc76e6#;
   pragma Export (C, u02349, "standard_quad_turn_points_ioS");
   u02350 : constant Version_32 := 16#41aa6ece#;
   pragma Export (C, u02350, "standard_floating_jaco_matricesB");
   u02351 : constant Version_32 := 16#3c97bac0#;
   pragma Export (C, u02351, "standard_floating_jaco_matricesS");
   u02352 : constant Version_32 := 16#ca0d6c70#;
   pragma Export (C, u02352, "standard_floating_poly_functionsB");
   u02353 : constant Version_32 := 16#a4e8e92f#;
   pragma Export (C, u02353, "standard_floating_poly_functionsS");
   u02354 : constant Version_32 := 16#ff948cf3#;
   pragma Export (C, u02354, "standard_floating_poly_sysfunB");
   u02355 : constant Version_32 := 16#dc671605#;
   pragma Export (C, u02355, "standard_floating_poly_sysfunS");
   u02356 : constant Version_32 := 16#be01dc54#;
   pragma Export (C, u02356, "standard_complex_laur_stringsB");
   u02357 : constant Version_32 := 16#44bdbee3#;
   pragma Export (C, u02357, "standard_complex_laur_stringsS");
   u02358 : constant Version_32 := 16#c85c545b#;
   pragma Export (C, u02358, "string_system_readersB");
   u02359 : constant Version_32 := 16#902219ad#;
   pragma Export (C, u02359, "string_system_readersS");
   u02360 : constant Version_32 := 16#88a40ce4#;
   pragma Export (C, u02360, "main_hypersurface_witsetsB");
   u02361 : constant Version_32 := 16#d7da7a88#;
   pragma Export (C, u02361, "main_hypersurface_witsetsS");
   u02362 : constant Version_32 := 16#792dd140#;
   pragma Export (C, u02362, "main_intersectionB");
   u02363 : constant Version_32 := 16#1de8cc47#;
   pragma Export (C, u02363, "main_intersectionS");
   u02364 : constant Version_32 := 16#c1aff00f#;
   pragma Export (C, u02364, "main_maple_solutionsB");
   u02365 : constant Version_32 := 16#c51c2f80#;
   pragma Export (C, u02365, "main_maple_solutionsS");
   u02366 : constant Version_32 := 16#3a7ebd1a#;
   pragma Export (C, u02366, "multprec_maple_solutions_ioB");
   u02367 : constant Version_32 := 16#c61920cf#;
   pragma Export (C, u02367, "multprec_maple_solutions_ioS");
   u02368 : constant Version_32 := 16#62a441af#;
   pragma Export (C, u02368, "main_output_feedbackB");
   u02369 : constant Version_32 := 16#3c1ab703#;
   pragma Export (C, u02369, "main_output_feedbackS");
   u02370 : constant Version_32 := 16#32429c85#;
   pragma Export (C, u02370, "main_pade_trackersB");
   u02371 : constant Version_32 := 16#4a92c748#;
   pragma Export (C, u02371, "main_pade_trackersS");
   u02372 : constant Version_32 := 16#67edb4cf#;
   pragma Export (C, u02372, "interactive_pade_trackersB");
   u02373 : constant Version_32 := 16#bc2e629d#;
   pragma Export (C, u02373, "interactive_pade_trackersS");
   u02374 : constant Version_32 := 16#bff13e9d#;
   pragma Export (C, u02374, "dobldobl_seriespade_trackerB");
   u02375 : constant Version_32 := 16#e4b21974#;
   pragma Export (C, u02375, "dobldobl_seriespade_trackerS");
   u02376 : constant Version_32 := 16#b0fa2640#;
   pragma Export (C, u02376, "dobldobl_complex_hessiansB");
   u02377 : constant Version_32 := 16#b1575bab#;
   pragma Export (C, u02377, "dobldobl_complex_hessiansS");
   u02378 : constant Version_32 := 16#9d0606c5#;
   pragma Export (C, u02378, "generic_hessian_matricesB");
   u02379 : constant Version_32 := 16#64526397#;
   pragma Export (C, u02379, "generic_hessian_matricesS");
   u02380 : constant Version_32 := 16#fbfec89f#;
   pragma Export (C, u02380, "dobldobl_complex_series_vecvecsB");
   u02381 : constant Version_32 := 16#44468f47#;
   pragma Export (C, u02381, "dobldobl_complex_series_vecvecsS");
   u02382 : constant Version_32 := 16#76f04d06#;
   pragma Export (C, u02382, "dobldobl_complex_series_ringS");
   u02383 : constant Version_32 := 16#c7e62693#;
   pragma Export (C, u02383, "dobldobl_complex_seriesB");
   u02384 : constant Version_32 := 16#adc33a57#;
   pragma Export (C, u02384, "dobldobl_complex_seriesS");
   u02385 : constant Version_32 := 16#6b0ab46e#;
   pragma Export (C, u02385, "generic_dense_seriesB");
   u02386 : constant Version_32 := 16#6e85d5b5#;
   pragma Export (C, u02386, "generic_dense_seriesS");
   u02387 : constant Version_32 := 16#73f1bdf7#;
   pragma Export (C, u02387, "dobldobl_complex_series_vectorsB");
   u02388 : constant Version_32 := 16#a1b00b90#;
   pragma Export (C, u02388, "dobldobl_complex_series_vectorsS");
   u02389 : constant Version_32 := 16#5388543b#;
   pragma Export (C, u02389, "dobldobl_cseries_jaco_matricesB");
   u02390 : constant Version_32 := 16#0b834391#;
   pragma Export (C, u02390, "dobldobl_cseries_jaco_matricesS");
   u02391 : constant Version_32 := 16#51378b78#;
   pragma Export (C, u02391, "dobldobl_complex_series_matricesB");
   u02392 : constant Version_32 := 16#f71200b6#;
   pragma Export (C, u02392, "dobldobl_complex_series_matricesS");
   u02393 : constant Version_32 := 16#04f3f910#;
   pragma Export (C, u02393, "dobldobl_cseries_poly_functionsB");
   u02394 : constant Version_32 := 16#fb014c64#;
   pragma Export (C, u02394, "dobldobl_cseries_poly_functionsS");
   u02395 : constant Version_32 := 16#09b49c12#;
   pragma Export (C, u02395, "dobldobl_cseries_polynomialsB");
   u02396 : constant Version_32 := 16#5a83e83b#;
   pragma Export (C, u02396, "dobldobl_cseries_polynomialsS");
   u02397 : constant Version_32 := 16#5f04acac#;
   pragma Export (C, u02397, "dobldobl_cseries_poly_sysfunB");
   u02398 : constant Version_32 := 16#e1d7a5a6#;
   pragma Export (C, u02398, "dobldobl_cseries_poly_sysfunS");
   u02399 : constant Version_32 := 16#81cca503#;
   pragma Export (C, u02399, "dobldobl_cseries_poly_systemsB");
   u02400 : constant Version_32 := 16#67262227#;
   pragma Export (C, u02400, "dobldobl_cseries_poly_systemsS");
   u02401 : constant Version_32 := 16#7d497c46#;
   pragma Export (C, u02401, "dobldobl_cseries_vector_functionsB");
   u02402 : constant Version_32 := 16#9b30003c#;
   pragma Export (C, u02402, "dobldobl_cseries_vector_functionsS");
   u02403 : constant Version_32 := 16#c7fe1b06#;
   pragma Export (C, u02403, "dobldobl_complex_series_functionsB");
   u02404 : constant Version_32 := 16#1fbd0cf5#;
   pragma Export (C, u02404, "dobldobl_complex_series_functionsS");
   u02405 : constant Version_32 := 16#0250b969#;
   pragma Export (C, u02405, "binomial_coefficientsB");
   u02406 : constant Version_32 := 16#304181ff#;
   pragma Export (C, u02406, "binomial_coefficientsS");
   u02407 : constant Version_32 := 16#9c351173#;
   pragma Export (C, u02407, "dobldobl_pade_approximants_ioB");
   u02408 : constant Version_32 := 16#ac21fecd#;
   pragma Export (C, u02408, "dobldobl_pade_approximants_ioS");
   u02409 : constant Version_32 := 16#8d3df05f#;
   pragma Export (C, u02409, "standard_pade_approximants_ioB");
   u02410 : constant Version_32 := 16#859ddae6#;
   pragma Export (C, u02410, "standard_pade_approximants_ioS");
   u02411 : constant Version_32 := 16#5916e192#;
   pragma Export (C, u02411, "standard_pade_approximantsB");
   u02412 : constant Version_32 := 16#0d52b1db#;
   pragma Export (C, u02412, "standard_pade_approximantsS");
   u02413 : constant Version_32 := 16#76d61315#;
   pragma Export (C, u02413, "standard_rational_approximationsB");
   u02414 : constant Version_32 := 16#2ca2606e#;
   pragma Export (C, u02414, "standard_rational_approximationsS");
   u02415 : constant Version_32 := 16#35bf7d89#;
   pragma Export (C, u02415, "standard_complex_series_vectorsB");
   u02416 : constant Version_32 := 16#34707c01#;
   pragma Export (C, u02416, "standard_complex_series_vectorsS");
   u02417 : constant Version_32 := 16#6e5474fa#;
   pragma Export (C, u02417, "standard_complex_series_ringS");
   u02418 : constant Version_32 := 16#0ccca880#;
   pragma Export (C, u02418, "standard_complex_seriesB");
   u02419 : constant Version_32 := 16#3f9df66a#;
   pragma Export (C, u02419, "standard_complex_seriesS");
   u02420 : constant Version_32 := 16#c1f44e4a#;
   pragma Export (C, u02420, "dobldobl_pade_approximantsB");
   u02421 : constant Version_32 := 16#d999bfa3#;
   pragma Export (C, u02421, "dobldobl_pade_approximantsS");
   u02422 : constant Version_32 := 16#36d717bf#;
   pragma Export (C, u02422, "dobldobl_rational_approximationsB");
   u02423 : constant Version_32 := 16#2fdcc185#;
   pragma Export (C, u02423, "dobldobl_rational_approximationsS");
   u02424 : constant Version_32 := 16#d00262c7#;
   pragma Export (C, u02424, "dobldobl_pade_trackersB");
   u02425 : constant Version_32 := 16#69cd17bd#;
   pragma Export (C, u02425, "dobldobl_pade_trackersS");
   u02426 : constant Version_32 := 16#90dbe14c#;
   pragma Export (C, u02426, "homotopy_coefficient_scalingB");
   u02427 : constant Version_32 := 16#79585f4a#;
   pragma Export (C, u02427, "homotopy_coefficient_scalingS");
   u02428 : constant Version_32 := 16#7e3841f8#;
   pragma Export (C, u02428, "dobldobl_complex_series_vectors_ioB");
   u02429 : constant Version_32 := 16#0344914c#;
   pragma Export (C, u02429, "dobldobl_complex_series_vectors_ioS");
   u02430 : constant Version_32 := 16#701c2f39#;
   pragma Export (C, u02430, "dobldobl_complex_series_ring_ioS");
   u02431 : constant Version_32 := 16#7552503e#;
   pragma Export (C, u02431, "dobldobl_complex_series_ioB");
   u02432 : constant Version_32 := 16#558d274f#;
   pragma Export (C, u02432, "dobldobl_complex_series_ioS");
   u02433 : constant Version_32 := 16#57a96ab4#;
   pragma Export (C, u02433, "hyperplane_solution_scalingB");
   u02434 : constant Version_32 := 16#024e7a33#;
   pragma Export (C, u02434, "hyperplane_solution_scalingS");
   u02435 : constant Version_32 := 16#0e669c97#;
   pragma Export (C, u02435, "quaddobl_complex_series_vectors_ioB");
   u02436 : constant Version_32 := 16#139bf7c1#;
   pragma Export (C, u02436, "quaddobl_complex_series_vectors_ioS");
   u02437 : constant Version_32 := 16#13868a98#;
   pragma Export (C, u02437, "quaddobl_complex_series_ring_ioS");
   u02438 : constant Version_32 := 16#f09ba5d0#;
   pragma Export (C, u02438, "quaddobl_complex_series_ioB");
   u02439 : constant Version_32 := 16#90be420e#;
   pragma Export (C, u02439, "quaddobl_complex_series_ioS");
   u02440 : constant Version_32 := 16#f4dbe9a2#;
   pragma Export (C, u02440, "quaddobl_complex_seriesB");
   u02441 : constant Version_32 := 16#488cbf10#;
   pragma Export (C, u02441, "quaddobl_complex_seriesS");
   u02442 : constant Version_32 := 16#e20c90e3#;
   pragma Export (C, u02442, "quaddobl_complex_series_ringS");
   u02443 : constant Version_32 := 16#21251b10#;
   pragma Export (C, u02443, "quaddobl_complex_series_vectorsB");
   u02444 : constant Version_32 := 16#54a5bfa3#;
   pragma Export (C, u02444, "quaddobl_complex_series_vectorsS");
   u02445 : constant Version_32 := 16#d4751da8#;
   pragma Export (C, u02445, "quaddobl_cseries_vector_functionsB");
   u02446 : constant Version_32 := 16#d2292e11#;
   pragma Export (C, u02446, "quaddobl_cseries_vector_functionsS");
   u02447 : constant Version_32 := 16#7d9c3a8d#;
   pragma Export (C, u02447, "quaddobl_complex_series_functionsB");
   u02448 : constant Version_32 := 16#584cffe6#;
   pragma Export (C, u02448, "quaddobl_complex_series_functionsS");
   u02449 : constant Version_32 := 16#03833e7a#;
   pragma Export (C, u02449, "quaddobl_complex_series_vecvecsB");
   u02450 : constant Version_32 := 16#492ecd91#;
   pragma Export (C, u02450, "quaddobl_complex_series_vecvecsS");
   u02451 : constant Version_32 := 16#53df5a8c#;
   pragma Export (C, u02451, "series_and_solutionsB");
   u02452 : constant Version_32 := 16#9fef2c27#;
   pragma Export (C, u02452, "series_and_solutionsS");
   u02453 : constant Version_32 := 16#72076067#;
   pragma Export (C, u02453, "decadobl_complex_seriesB");
   u02454 : constant Version_32 := 16#bc70c207#;
   pragma Export (C, u02454, "decadobl_complex_seriesS");
   u02455 : constant Version_32 := 16#e5f45548#;
   pragma Export (C, u02455, "hexadobl_complex_seriesB");
   u02456 : constant Version_32 := 16#cbdfe5a9#;
   pragma Export (C, u02456, "hexadobl_complex_seriesS");
   u02457 : constant Version_32 := 16#130f2b66#;
   pragma Export (C, u02457, "octodobl_complex_seriesB");
   u02458 : constant Version_32 := 16#af1ad944#;
   pragma Export (C, u02458, "octodobl_complex_seriesS");
   u02459 : constant Version_32 := 16#6a5d1c74#;
   pragma Export (C, u02459, "pentdobl_complex_seriesB");
   u02460 : constant Version_32 := 16#cc94118d#;
   pragma Export (C, u02460, "pentdobl_complex_seriesS");
   u02461 : constant Version_32 := 16#6b27230f#;
   pragma Export (C, u02461, "tripdobl_complex_seriesB");
   u02462 : constant Version_32 := 16#0ca61bb2#;
   pragma Export (C, u02462, "tripdobl_complex_seriesS");
   u02463 : constant Version_32 := 16#8522b523#;
   pragma Export (C, u02463, "decadobl_complex_series_vectorsB");
   u02464 : constant Version_32 := 16#e864072c#;
   pragma Export (C, u02464, "decadobl_complex_series_vectorsS");
   u02465 : constant Version_32 := 16#7c160f9a#;
   pragma Export (C, u02465, "decadobl_complex_series_ringS");
   u02466 : constant Version_32 := 16#c61eee09#;
   pragma Export (C, u02466, "decadobl_complex_series_vecvecsB");
   u02467 : constant Version_32 := 16#3072a56d#;
   pragma Export (C, u02467, "decadobl_complex_series_vecvecsS");
   u02468 : constant Version_32 := 16#361ade3f#;
   pragma Export (C, u02468, "hexadobl_complex_series_vectorsB");
   u02469 : constant Version_32 := 16#229e6756#;
   pragma Export (C, u02469, "hexadobl_complex_series_vectorsS");
   u02470 : constant Version_32 := 16#922731d3#;
   pragma Export (C, u02470, "hexadobl_complex_series_ringS");
   u02471 : constant Version_32 := 16#0c3310ef#;
   pragma Export (C, u02471, "hexadobl_complex_series_vecvecsB");
   u02472 : constant Version_32 := 16#30a53bf1#;
   pragma Export (C, u02472, "hexadobl_complex_series_vecvecsS");
   u02473 : constant Version_32 := 16#4a00e1ac#;
   pragma Export (C, u02473, "octodobl_complex_series_vectorsB");
   u02474 : constant Version_32 := 16#c2d7a1a7#;
   pragma Export (C, u02474, "octodobl_complex_series_vectorsS");
   u02475 : constant Version_32 := 16#f88fb69f#;
   pragma Export (C, u02475, "octodobl_complex_series_ringS");
   u02476 : constant Version_32 := 16#c4dcf209#;
   pragma Export (C, u02476, "octodobl_complex_series_vecvecsB");
   u02477 : constant Version_32 := 16#18031fe6#;
   pragma Export (C, u02477, "octodobl_complex_series_vecvecsS");
   u02478 : constant Version_32 := 16#cb15d1e5#;
   pragma Export (C, u02478, "pentdobl_complex_series_vectorsB");
   u02479 : constant Version_32 := 16#c1edd6e2#;
   pragma Export (C, u02479, "pentdobl_complex_series_vectorsS");
   u02480 : constant Version_32 := 16#03f2c681#;
   pragma Export (C, u02480, "pentdobl_complex_series_ringS");
   u02481 : constant Version_32 := 16#a0df08c7#;
   pragma Export (C, u02481, "pentdobl_complex_series_vecvecsB");
   u02482 : constant Version_32 := 16#7f3a926d#;
   pragma Export (C, u02482, "pentdobl_complex_series_vecvecsS");
   u02483 : constant Version_32 := 16#cb543b9c#;
   pragma Export (C, u02483, "standard_complex_series_vecvecsB");
   u02484 : constant Version_32 := 16#e12c0bd5#;
   pragma Export (C, u02484, "standard_complex_series_vecvecsS");
   u02485 : constant Version_32 := 16#ae9e9c35#;
   pragma Export (C, u02485, "tripdobl_complex_series_vectorsB");
   u02486 : constant Version_32 := 16#94129969#;
   pragma Export (C, u02486, "tripdobl_complex_series_vectorsS");
   u02487 : constant Version_32 := 16#32fcfba1#;
   pragma Export (C, u02487, "tripdobl_complex_series_ringS");
   u02488 : constant Version_32 := 16#53705a97#;
   pragma Export (C, u02488, "tripdobl_complex_series_vecvecsB");
   u02489 : constant Version_32 := 16#d96a8fb6#;
   pragma Export (C, u02489, "tripdobl_complex_series_vecvecsS");
   u02490 : constant Version_32 := 16#6fa2599c#;
   pragma Export (C, u02490, "standard_complex_series_vectors_ioB");
   u02491 : constant Version_32 := 16#c166da27#;
   pragma Export (C, u02491, "standard_complex_series_vectors_ioS");
   u02492 : constant Version_32 := 16#175da52f#;
   pragma Export (C, u02492, "standard_complex_series_ring_ioS");
   u02493 : constant Version_32 := 16#f5009aad#;
   pragma Export (C, u02493, "standard_complex_series_ioB");
   u02494 : constant Version_32 := 16#bf9e07d4#;
   pragma Export (C, u02494, "standard_complex_series_ioS");
   u02495 : constant Version_32 := 16#1405bcf3#;
   pragma Export (C, u02495, "standard_cseries_vector_functionsB");
   u02496 : constant Version_32 := 16#a68d721d#;
   pragma Export (C, u02496, "standard_cseries_vector_functionsS");
   u02497 : constant Version_32 := 16#1d7f62f8#;
   pragma Export (C, u02497, "standard_complex_series_functionsB");
   u02498 : constant Version_32 := 16#f04633b2#;
   pragma Export (C, u02498, "standard_complex_series_functionsS");
   u02499 : constant Version_32 := 16#b07adca4#;
   pragma Export (C, u02499, "quaddobl_cseries_poly_sysfunB");
   u02500 : constant Version_32 := 16#da1e7533#;
   pragma Export (C, u02500, "quaddobl_cseries_poly_sysfunS");
   u02501 : constant Version_32 := 16#dba05789#;
   pragma Export (C, u02501, "quaddobl_cseries_poly_functionsB");
   u02502 : constant Version_32 := 16#b6dc0351#;
   pragma Export (C, u02502, "quaddobl_cseries_poly_functionsS");
   u02503 : constant Version_32 := 16#6e2fc98d#;
   pragma Export (C, u02503, "quaddobl_cseries_polynomialsB");
   u02504 : constant Version_32 := 16#9ad9af70#;
   pragma Export (C, u02504, "quaddobl_cseries_polynomialsS");
   u02505 : constant Version_32 := 16#e0dbbc4e#;
   pragma Export (C, u02505, "quaddobl_cseries_poly_systemsB");
   u02506 : constant Version_32 := 16#c66b7c21#;
   pragma Export (C, u02506, "quaddobl_cseries_poly_systemsS");
   u02507 : constant Version_32 := 16#6fb2e92d#;
   pragma Export (C, u02507, "standard_cseries_poly_sysfunB");
   u02508 : constant Version_32 := 16#1a9d6bfc#;
   pragma Export (C, u02508, "standard_cseries_poly_sysfunS");
   u02509 : constant Version_32 := 16#85f6e457#;
   pragma Export (C, u02509, "standard_cseries_poly_functionsB");
   u02510 : constant Version_32 := 16#b7939c77#;
   pragma Export (C, u02510, "standard_cseries_poly_functionsS");
   u02511 : constant Version_32 := 16#51e326d7#;
   pragma Export (C, u02511, "standard_cseries_polynomialsB");
   u02512 : constant Version_32 := 16#d15ae511#;
   pragma Export (C, u02512, "standard_cseries_polynomialsS");
   u02513 : constant Version_32 := 16#36080dc8#;
   pragma Export (C, u02513, "standard_cseries_poly_systemsB");
   u02514 : constant Version_32 := 16#5b3b87c6#;
   pragma Export (C, u02514, "standard_cseries_poly_systemsS");
   u02515 : constant Version_32 := 16#29132d71#;
   pragma Export (C, u02515, "homotopy_mixed_residualsB");
   u02516 : constant Version_32 := 16#ee0445ad#;
   pragma Export (C, u02516, "homotopy_mixed_residualsS");
   u02517 : constant Version_32 := 16#ac29c37a#;
   pragma Export (C, u02517, "homotopy_newton_stepsB");
   u02518 : constant Version_32 := 16#c7d954ee#;
   pragma Export (C, u02518, "homotopy_newton_stepsS");
   u02519 : constant Version_32 := 16#f2e906cf#;
   pragma Export (C, u02519, "homotopy_pade_approximantsB");
   u02520 : constant Version_32 := 16#cb1a16b2#;
   pragma Export (C, u02520, "homotopy_pade_approximantsS");
   u02521 : constant Version_32 := 16#e21fe8eb#;
   pragma Export (C, u02521, "homotopy_series_readersB");
   u02522 : constant Version_32 := 16#24dbac6b#;
   pragma Export (C, u02522, "homotopy_series_readersS");
   u02523 : constant Version_32 := 16#98759ffa#;
   pragma Export (C, u02523, "artificial_parameter_homotopy_ioB");
   u02524 : constant Version_32 := 16#5f50a8b4#;
   pragma Export (C, u02524, "artificial_parameter_homotopy_ioS");
   u02525 : constant Version_32 := 16#2e4d53eb#;
   pragma Export (C, u02525, "decadobl_complex_poly_systems_ioB");
   u02526 : constant Version_32 := 16#9cfe8b39#;
   pragma Export (C, u02526, "decadobl_complex_poly_systems_ioS");
   u02527 : constant Version_32 := 16#bf14393e#;
   pragma Export (C, u02527, "decadobl_complex_polynomials_ioB");
   u02528 : constant Version_32 := 16#ef7a4eb0#;
   pragma Export (C, u02528, "decadobl_complex_polynomials_ioS");
   u02529 : constant Version_32 := 16#d5195428#;
   pragma Export (C, u02529, "decadobl_polynomial_convertorsB");
   u02530 : constant Version_32 := 16#2386511c#;
   pragma Export (C, u02530, "decadobl_polynomial_convertorsS");
   u02531 : constant Version_32 := 16#7fa154cb#;
   pragma Export (C, u02531, "deca_double_poly_systemsB");
   u02532 : constant Version_32 := 16#6c2e0c80#;
   pragma Export (C, u02532, "deca_double_poly_systemsS");
   u02533 : constant Version_32 := 16#0d6b75ee#;
   pragma Export (C, u02533, "deca_double_polynomialsB");
   u02534 : constant Version_32 := 16#afe63754#;
   pragma Export (C, u02534, "deca_double_polynomialsS");
   u02535 : constant Version_32 := 16#1fde60c2#;
   pragma Export (C, u02535, "decadobl_complex_laur_systemsB");
   u02536 : constant Version_32 := 16#bbbcc0a1#;
   pragma Export (C, u02536, "decadobl_complex_laur_systemsS");
   u02537 : constant Version_32 := 16#1f207e33#;
   pragma Export (C, u02537, "decadobl_complex_laurentialsB");
   u02538 : constant Version_32 := 16#8976c374#;
   pragma Export (C, u02538, "decadobl_complex_laurentialsS");
   u02539 : constant Version_32 := 16#0bf49847#;
   pragma Export (C, u02539, "decadobl_system_and_solutions_ioB");
   u02540 : constant Version_32 := 16#751b8ead#;
   pragma Export (C, u02540, "decadobl_system_and_solutions_ioS");
   u02541 : constant Version_32 := 16#192f6f85#;
   pragma Export (C, u02541, "decadobl_complex_laur_systems_ioB");
   u02542 : constant Version_32 := 16#9ba1e56e#;
   pragma Export (C, u02542, "decadobl_complex_laur_systems_ioS");
   u02543 : constant Version_32 := 16#7a6f5243#;
   pragma Export (C, u02543, "decadobl_complex_laurentials_ioB");
   u02544 : constant Version_32 := 16#31f180ab#;
   pragma Export (C, u02544, "decadobl_complex_laurentials_ioS");
   u02545 : constant Version_32 := 16#b84d1132#;
   pragma Export (C, u02545, "decadobl_complex_solutions_ioB");
   u02546 : constant Version_32 := 16#6f0b14d0#;
   pragma Export (C, u02546, "decadobl_complex_solutions_ioS");
   u02547 : constant Version_32 := 16#358f4ce4#;
   pragma Export (C, u02547, "decadobl_complex_numbers_ioB");
   u02548 : constant Version_32 := 16#52976c2b#;
   pragma Export (C, u02548, "decadobl_complex_numbers_ioS");
   u02549 : constant Version_32 := 16#303b00ec#;
   pragma Export (C, u02549, "hexadobl_complex_poly_systems_ioB");
   u02550 : constant Version_32 := 16#a317705c#;
   pragma Export (C, u02550, "hexadobl_complex_poly_systems_ioS");
   u02551 : constant Version_32 := 16#9d4b91b0#;
   pragma Export (C, u02551, "hexadobl_complex_polynomials_ioB");
   u02552 : constant Version_32 := 16#1cb9fb69#;
   pragma Export (C, u02552, "hexadobl_complex_polynomials_ioS");
   u02553 : constant Version_32 := 16#3f2d4ff3#;
   pragma Export (C, u02553, "hexadobl_polynomial_convertorsB");
   u02554 : constant Version_32 := 16#59fe5355#;
   pragma Export (C, u02554, "hexadobl_polynomial_convertorsS");
   u02555 : constant Version_32 := 16#6743d6dc#;
   pragma Export (C, u02555, "hexa_double_poly_systemsB");
   u02556 : constant Version_32 := 16#e5ab5e51#;
   pragma Export (C, u02556, "hexa_double_poly_systemsS");
   u02557 : constant Version_32 := 16#98f3407f#;
   pragma Export (C, u02557, "hexa_double_polynomialsB");
   u02558 : constant Version_32 := 16#3e81e792#;
   pragma Export (C, u02558, "hexa_double_polynomialsS");
   u02559 : constant Version_32 := 16#1aaa3bb5#;
   pragma Export (C, u02559, "hexadobl_complex_laur_systemsB");
   u02560 : constant Version_32 := 16#a5bb588d#;
   pragma Export (C, u02560, "hexadobl_complex_laur_systemsS");
   u02561 : constant Version_32 := 16#39fca225#;
   pragma Export (C, u02561, "hexadobl_complex_laurentialsB");
   u02562 : constant Version_32 := 16#9205002f#;
   pragma Export (C, u02562, "hexadobl_complex_laurentialsS");
   u02563 : constant Version_32 := 16#1de9cd2e#;
   pragma Export (C, u02563, "hexadobl_system_and_solutions_ioB");
   u02564 : constant Version_32 := 16#5be91ce5#;
   pragma Export (C, u02564, "hexadobl_system_and_solutions_ioS");
   u02565 : constant Version_32 := 16#371183ca#;
   pragma Export (C, u02565, "hexadobl_complex_laur_systems_ioB");
   u02566 : constant Version_32 := 16#d023ea2c#;
   pragma Export (C, u02566, "hexadobl_complex_laur_systems_ioS");
   u02567 : constant Version_32 := 16#b3a745df#;
   pragma Export (C, u02567, "hexadobl_complex_laurentials_ioB");
   u02568 : constant Version_32 := 16#c3952f0d#;
   pragma Export (C, u02568, "hexadobl_complex_laurentials_ioS");
   u02569 : constant Version_32 := 16#9f9e0387#;
   pragma Export (C, u02569, "hexadobl_complex_solutions_ioB");
   u02570 : constant Version_32 := 16#e3be0633#;
   pragma Export (C, u02570, "hexadobl_complex_solutions_ioS");
   u02571 : constant Version_32 := 16#5e08783d#;
   pragma Export (C, u02571, "hexadobl_complex_numbers_ioB");
   u02572 : constant Version_32 := 16#0dddddc7#;
   pragma Export (C, u02572, "hexadobl_complex_numbers_ioS");
   u02573 : constant Version_32 := 16#07533eda#;
   pragma Export (C, u02573, "octodobl_complex_poly_systems_ioB");
   u02574 : constant Version_32 := 16#11656893#;
   pragma Export (C, u02574, "octodobl_complex_poly_systems_ioS");
   u02575 : constant Version_32 := 16#9c68b171#;
   pragma Export (C, u02575, "octodobl_complex_polynomials_ioB");
   u02576 : constant Version_32 := 16#c6ef4a5f#;
   pragma Export (C, u02576, "octodobl_complex_polynomials_ioS");
   u02577 : constant Version_32 := 16#30847b9a#;
   pragma Export (C, u02577, "octodobl_polynomial_convertorsB");
   u02578 : constant Version_32 := 16#e546295e#;
   pragma Export (C, u02578, "octodobl_polynomial_convertorsS");
   u02579 : constant Version_32 := 16#a50ec8a0#;
   pragma Export (C, u02579, "octo_double_poly_systemsB");
   u02580 : constant Version_32 := 16#288b1668#;
   pragma Export (C, u02580, "octo_double_poly_systemsS");
   u02581 : constant Version_32 := 16#0780c646#;
   pragma Export (C, u02581, "octo_double_polynomialsB");
   u02582 : constant Version_32 := 16#31ecb1d7#;
   pragma Export (C, u02582, "octo_double_polynomialsS");
   u02583 : constant Version_32 := 16#2433b2a1#;
   pragma Export (C, u02583, "octodobl_complex_laur_systemsB");
   u02584 : constant Version_32 := 16#9c72a33d#;
   pragma Export (C, u02584, "octodobl_complex_laur_systemsS");
   u02585 : constant Version_32 := 16#0f55014a#;
   pragma Export (C, u02585, "octodobl_complex_laurentialsB");
   u02586 : constant Version_32 := 16#9555728b#;
   pragma Export (C, u02586, "octodobl_complex_laurentialsS");
   u02587 : constant Version_32 := 16#c14a57d3#;
   pragma Export (C, u02587, "octodobl_system_and_solutions_ioB");
   u02588 : constant Version_32 := 16#8c0ec805#;
   pragma Export (C, u02588, "octodobl_system_and_solutions_ioS");
   u02589 : constant Version_32 := 16#b204c039#;
   pragma Export (C, u02589, "octodobl_complex_laur_systems_ioB");
   u02590 : constant Version_32 := 16#fd55e4a6#;
   pragma Export (C, u02590, "octodobl_complex_laur_systems_ioS");
   u02591 : constant Version_32 := 16#99e9d090#;
   pragma Export (C, u02591, "octodobl_complex_laurentials_ioB");
   u02592 : constant Version_32 := 16#17c19b1c#;
   pragma Export (C, u02592, "octodobl_complex_laurentials_ioS");
   u02593 : constant Version_32 := 16#68caae52#;
   pragma Export (C, u02593, "octodobl_complex_solutions_ioB");
   u02594 : constant Version_32 := 16#78eb1373#;
   pragma Export (C, u02594, "octodobl_complex_solutions_ioS");
   u02595 : constant Version_32 := 16#44444acf#;
   pragma Export (C, u02595, "octodobl_complex_numbers_ioB");
   u02596 : constant Version_32 := 16#0de07089#;
   pragma Export (C, u02596, "octodobl_complex_numbers_ioS");
   u02597 : constant Version_32 := 16#164abaf4#;
   pragma Export (C, u02597, "pentdobl_complex_poly_systems_ioB");
   u02598 : constant Version_32 := 16#3d7f01b4#;
   pragma Export (C, u02598, "pentdobl_complex_poly_systems_ioS");
   u02599 : constant Version_32 := 16#fd5a1a0d#;
   pragma Export (C, u02599, "pentdobl_complex_polynomials_ioB");
   u02600 : constant Version_32 := 16#b4bc43d4#;
   pragma Export (C, u02600, "pentdobl_complex_polynomials_ioS");
   u02601 : constant Version_32 := 16#452c5d9c#;
   pragma Export (C, u02601, "pentdobl_polynomial_convertorsB");
   u02602 : constant Version_32 := 16#ebcf6bc2#;
   pragma Export (C, u02602, "pentdobl_polynomial_convertorsS");
   u02603 : constant Version_32 := 16#879a9555#;
   pragma Export (C, u02603, "penta_double_poly_systemsB");
   u02604 : constant Version_32 := 16#546ea281#;
   pragma Export (C, u02604, "penta_double_poly_systemsS");
   u02605 : constant Version_32 := 16#d6d25310#;
   pragma Export (C, u02605, "penta_double_polynomialsB");
   u02606 : constant Version_32 := 16#6f9d58cb#;
   pragma Export (C, u02606, "penta_double_polynomialsS");
   u02607 : constant Version_32 := 16#3012a0d0#;
   pragma Export (C, u02607, "pentdobl_complex_laur_systemsB");
   u02608 : constant Version_32 := 16#6612cd86#;
   pragma Export (C, u02608, "pentdobl_complex_laur_systemsS");
   u02609 : constant Version_32 := 16#b2ac8e07#;
   pragma Export (C, u02609, "pentdobl_complex_laurentialsB");
   u02610 : constant Version_32 := 16#7b140e41#;
   pragma Export (C, u02610, "pentdobl_complex_laurentialsS");
   u02611 : constant Version_32 := 16#70ff3aa9#;
   pragma Export (C, u02611, "pentdobl_system_and_solutions_ioB");
   u02612 : constant Version_32 := 16#fcad9db4#;
   pragma Export (C, u02612, "pentdobl_system_and_solutions_ioS");
   u02613 : constant Version_32 := 16#ef1151dc#;
   pragma Export (C, u02613, "pentdobl_complex_laur_systems_ioB");
   u02614 : constant Version_32 := 16#8a4a472a#;
   pragma Export (C, u02614, "pentdobl_complex_laur_systems_ioS");
   u02615 : constant Version_32 := 16#a9382569#;
   pragma Export (C, u02615, "pentdobl_complex_laurentials_ioB");
   u02616 : constant Version_32 := 16#3a328c97#;
   pragma Export (C, u02616, "pentdobl_complex_laurentials_ioS");
   u02617 : constant Version_32 := 16#2dddf237#;
   pragma Export (C, u02617, "pentdobl_complex_solutions_ioB");
   u02618 : constant Version_32 := 16#0c3574f7#;
   pragma Export (C, u02618, "pentdobl_complex_solutions_ioS");
   u02619 : constant Version_32 := 16#58ba88d6#;
   pragma Export (C, u02619, "pentdobl_complex_numbers_ioB");
   u02620 : constant Version_32 := 16#f9167a49#;
   pragma Export (C, u02620, "pentdobl_complex_numbers_ioS");
   u02621 : constant Version_32 := 16#d007cb1d#;
   pragma Export (C, u02621, "tripdobl_complex_poly_systems_ioB");
   u02622 : constant Version_32 := 16#6b5eef08#;
   pragma Export (C, u02622, "tripdobl_complex_poly_systems_ioS");
   u02623 : constant Version_32 := 16#584f2051#;
   pragma Export (C, u02623, "tripdobl_complex_polynomials_ioB");
   u02624 : constant Version_32 := 16#8dfe18dd#;
   pragma Export (C, u02624, "tripdobl_complex_polynomials_ioS");
   u02625 : constant Version_32 := 16#938e00d6#;
   pragma Export (C, u02625, "tripdobl_polynomial_convertorsB");
   u02626 : constant Version_32 := 16#a5b50355#;
   pragma Export (C, u02626, "tripdobl_polynomial_convertorsS");
   u02627 : constant Version_32 := 16#b2c339b2#;
   pragma Export (C, u02627, "tripdobl_complex_laur_systemsB");
   u02628 : constant Version_32 := 16#1e854564#;
   pragma Export (C, u02628, "tripdobl_complex_laur_systemsS");
   u02629 : constant Version_32 := 16#d0ec0b11#;
   pragma Export (C, u02629, "tripdobl_complex_laurentialsB");
   u02630 : constant Version_32 := 16#81521fc1#;
   pragma Export (C, u02630, "tripdobl_complex_laurentialsS");
   u02631 : constant Version_32 := 16#35047cff#;
   pragma Export (C, u02631, "triple_double_poly_systemsB");
   u02632 : constant Version_32 := 16#cc670626#;
   pragma Export (C, u02632, "triple_double_poly_systemsS");
   u02633 : constant Version_32 := 16#2a797cf5#;
   pragma Export (C, u02633, "triple_double_polynomialsB");
   u02634 : constant Version_32 := 16#450a15c6#;
   pragma Export (C, u02634, "triple_double_polynomialsS");
   u02635 : constant Version_32 := 16#fd6908d3#;
   pragma Export (C, u02635, "tripdobl_system_and_solutions_ioB");
   u02636 : constant Version_32 := 16#d7d03f4e#;
   pragma Export (C, u02636, "tripdobl_system_and_solutions_ioS");
   u02637 : constant Version_32 := 16#409d9a2f#;
   pragma Export (C, u02637, "tripdobl_complex_laur_systems_ioB");
   u02638 : constant Version_32 := 16#dced22dd#;
   pragma Export (C, u02638, "tripdobl_complex_laur_systems_ioS");
   u02639 : constant Version_32 := 16#bb9d83fa#;
   pragma Export (C, u02639, "tripdobl_complex_laurentials_ioB");
   u02640 : constant Version_32 := 16#dbbab6ff#;
   pragma Export (C, u02640, "tripdobl_complex_laurentials_ioS");
   u02641 : constant Version_32 := 16#23a71309#;
   pragma Export (C, u02641, "tripdobl_complex_solutions_ioB");
   u02642 : constant Version_32 := 16#d5d6067a#;
   pragma Export (C, u02642, "tripdobl_complex_solutions_ioS");
   u02643 : constant Version_32 := 16#a532c595#;
   pragma Export (C, u02643, "tripdobl_complex_numbers_ioB");
   u02644 : constant Version_32 := 16#29a526cf#;
   pragma Export (C, u02644, "tripdobl_complex_numbers_ioS");
   u02645 : constant Version_32 := 16#4b40793c#;
   pragma Export (C, u02645, "decadobl_coefficient_homotopyB");
   u02646 : constant Version_32 := 16#e212bc1d#;
   pragma Export (C, u02646, "decadobl_coefficient_homotopyS");
   u02647 : constant Version_32 := 16#0d4c2dbb#;
   pragma Export (C, u02647, "decadobl_complex_jaco_matricesB");
   u02648 : constant Version_32 := 16#b89b8f59#;
   pragma Export (C, u02648, "decadobl_complex_jaco_matricesS");
   u02649 : constant Version_32 := 16#475d7e6e#;
   pragma Export (C, u02649, "decadobl_complex_matricesB");
   u02650 : constant Version_32 := 16#93c6049d#;
   pragma Export (C, u02650, "decadobl_complex_matricesS");
   u02651 : constant Version_32 := 16#0ac1c738#;
   pragma Export (C, u02651, "decadobl_complex_poly_functionsB");
   u02652 : constant Version_32 := 16#cdf1ea22#;
   pragma Export (C, u02652, "decadobl_complex_poly_functionsS");
   u02653 : constant Version_32 := 16#2a7e7b50#;
   pragma Export (C, u02653, "decadobl_complex_poly_sysfunB");
   u02654 : constant Version_32 := 16#1a61e5f8#;
   pragma Export (C, u02654, "decadobl_complex_poly_sysfunS");
   u02655 : constant Version_32 := 16#4937907c#;
   pragma Export (C, u02655, "decadobl_cseries_poly_systemsB");
   u02656 : constant Version_32 := 16#fe5a7386#;
   pragma Export (C, u02656, "decadobl_cseries_poly_systemsS");
   u02657 : constant Version_32 := 16#e734fca4#;
   pragma Export (C, u02657, "decadobl_cseries_polynomialsB");
   u02658 : constant Version_32 := 16#0b048ce5#;
   pragma Export (C, u02658, "decadobl_cseries_polynomialsS");
   u02659 : constant Version_32 := 16#d85a692d#;
   pragma Export (C, u02659, "decadobl_homotopyB");
   u02660 : constant Version_32 := 16#03974ee1#;
   pragma Export (C, u02660, "decadobl_homotopyS");
   u02661 : constant Version_32 := 16#21209e17#;
   pragma Export (C, u02661, "decadobl_parameter_systemsB");
   u02662 : constant Version_32 := 16#224bc59b#;
   pragma Export (C, u02662, "decadobl_parameter_systemsS");
   u02663 : constant Version_32 := 16#4252c1c9#;
   pragma Export (C, u02663, "hexadobl_coefficient_homotopyB");
   u02664 : constant Version_32 := 16#c1254ef1#;
   pragma Export (C, u02664, "hexadobl_coefficient_homotopyS");
   u02665 : constant Version_32 := 16#66a81a1d#;
   pragma Export (C, u02665, "hexadobl_complex_jaco_matricesB");
   u02666 : constant Version_32 := 16#b458a12c#;
   pragma Export (C, u02666, "hexadobl_complex_jaco_matricesS");
   u02667 : constant Version_32 := 16#f8985ee3#;
   pragma Export (C, u02667, "hexadobl_complex_matricesB");
   u02668 : constant Version_32 := 16#fbb624f2#;
   pragma Export (C, u02668, "hexadobl_complex_matricesS");
   u02669 : constant Version_32 := 16#27cfaf9e#;
   pragma Export (C, u02669, "hexadobl_complex_poly_functionsB");
   u02670 : constant Version_32 := 16#1d97a11d#;
   pragma Export (C, u02670, "hexadobl_complex_poly_functionsS");
   u02671 : constant Version_32 := 16#05e1becc#;
   pragma Export (C, u02671, "hexadobl_complex_poly_sysfunB");
   u02672 : constant Version_32 := 16#c283dca6#;
   pragma Export (C, u02672, "hexadobl_complex_poly_sysfunS");
   u02673 : constant Version_32 := 16#b9e81622#;
   pragma Export (C, u02673, "hexadobl_cseries_poly_systemsB");
   u02674 : constant Version_32 := 16#581c2be5#;
   pragma Export (C, u02674, "hexadobl_cseries_poly_systemsS");
   u02675 : constant Version_32 := 16#c86f29ff#;
   pragma Export (C, u02675, "hexadobl_cseries_polynomialsB");
   u02676 : constant Version_32 := 16#5d9d52d8#;
   pragma Export (C, u02676, "hexadobl_cseries_polynomialsS");
   u02677 : constant Version_32 := 16#333e7b94#;
   pragma Export (C, u02677, "hexadobl_homotopyB");
   u02678 : constant Version_32 := 16#7c297b0a#;
   pragma Export (C, u02678, "hexadobl_homotopyS");
   u02679 : constant Version_32 := 16#1105a646#;
   pragma Export (C, u02679, "hexadobl_parameter_systemsB");
   u02680 : constant Version_32 := 16#cbeaa87b#;
   pragma Export (C, u02680, "hexadobl_parameter_systemsS");
   u02681 : constant Version_32 := 16#e6947403#;
   pragma Export (C, u02681, "jacobian_rabinowitsch_trickB");
   u02682 : constant Version_32 := 16#d0038723#;
   pragma Export (C, u02682, "jacobian_rabinowitsch_trickS");
   u02683 : constant Version_32 := 16#0c520e67#;
   pragma Export (C, u02683, "multi_projective_transformationsB");
   u02684 : constant Version_32 := 16#f77915fb#;
   pragma Export (C, u02684, "multi_projective_transformationsS");
   u02685 : constant Version_32 := 16#8ebd8b60#;
   pragma Export (C, u02685, "octodobl_coefficient_homotopyB");
   u02686 : constant Version_32 := 16#7f76d3ad#;
   pragma Export (C, u02686, "octodobl_coefficient_homotopyS");
   u02687 : constant Version_32 := 16#622e5c15#;
   pragma Export (C, u02687, "octodobl_complex_jaco_matricesB");
   u02688 : constant Version_32 := 16#3de1ddd0#;
   pragma Export (C, u02688, "octodobl_complex_jaco_matricesS");
   u02689 : constant Version_32 := 16#52e2be35#;
   pragma Export (C, u02689, "octodobl_complex_matricesB");
   u02690 : constant Version_32 := 16#1ac81f4a#;
   pragma Export (C, u02690, "octodobl_complex_matricesS");
   u02691 : constant Version_32 := 16#c53fc9ab#;
   pragma Export (C, u02691, "octodobl_complex_poly_functionsB");
   u02692 : constant Version_32 := 16#da951f37#;
   pragma Export (C, u02692, "octodobl_complex_poly_functionsS");
   u02693 : constant Version_32 := 16#de704abc#;
   pragma Export (C, u02693, "octodobl_complex_poly_sysfunB");
   u02694 : constant Version_32 := 16#e5c60684#;
   pragma Export (C, u02694, "octodobl_complex_poly_sysfunS");
   u02695 : constant Version_32 := 16#0ebaf149#;
   pragma Export (C, u02695, "octodobl_cseries_poly_systemsB");
   u02696 : constant Version_32 := 16#1294f9b5#;
   pragma Export (C, u02696, "octodobl_cseries_poly_systemsS");
   u02697 : constant Version_32 := 16#a9e6e5a6#;
   pragma Export (C, u02697, "octodobl_cseries_polynomialsB");
   u02698 : constant Version_32 := 16#a04767e3#;
   pragma Export (C, u02698, "octodobl_cseries_polynomialsS");
   u02699 : constant Version_32 := 16#21185dcb#;
   pragma Export (C, u02699, "octodobl_homotopyB");
   u02700 : constant Version_32 := 16#cb8badf0#;
   pragma Export (C, u02700, "octodobl_homotopyS");
   u02701 : constant Version_32 := 16#38c52d97#;
   pragma Export (C, u02701, "octodobl_parameter_systemsB");
   u02702 : constant Version_32 := 16#b9f45020#;
   pragma Export (C, u02702, "octodobl_parameter_systemsS");
   u02703 : constant Version_32 := 16#aa0cc26a#;
   pragma Export (C, u02703, "pentdobl_coefficient_homotopyB");
   u02704 : constant Version_32 := 16#fa0dc55d#;
   pragma Export (C, u02704, "pentdobl_coefficient_homotopyS");
   u02705 : constant Version_32 := 16#36c5e459#;
   pragma Export (C, u02705, "pentdobl_complex_jaco_matricesB");
   u02706 : constant Version_32 := 16#84a2c341#;
   pragma Export (C, u02706, "pentdobl_complex_jaco_matricesS");
   u02707 : constant Version_32 := 16#dd59e9a1#;
   pragma Export (C, u02707, "pentdobl_complex_matricesB");
   u02708 : constant Version_32 := 16#3e1de156#;
   pragma Export (C, u02708, "pentdobl_complex_matricesS");
   u02709 : constant Version_32 := 16#44beb795#;
   pragma Export (C, u02709, "pentdobl_complex_poly_functionsB");
   u02710 : constant Version_32 := 16#2f7184ba#;
   pragma Export (C, u02710, "pentdobl_complex_poly_functionsS");
   u02711 : constant Version_32 := 16#90c1fcd4#;
   pragma Export (C, u02711, "pentdobl_complex_poly_sysfunB");
   u02712 : constant Version_32 := 16#87d5f7cd#;
   pragma Export (C, u02712, "pentdobl_complex_poly_sysfunS");
   u02713 : constant Version_32 := 16#a34f8505#;
   pragma Export (C, u02713, "pentdobl_cseries_poly_systemsB");
   u02714 : constant Version_32 := 16#9b3b973e#;
   pragma Export (C, u02714, "pentdobl_cseries_poly_systemsS");
   u02715 : constant Version_32 := 16#0f93b86d#;
   pragma Export (C, u02715, "pentdobl_cseries_polynomialsB");
   u02716 : constant Version_32 := 16#841d7d24#;
   pragma Export (C, u02716, "pentdobl_cseries_polynomialsS");
   u02717 : constant Version_32 := 16#75680fc8#;
   pragma Export (C, u02717, "pentdobl_homotopyB");
   u02718 : constant Version_32 := 16#7b0a5170#;
   pragma Export (C, u02718, "pentdobl_homotopyS");
   u02719 : constant Version_32 := 16#88bae3cf#;
   pragma Export (C, u02719, "pentdobl_parameter_systemsB");
   u02720 : constant Version_32 := 16#d7269d99#;
   pragma Export (C, u02720, "pentdobl_parameter_systemsS");
   u02721 : constant Version_32 := 16#fc01b9e0#;
   pragma Export (C, u02721, "series_and_homotopiesB");
   u02722 : constant Version_32 := 16#1861705b#;
   pragma Export (C, u02722, "series_and_homotopiesS");
   u02723 : constant Version_32 := 16#8737ce3d#;
   pragma Export (C, u02723, "complex_series_and_polynomialsB");
   u02724 : constant Version_32 := 16#d10a9378#;
   pragma Export (C, u02724, "complex_series_and_polynomialsS");
   u02725 : constant Version_32 := 16#0ad7763d#;
   pragma Export (C, u02725, "decadobl_complex_series_functionsB");
   u02726 : constant Version_32 := 16#9353eb4f#;
   pragma Export (C, u02726, "decadobl_complex_series_functionsS");
   u02727 : constant Version_32 := 16#00205476#;
   pragma Export (C, u02727, "decadobl_complex_numbers_polarB");
   u02728 : constant Version_32 := 16#bd335813#;
   pragma Export (C, u02728, "decadobl_complex_numbers_polarS");
   u02729 : constant Version_32 := 16#da7d8387#;
   pragma Export (C, u02729, "decadobl_complex_series_ioB");
   u02730 : constant Version_32 := 16#9a02c1cd#;
   pragma Export (C, u02730, "decadobl_complex_series_ioS");
   u02731 : constant Version_32 := 16#f7cef34b#;
   pragma Export (C, u02731, "decadobl_complex_vectors_ioB");
   u02732 : constant Version_32 := 16#b62ba662#;
   pragma Export (C, u02732, "decadobl_complex_vectors_ioS");
   u02733 : constant Version_32 := 16#6af9c815#;
   pragma Export (C, u02733, "decadobl_complex_ring_ioS");
   u02734 : constant Version_32 := 16#2b684a9e#;
   pragma Export (C, u02734, "hexadobl_complex_series_functionsB");
   u02735 : constant Version_32 := 16#d83dc02b#;
   pragma Export (C, u02735, "hexadobl_complex_series_functionsS");
   u02736 : constant Version_32 := 16#3f4acab7#;
   pragma Export (C, u02736, "hexadobl_complex_numbers_polarB");
   u02737 : constant Version_32 := 16#70a730f1#;
   pragma Export (C, u02737, "hexadobl_complex_numbers_polarS");
   u02738 : constant Version_32 := 16#2a82ffba#;
   pragma Export (C, u02738, "hexadobl_complex_series_ioB");
   u02739 : constant Version_32 := 16#bf6fa490#;
   pragma Export (C, u02739, "hexadobl_complex_series_ioS");
   u02740 : constant Version_32 := 16#54d6bd2d#;
   pragma Export (C, u02740, "hexadobl_complex_vectors_ioB");
   u02741 : constant Version_32 := 16#a4049fad#;
   pragma Export (C, u02741, "hexadobl_complex_vectors_ioS");
   u02742 : constant Version_32 := 16#64d81cd1#;
   pragma Export (C, u02742, "hexadobl_complex_ring_ioS");
   u02743 : constant Version_32 := 16#7125efc7#;
   pragma Export (C, u02743, "octodobl_complex_series_functionsB");
   u02744 : constant Version_32 := 16#24e35a81#;
   pragma Export (C, u02744, "octodobl_complex_series_functionsS");
   u02745 : constant Version_32 := 16#54a7e4da#;
   pragma Export (C, u02745, "octodobl_complex_numbers_polarB");
   u02746 : constant Version_32 := 16#63313cfb#;
   pragma Export (C, u02746, "octodobl_complex_numbers_polarS");
   u02747 : constant Version_32 := 16#68c15927#;
   pragma Export (C, u02747, "octodobl_complex_series_ioB");
   u02748 : constant Version_32 := 16#7790449e#;
   pragma Export (C, u02748, "octodobl_complex_series_ioS");
   u02749 : constant Version_32 := 16#4dbdb230#;
   pragma Export (C, u02749, "octodobl_complex_vectors_ioB");
   u02750 : constant Version_32 := 16#f862d08a#;
   pragma Export (C, u02750, "octodobl_complex_vectors_ioS");
   u02751 : constant Version_32 := 16#b3d6b366#;
   pragma Export (C, u02751, "octodobl_complex_ring_ioS");
   u02752 : constant Version_32 := 16#606fc359#;
   pragma Export (C, u02752, "pentdobl_complex_series_functionsB");
   u02753 : constant Version_32 := 16#01d03c0a#;
   pragma Export (C, u02753, "pentdobl_complex_series_functionsS");
   u02754 : constant Version_32 := 16#f1455556#;
   pragma Export (C, u02754, "pentdobl_complex_numbers_polarB");
   u02755 : constant Version_32 := 16#41c25d2b#;
   pragma Export (C, u02755, "pentdobl_complex_numbers_polarS");
   u02756 : constant Version_32 := 16#fc250f50#;
   pragma Export (C, u02756, "pentdobl_complex_series_ioB");
   u02757 : constant Version_32 := 16#4ffdd2f1#;
   pragma Export (C, u02757, "pentdobl_complex_series_ioS");
   u02758 : constant Version_32 := 16#31909d4f#;
   pragma Export (C, u02758, "pentdobl_complex_vectors_ioB");
   u02759 : constant Version_32 := 16#fbb8ab7e#;
   pragma Export (C, u02759, "pentdobl_complex_vectors_ioS");
   u02760 : constant Version_32 := 16#220b12f6#;
   pragma Export (C, u02760, "pentdobl_complex_ring_ioS");
   u02761 : constant Version_32 := 16#a673d2d3#;
   pragma Export (C, u02761, "tripdobl_complex_series_functionsB");
   u02762 : constant Version_32 := 16#e6ad0b56#;
   pragma Export (C, u02762, "tripdobl_complex_series_functionsS");
   u02763 : constant Version_32 := 16#3013d061#;
   pragma Export (C, u02763, "tripdobl_complex_numbers_polarB");
   u02764 : constant Version_32 := 16#eefd3d21#;
   pragma Export (C, u02764, "tripdobl_complex_numbers_polarS");
   u02765 : constant Version_32 := 16#b8dcdb90#;
   pragma Export (C, u02765, "tripdobl_complex_series_ioB");
   u02766 : constant Version_32 := 16#1a04de29#;
   pragma Export (C, u02766, "tripdobl_complex_series_ioS");
   u02767 : constant Version_32 := 16#ba0c178a#;
   pragma Export (C, u02767, "tripdobl_complex_vectors_ioB");
   u02768 : constant Version_32 := 16#844bcdd1#;
   pragma Export (C, u02768, "tripdobl_complex_vectors_ioS");
   u02769 : constant Version_32 := 16#c79f975e#;
   pragma Export (C, u02769, "tripdobl_complex_ring_ioS");
   u02770 : constant Version_32 := 16#c75ece0b#;
   pragma Export (C, u02770, "decadobl_complex_series_matricesB");
   u02771 : constant Version_32 := 16#28af4979#;
   pragma Export (C, u02771, "decadobl_complex_series_matricesS");
   u02772 : constant Version_32 := 16#0af3709b#;
   pragma Export (C, u02772, "decadobl_cseries_jaco_matricesB");
   u02773 : constant Version_32 := 16#581ac437#;
   pragma Export (C, u02773, "decadobl_cseries_jaco_matricesS");
   u02774 : constant Version_32 := 16#d3b05e50#;
   pragma Export (C, u02774, "decadobl_cseries_poly_functionsB");
   u02775 : constant Version_32 := 16#8b16872e#;
   pragma Export (C, u02775, "decadobl_cseries_poly_functionsS");
   u02776 : constant Version_32 := 16#4683927a#;
   pragma Export (C, u02776, "decadobl_cseries_poly_sysfunB");
   u02777 : constant Version_32 := 16#7d5c43d3#;
   pragma Export (C, u02777, "decadobl_cseries_poly_sysfunS");
   u02778 : constant Version_32 := 16#3427b8f6#;
   pragma Export (C, u02778, "hexadobl_complex_series_matricesB");
   u02779 : constant Version_32 := 16#112c5ffe#;
   pragma Export (C, u02779, "hexadobl_complex_series_matricesS");
   u02780 : constant Version_32 := 16#441de6a0#;
   pragma Export (C, u02780, "hexadobl_cseries_jaco_matricesB");
   u02781 : constant Version_32 := 16#0d121634#;
   pragma Export (C, u02781, "hexadobl_cseries_jaco_matricesS");
   u02782 : constant Version_32 := 16#0dee3a60#;
   pragma Export (C, u02782, "hexadobl_cseries_poly_functionsB");
   u02783 : constant Version_32 := 16#b0e9563f#;
   pragma Export (C, u02783, "hexadobl_cseries_poly_functionsS");
   u02784 : constant Version_32 := 16#af110916#;
   pragma Export (C, u02784, "hexadobl_cseries_poly_sysfunB");
   u02785 : constant Version_32 := 16#95c37116#;
   pragma Export (C, u02785, "hexadobl_cseries_poly_sysfunS");
   u02786 : constant Version_32 := 16#55a7e3f6#;
   pragma Export (C, u02786, "octodobl_complex_series_matricesB");
   u02787 : constant Version_32 := 16#90e5c20f#;
   pragma Export (C, u02787, "octodobl_complex_series_matricesS");
   u02788 : constant Version_32 := 16#5195c90d#;
   pragma Export (C, u02788, "octodobl_cseries_jaco_matricesB");
   u02789 : constant Version_32 := 16#6c24027c#;
   pragma Export (C, u02789, "octodobl_cseries_jaco_matricesS");
   u02790 : constant Version_32 := 16#d22e9196#;
   pragma Export (C, u02790, "octodobl_cseries_poly_functionsB");
   u02791 : constant Version_32 := 16#eee9f761#;
   pragma Export (C, u02791, "octodobl_cseries_poly_functionsS");
   u02792 : constant Version_32 := 16#9b92cd20#;
   pragma Export (C, u02792, "octodobl_cseries_poly_sysfunB");
   u02793 : constant Version_32 := 16#80fd11f3#;
   pragma Export (C, u02793, "octodobl_cseries_poly_sysfunS");
   u02794 : constant Version_32 := 16#436b5491#;
   pragma Export (C, u02794, "pentdobl_complex_series_matricesB");
   u02795 : constant Version_32 := 16#8513022d#;
   pragma Export (C, u02795, "pentdobl_complex_series_matricesS");
   u02796 : constant Version_32 := 16#bd8a80ca#;
   pragma Export (C, u02796, "pentdobl_cseries_jaco_matricesB");
   u02797 : constant Version_32 := 16#f3587d44#;
   pragma Export (C, u02797, "pentdobl_cseries_jaco_matricesS");
   u02798 : constant Version_32 := 16#16e5acb5#;
   pragma Export (C, u02798, "pentdobl_cseries_poly_functionsB");
   u02799 : constant Version_32 := 16#8f6de0cc#;
   pragma Export (C, u02799, "pentdobl_cseries_poly_functionsS");
   u02800 : constant Version_32 := 16#564fd597#;
   pragma Export (C, u02800, "pentdobl_cseries_poly_sysfunB");
   u02801 : constant Version_32 := 16#e552906b#;
   pragma Export (C, u02801, "pentdobl_cseries_poly_sysfunS");
   u02802 : constant Version_32 := 16#7556bb24#;
   pragma Export (C, u02802, "quaddobl_complex_series_matricesB");
   u02803 : constant Version_32 := 16#266684d9#;
   pragma Export (C, u02803, "quaddobl_complex_series_matricesS");
   u02804 : constant Version_32 := 16#1a87971e#;
   pragma Export (C, u02804, "quaddobl_cseries_jaco_matricesB");
   u02805 : constant Version_32 := 16#5d24607d#;
   pragma Export (C, u02805, "quaddobl_cseries_jaco_matricesS");
   u02806 : constant Version_32 := 16#85ee6636#;
   pragma Export (C, u02806, "standard_complex_series_matricesB");
   u02807 : constant Version_32 := 16#b60b9a69#;
   pragma Export (C, u02807, "standard_complex_series_matricesS");
   u02808 : constant Version_32 := 16#bd5e847d#;
   pragma Export (C, u02808, "standard_cseries_jaco_matricesB");
   u02809 : constant Version_32 := 16#cac6b0c3#;
   pragma Export (C, u02809, "standard_cseries_jaco_matricesS");
   u02810 : constant Version_32 := 16#6eaa4768#;
   pragma Export (C, u02810, "tripdobl_complex_series_matricesB");
   u02811 : constant Version_32 := 16#fd2d5e5f#;
   pragma Export (C, u02811, "tripdobl_complex_series_matricesS");
   u02812 : constant Version_32 := 16#2019f458#;
   pragma Export (C, u02812, "tripdobl_cseries_jaco_matricesB");
   u02813 : constant Version_32 := 16#bd81da4e#;
   pragma Export (C, u02813, "tripdobl_cseries_jaco_matricesS");
   u02814 : constant Version_32 := 16#c39f1dd9#;
   pragma Export (C, u02814, "tripdobl_cseries_poly_functionsB");
   u02815 : constant Version_32 := 16#160dca29#;
   pragma Export (C, u02815, "tripdobl_cseries_poly_functionsS");
   u02816 : constant Version_32 := 16#16766c6f#;
   pragma Export (C, u02816, "tripdobl_cseries_polynomialsB");
   u02817 : constant Version_32 := 16#ad8cab7d#;
   pragma Export (C, u02817, "tripdobl_cseries_polynomialsS");
   u02818 : constant Version_32 := 16#e5887f4b#;
   pragma Export (C, u02818, "tripdobl_cseries_poly_sysfunB");
   u02819 : constant Version_32 := 16#1bd9500a#;
   pragma Export (C, u02819, "tripdobl_cseries_poly_sysfunS");
   u02820 : constant Version_32 := 16#84cc970d#;
   pragma Export (C, u02820, "tripdobl_cseries_poly_systemsB");
   u02821 : constant Version_32 := 16#9529536f#;
   pragma Export (C, u02821, "tripdobl_cseries_poly_systemsS");
   u02822 : constant Version_32 := 16#dc9b35ab#;
   pragma Export (C, u02822, "series_and_predictorsB");
   u02823 : constant Version_32 := 16#117fa2dd#;
   pragma Export (C, u02823, "series_and_predictorsS");
   u02824 : constant Version_32 := 16#c5cc3b0d#;
   pragma Export (C, u02824, "complex_series_and_polynomials_ioB");
   u02825 : constant Version_32 := 16#165b4739#;
   pragma Export (C, u02825, "complex_series_and_polynomials_ioS");
   u02826 : constant Version_32 := 16#3787989d#;
   pragma Export (C, u02826, "power_series_methodsB");
   u02827 : constant Version_32 := 16#9a9094da#;
   pragma Export (C, u02827, "power_series_methodsS");
   u02828 : constant Version_32 := 16#93f13f56#;
   pragma Export (C, u02828, "decadobl_newton_matrix_seriesB");
   u02829 : constant Version_32 := 16#c0060214#;
   pragma Export (C, u02829, "decadobl_newton_matrix_seriesS");
   u02830 : constant Version_32 := 16#e8572e19#;
   pragma Export (C, u02830, "decadobl_complex_matrix_seriesB");
   u02831 : constant Version_32 := 16#4454b664#;
   pragma Export (C, u02831, "decadobl_complex_matrix_seriesS");
   u02832 : constant Version_32 := 16#c9b3d3cb#;
   pragma Export (C, u02832, "decadobl_complex_vecmatsB");
   u02833 : constant Version_32 := 16#4a45a41f#;
   pragma Export (C, u02833, "decadobl_complex_vecmatsS");
   u02834 : constant Version_32 := 16#96adb10c#;
   pragma Export (C, u02834, "decadobl_complex_vector_seriesB");
   u02835 : constant Version_32 := 16#0b98397b#;
   pragma Export (C, u02835, "decadobl_complex_vector_seriesS");
   u02836 : constant Version_32 := 16#dd5fddd7#;
   pragma Export (C, u02836, "decadobl_cseries_vector_normsB");
   u02837 : constant Version_32 := 16#ef6fd1a0#;
   pragma Export (C, u02837, "decadobl_cseries_vector_normsS");
   u02838 : constant Version_32 := 16#19b81125#;
   pragma Export (C, u02838, "decadobl_complex_algebraic_seriesB");
   u02839 : constant Version_32 := 16#9d462dd0#;
   pragma Export (C, u02839, "decadobl_complex_algebraic_seriesS");
   u02840 : constant Version_32 := 16#4b3de6ac#;
   pragma Export (C, u02840, "decadobl_complex_series_normsB");
   u02841 : constant Version_32 := 16#89973556#;
   pragma Export (C, u02841, "decadobl_complex_series_normsS");
   u02842 : constant Version_32 := 16#9ff33ea6#;
   pragma Export (C, u02842, "decadobl_series_matrix_solversB");
   u02843 : constant Version_32 := 16#20ac814e#;
   pragma Export (C, u02843, "decadobl_series_matrix_solversS");
   u02844 : constant Version_32 := 16#abf25198#;
   pragma Export (C, u02844, "decadobl_complex_linear_solversB");
   u02845 : constant Version_32 := 16#d622b059#;
   pragma Export (C, u02845, "decadobl_complex_linear_solversS");
   u02846 : constant Version_32 := 16#d5d247ed#;
   pragma Export (C, u02846, "decadobl_complex_qr_least_squaresB");
   u02847 : constant Version_32 := 16#5ff55852#;
   pragma Export (C, u02847, "decadobl_complex_qr_least_squaresS");
   u02848 : constant Version_32 := 16#1dd36235#;
   pragma Export (C, u02848, "decadobl_complex_singular_valuesB");
   u02849 : constant Version_32 := 16#96dabd3e#;
   pragma Export (C, u02849, "decadobl_complex_singular_valuesS");
   u02850 : constant Version_32 := 16#c65ffd99#;
   pragma Export (C, u02850, "decadobl_echelon_formsB");
   u02851 : constant Version_32 := 16#f5eba9ea#;
   pragma Export (C, u02851, "decadobl_echelon_formsS");
   u02852 : constant Version_32 := 16#0fbdcea4#;
   pragma Export (C, u02852, "standard_echelon_formsB");
   u02853 : constant Version_32 := 16#c69eeb0c#;
   pragma Export (C, u02853, "standard_echelon_formsS");
   u02854 : constant Version_32 := 16#390deffd#;
   pragma Export (C, u02854, "decadobl_interpolating_cseriesB");
   u02855 : constant Version_32 := 16#de2d0e6b#;
   pragma Export (C, u02855, "decadobl_interpolating_cseriesS");
   u02856 : constant Version_32 := 16#a2be7360#;
   pragma Export (C, u02856, "deca_double_vectors_ioB");
   u02857 : constant Version_32 := 16#aef1ff6c#;
   pragma Export (C, u02857, "deca_double_vectors_ioS");
   u02858 : constant Version_32 := 16#8b12a328#;
   pragma Export (C, u02858, "deca_double_ring_ioS");
   u02859 : constant Version_32 := 16#ea744116#;
   pragma Export (C, u02859, "deca_double_vectorsB");
   u02860 : constant Version_32 := 16#c98fc1e2#;
   pragma Export (C, u02860, "deca_double_vectorsS");
   u02861 : constant Version_32 := 16#094c303e#;
   pragma Export (C, u02861, "decadobl_complex_matrices_ioB");
   u02862 : constant Version_32 := 16#6b94524d#;
   pragma Export (C, u02862, "decadobl_complex_matrices_ioS");
   u02863 : constant Version_32 := 16#21403e29#;
   pragma Export (C, u02863, "decadobl_complex_vector_normsB");
   u02864 : constant Version_32 := 16#d8cd9531#;
   pragma Export (C, u02864, "decadobl_complex_vector_normsS");
   u02865 : constant Version_32 := 16#deb1b83d#;
   pragma Export (C, u02865, "decadobl_complex_vecvecs_ioB");
   u02866 : constant Version_32 := 16#cd74ec0e#;
   pragma Export (C, u02866, "decadobl_complex_vecvecs_ioS");
   u02867 : constant Version_32 := 16#56dbf10c#;
   pragma Export (C, u02867, "decadobl_random_vectorsB");
   u02868 : constant Version_32 := 16#0cf7cc2d#;
   pragma Export (C, u02868, "decadobl_random_vectorsS");
   u02869 : constant Version_32 := 16#54ea4d10#;
   pragma Export (C, u02869, "standard_newton_matrix_seriesB");
   u02870 : constant Version_32 := 16#02b5ae5b#;
   pragma Export (C, u02870, "standard_newton_matrix_seriesS");
   u02871 : constant Version_32 := 16#33f0b59a#;
   pragma Export (C, u02871, "standard_complex_matrix_seriesB");
   u02872 : constant Version_32 := 16#c071a572#;
   pragma Export (C, u02872, "standard_complex_matrix_seriesS");
   u02873 : constant Version_32 := 16#e5d791ae#;
   pragma Export (C, u02873, "standard_complex_vector_seriesB");
   u02874 : constant Version_32 := 16#c0df79ec#;
   pragma Export (C, u02874, "standard_complex_vector_seriesS");
   u02875 : constant Version_32 := 16#37feecc1#;
   pragma Export (C, u02875, "standard_cseries_vector_normsB");
   u02876 : constant Version_32 := 16#4c4119b9#;
   pragma Export (C, u02876, "standard_cseries_vector_normsS");
   u02877 : constant Version_32 := 16#49364761#;
   pragma Export (C, u02877, "standard_complex_algebraic_seriesB");
   u02878 : constant Version_32 := 16#fd0cf628#;
   pragma Export (C, u02878, "standard_complex_algebraic_seriesS");
   u02879 : constant Version_32 := 16#27237428#;
   pragma Export (C, u02879, "standard_complex_series_normsB");
   u02880 : constant Version_32 := 16#3139d74f#;
   pragma Export (C, u02880, "standard_complex_series_normsS");
   u02881 : constant Version_32 := 16#4661dc5d#;
   pragma Export (C, u02881, "standard_series_matrix_solversB");
   u02882 : constant Version_32 := 16#736b83fa#;
   pragma Export (C, u02882, "standard_series_matrix_solversS");
   u02883 : constant Version_32 := 16#18c87e31#;
   pragma Export (C, u02883, "standard_interpolating_cseriesB");
   u02884 : constant Version_32 := 16#9e82fd23#;
   pragma Export (C, u02884, "standard_interpolating_cseriesS");
   u02885 : constant Version_32 := 16#b754c0d9#;
   pragma Export (C, u02885, "dobldobl_newton_matrix_seriesB");
   u02886 : constant Version_32 := 16#a3d0eb51#;
   pragma Export (C, u02886, "dobldobl_newton_matrix_seriesS");
   u02887 : constant Version_32 := 16#06217ca3#;
   pragma Export (C, u02887, "dobldobl_complex_matrix_seriesB");
   u02888 : constant Version_32 := 16#8235fc53#;
   pragma Export (C, u02888, "dobldobl_complex_matrix_seriesS");
   u02889 : constant Version_32 := 16#2f77e51e#;
   pragma Export (C, u02889, "dobldobl_complex_vector_seriesB");
   u02890 : constant Version_32 := 16#5a11a87e#;
   pragma Export (C, u02890, "dobldobl_complex_vector_seriesS");
   u02891 : constant Version_32 := 16#0de26c7b#;
   pragma Export (C, u02891, "dobldobl_cseries_vector_normsB");
   u02892 : constant Version_32 := 16#b9a85b73#;
   pragma Export (C, u02892, "dobldobl_cseries_vector_normsS");
   u02893 : constant Version_32 := 16#9eb7e6a7#;
   pragma Export (C, u02893, "dobldobl_complex_algebraic_seriesB");
   u02894 : constant Version_32 := 16#e79732b7#;
   pragma Export (C, u02894, "dobldobl_complex_algebraic_seriesS");
   u02895 : constant Version_32 := 16#15de1c19#;
   pragma Export (C, u02895, "dobldobl_complex_series_normsB");
   u02896 : constant Version_32 := 16#8ea60a88#;
   pragma Export (C, u02896, "dobldobl_complex_series_normsS");
   u02897 : constant Version_32 := 16#0e8cbf5a#;
   pragma Export (C, u02897, "dobldobl_series_matrix_solversB");
   u02898 : constant Version_32 := 16#32d8a9c3#;
   pragma Export (C, u02898, "dobldobl_series_matrix_solversS");
   u02899 : constant Version_32 := 16#133d421a#;
   pragma Export (C, u02899, "dobldobl_echelon_formsB");
   u02900 : constant Version_32 := 16#9479d269#;
   pragma Export (C, u02900, "dobldobl_echelon_formsS");
   u02901 : constant Version_32 := 16#ab83c936#;
   pragma Export (C, u02901, "dobldobl_interpolating_cseriesB");
   u02902 : constant Version_32 := 16#49923800#;
   pragma Export (C, u02902, "dobldobl_interpolating_cseriesS");
   u02903 : constant Version_32 := 16#b910f857#;
   pragma Export (C, u02903, "octodobl_newton_matrix_seriesB");
   u02904 : constant Version_32 := 16#51037d27#;
   pragma Export (C, u02904, "octodobl_newton_matrix_seriesS");
   u02905 : constant Version_32 := 16#b1a9d965#;
   pragma Export (C, u02905, "octodobl_complex_matrix_seriesB");
   u02906 : constant Version_32 := 16#4a4d454c#;
   pragma Export (C, u02906, "octodobl_complex_matrix_seriesS");
   u02907 : constant Version_32 := 16#cf96617b#;
   pragma Export (C, u02907, "octodobl_complex_vecmatsB");
   u02908 : constant Version_32 := 16#c56e0d78#;
   pragma Export (C, u02908, "octodobl_complex_vecmatsS");
   u02909 : constant Version_32 := 16#a7d8055e#;
   pragma Export (C, u02909, "octodobl_complex_vector_seriesB");
   u02910 : constant Version_32 := 16#c7539d90#;
   pragma Export (C, u02910, "octodobl_complex_vector_seriesS");
   u02911 : constant Version_32 := 16#f7606b0e#;
   pragma Export (C, u02911, "octodobl_cseries_vector_normsB");
   u02912 : constant Version_32 := 16#996617d9#;
   pragma Export (C, u02912, "octodobl_cseries_vector_normsS");
   u02913 : constant Version_32 := 16#f3942964#;
   pragma Export (C, u02913, "octodobl_complex_algebraic_seriesB");
   u02914 : constant Version_32 := 16#ad5629e0#;
   pragma Export (C, u02914, "octodobl_complex_algebraic_seriesS");
   u02915 : constant Version_32 := 16#2b20fc07#;
   pragma Export (C, u02915, "octodobl_complex_series_normsB");
   u02916 : constant Version_32 := 16#a8aa62c0#;
   pragma Export (C, u02916, "octodobl_complex_series_normsS");
   u02917 : constant Version_32 := 16#9f986cc0#;
   pragma Export (C, u02917, "octodobl_series_matrix_solversB");
   u02918 : constant Version_32 := 16#ddb1b4db#;
   pragma Export (C, u02918, "octodobl_series_matrix_solversS");
   u02919 : constant Version_32 := 16#d4eb7045#;
   pragma Export (C, u02919, "octodobl_complex_linear_solversB");
   u02920 : constant Version_32 := 16#f9ccbde1#;
   pragma Export (C, u02920, "octodobl_complex_linear_solversS");
   u02921 : constant Version_32 := 16#69915c7b#;
   pragma Export (C, u02921, "octodobl_complex_qr_least_squaresB");
   u02922 : constant Version_32 := 16#3ba4b6b3#;
   pragma Export (C, u02922, "octodobl_complex_qr_least_squaresS");
   u02923 : constant Version_32 := 16#64f72d0a#;
   pragma Export (C, u02923, "octodobl_complex_singular_valuesB");
   u02924 : constant Version_32 := 16#1c590491#;
   pragma Export (C, u02924, "octodobl_complex_singular_valuesS");
   u02925 : constant Version_32 := 16#8dc2f6ef#;
   pragma Export (C, u02925, "octodobl_echelon_formsB");
   u02926 : constant Version_32 := 16#2cb71358#;
   pragma Export (C, u02926, "octodobl_echelon_formsS");
   u02927 : constant Version_32 := 16#9617bbdf#;
   pragma Export (C, u02927, "octodobl_interpolating_cseriesB");
   u02928 : constant Version_32 := 16#8246f5d5#;
   pragma Export (C, u02928, "octodobl_interpolating_cseriesS");
   u02929 : constant Version_32 := 16#e5c0d102#;
   pragma Export (C, u02929, "octo_double_vectors_ioB");
   u02930 : constant Version_32 := 16#293173cb#;
   pragma Export (C, u02930, "octo_double_vectors_ioS");
   u02931 : constant Version_32 := 16#8c22a8b0#;
   pragma Export (C, u02931, "octo_double_ring_ioS");
   u02932 : constant Version_32 := 16#cbed782c#;
   pragma Export (C, u02932, "octo_double_vectorsB");
   u02933 : constant Version_32 := 16#7cf7cdf3#;
   pragma Export (C, u02933, "octo_double_vectorsS");
   u02934 : constant Version_32 := 16#d777410f#;
   pragma Export (C, u02934, "octodobl_complex_matrices_ioB");
   u02935 : constant Version_32 := 16#542ad4b4#;
   pragma Export (C, u02935, "octodobl_complex_matrices_ioS");
   u02936 : constant Version_32 := 16#3cfd6eff#;
   pragma Export (C, u02936, "octodobl_complex_vector_normsB");
   u02937 : constant Version_32 := 16#84a4f1e0#;
   pragma Export (C, u02937, "octodobl_complex_vector_normsS");
   u02938 : constant Version_32 := 16#9a722ac2#;
   pragma Export (C, u02938, "octodobl_complex_vecvecs_ioB");
   u02939 : constant Version_32 := 16#b5815b42#;
   pragma Export (C, u02939, "octodobl_complex_vecvecs_ioS");
   u02940 : constant Version_32 := 16#539dc086#;
   pragma Export (C, u02940, "octodobl_random_vectorsB");
   u02941 : constant Version_32 := 16#9758ee6c#;
   pragma Export (C, u02941, "octodobl_random_vectorsS");
   u02942 : constant Version_32 := 16#b8c8f100#;
   pragma Export (C, u02942, "pentdobl_newton_matrix_seriesB");
   u02943 : constant Version_32 := 16#d53bf342#;
   pragma Export (C, u02943, "pentdobl_newton_matrix_seriesS");
   u02944 : constant Version_32 := 16#9a940e89#;
   pragma Export (C, u02944, "pentdobl_complex_matrix_seriesB");
   u02945 : constant Version_32 := 16#fdf8608d#;
   pragma Export (C, u02945, "pentdobl_complex_matrix_seriesS");
   u02946 : constant Version_32 := 16#940d409f#;
   pragma Export (C, u02946, "pentdobl_complex_vecmatsB");
   u02947 : constant Version_32 := 16#ba20d280#;
   pragma Export (C, u02947, "pentdobl_complex_vecmatsS");
   u02948 : constant Version_32 := 16#8e0229cd#;
   pragma Export (C, u02948, "pentdobl_complex_vector_seriesB");
   u02949 : constant Version_32 := 16#c1611f27#;
   pragma Export (C, u02949, "pentdobl_complex_vector_seriesS");
   u02950 : constant Version_32 := 16#5515ebb4#;
   pragma Export (C, u02950, "pentdobl_cseries_vector_normsB");
   u02951 : constant Version_32 := 16#d8e116f4#;
   pragma Export (C, u02951, "pentdobl_cseries_vector_normsS");
   u02952 : constant Version_32 := 16#de0c27f3#;
   pragma Export (C, u02952, "pentdobl_complex_algebraic_seriesB");
   u02953 : constant Version_32 := 16#ca63712d#;
   pragma Export (C, u02953, "pentdobl_complex_algebraic_seriesS");
   u02954 : constant Version_32 := 16#84d27406#;
   pragma Export (C, u02954, "pentdobl_complex_series_normsB");
   u02955 : constant Version_32 := 16#a72a45af#;
   pragma Export (C, u02955, "pentdobl_complex_series_normsS");
   u02956 : constant Version_32 := 16#4b22d51d#;
   pragma Export (C, u02956, "pentdobl_series_matrix_solversB");
   u02957 : constant Version_32 := 16#67203e74#;
   pragma Export (C, u02957, "pentdobl_series_matrix_solversS");
   u02958 : constant Version_32 := 16#cbd4884a#;
   pragma Export (C, u02958, "pentdobl_complex_linear_solversB");
   u02959 : constant Version_32 := 16#3081f711#;
   pragma Export (C, u02959, "pentdobl_complex_linear_solversS");
   u02960 : constant Version_32 := 16#71d34c60#;
   pragma Export (C, u02960, "pentdobl_complex_qr_least_squaresB");
   u02961 : constant Version_32 := 16#aecec5b6#;
   pragma Export (C, u02961, "pentdobl_complex_qr_least_squaresS");
   u02962 : constant Version_32 := 16#f28a5e78#;
   pragma Export (C, u02962, "pentdobl_complex_singular_valuesB");
   u02963 : constant Version_32 := 16#4dce781a#;
   pragma Export (C, u02963, "pentdobl_complex_singular_valuesS");
   u02964 : constant Version_32 := 16#4d9b85af#;
   pragma Export (C, u02964, "pentdobl_echelon_formsB");
   u02965 : constant Version_32 := 16#ca2d0c13#;
   pragma Export (C, u02965, "pentdobl_echelon_formsS");
   u02966 : constant Version_32 := 16#3f76b219#;
   pragma Export (C, u02966, "pentdobl_interpolating_cseriesB");
   u02967 : constant Version_32 := 16#e9d52c0d#;
   pragma Export (C, u02967, "pentdobl_interpolating_cseriesS");
   u02968 : constant Version_32 := 16#27460517#;
   pragma Export (C, u02968, "penta_double_vectors_ioB");
   u02969 : constant Version_32 := 16#b805137c#;
   pragma Export (C, u02969, "penta_double_vectors_ioS");
   u02970 : constant Version_32 := 16#f0df2de9#;
   pragma Export (C, u02970, "penta_double_ring_ioS");
   u02971 : constant Version_32 := 16#7b05173f#;
   pragma Export (C, u02971, "penta_double_vectorsB");
   u02972 : constant Version_32 := 16#433cdeaa#;
   pragma Export (C, u02972, "penta_double_vectorsS");
   u02973 : constant Version_32 := 16#c8a69571#;
   pragma Export (C, u02973, "pentdobl_complex_matrices_ioB");
   u02974 : constant Version_32 := 16#bbb703d5#;
   pragma Export (C, u02974, "pentdobl_complex_matrices_ioS");
   u02975 : constant Version_32 := 16#7ecb757e#;
   pragma Export (C, u02975, "pentdobl_complex_vector_normsB");
   u02976 : constant Version_32 := 16#7bd7a934#;
   pragma Export (C, u02976, "pentdobl_complex_vector_normsS");
   u02977 : constant Version_32 := 16#6edc8a6b#;
   pragma Export (C, u02977, "pentdobl_complex_vecvecs_ioB");
   u02978 : constant Version_32 := 16#7ecf78a4#;
   pragma Export (C, u02978, "pentdobl_complex_vecvecs_ioS");
   u02979 : constant Version_32 := 16#1bbf1636#;
   pragma Export (C, u02979, "pentdobl_random_vectorsB");
   u02980 : constant Version_32 := 16#e62511d9#;
   pragma Export (C, u02980, "pentdobl_random_vectorsS");
   u02981 : constant Version_32 := 16#fefa87a6#;
   pragma Export (C, u02981, "quaddobl_newton_matrix_seriesB");
   u02982 : constant Version_32 := 16#e607ed33#;
   pragma Export (C, u02982, "quaddobl_newton_matrix_seriesS");
   u02983 : constant Version_32 := 16#e70ddd95#;
   pragma Export (C, u02983, "quaddobl_complex_matrix_seriesB");
   u02984 : constant Version_32 := 16#6822b6d6#;
   pragma Export (C, u02984, "quaddobl_complex_matrix_seriesS");
   u02985 : constant Version_32 := 16#b8843ded#;
   pragma Export (C, u02985, "quaddobl_complex_vector_seriesB");
   u02986 : constant Version_32 := 16#8c177623#;
   pragma Export (C, u02986, "quaddobl_complex_vector_seriesS");
   u02987 : constant Version_32 := 16#1b300c7a#;
   pragma Export (C, u02987, "quaddobl_cseries_vector_normsB");
   u02988 : constant Version_32 := 16#79e34cfc#;
   pragma Export (C, u02988, "quaddobl_cseries_vector_normsS");
   u02989 : constant Version_32 := 16#08c2808b#;
   pragma Export (C, u02989, "quaddobl_complex_algebraic_seriesB");
   u02990 : constant Version_32 := 16#3e95f70b#;
   pragma Export (C, u02990, "quaddobl_complex_algebraic_seriesS");
   u02991 : constant Version_32 := 16#d41629c7#;
   pragma Export (C, u02991, "quaddobl_complex_series_normsB");
   u02992 : constant Version_32 := 16#5b640afd#;
   pragma Export (C, u02992, "quaddobl_complex_series_normsS");
   u02993 : constant Version_32 := 16#5761fcb5#;
   pragma Export (C, u02993, "quaddobl_series_matrix_solversB");
   u02994 : constant Version_32 := 16#cd82ff66#;
   pragma Export (C, u02994, "quaddobl_series_matrix_solversS");
   u02995 : constant Version_32 := 16#8282218c#;
   pragma Export (C, u02995, "quaddobl_echelon_formsB");
   u02996 : constant Version_32 := 16#2fcc3042#;
   pragma Export (C, u02996, "quaddobl_echelon_formsS");
   u02997 : constant Version_32 := 16#daa5eaf2#;
   pragma Export (C, u02997, "quaddobl_interpolating_cseriesB");
   u02998 : constant Version_32 := 16#29551153#;
   pragma Export (C, u02998, "quaddobl_interpolating_cseriesS");
   u02999 : constant Version_32 := 16#db3637af#;
   pragma Export (C, u02999, "tripdobl_newton_matrix_seriesB");
   u03000 : constant Version_32 := 16#49a14aa7#;
   pragma Export (C, u03000, "tripdobl_newton_matrix_seriesS");
   u03001 : constant Version_32 := 16#4db7c94c#;
   pragma Export (C, u03001, "tripdobl_complex_matrix_seriesB");
   u03002 : constant Version_32 := 16#004d295e#;
   pragma Export (C, u03002, "tripdobl_complex_matrix_seriesS");
   u03003 : constant Version_32 := 16#fe1644d8#;
   pragma Export (C, u03003, "tripdobl_complex_matricesB");
   u03004 : constant Version_32 := 16#ae90c253#;
   pragma Export (C, u03004, "tripdobl_complex_matricesS");
   u03005 : constant Version_32 := 16#ff632c84#;
   pragma Export (C, u03005, "tripdobl_complex_vecmatsB");
   u03006 : constant Version_32 := 16#41c39d9e#;
   pragma Export (C, u03006, "tripdobl_complex_vecmatsS");
   u03007 : constant Version_32 := 16#5244149e#;
   pragma Export (C, u03007, "tripdobl_complex_vector_seriesB");
   u03008 : constant Version_32 := 16#956c0f77#;
   pragma Export (C, u03008, "tripdobl_complex_vector_seriesS");
   u03009 : constant Version_32 := 16#d5b0f002#;
   pragma Export (C, u03009, "tripdobl_cseries_vector_normsB");
   u03010 : constant Version_32 := 16#d14f1e25#;
   pragma Export (C, u03010, "tripdobl_cseries_vector_normsS");
   u03011 : constant Version_32 := 16#ba6a7d60#;
   pragma Export (C, u03011, "tripdobl_complex_algebraic_seriesB");
   u03012 : constant Version_32 := 16#da1bafbe#;
   pragma Export (C, u03012, "tripdobl_complex_algebraic_seriesS");
   u03013 : constant Version_32 := 16#02842f39#;
   pragma Export (C, u03013, "tripdobl_complex_series_normsB");
   u03014 : constant Version_32 := 16#21f2dbc2#;
   pragma Export (C, u03014, "tripdobl_complex_series_normsS");
   u03015 : constant Version_32 := 16#15e3dac7#;
   pragma Export (C, u03015, "tripdobl_series_matrix_solversB");
   u03016 : constant Version_32 := 16#517072a7#;
   pragma Export (C, u03016, "tripdobl_series_matrix_solversS");
   u03017 : constant Version_32 := 16#0446ce7a#;
   pragma Export (C, u03017, "tripdobl_complex_linear_solversB");
   u03018 : constant Version_32 := 16#95115a24#;
   pragma Export (C, u03018, "tripdobl_complex_linear_solversS");
   u03019 : constant Version_32 := 16#b20315d9#;
   pragma Export (C, u03019, "tripdobl_complex_qr_least_squaresB");
   u03020 : constant Version_32 := 16#2d5dcd58#;
   pragma Export (C, u03020, "tripdobl_complex_qr_least_squaresS");
   u03021 : constant Version_32 := 16#c07a39d0#;
   pragma Export (C, u03021, "tripdobl_complex_singular_valuesB");
   u03022 : constant Version_32 := 16#9869294d#;
   pragma Export (C, u03022, "tripdobl_complex_singular_valuesS");
   u03023 : constant Version_32 := 16#e1ea1ecc#;
   pragma Export (C, u03023, "tripdobl_echelon_formsB");
   u03024 : constant Version_32 := 16#eab8a50e#;
   pragma Export (C, u03024, "tripdobl_echelon_formsS");
   u03025 : constant Version_32 := 16#7fb0d3ff#;
   pragma Export (C, u03025, "tripdobl_interpolating_cseriesB");
   u03026 : constant Version_32 := 16#3055738c#;
   pragma Export (C, u03026, "tripdobl_interpolating_cseriesS");
   u03027 : constant Version_32 := 16#a783092f#;
   pragma Export (C, u03027, "tripdobl_complex_matrices_ioB");
   u03028 : constant Version_32 := 16#03b2de98#;
   pragma Export (C, u03028, "tripdobl_complex_matrices_ioS");
   u03029 : constant Version_32 := 16#cfa189bb#;
   pragma Export (C, u03029, "tripdobl_complex_vector_normsB");
   u03030 : constant Version_32 := 16#6d9b1a16#;
   pragma Export (C, u03030, "tripdobl_complex_vector_normsS");
   u03031 : constant Version_32 := 16#0d32ab89#;
   pragma Export (C, u03031, "tripdobl_complex_vecvecs_ioB");
   u03032 : constant Version_32 := 16#293ecb41#;
   pragma Export (C, u03032, "tripdobl_complex_vecvecs_ioS");
   u03033 : constant Version_32 := 16#311cb94f#;
   pragma Export (C, u03033, "tripdobl_random_vectorsB");
   u03034 : constant Version_32 := 16#0a73c451#;
   pragma Export (C, u03034, "tripdobl_random_vectorsS");
   u03035 : constant Version_32 := 16#1d406cb1#;
   pragma Export (C, u03035, "triple_double_vectorsB");
   u03036 : constant Version_32 := 16#f345c7cc#;
   pragma Export (C, u03036, "triple_double_vectorsS");
   u03037 : constant Version_32 := 16#97d61f37#;
   pragma Export (C, u03037, "triple_double_vectors_ioB");
   u03038 : constant Version_32 := 16#33eefd67#;
   pragma Export (C, u03038, "triple_double_vectors_ioS");
   u03039 : constant Version_32 := 16#8f2b9b60#;
   pragma Export (C, u03039, "triple_double_ring_ioS");
   u03040 : constant Version_32 := 16#c23f0da4#;
   pragma Export (C, u03040, "singular_values_of_hessiansB");
   u03041 : constant Version_32 := 16#4893389a#;
   pragma Export (C, u03041, "singular_values_of_hessiansS");
   u03042 : constant Version_32 := 16#5c958965#;
   pragma Export (C, u03042, "quaddobl_complex_hessiansB");
   u03043 : constant Version_32 := 16#32306ba5#;
   pragma Export (C, u03043, "quaddobl_complex_hessiansS");
   u03044 : constant Version_32 := 16#20800f66#;
   pragma Export (C, u03044, "standard_complex_hessiansB");
   u03045 : constant Version_32 := 16#4c6a2032#;
   pragma Export (C, u03045, "standard_complex_hessiansS");
   u03046 : constant Version_32 := 16#d5aefc1c#;
   pragma Export (C, u03046, "quaddobl_pade_approximantsB");
   u03047 : constant Version_32 := 16#d8ea42b5#;
   pragma Export (C, u03047, "quaddobl_pade_approximantsS");
   u03048 : constant Version_32 := 16#215bbeef#;
   pragma Export (C, u03048, "quaddobl_rational_approximationsB");
   u03049 : constant Version_32 := 16#b7e09367#;
   pragma Export (C, u03049, "quaddobl_rational_approximationsS");
   u03050 : constant Version_32 := 16#c98b75a1#;
   pragma Export (C, u03050, "tripdobl_coefficient_homotopyB");
   u03051 : constant Version_32 := 16#a6069dff#;
   pragma Export (C, u03051, "tripdobl_coefficient_homotopyS");
   u03052 : constant Version_32 := 16#fc9375fe#;
   pragma Export (C, u03052, "tripdobl_complex_jaco_matricesB");
   u03053 : constant Version_32 := 16#b8524535#;
   pragma Export (C, u03053, "tripdobl_complex_jaco_matricesS");
   u03054 : constant Version_32 := 16#7d981d70#;
   pragma Export (C, u03054, "tripdobl_complex_poly_functionsB");
   u03055 : constant Version_32 := 16#d903b2a4#;
   pragma Export (C, u03055, "tripdobl_complex_poly_functionsS");
   u03056 : constant Version_32 := 16#301ada35#;
   pragma Export (C, u03056, "tripdobl_complex_poly_sysfunB");
   u03057 : constant Version_32 := 16#523c4d67#;
   pragma Export (C, u03057, "tripdobl_complex_poly_sysfunS");
   u03058 : constant Version_32 := 16#38e7bbef#;
   pragma Export (C, u03058, "tripdobl_homotopyB");
   u03059 : constant Version_32 := 16#5bfa99fa#;
   pragma Export (C, u03059, "tripdobl_homotopyS");
   u03060 : constant Version_32 := 16#c95a1857#;
   pragma Export (C, u03060, "tripdobl_parameter_systemsB");
   u03061 : constant Version_32 := 16#90345ed2#;
   pragma Export (C, u03061, "tripdobl_parameter_systemsS");
   u03062 : constant Version_32 := 16#c5785818#;
   pragma Export (C, u03062, "standard_pade_trackersB");
   u03063 : constant Version_32 := 16#609c62fd#;
   pragma Export (C, u03063, "standard_pade_trackersS");
   u03064 : constant Version_32 := 16#5b90f837#;
   pragma Export (C, u03064, "homotopy_continuation_parametersB");
   u03065 : constant Version_32 := 16#4cb4557e#;
   pragma Export (C, u03065, "homotopy_continuation_parametersS");
   u03066 : constant Version_32 := 16#b6f7e329#;
   pragma Export (C, u03066, "homotopy_continuation_parameters_ioB");
   u03067 : constant Version_32 := 16#53c6faf1#;
   pragma Export (C, u03067, "homotopy_continuation_parameters_ioS");
   u03068 : constant Version_32 := 16#88b8cacc#;
   pragma Export (C, u03068, "quaddobl_seriespade_trackerB");
   u03069 : constant Version_32 := 16#0d56f2e8#;
   pragma Export (C, u03069, "quaddobl_seriespade_trackerS");
   u03070 : constant Version_32 := 16#b65ef4cb#;
   pragma Export (C, u03070, "quaddobl_pade_approximants_ioB");
   u03071 : constant Version_32 := 16#a362e7df#;
   pragma Export (C, u03071, "quaddobl_pade_approximants_ioS");
   u03072 : constant Version_32 := 16#4e591706#;
   pragma Export (C, u03072, "quaddobl_pade_trackersB");
   u03073 : constant Version_32 := 16#04fd3415#;
   pragma Export (C, u03073, "quaddobl_pade_trackersS");
   u03074 : constant Version_32 := 16#dcab02c9#;
   pragma Export (C, u03074, "series_path_trackersB");
   u03075 : constant Version_32 := 16#478dcd81#;
   pragma Export (C, u03075, "series_path_trackersS");
   u03076 : constant Version_32 := 16#539f812f#;
   pragma Export (C, u03076, "drivers_to_series_trackersB");
   u03077 : constant Version_32 := 16#5265e6b1#;
   pragma Export (C, u03077, "drivers_to_series_trackersS");
   u03078 : constant Version_32 := 16#36c77ff6#;
   pragma Export (C, u03078, "affine_transformationsB");
   u03079 : constant Version_32 := 16#a4585a7a#;
   pragma Export (C, u03079, "affine_transformationsS");
   u03080 : constant Version_32 := 16#516b660d#;
   pragma Export (C, u03080, "series_and_trackersB");
   u03081 : constant Version_32 := 16#cb5ddc95#;
   pragma Export (C, u03081, "series_and_trackersS");
   u03082 : constant Version_32 := 16#909be376#;
   pragma Export (C, u03082, "solution_dropsB");
   u03083 : constant Version_32 := 16#e8fdd4cc#;
   pragma Export (C, u03083, "solution_dropsS");
   u03084 : constant Version_32 := 16#313f4c19#;
   pragma Export (C, u03084, "standard_seriespade_trackerB");
   u03085 : constant Version_32 := 16#a480bd62#;
   pragma Export (C, u03085, "standard_seriespade_trackerS");
   u03086 : constant Version_32 := 16#bae0443c#;
   pragma Export (C, u03086, "main_laurent_series_newtonB");
   u03087 : constant Version_32 := 16#07202636#;
   pragma Export (C, u03087, "main_laurent_series_newtonS");
   u03088 : constant Version_32 := 16#4091a716#;
   pragma Export (C, u03088, "double_linear_laurent_solversB");
   u03089 : constant Version_32 := 16#c37e70e6#;
   pragma Export (C, u03089, "double_linear_laurent_solversS");
   u03090 : constant Version_32 := 16#43d49036#;
   pragma Export (C, u03090, "double_laurent_seriesB");
   u03091 : constant Version_32 := 16#1dfbd671#;
   pragma Export (C, u03091, "double_laurent_seriesS");
   u03092 : constant Version_32 := 16#f804dfe3#;
   pragma Export (C, u03092, "standard_complex_vecvecvecsB");
   u03093 : constant Version_32 := 16#28d43d38#;
   pragma Export (C, u03093, "standard_complex_vecvecvecsS");
   u03094 : constant Version_32 := 16#bb6b21a8#;
   pragma Export (C, u03094, "double_lseries_newton_stepsB");
   u03095 : constant Version_32 := 16#2b1931e8#;
   pragma Export (C, u03095, "double_lseries_newton_stepsS");
   u03096 : constant Version_32 := 16#7b156c50#;
   pragma Export (C, u03096, "test_double_lseries_matricesB");
   u03097 : constant Version_32 := 16#dbfce780#;
   pragma Export (C, u03097, "test_double_lseries_matricesS");
   u03098 : constant Version_32 := 16#ab6f0aa3#;
   pragma Export (C, u03098, "random_laurent_seriesB");
   u03099 : constant Version_32 := 16#c9d1d212#;
   pragma Export (C, u03099, "random_laurent_seriesS");
   u03100 : constant Version_32 := 16#a07508d1#;
   pragma Export (C, u03100, "double_lseries_polynomialsB");
   u03101 : constant Version_32 := 16#0f67396e#;
   pragma Export (C, u03101, "double_lseries_polynomialsS");
   u03102 : constant Version_32 := 16#da6c1f5a#;
   pragma Export (C, u03102, "multitasked_path_convolutionsB");
   u03103 : constant Version_32 := 16#7325afe2#;
   pragma Export (C, u03103, "multitasked_path_convolutionsS");
   u03104 : constant Version_32 := 16#0f2b3395#;
   pragma Export (C, u03104, "corrector_convolutionsB");
   u03105 : constant Version_32 := 16#4b230884#;
   pragma Export (C, u03105, "corrector_convolutionsS");
   u03106 : constant Version_32 := 16#cbe7f4b4#;
   pragma Export (C, u03106, "dobldobl_predictor_convolutionsB");
   u03107 : constant Version_32 := 16#ba9e96d7#;
   pragma Export (C, u03107, "dobldobl_predictor_convolutionsS");
   u03108 : constant Version_32 := 16#6adb9008#;
   pragma Export (C, u03108, "convergence_radius_estimatesB");
   u03109 : constant Version_32 := 16#c131fad6#;
   pragma Export (C, u03109, "convergence_radius_estimatesS");
   u03110 : constant Version_32 := 16#b64b10bf#;
   pragma Export (C, u03110, "dobldobl_newton_convolution_stepsB");
   u03111 : constant Version_32 := 16#0dd13dc7#;
   pragma Export (C, u03111, "dobldobl_newton_convolution_stepsS");
   u03112 : constant Version_32 := 16#d2b29007#;
   pragma Export (C, u03112, "dobldobl_newton_convolutionsB");
   u03113 : constant Version_32 := 16#d641e0c9#;
   pragma Export (C, u03113, "dobldobl_newton_convolutionsS");
   u03114 : constant Version_32 := 16#a1bd69cf#;
   pragma Export (C, u03114, "dobldobl_speelpenning_convolutionsB");
   u03115 : constant Version_32 := 16#2bfaa0a4#;
   pragma Export (C, u03115, "dobldobl_speelpenning_convolutionsS");
   u03116 : constant Version_32 := 16#91975c35#;
   pragma Export (C, u03116, "exponent_indicesB");
   u03117 : constant Version_32 := 16#f191f6df#;
   pragma Export (C, u03117, "exponent_indicesS");
   u03118 : constant Version_32 := 16#6a41e606#;
   pragma Export (C, u03118, "generic_speelpenning_convolutionsB");
   u03119 : constant Version_32 := 16#81c92442#;
   pragma Export (C, u03119, "generic_speelpenning_convolutionsS");
   u03120 : constant Version_32 := 16#b790503e#;
   pragma Export (C, u03120, "hessian_convolution_circuitsB");
   u03121 : constant Version_32 := 16#496021ef#;
   pragma Export (C, u03121, "hessian_convolution_circuitsS");
   u03122 : constant Version_32 := 16#f1767277#;
   pragma Export (C, u03122, "quaddobl_speelpenning_convolutionsB");
   u03123 : constant Version_32 := 16#5d684b39#;
   pragma Export (C, u03123, "quaddobl_speelpenning_convolutionsS");
   u03124 : constant Version_32 := 16#99412733#;
   pragma Export (C, u03124, "standard_speelpenning_convolutionsB");
   u03125 : constant Version_32 := 16#ebaeed23#;
   pragma Export (C, u03125, "standard_speelpenning_convolutionsS");
   u03126 : constant Version_32 := 16#6e6cb6bc#;
   pragma Export (C, u03126, "jacobian_convolution_circuitsB");
   u03127 : constant Version_32 := 16#228a5c9b#;
   pragma Export (C, u03127, "jacobian_convolution_circuitsS");
   u03128 : constant Version_32 := 16#8f1b8711#;
   pragma Export (C, u03128, "three_way_minimaB");
   u03129 : constant Version_32 := 16#e305f14e#;
   pragma Export (C, u03129, "three_way_minimaS");
   u03130 : constant Version_32 := 16#8a85c1b7#;
   pragma Export (C, u03130, "quaddobl_predictor_convolutionsB");
   u03131 : constant Version_32 := 16#2722184d#;
   pragma Export (C, u03131, "quaddobl_predictor_convolutionsS");
   u03132 : constant Version_32 := 16#5ead911e#;
   pragma Export (C, u03132, "quaddobl_newton_convolution_stepsB");
   u03133 : constant Version_32 := 16#af77e4a2#;
   pragma Export (C, u03133, "quaddobl_newton_convolution_stepsS");
   u03134 : constant Version_32 := 16#4c71ca58#;
   pragma Export (C, u03134, "quaddobl_newton_convolutionsB");
   u03135 : constant Version_32 := 16#026a8072#;
   pragma Export (C, u03135, "quaddobl_newton_convolutionsS");
   u03136 : constant Version_32 := 16#811be844#;
   pragma Export (C, u03136, "standard_predictor_convolutionsB");
   u03137 : constant Version_32 := 16#16d4b002#;
   pragma Export (C, u03137, "standard_predictor_convolutionsS");
   u03138 : constant Version_32 := 16#6603103f#;
   pragma Export (C, u03138, "staggered_newton_convolutionsB");
   u03139 : constant Version_32 := 16#4eafc569#;
   pragma Export (C, u03139, "staggered_newton_convolutionsS");
   u03140 : constant Version_32 := 16#bc2a9d9f#;
   pragma Export (C, u03140, "newton_coefficient_convolutionsB");
   u03141 : constant Version_32 := 16#cea791be#;
   pragma Export (C, u03141, "newton_coefficient_convolutionsS");
   u03142 : constant Version_32 := 16#fe66a354#;
   pragma Export (C, u03142, "dobldobl_vector_splittersB");
   u03143 : constant Version_32 := 16#5297aa30#;
   pragma Export (C, u03143, "dobldobl_vector_splittersS");
   u03144 : constant Version_32 := 16#54e23f9a#;
   pragma Export (C, u03144, "standard_inlined_linear_solversB");
   u03145 : constant Version_32 := 16#41f530f1#;
   pragma Export (C, u03145, "standard_inlined_linear_solversS");
   u03146 : constant Version_32 := 16#739b6225#;
   pragma Export (C, u03146, "standard_inlined_linearizationB");
   u03147 : constant Version_32 := 16#0e3671bd#;
   pragma Export (C, u03147, "standard_inlined_linearizationS");
   u03148 : constant Version_32 := 16#a8f20cd8#;
   pragma Export (C, u03148, "standard_matrix_splittersB");
   u03149 : constant Version_32 := 16#582c220a#;
   pragma Export (C, u03149, "standard_matrix_splittersS");
   u03150 : constant Version_32 := 16#e1e052e3#;
   pragma Export (C, u03150, "standard_floating_vecvecvecsB");
   u03151 : constant Version_32 := 16#9ba84d9e#;
   pragma Export (C, u03151, "standard_floating_vecvecvecsS");
   u03152 : constant Version_32 := 16#a3ed4998#;
   pragma Export (C, u03152, "standard_vector_splittersB");
   u03153 : constant Version_32 := 16#5d978b90#;
   pragma Export (C, u03153, "standard_vector_splittersS");
   u03154 : constant Version_32 := 16#07926036#;
   pragma Export (C, u03154, "standard_newton_convolutionsB");
   u03155 : constant Version_32 := 16#d7628e07#;
   pragma Export (C, u03155, "standard_newton_convolutionsS");
   u03156 : constant Version_32 := 16#2164c375#;
   pragma Export (C, u03156, "dobldobl_coefficient_convolutionsB");
   u03157 : constant Version_32 := 16#d41c3802#;
   pragma Export (C, u03157, "dobldobl_coefficient_convolutionsS");
   u03158 : constant Version_32 := 16#c9cd4343#;
   pragma Export (C, u03158, "standard_coefficient_convolutionsB");
   u03159 : constant Version_32 := 16#28acfe34#;
   pragma Export (C, u03159, "standard_coefficient_convolutionsS");
   u03160 : constant Version_32 := 16#ab4f9cb8#;
   pragma Export (C, u03160, "standard_inlined_singular_valuesB");
   u03161 : constant Version_32 := 16#f21e75bc#;
   pragma Export (C, u03161, "standard_inlined_singular_valuesS");
   u03162 : constant Version_32 := 16#2ce8f1ea#;
   pragma Export (C, u03162, "standard_inlined_blas_helpersB");
   u03163 : constant Version_32 := 16#b3215207#;
   pragma Export (C, u03163, "standard_inlined_blas_helpersS");
   u03164 : constant Version_32 := 16#d70f0c16#;
   pragma Export (C, u03164, "standard_newton_convolution_stepsB");
   u03165 : constant Version_32 := 16#7b960436#;
   pragma Export (C, u03165, "standard_newton_convolution_stepsS");
   u03166 : constant Version_32 := 16#c90b4b34#;
   pragma Export (C, u03166, "standard_coefficient_circuitsB");
   u03167 : constant Version_32 := 16#a2f5ddda#;
   pragma Export (C, u03167, "standard_coefficient_circuitsS");
   u03168 : constant Version_32 := 16#744eb543#;
   pragma Export (C, u03168, "standard_hessian_updatersB");
   u03169 : constant Version_32 := 16#4367cfc1#;
   pragma Export (C, u03169, "standard_hessian_updatersS");
   u03170 : constant Version_32 := 16#37cf4811#;
   pragma Export (C, u03170, "predictor_corrector_trackersB");
   u03171 : constant Version_32 := 16#15238487#;
   pragma Export (C, u03171, "predictor_corrector_trackersS");
   u03172 : constant Version_32 := 16#4cdebbef#;
   pragma Export (C, u03172, "predictor_corrector_loopsB");
   u03173 : constant Version_32 := 16#49155c6b#;
   pragma Export (C, u03173, "predictor_corrector_loopsS");
   u03174 : constant Version_32 := 16#8c99136e#;
   pragma Export (C, u03174, "hyperplane_convolution_scalingB");
   u03175 : constant Version_32 := 16#0bc2f400#;
   pragma Export (C, u03175, "hyperplane_convolution_scalingS");
   u03176 : constant Version_32 := 16#24ded210#;
   pragma Export (C, u03176, "residual_convolution_circuitsB");
   u03177 : constant Version_32 := 16#ebfd176a#;
   pragma Export (C, u03177, "residual_convolution_circuitsS");
   u03178 : constant Version_32 := 16#9e38d8e0#;
   pragma Export (C, u03178, "standard_inlined_newton_circuitsB");
   u03179 : constant Version_32 := 16#a81381c9#;
   pragma Export (C, u03179, "standard_inlined_newton_circuitsS");
   u03180 : constant Version_32 := 16#c0d08d3a#;
   pragma Export (C, u03180, "shift_coefficient_convolutionsB");
   u03181 : constant Version_32 := 16#b90f896a#;
   pragma Export (C, u03181, "shift_coefficient_convolutionsS");
   u03182 : constant Version_32 := 16#6e0060b5#;
   pragma Export (C, u03182, "shift_convolution_circuitsB");
   u03183 : constant Version_32 := 16#dc9cb273#;
   pragma Export (C, u03183, "shift_convolution_circuitsS");
   u03184 : constant Version_32 := 16#9b2f2a2b#;
   pragma Export (C, u03184, "standard_coefficient_storageB");
   u03185 : constant Version_32 := 16#795dcaec#;
   pragma Export (C, u03185, "standard_coefficient_storageS");
   u03186 : constant Version_32 := 16#e43f29e6#;
   pragma Export (C, u03186, "standard_complex_circuitsB");
   u03187 : constant Version_32 := 16#12ca6fe1#;
   pragma Export (C, u03187, "standard_complex_circuitsS");
   u03188 : constant Version_32 := 16#aae166a7#;
   pragma Export (C, u03188, "standard_circuit_makersB");
   u03189 : constant Version_32 := 16#06f621db#;
   pragma Export (C, u03189, "standard_circuit_makersS");
   u03190 : constant Version_32 := 16#4b1ab0a0#;
   pragma Export (C, u03190, "quaddobl_complex_circuitsB");
   u03191 : constant Version_32 := 16#ca9b33e1#;
   pragma Export (C, u03191, "quaddobl_complex_circuitsS");
   u03192 : constant Version_32 := 16#1e54f1c0#;
   pragma Export (C, u03192, "quaddobl_hessian_updatersB");
   u03193 : constant Version_32 := 16#0eb2ab49#;
   pragma Export (C, u03193, "quaddobl_hessian_updatersS");
   u03194 : constant Version_32 := 16#ae87ac85#;
   pragma Export (C, u03194, "standard_convolution_splittersB");
   u03195 : constant Version_32 := 16#4c2da808#;
   pragma Export (C, u03195, "standard_convolution_splittersS");
   u03196 : constant Version_32 := 16#12912d07#;
   pragma Export (C, u03196, "standard_newton_circuitsB");
   u03197 : constant Version_32 := 16#3513dfb0#;
   pragma Export (C, u03197, "standard_newton_circuitsS");
   u03198 : constant Version_32 := 16#74466c25#;
   pragma Export (C, u03198, "track_path_convolutionsB");
   u03199 : constant Version_32 := 16#da3b5679#;
   pragma Export (C, u03199, "track_path_convolutionsS");
   u03200 : constant Version_32 := 16#c5ec183d#;
   pragma Export (C, u03200, "dobldobl_homotopy_convolutions_ioB");
   u03201 : constant Version_32 := 16#990ad176#;
   pragma Export (C, u03201, "dobldobl_homotopy_convolutions_ioS");
   u03202 : constant Version_32 := 16#38eea93d#;
   pragma Export (C, u03202, "system_convolution_circuitsB");
   u03203 : constant Version_32 := 16#24125f38#;
   pragma Export (C, u03203, "system_convolution_circuitsS");
   u03204 : constant Version_32 := 16#80787282#;
   pragma Export (C, u03204, "varbprec_vecvec_conversionsB");
   u03205 : constant Version_32 := 16#ec03c3ab#;
   pragma Export (C, u03205, "varbprec_vecvec_conversionsS");
   u03206 : constant Version_32 := 16#b3be5f2a#;
   pragma Export (C, u03206, "triple_double_vecvecsB");
   u03207 : constant Version_32 := 16#5ef3d4ae#;
   pragma Export (C, u03207, "triple_double_vecvecsS");
   u03208 : constant Version_32 := 16#b0b7f572#;
   pragma Export (C, u03208, "decadobl_speelpenning_convolutionsB");
   u03209 : constant Version_32 := 16#2800102d#;
   pragma Export (C, u03209, "decadobl_speelpenning_convolutionsS");
   u03210 : constant Version_32 := 16#9a0a431c#;
   pragma Export (C, u03210, "hexadobl_speelpenning_convolutionsB");
   u03211 : constant Version_32 := 16#f38bf112#;
   pragma Export (C, u03211, "hexadobl_speelpenning_convolutionsS");
   u03212 : constant Version_32 := 16#2e71ed50#;
   pragma Export (C, u03212, "hexadobl_complex_vecmatsB");
   u03213 : constant Version_32 := 16#c5f7baeb#;
   pragma Export (C, u03213, "hexadobl_complex_vecmatsS");
   u03214 : constant Version_32 := 16#4d2fd92a#;
   pragma Export (C, u03214, "octodobl_speelpenning_convolutionsB");
   u03215 : constant Version_32 := 16#28ccc649#;
   pragma Export (C, u03215, "octodobl_speelpenning_convolutionsS");
   u03216 : constant Version_32 := 16#b05385c4#;
   pragma Export (C, u03216, "pentdobl_speelpenning_convolutionsB");
   u03217 : constant Version_32 := 16#96c4bde4#;
   pragma Export (C, u03217, "pentdobl_speelpenning_convolutionsS");
   u03218 : constant Version_32 := 16#c3ca922d#;
   pragma Export (C, u03218, "tripdobl_speelpenning_convolutionsB");
   u03219 : constant Version_32 := 16#555211bb#;
   pragma Export (C, u03219, "tripdobl_speelpenning_convolutionsS");
   u03220 : constant Version_32 := 16#1013ef1d#;
   pragma Export (C, u03220, "test_series_predictorsB");
   u03221 : constant Version_32 := 16#ba82bea9#;
   pragma Export (C, u03221, "test_series_predictorsS");
   u03222 : constant Version_32 := 16#d97f23a0#;
   pragma Export (C, u03222, "quaddobl_homotopy_convolutions_ioB");
   u03223 : constant Version_32 := 16#6128a3be#;
   pragma Export (C, u03223, "quaddobl_homotopy_convolutions_ioS");
   u03224 : constant Version_32 := 16#4dbde7d6#;
   pragma Export (C, u03224, "standard_homotopy_convolutions_ioB");
   u03225 : constant Version_32 := 16#c8253a0a#;
   pragma Export (C, u03225, "standard_homotopy_convolutions_ioS");
   u03226 : constant Version_32 := 16#5f5f0f7e#;
   pragma Export (C, u03226, "newton_fabry_on_homotopyB");
   u03227 : constant Version_32 := 16#f36c92ef#;
   pragma Export (C, u03227, "newton_fabry_on_homotopyS");
   u03228 : constant Version_32 := 16#dcaba250#;
   pragma Export (C, u03228, "decadobl_fabry_on_homotopyB");
   u03229 : constant Version_32 := 16#8c17f2a9#;
   pragma Export (C, u03229, "decadobl_fabry_on_homotopyS");
   u03230 : constant Version_32 := 16#b951a08e#;
   pragma Export (C, u03230, "decadobl_homotopy_convolutions_ioB");
   u03231 : constant Version_32 := 16#6d10dac4#;
   pragma Export (C, u03231, "decadobl_homotopy_convolutions_ioS");
   u03232 : constant Version_32 := 16#693b6ca0#;
   pragma Export (C, u03232, "decadobl_newton_convolution_stepsB");
   u03233 : constant Version_32 := 16#5247390a#;
   pragma Export (C, u03233, "decadobl_newton_convolution_stepsS");
   u03234 : constant Version_32 := 16#679fc09b#;
   pragma Export (C, u03234, "decadobl_newton_convolutionsB");
   u03235 : constant Version_32 := 16#a1cfdf51#;
   pragma Export (C, u03235, "decadobl_newton_convolutionsS");
   u03236 : constant Version_32 := 16#787c3949#;
   pragma Export (C, u03236, "fabry_on_homotopy_helpersB");
   u03237 : constant Version_32 := 16#0dcf090f#;
   pragma Export (C, u03237, "fabry_on_homotopy_helpersS");
   u03238 : constant Version_32 := 16#ad8b3bae#;
   pragma Export (C, u03238, "multitasked_power_newtonB");
   u03239 : constant Version_32 := 16#67445caa#;
   pragma Export (C, u03239, "multitasked_power_newtonS");
   u03240 : constant Version_32 := 16#6cdb7272#;
   pragma Export (C, u03240, "multitasked_newton_convolutionsB");
   u03241 : constant Version_32 := 16#596b994e#;
   pragma Export (C, u03241, "multitasked_newton_convolutionsS");
   u03242 : constant Version_32 := 16#fe46b487#;
   pragma Export (C, u03242, "hexadobl_newton_convolutionsB");
   u03243 : constant Version_32 := 16#659802ff#;
   pragma Export (C, u03243, "hexadobl_newton_convolutionsS");
   u03244 : constant Version_32 := 16#fcca4380#;
   pragma Export (C, u03244, "hexadobl_complex_vecvecs_ioB");
   u03245 : constant Version_32 := 16#83a467d9#;
   pragma Export (C, u03245, "hexadobl_complex_vecvecs_ioS");
   u03246 : constant Version_32 := 16#05515df5#;
   pragma Export (C, u03246, "hexadobl_series_matrix_solversB");
   u03247 : constant Version_32 := 16#b3d2999b#;
   pragma Export (C, u03247, "hexadobl_series_matrix_solversS");
   u03248 : constant Version_32 := 16#87e1fa83#;
   pragma Export (C, u03248, "hexadobl_complex_linear_solversB");
   u03249 : constant Version_32 := 16#5a70dc81#;
   pragma Export (C, u03249, "hexadobl_complex_linear_solversS");
   u03250 : constant Version_32 := 16#cc5e0f7c#;
   pragma Export (C, u03250, "hexadobl_complex_qr_least_squaresB");
   u03251 : constant Version_32 := 16#b5abe46b#;
   pragma Export (C, u03251, "hexadobl_complex_qr_least_squaresS");
   u03252 : constant Version_32 := 16#ed1c3229#;
   pragma Export (C, u03252, "hexadobl_complex_singular_valuesB");
   u03253 : constant Version_32 := 16#d11d612c#;
   pragma Export (C, u03253, "hexadobl_complex_singular_valuesS");
   u03254 : constant Version_32 := 16#511d68a8#;
   pragma Export (C, u03254, "hexadobl_echelon_formsB");
   u03255 : constant Version_32 := 16#e9715f0b#;
   pragma Export (C, u03255, "hexadobl_echelon_formsS");
   u03256 : constant Version_32 := 16#bd15a18f#;
   pragma Export (C, u03256, "hexadobl_interpolating_cseriesB");
   u03257 : constant Version_32 := 16#1a693642#;
   pragma Export (C, u03257, "hexadobl_interpolating_cseriesS");
   u03258 : constant Version_32 := 16#3792032e#;
   pragma Export (C, u03258, "hexa_double_vectors_ioB");
   u03259 : constant Version_32 := 16#2ea22d85#;
   pragma Export (C, u03259, "hexa_double_vectors_ioS");
   u03260 : constant Version_32 := 16#65a23a61#;
   pragma Export (C, u03260, "hexa_double_ring_ioS");
   u03261 : constant Version_32 := 16#07daa31b#;
   pragma Export (C, u03261, "hexa_double_vectorsB");
   u03262 : constant Version_32 := 16#20dec6b8#;
   pragma Export (C, u03262, "hexa_double_vectorsS");
   u03263 : constant Version_32 := 16#8adda30e#;
   pragma Export (C, u03263, "hexadobl_complex_matrices_ioB");
   u03264 : constant Version_32 := 16#e6f79659#;
   pragma Export (C, u03264, "hexadobl_complex_matrices_ioS");
   u03265 : constant Version_32 := 16#bf1164e9#;
   pragma Export (C, u03265, "hexadobl_complex_vector_normsB");
   u03266 : constant Version_32 := 16#ee6b0d01#;
   pragma Export (C, u03266, "hexadobl_complex_vector_normsS");
   u03267 : constant Version_32 := 16#1023bf53#;
   pragma Export (C, u03267, "hexadobl_random_vectorsB");
   u03268 : constant Version_32 := 16#9258ba9c#;
   pragma Export (C, u03268, "hexadobl_random_vectorsS");
   u03269 : constant Version_32 := 16#ea58c080#;
   pragma Export (C, u03269, "hexadobl_complex_matrix_seriesB");
   u03270 : constant Version_32 := 16#b19e3430#;
   pragma Export (C, u03270, "hexadobl_complex_matrix_seriesS");
   u03271 : constant Version_32 := 16#6e354633#;
   pragma Export (C, u03271, "hexadobl_complex_vector_seriesB");
   u03272 : constant Version_32 := 16#346070a3#;
   pragma Export (C, u03272, "hexadobl_complex_vector_seriesS");
   u03273 : constant Version_32 := 16#a25caf68#;
   pragma Export (C, u03273, "multitasked_algodiff_convolutionsB");
   u03274 : constant Version_32 := 16#f29ae1fe#;
   pragma Export (C, u03274, "multitasked_algodiff_convolutionsS");
   u03275 : constant Version_32 := 16#0513e9ec#;
   pragma Export (C, u03275, "ada__calendar__delaysB");
   u03276 : constant Version_32 := 16#205f84f4#;
   pragma Export (C, u03276, "ada__calendar__delaysS");
   u03277 : constant Version_32 := 16#f57ffb85#;
   pragma Export (C, u03277, "quaddobl_vector_splittersB");
   u03278 : constant Version_32 := 16#ccf60ff6#;
   pragma Export (C, u03278, "quaddobl_vector_splittersS");
   u03279 : constant Version_32 := 16#6e24dc8a#;
   pragma Export (C, u03279, "quaddobl_coefficient_convolutionsB");
   u03280 : constant Version_32 := 16#1ad3db36#;
   pragma Export (C, u03280, "quaddobl_coefficient_convolutionsS");
   u03281 : constant Version_32 := 16#c2456677#;
   pragma Export (C, u03281, "multitasked_series_linearizationB");
   u03282 : constant Version_32 := 16#163ac1f3#;
   pragma Export (C, u03282, "multitasked_series_linearizationS");
   u03283 : constant Version_32 := 16#89a39ebe#;
   pragma Export (C, u03283, "octodobl_newton_convolutionsB");
   u03284 : constant Version_32 := 16#98ebdb23#;
   pragma Export (C, u03284, "octodobl_newton_convolutionsS");
   u03285 : constant Version_32 := 16#8c22809f#;
   pragma Export (C, u03285, "pentdobl_newton_convolutionsB");
   u03286 : constant Version_32 := 16#274046d5#;
   pragma Export (C, u03286, "pentdobl_newton_convolutionsS");
   u03287 : constant Version_32 := 16#acbdb834#;
   pragma Export (C, u03287, "tripdobl_newton_convolutionsB");
   u03288 : constant Version_32 := 16#ea696c39#;
   pragma Export (C, u03288, "tripdobl_newton_convolutionsS");
   u03289 : constant Version_32 := 16#c61b3020#;
   pragma Export (C, u03289, "dobldobl_fabry_on_homotopyB");
   u03290 : constant Version_32 := 16#c5773e05#;
   pragma Export (C, u03290, "dobldobl_fabry_on_homotopyS");
   u03291 : constant Version_32 := 16#d724d398#;
   pragma Export (C, u03291, "hexadobl_fabry_on_homotopyB");
   u03292 : constant Version_32 := 16#c59fee40#;
   pragma Export (C, u03292, "hexadobl_fabry_on_homotopyS");
   u03293 : constant Version_32 := 16#c16f3767#;
   pragma Export (C, u03293, "hexadobl_homotopy_convolutions_ioB");
   u03294 : constant Version_32 := 16#5980e3bd#;
   pragma Export (C, u03294, "hexadobl_homotopy_convolutions_ioS");
   u03295 : constant Version_32 := 16#c5f8205c#;
   pragma Export (C, u03295, "hexadobl_newton_convolution_stepsB");
   u03296 : constant Version_32 := 16#73752d91#;
   pragma Export (C, u03296, "hexadobl_newton_convolution_stepsS");
   u03297 : constant Version_32 := 16#4be87746#;
   pragma Export (C, u03297, "octodobl_fabry_on_homotopyB");
   u03298 : constant Version_32 := 16#a8fd048f#;
   pragma Export (C, u03298, "octodobl_fabry_on_homotopyS");
   u03299 : constant Version_32 := 16#eb19b254#;
   pragma Export (C, u03299, "octodobl_homotopy_convolutions_ioB");
   u03300 : constant Version_32 := 16#d058ca91#;
   pragma Export (C, u03300, "octodobl_homotopy_convolutions_ioS");
   u03301 : constant Version_32 := 16#35e6d08d#;
   pragma Export (C, u03301, "octodobl_newton_convolution_stepsB");
   u03302 : constant Version_32 := 16#f30307b3#;
   pragma Export (C, u03302, "octodobl_newton_convolution_stepsS");
   u03303 : constant Version_32 := 16#80e806a7#;
   pragma Export (C, u03303, "pentdobl_fabry_on_homotopyB");
   u03304 : constant Version_32 := 16#e2b23235#;
   pragma Export (C, u03304, "pentdobl_fabry_on_homotopyS");
   u03305 : constant Version_32 := 16#e3fa3d80#;
   pragma Export (C, u03305, "pentdobl_homotopy_convolutions_ioB");
   u03306 : constant Version_32 := 16#6b566fef#;
   pragma Export (C, u03306, "pentdobl_homotopy_convolutions_ioS");
   u03307 : constant Version_32 := 16#4f23cef6#;
   pragma Export (C, u03307, "pentdobl_newton_convolution_stepsB");
   u03308 : constant Version_32 := 16#df61e13a#;
   pragma Export (C, u03308, "pentdobl_newton_convolution_stepsS");
   u03309 : constant Version_32 := 16#86ae2049#;
   pragma Export (C, u03309, "quaddobl_fabry_on_homotopyB");
   u03310 : constant Version_32 := 16#afcff8e4#;
   pragma Export (C, u03310, "quaddobl_fabry_on_homotopyS");
   u03311 : constant Version_32 := 16#a4ee4a75#;
   pragma Export (C, u03311, "standard_fabry_on_homotopyB");
   u03312 : constant Version_32 := 16#36229a12#;
   pragma Export (C, u03312, "standard_fabry_on_homotopyS");
   u03313 : constant Version_32 := 16#eef5abc1#;
   pragma Export (C, u03313, "tripdobl_fabry_on_homotopyB");
   u03314 : constant Version_32 := 16#92940d3e#;
   pragma Export (C, u03314, "tripdobl_fabry_on_homotopyS");
   u03315 : constant Version_32 := 16#befac19e#;
   pragma Export (C, u03315, "tripdobl_homotopy_convolutions_ioB");
   u03316 : constant Version_32 := 16#51fd34d2#;
   pragma Export (C, u03316, "tripdobl_homotopy_convolutions_ioS");
   u03317 : constant Version_32 := 16#f37e6a83#;
   pragma Export (C, u03317, "tripdobl_newton_convolution_stepsB");
   u03318 : constant Version_32 := 16#e9ba40dd#;
   pragma Export (C, u03318, "tripdobl_newton_convolution_stepsS");
   u03319 : constant Version_32 := 16#93b8b572#;
   pragma Export (C, u03319, "regular_newton_puiseuxB");
   u03320 : constant Version_32 := 16#6510da2e#;
   pragma Export (C, u03320, "regular_newton_puiseuxS");
   u03321 : constant Version_32 := 16#8f3472bd#;
   pragma Export (C, u03321, "regular_solution_curves_seriesB");
   u03322 : constant Version_32 := 16#77bb82a8#;
   pragma Export (C, u03322, "regular_solution_curves_seriesS");
   u03323 : constant Version_32 := 16#ea02f6f7#;
   pragma Export (C, u03323, "run_power_series_methodsB");
   u03324 : constant Version_32 := 16#64ed5639#;
   pragma Export (C, u03324, "run_power_series_methodsS");
   u03325 : constant Version_32 := 16#3140a753#;
   pragma Export (C, u03325, "main_pieri_countB");
   u03326 : constant Version_32 := 16#12a2b908#;
   pragma Export (C, u03326, "main_pieri_countS");
   u03327 : constant Version_32 := 16#29044338#;
   pragma Export (C, u03327, "localization_posetsB");
   u03328 : constant Version_32 := 16#f2fd7dd6#;
   pragma Export (C, u03328, "localization_posetsS");
   u03329 : constant Version_32 := 16#174a7258#;
   pragma Export (C, u03329, "main_reductionB");
   u03330 : constant Version_32 := 16#d87ba26f#;
   pragma Export (C, u03330, "main_reductionS");
   u03331 : constant Version_32 := 16#31628c1e#;
   pragma Export (C, u03331, "reduction_of_nonsquare_systemsB");
   u03332 : constant Version_32 := 16#85b59e50#;
   pragma Export (C, u03332, "reduction_of_nonsquare_systemsS");
   u03333 : constant Version_32 := 16#6e7b2638#;
   pragma Export (C, u03333, "reduction_of_polynomialsB");
   u03334 : constant Version_32 := 16#f0cd1ad2#;
   pragma Export (C, u03334, "reduction_of_polynomialsS");
   u03335 : constant Version_32 := 16#c884cbaa#;
   pragma Export (C, u03335, "reduction_of_polynomial_systemsB");
   u03336 : constant Version_32 := 16#e2e1ac78#;
   pragma Export (C, u03336, "reduction_of_polynomial_systemsS");
   u03337 : constant Version_32 := 16#357b0169#;
   pragma Export (C, u03337, "dobldobl_linear_reductionB");
   u03338 : constant Version_32 := 16#0aeabd7e#;
   pragma Export (C, u03338, "dobldobl_linear_reductionS");
   u03339 : constant Version_32 := 16#ed6d1670#;
   pragma Export (C, u03339, "quaddobl_linear_reductionB");
   u03340 : constant Version_32 := 16#8742c66f#;
   pragma Export (C, u03340, "quaddobl_linear_reductionS");
   u03341 : constant Version_32 := 16#0bd5597a#;
   pragma Export (C, u03341, "standard_linear_reductionB");
   u03342 : constant Version_32 := 16#bc2500e2#;
   pragma Export (C, u03342, "standard_linear_reductionS");
   u03343 : constant Version_32 := 16#b7c69e74#;
   pragma Export (C, u03343, "main_root_countersB");
   u03344 : constant Version_32 := 16#efcc7531#;
   pragma Export (C, u03344, "main_root_countersS");
   u03345 : constant Version_32 := 16#0028f027#;
   pragma Export (C, u03345, "bye_bye_messageB");
   u03346 : constant Version_32 := 16#64fba5f2#;
   pragma Export (C, u03346, "bye_bye_messageS");
   u03347 : constant Version_32 := 16#f0e2ce37#;
   pragma Export (C, u03347, "driver_for_own_start_systemB");
   u03348 : constant Version_32 := 16#d0535175#;
   pragma Export (C, u03348, "driver_for_own_start_systemS");
   u03349 : constant Version_32 := 16#595f8584#;
   pragma Export (C, u03349, "driver_for_symmetric_set_structureB");
   u03350 : constant Version_32 := 16#25b3ac61#;
   pragma Export (C, u03350, "driver_for_symmetric_set_structureS");
   u03351 : constant Version_32 := 16#8189454a#;
   pragma Export (C, u03351, "degree_sets_tablesB");
   u03352 : constant Version_32 := 16#9ae99780#;
   pragma Export (C, u03352, "degree_sets_tablesS");
   u03353 : constant Version_32 := 16#4e54dad3#;
   pragma Export (C, u03353, "pivot_selectionB");
   u03354 : constant Version_32 := 16#705ed521#;
   pragma Export (C, u03354, "pivot_selectionS");
   u03355 : constant Version_32 := 16#ee2bfb7c#;
   pragma Export (C, u03355, "drivers_for_symmetry_group_ioB");
   u03356 : constant Version_32 := 16#a7edf4a5#;
   pragma Export (C, u03356, "drivers_for_symmetry_group_ioS");
   u03357 : constant Version_32 := 16#a2bf0199#;
   pragma Export (C, u03357, "symbolic_symmetry_group_ioB");
   u03358 : constant Version_32 := 16#ac1f2b07#;
   pragma Export (C, u03358, "symbolic_symmetry_group_ioS");
   u03359 : constant Version_32 := 16#962f1ca5#;
   pragma Export (C, u03359, "symmetry_groupB");
   u03360 : constant Version_32 := 16#c8054298#;
   pragma Export (C, u03360, "symmetry_groupS");
   u03361 : constant Version_32 := 16#6e6208d9#;
   pragma Export (C, u03361, "equivariant_polynomial_systemsB");
   u03362 : constant Version_32 := 16#f587b922#;
   pragma Export (C, u03362, "equivariant_polynomial_systemsS");
   u03363 : constant Version_32 := 16#d7b0ea77#;
   pragma Export (C, u03363, "linear_symmetric_reductionB");
   u03364 : constant Version_32 := 16#d105094b#;
   pragma Export (C, u03364, "linear_symmetric_reductionS");
   u03365 : constant Version_32 := 16#9294ee67#;
   pragma Export (C, u03365, "orbits_of_solutionsB");
   u03366 : constant Version_32 := 16#c59f7d58#;
   pragma Export (C, u03366, "orbits_of_solutionsS");
   u03367 : constant Version_32 := 16#180eee88#;
   pragma Export (C, u03367, "symmetric_set_structureB");
   u03368 : constant Version_32 := 16#fb0b3cb4#;
   pragma Export (C, u03368, "symmetric_set_structureS");
   u03369 : constant Version_32 := 16#1e609c9b#;
   pragma Export (C, u03369, "templatesB");
   u03370 : constant Version_32 := 16#4ab7c6a4#;
   pragma Export (C, u03370, "templatesS");
   u03371 : constant Version_32 := 16#3ebb0761#;
   pragma Export (C, u03371, "symmetry_group_ioB");
   u03372 : constant Version_32 := 16#9305c0a5#;
   pragma Export (C, u03372, "symmetry_group_ioS");
   u03373 : constant Version_32 := 16#327c3787#;
   pragma Export (C, u03373, "drivers_for_demics_algorithmB");
   u03374 : constant Version_32 := 16#3c7d5fff#;
   pragma Export (C, u03374, "drivers_for_demics_algorithmS");
   u03375 : constant Version_32 := 16#12951221#;
   pragma Export (C, u03375, "demics_output_cellsB");
   u03376 : constant Version_32 := 16#07f2a7b2#;
   pragma Export (C, u03376, "demics_output_cellsS");
   u03377 : constant Version_32 := 16#f82181f5#;
   pragma Export (C, u03377, "demics_translatedB");
   u03378 : constant Version_32 := 16#2565de05#;
   pragma Export (C, u03378, "demics_translatedS");
   u03379 : constant Version_32 := 16#510c846b#;
   pragma Export (C, u03379, "demics_input_dataB");
   u03380 : constant Version_32 := 16#41548f5e#;
   pragma Export (C, u03380, "demics_input_dataS");
   u03381 : constant Version_32 := 16#09c0e5f5#;
   pragma Export (C, u03381, "demics_mvcB");
   u03382 : constant Version_32 := 16#d83d40c2#;
   pragma Export (C, u03382, "demics_mvcS");
   u03383 : constant Version_32 := 16#c6c569df#;
   pragma Export (C, u03383, "demics_global_constantsS");
   u03384 : constant Version_32 := 16#9ea33d05#;
   pragma Export (C, u03384, "demics_ftestB");
   u03385 : constant Version_32 := 16#7a8e7bfa#;
   pragma Export (C, u03385, "demics_ftestS");
   u03386 : constant Version_32 := 16#8152cc7a#;
   pragma Export (C, u03386, "demics_itestB");
   u03387 : constant Version_32 := 16#be4cbfb9#;
   pragma Export (C, u03387, "demics_itestS");
   u03388 : constant Version_32 := 16#283fc06d#;
   pragma Export (C, u03388, "demics_reltabB");
   u03389 : constant Version_32 := 16#be2eee0e#;
   pragma Export (C, u03389, "demics_reltabS");
   u03390 : constant Version_32 := 16#b46aa1d8#;
   pragma Export (C, u03390, "demics_simplexB");
   u03391 : constant Version_32 := 16#47fde6b2#;
   pragma Export (C, u03391, "demics_simplexS");
   u03392 : constant Version_32 := 16#c069744a#;
   pragma Export (C, u03392, "standard_floating_vecvecs_ioB");
   u03393 : constant Version_32 := 16#3f29bea1#;
   pragma Export (C, u03393, "standard_floating_vecvecs_ioS");
   u03394 : constant Version_32 := 16#b1c2a011#;
   pragma Export (C, u03394, "demics_output_convertorsB");
   u03395 : constant Version_32 := 16#483c49e5#;
   pragma Export (C, u03395, "demics_output_convertorsS");
   u03396 : constant Version_32 := 16#cbf4f44b#;
   pragma Export (C, u03396, "demics_translated_setupB");
   u03397 : constant Version_32 := 16#e88a0fa3#;
   pragma Export (C, u03397, "demics_translated_setupS");
   u03398 : constant Version_32 := 16#535554a7#;
   pragma Export (C, u03398, "pipelined_polyhedral_homotopiesB");
   u03399 : constant Version_32 := 16#d8d6e9c8#;
   pragma Export (C, u03399, "pipelined_polyhedral_homotopiesS");
   u03400 : constant Version_32 := 16#eb8d66e6#;
   pragma Export (C, u03400, "pipelined_cell_indicesB");
   u03401 : constant Version_32 := 16#cac11b4e#;
   pragma Export (C, u03401, "pipelined_cell_indicesS");
   u03402 : constant Version_32 := 16#297b0cbc#;
   pragma Export (C, u03402, "drivers_for_dynamic_liftingB");
   u03403 : constant Version_32 := 16#5ba5944e#;
   pragma Export (C, u03403, "drivers_for_dynamic_liftingS");
   u03404 : constant Version_32 := 16#a177d835#;
   pragma Export (C, u03404, "driver_for_minkowski_polynomialsB");
   u03405 : constant Version_32 := 16#1a55da45#;
   pragma Export (C, u03405, "driver_for_minkowski_polynomialsS");
   u03406 : constant Version_32 := 16#fe51b4cf#;
   pragma Export (C, u03406, "minkowski_polynomialsB");
   u03407 : constant Version_32 := 16#158ec46d#;
   pragma Export (C, u03407, "minkowski_polynomialsS");
   u03408 : constant Version_32 := 16#cd489251#;
   pragma Export (C, u03408, "dynamic_mixed_subdivisionsB");
   u03409 : constant Version_32 := 16#68d565b5#;
   pragma Export (C, u03409, "dynamic_mixed_subdivisionsS");
   u03410 : constant Version_32 := 16#5b2e0e76#;
   pragma Export (C, u03410, "common_faces_of_polytopeB");
   u03411 : constant Version_32 := 16#e9f1bbbb#;
   pragma Export (C, u03411, "common_faces_of_polytopeS");
   u03412 : constant Version_32 := 16#6917dae4#;
   pragma Export (C, u03412, "enumerate_faces_of_polytopeB");
   u03413 : constant Version_32 := 16#331bd014#;
   pragma Export (C, u03413, "enumerate_faces_of_polytopeS");
   u03414 : constant Version_32 := 16#ad2b05ce#;
   pragma Export (C, u03414, "initial_mixed_cellB");
   u03415 : constant Version_32 := 16#f07553db#;
   pragma Export (C, u03415, "initial_mixed_cellS");
   u03416 : constant Version_32 := 16#686d5bfa#;
   pragma Export (C, u03416, "frequency_graphB");
   u03417 : constant Version_32 := 16#c03a7948#;
   pragma Export (C, u03417, "frequency_graphS");
   u03418 : constant Version_32 := 16#b0cc5265#;
   pragma Export (C, u03418, "dynamic_polyhedral_continuationB");
   u03419 : constant Version_32 := 16#0e0a06aa#;
   pragma Export (C, u03419, "dynamic_polyhedral_continuationS");
   u03420 : constant Version_32 := 16#43a7ac1c#;
   pragma Export (C, u03420, "standard_integer32_triangulations_ioB");
   u03421 : constant Version_32 := 16#d8df5d6e#;
   pragma Export (C, u03421, "standard_integer32_triangulations_ioS");
   u03422 : constant Version_32 := 16#63b78975#;
   pragma Export (C, u03422, "standard_integer32_simplices_ioB");
   u03423 : constant Version_32 := 16#4e84fbc8#;
   pragma Export (C, u03423, "standard_integer32_simplices_ioS");
   u03424 : constant Version_32 := 16#8d447340#;
   pragma Export (C, u03424, "standard_integer_vecvecs_ioB");
   u03425 : constant Version_32 := 16#41d7ae78#;
   pragma Export (C, u03425, "standard_integer_vecvecs_ioS");
   u03426 : constant Version_32 := 16#d1e5590a#;
   pragma Export (C, u03426, "drivers_for_implicit_liftingB");
   u03427 : constant Version_32 := 16#88b70651#;
   pragma Export (C, u03427, "drivers_for_implicit_liftingS");
   u03428 : constant Version_32 := 16#437aa60a#;
   pragma Export (C, u03428, "generic_positionB");
   u03429 : constant Version_32 := 16#e99f7dfe#;
   pragma Export (C, u03429, "generic_positionS");
   u03430 : constant Version_32 := 16#8ffde315#;
   pragma Export (C, u03430, "set_structures_and_volumesB");
   u03431 : constant Version_32 := 16#90e4c1dc#;
   pragma Export (C, u03431, "set_structures_and_volumesS");
   u03432 : constant Version_32 := 16#45ddf2cc#;
   pragma Export (C, u03432, "drivers_for_symmetric_liftingB");
   u03433 : constant Version_32 := 16#d2311a55#;
   pragma Export (C, u03433, "drivers_for_symmetric_liftingS");
   u03434 : constant Version_32 := 16#e94b505f#;
   pragma Export (C, u03434, "faces_of_symmetric_polytopesB");
   u03435 : constant Version_32 := 16#1aed9b34#;
   pragma Export (C, u03435, "faces_of_symmetric_polytopesS");
   u03436 : constant Version_32 := 16#01a0a638#;
   pragma Export (C, u03436, "permutations_of_facesB");
   u03437 : constant Version_32 := 16#2ac5ae0e#;
   pragma Export (C, u03437, "permutations_of_facesS");
   u03438 : constant Version_32 := 16#cdcd20a7#;
   pragma Export (C, u03438, "generating_mixed_cellsB");
   u03439 : constant Version_32 := 16#df500e50#;
   pragma Export (C, u03439, "generating_mixed_cellsS");
   u03440 : constant Version_32 := 16#1290b2d1#;
   pragma Export (C, u03440, "symmetric_lifting_functionsB");
   u03441 : constant Version_32 := 16#1345a6a9#;
   pragma Export (C, u03441, "symmetric_lifting_functionsS");
   u03442 : constant Version_32 := 16#df69ad8c#;
   pragma Export (C, u03442, "symmetric_polyhedral_continuationB");
   u03443 : constant Version_32 := 16#1f6a4ebf#;
   pragma Export (C, u03443, "symmetric_polyhedral_continuationS");
   u03444 : constant Version_32 := 16#686d156d#;
   pragma Export (C, u03444, "symmetric_bkk_bound_solversB");
   u03445 : constant Version_32 := 16#4c474b27#;
   pragma Export (C, u03445, "symmetric_bkk_bound_solversS");
   u03446 : constant Version_32 := 16#e857153c#;
   pragma Export (C, u03446, "symmetric_randomizeB");
   u03447 : constant Version_32 := 16#b6de38ab#;
   pragma Export (C, u03447, "symmetric_randomizeS");
   u03448 : constant Version_32 := 16#71450a79#;
   pragma Export (C, u03448, "main_m_homogenizationB");
   u03449 : constant Version_32 := 16#50d6a683#;
   pragma Export (C, u03449, "main_m_homogenizationS");
   u03450 : constant Version_32 := 16#deef7810#;
   pragma Export (C, u03450, "interpolating_homotopies_driverB");
   u03451 : constant Version_32 := 16#e4474727#;
   pragma Export (C, u03451, "interpolating_homotopies_driverS");
   u03452 : constant Version_32 := 16#4ac207e1#;
   pragma Export (C, u03452, "interpolating_homotopiesB");
   u03453 : constant Version_32 := 16#16efa6ee#;
   pragma Export (C, u03453, "interpolating_homotopiesS");
   u03454 : constant Version_32 := 16#80030503#;
   pragma Export (C, u03454, "main_multi_homogenizationB");
   u03455 : constant Version_32 := 16#dbaba70c#;
   pragma Export (C, u03455, "main_multi_homogenizationS");
   u03456 : constant Version_32 := 16#9c6c1070#;
   pragma Export (C, u03456, "degree_structureB");
   u03457 : constant Version_32 := 16#ebdd2f7e#;
   pragma Export (C, u03457, "degree_structureS");
   u03458 : constant Version_32 := 16#b54cc2e4#;
   pragma Export (C, u03458, "multi_homogeneous_start_systemsB");
   u03459 : constant Version_32 := 16#4b560d7f#;
   pragma Export (C, u03459, "multi_homogeneous_start_systemsS");
   u03460 : constant Version_32 := 16#d8411744#;
   pragma Export (C, u03460, "main_set_structuresB");
   u03461 : constant Version_32 := 16#b5a411d0#;
   pragma Export (C, u03461, "main_set_structuresS");
   u03462 : constant Version_32 := 16#3464ba2d#;
   pragma Export (C, u03462, "main_samplersB");
   u03463 : constant Version_32 := 16#257b4f8c#;
   pragma Export (C, u03463, "main_samplersS");
   u03464 : constant Version_32 := 16#fec8ac10#;
   pragma Export (C, u03464, "dobldobl_intrinsic_continuationB");
   u03465 : constant Version_32 := 16#bc27be09#;
   pragma Export (C, u03465, "dobldobl_intrinsic_continuationS");
   u03466 : constant Version_32 := 16#06e5dcdf#;
   pragma Export (C, u03466, "dobldobl_intrinsic_newtonB");
   u03467 : constant Version_32 := 16#c225ebfc#;
   pragma Export (C, u03467, "dobldobl_intrinsic_newtonS");
   u03468 : constant Version_32 := 16#2794b9fe#;
   pragma Export (C, u03468, "dobldobl_intrinsic_trackersB");
   u03469 : constant Version_32 := 16#9ea9eb07#;
   pragma Export (C, u03469, "dobldobl_intrinsic_trackersS");
   u03470 : constant Version_32 := 16#55512aa9#;
   pragma Export (C, u03470, "dobldobl_moving_planesB");
   u03471 : constant Version_32 := 16#98e486eb#;
   pragma Export (C, u03471, "dobldobl_moving_planesS");
   u03472 : constant Version_32 := 16#e54266e4#;
   pragma Export (C, u03472, "dobldobl_rescaling_coordinatesB");
   u03473 : constant Version_32 := 16#16ecad27#;
   pragma Export (C, u03473, "dobldobl_rescaling_coordinatesS");
   u03474 : constant Version_32 := 16#0efed0fb#;
   pragma Export (C, u03474, "quaddobl_intrinsic_continuationB");
   u03475 : constant Version_32 := 16#59763042#;
   pragma Export (C, u03475, "quaddobl_intrinsic_continuationS");
   u03476 : constant Version_32 := 16#bba84a92#;
   pragma Export (C, u03476, "quaddobl_intrinsic_newtonB");
   u03477 : constant Version_32 := 16#bd7ab874#;
   pragma Export (C, u03477, "quaddobl_intrinsic_newtonS");
   u03478 : constant Version_32 := 16#55797edf#;
   pragma Export (C, u03478, "quaddobl_intrinsic_trackersB");
   u03479 : constant Version_32 := 16#ee7f8cdb#;
   pragma Export (C, u03479, "quaddobl_intrinsic_trackersS");
   u03480 : constant Version_32 := 16#d12aa8f9#;
   pragma Export (C, u03480, "quaddobl_moving_planesB");
   u03481 : constant Version_32 := 16#6884b82c#;
   pragma Export (C, u03481, "quaddobl_moving_planesS");
   u03482 : constant Version_32 := 16#a6a4dcaf#;
   pragma Export (C, u03482, "quaddobl_rescaling_coordinatesB");
   u03483 : constant Version_32 := 16#797a8968#;
   pragma Export (C, u03483, "quaddobl_rescaling_coordinatesS");
   u03484 : constant Version_32 := 16#2d04600b#;
   pragma Export (C, u03484, "main_scalingB");
   u03485 : constant Version_32 := 16#1df7807b#;
   pragma Export (C, u03485, "main_scalingS");
   u03486 : constant Version_32 := 16#cfcc9094#;
   pragma Export (C, u03486, "scaling_methodsB");
   u03487 : constant Version_32 := 16#7faed646#;
   pragma Export (C, u03487, "scaling_methodsS");
   u03488 : constant Version_32 := 16#3ce34a23#;
   pragma Export (C, u03488, "multprec_scalingB");
   u03489 : constant Version_32 := 16#8ea5d63a#;
   pragma Export (C, u03489, "multprec_scalingS");
   u03490 : constant Version_32 := 16#0856fcfc#;
   pragma Export (C, u03490, "main_schubert_inductionB");
   u03491 : constant Version_32 := 16#441ca345#;
   pragma Export (C, u03491, "main_schubert_inductionS");
   u03492 : constant Version_32 := 16#39dd1bd3#;
   pragma Export (C, u03492, "bracket_monomials_ioB");
   u03493 : constant Version_32 := 16#faef0cfe#;
   pragma Export (C, u03493, "bracket_monomials_ioS");
   u03494 : constant Version_32 := 16#b1a46bdc#;
   pragma Export (C, u03494, "brackets_ioB");
   u03495 : constant Version_32 := 16#e601964d#;
   pragma Export (C, u03495, "brackets_ioS");
   u03496 : constant Version_32 := 16#ddd11ef9#;
   pragma Export (C, u03496, "bracket_monomialsB");
   u03497 : constant Version_32 := 16#404df805#;
   pragma Export (C, u03497, "bracket_monomialsS");
   u03498 : constant Version_32 := 16#6766534b#;
   pragma Export (C, u03498, "checker_boards_ioB");
   u03499 : constant Version_32 := 16#453a8af5#;
   pragma Export (C, u03499, "checker_boards_ioS");
   u03500 : constant Version_32 := 16#3654de5f#;
   pragma Export (C, u03500, "checker_boardsB");
   u03501 : constant Version_32 := 16#6527cec6#;
   pragma Export (C, u03501, "checker_boardsS");
   u03502 : constant Version_32 := 16#8b4ebc3f#;
   pragma Export (C, u03502, "checker_localization_patternsB");
   u03503 : constant Version_32 := 16#849a9939#;
   pragma Export (C, u03503, "checker_localization_patternsS");
   u03504 : constant Version_32 := 16#05210df8#;
   pragma Export (C, u03504, "checker_movesB");
   u03505 : constant Version_32 := 16#ce84b841#;
   pragma Export (C, u03505, "checker_movesS");
   u03506 : constant Version_32 := 16#365a49eb#;
   pragma Export (C, u03506, "checker_poset_deformationsB");
   u03507 : constant Version_32 := 16#7f5c92b6#;
   pragma Export (C, u03507, "checker_poset_deformationsS");
   u03508 : constant Version_32 := 16#32297134#;
   pragma Export (C, u03508, "checker_homotopiesB");
   u03509 : constant Version_32 := 16#3a7108d6#;
   pragma Export (C, u03509, "checker_homotopiesS");
   u03510 : constant Version_32 := 16#9721eccc#;
   pragma Export (C, u03510, "dobldobl_complex_poly_matrices_ioB");
   u03511 : constant Version_32 := 16#01af06ab#;
   pragma Export (C, u03511, "dobldobl_complex_poly_matrices_ioS");
   u03512 : constant Version_32 := 16#929628fd#;
   pragma Export (C, u03512, "dobldobl_complex_poly_ring_ioS");
   u03513 : constant Version_32 := 16#a5f6f764#;
   pragma Export (C, u03513, "dobldobl_matrix_inversionB");
   u03514 : constant Version_32 := 16#7c2e187f#;
   pragma Export (C, u03514, "dobldobl_matrix_inversionS");
   u03515 : constant Version_32 := 16#b9d3cbca#;
   pragma Export (C, u03515, "quaddobl_complex_poly_matrices_ioB");
   u03516 : constant Version_32 := 16#647a2818#;
   pragma Export (C, u03516, "quaddobl_complex_poly_matrices_ioS");
   u03517 : constant Version_32 := 16#7bcc91d4#;
   pragma Export (C, u03517, "quaddobl_complex_poly_ring_ioS");
   u03518 : constant Version_32 := 16#ffc28d44#;
   pragma Export (C, u03518, "quaddobl_matrix_inversionB");
   u03519 : constant Version_32 := 16#be831ba0#;
   pragma Export (C, u03519, "quaddobl_matrix_inversionS");
   u03520 : constant Version_32 := 16#2d66445e#;
   pragma Export (C, u03520, "standard_complex_poly_matrices_ioB");
   u03521 : constant Version_32 := 16#6e0f7c98#;
   pragma Export (C, u03521, "standard_complex_poly_matrices_ioS");
   u03522 : constant Version_32 := 16#52828d0a#;
   pragma Export (C, u03522, "standard_complex_poly_ring_ioS");
   u03523 : constant Version_32 := 16#97d2ad7e#;
   pragma Export (C, u03523, "standard_matrix_inversionB");
   u03524 : constant Version_32 := 16#c365a507#;
   pragma Export (C, u03524, "standard_matrix_inversionS");
   u03525 : constant Version_32 := 16#e4598d99#;
   pragma Export (C, u03525, "standard_natural_matrices_ioB");
   u03526 : constant Version_32 := 16#b406831c#;
   pragma Export (C, u03526, "standard_natural_matrices_ioS");
   u03527 : constant Version_32 := 16#eb1086e9#;
   pragma Export (C, u03527, "checker_posets_ioB");
   u03528 : constant Version_32 := 16#0bc1a378#;
   pragma Export (C, u03528, "checker_posets_ioS");
   u03529 : constant Version_32 := 16#fdd19598#;
   pragma Export (C, u03529, "checker_posetsB");
   u03530 : constant Version_32 := 16#05a53d7d#;
   pragma Export (C, u03530, "checker_posetsS");
   u03531 : constant Version_32 := 16#3792e674#;
   pragma Export (C, u03531, "moving_flag_continuationB");
   u03532 : constant Version_32 := 16#7a88f86e#;
   pragma Export (C, u03532, "moving_flag_continuationS");
   u03533 : constant Version_32 := 16#b5e7cdd7#;
   pragma Export (C, u03533, "matrix_indeterminatesB");
   u03534 : constant Version_32 := 16#dd76dcf0#;
   pragma Export (C, u03534, "matrix_indeterminatesS");
   u03535 : constant Version_32 := 16#bb4e99cd#;
   pragma Export (C, u03535, "moving_flag_homotopiesB");
   u03536 : constant Version_32 := 16#7f12b107#;
   pragma Export (C, u03536, "moving_flag_homotopiesS");
   u03537 : constant Version_32 := 16#57275072#;
   pragma Export (C, u03537, "numeric_schubert_conditionsB");
   u03538 : constant Version_32 := 16#1bc732c1#;
   pragma Export (C, u03538, "numeric_schubert_conditionsS");
   u03539 : constant Version_32 := 16#e51ce870#;
   pragma Export (C, u03539, "bracket_polynomial_convertorsB");
   u03540 : constant Version_32 := 16#f66461b9#;
   pragma Export (C, u03540, "bracket_polynomial_convertorsS");
   u03541 : constant Version_32 := 16#9f56be6e#;
   pragma Export (C, u03541, "dobldobl_bracket_polynomialsB");
   u03542 : constant Version_32 := 16#da3acd92#;
   pragma Export (C, u03542, "dobldobl_bracket_polynomialsS");
   u03543 : constant Version_32 := 16#1be01324#;
   pragma Export (C, u03543, "generic_bracket_polynomialsB");
   u03544 : constant Version_32 := 16#1fe2f9c5#;
   pragma Export (C, u03544, "generic_bracket_polynomialsS");
   u03545 : constant Version_32 := 16#16eca992#;
   pragma Export (C, u03545, "quaddobl_bracket_polynomialsB");
   u03546 : constant Version_32 := 16#27b76c2c#;
   pragma Export (C, u03546, "quaddobl_bracket_polynomialsS");
   u03547 : constant Version_32 := 16#ee5285d9#;
   pragma Export (C, u03547, "standard_bracket_polynomialsB");
   u03548 : constant Version_32 := 16#f4ce6f3b#;
   pragma Export (C, u03548, "standard_bracket_polynomialsS");
   u03549 : constant Version_32 := 16#be493008#;
   pragma Export (C, u03549, "dobldobl_bracket_systemsB");
   u03550 : constant Version_32 := 16#d5094b28#;
   pragma Export (C, u03550, "dobldobl_bracket_systemsS");
   u03551 : constant Version_32 := 16#779e907a#;
   pragma Export (C, u03551, "quaddobl_bracket_systemsB");
   u03552 : constant Version_32 := 16#700bb255#;
   pragma Export (C, u03552, "quaddobl_bracket_systemsS");
   u03553 : constant Version_32 := 16#ab0136df#;
   pragma Export (C, u03553, "standard_bracket_systemsB");
   u03554 : constant Version_32 := 16#7c6bb818#;
   pragma Export (C, u03554, "standard_bracket_systemsS");
   u03555 : constant Version_32 := 16#21bfd910#;
   pragma Export (C, u03555, "straightening_syzygiesB");
   u03556 : constant Version_32 := 16#47293a64#;
   pragma Export (C, u03556, "straightening_syzygiesS");
   u03557 : constant Version_32 := 16#f9da643e#;
   pragma Export (C, u03557, "symbolic_schubert_conditionsB");
   u03558 : constant Version_32 := 16#60bf1a62#;
   pragma Export (C, u03558, "symbolic_schubert_conditionsS");
   u03559 : constant Version_32 := 16#8c26c9d1#;
   pragma Export (C, u03559, "symbolic_minor_equationsB");
   u03560 : constant Version_32 := 16#6a0bc7bb#;
   pragma Export (C, u03560, "symbolic_minor_equationsS");
   u03561 : constant Version_32 := 16#c830e54e#;
   pragma Export (C, u03561, "remember_numeric_minorsB");
   u03562 : constant Version_32 := 16#19562cbd#;
   pragma Export (C, u03562, "remember_numeric_minorsS");
   u03563 : constant Version_32 := 16#3e58c50e#;
   pragma Export (C, u03563, "remember_symbolic_minorsB");
   u03564 : constant Version_32 := 16#6d389fe1#;
   pragma Export (C, u03564, "remember_symbolic_minorsS");
   u03565 : constant Version_32 := 16#05298448#;
   pragma Export (C, u03565, "setup_flag_homotopiesB");
   u03566 : constant Version_32 := 16#89965b80#;
   pragma Export (C, u03566, "setup_flag_homotopiesS");
   u03567 : constant Version_32 := 16#d8904999#;
   pragma Export (C, u03567, "recondition_swap_homotopiesB");
   u03568 : constant Version_32 := 16#b1b47008#;
   pragma Export (C, u03568, "recondition_swap_homotopiesS");
   u03569 : constant Version_32 := 16#02201092#;
   pragma Export (C, u03569, "start_flag_homotopiesB");
   u03570 : constant Version_32 := 16#772f3242#;
   pragma Export (C, u03570, "start_flag_homotopiesS");
   u03571 : constant Version_32 := 16#a636086f#;
   pragma Export (C, u03571, "wrapped_pade_trackersB");
   u03572 : constant Version_32 := 16#33c20f14#;
   pragma Export (C, u03572, "wrapped_pade_trackersS");
   u03573 : constant Version_32 := 16#ce9d0a9e#;
   pragma Export (C, u03573, "wrapped_solution_vectorsB");
   u03574 : constant Version_32 := 16#27d8ceac#;
   pragma Export (C, u03574, "wrapped_solution_vectorsS");
   u03575 : constant Version_32 := 16#a9557efa#;
   pragma Export (C, u03575, "wrapped_path_trackersB");
   u03576 : constant Version_32 := 16#b7215a60#;
   pragma Export (C, u03576, "wrapped_path_trackersS");
   u03577 : constant Version_32 := 16#55a6779a#;
   pragma Export (C, u03577, "dobldobl_solution_posetsB");
   u03578 : constant Version_32 := 16#e81d4daf#;
   pragma Export (C, u03578, "dobldobl_solution_posetsS");
   u03579 : constant Version_32 := 16#8ea96cc3#;
   pragma Export (C, u03579, "intersection_posetsB");
   u03580 : constant Version_32 := 16#ae619f3a#;
   pragma Export (C, u03580, "intersection_posetsS");
   u03581 : constant Version_32 := 16#e427811a#;
   pragma Export (C, u03581, "intersection_posets_ioB");
   u03582 : constant Version_32 := 16#d5ca1957#;
   pragma Export (C, u03582, "intersection_posets_ioS");
   u03583 : constant Version_32 := 16#eb2f46fb#;
   pragma Export (C, u03583, "main_pieri_homotopiesB");
   u03584 : constant Version_32 := 16#5bf04a42#;
   pragma Export (C, u03584, "main_pieri_homotopiesS");
   u03585 : constant Version_32 := 16#61b54501#;
   pragma Export (C, u03585, "deformation_posetsB");
   u03586 : constant Version_32 := 16#a0831748#;
   pragma Export (C, u03586, "deformation_posetsS");
   u03587 : constant Version_32 := 16#216af16e#;
   pragma Export (C, u03587, "curves_into_grassmannianB");
   u03588 : constant Version_32 := 16#0edbaac1#;
   pragma Export (C, u03588, "curves_into_grassmannianS");
   u03589 : constant Version_32 := 16#c902eebc#;
   pragma Export (C, u03589, "curves_into_grassmannian_ioB");
   u03590 : constant Version_32 := 16#866891d5#;
   pragma Export (C, u03590, "curves_into_grassmannian_ioS");
   u03591 : constant Version_32 := 16#d7acbe15#;
   pragma Export (C, u03591, "determinantal_systemsB");
   u03592 : constant Version_32 := 16#0a6b8707#;
   pragma Export (C, u03592, "determinantal_systemsS");
   u03593 : constant Version_32 := 16#936954b7#;
   pragma Export (C, u03593, "numeric_minor_equationsB");
   u03594 : constant Version_32 := 16#275a84a9#;
   pragma Export (C, u03594, "numeric_minor_equationsS");
   u03595 : constant Version_32 := 16#15aadfe7#;
   pragma Export (C, u03595, "plane_representationsB");
   u03596 : constant Version_32 := 16#82fb7497#;
   pragma Export (C, u03596, "plane_representationsS");
   u03597 : constant Version_32 := 16#4c121adb#;
   pragma Export (C, u03597, "pieri_continuationB");
   u03598 : constant Version_32 := 16#aa7e4f07#;
   pragma Export (C, u03598, "pieri_continuationS");
   u03599 : constant Version_32 := 16#1d77d31d#;
   pragma Export (C, u03599, "verification_with_determinantsB");
   u03600 : constant Version_32 := 16#5b8c4a44#;
   pragma Export (C, u03600, "verification_with_determinantsS");
   u03601 : constant Version_32 := 16#f48459d7#;
   pragma Export (C, u03601, "pieri_homotopiesB");
   u03602 : constant Version_32 := 16#8605a9dc#;
   pragma Export (C, u03602, "pieri_homotopiesS");
   u03603 : constant Version_32 := 16#4ee32cd1#;
   pragma Export (C, u03603, "specialization_of_planesB");
   u03604 : constant Version_32 := 16#7ccecca2#;
   pragma Export (C, u03604, "specialization_of_planesS");
   u03605 : constant Version_32 := 16#14bad5e8#;
   pragma Export (C, u03605, "localization_posets_ioB");
   u03606 : constant Version_32 := 16#b373ab74#;
   pragma Export (C, u03606, "localization_posets_ioS");
   u03607 : constant Version_32 := 16#3293caa4#;
   pragma Export (C, u03607, "make_input_planesB");
   u03608 : constant Version_32 := 16#abe67abf#;
   pragma Export (C, u03608, "make_input_planesS");
   u03609 : constant Version_32 := 16#057aa1b4#;
   pragma Export (C, u03609, "complex_osculating_planesB");
   u03610 : constant Version_32 := 16#5cbd6a7a#;
   pragma Export (C, u03610, "complex_osculating_planesS");
   u03611 : constant Version_32 := 16#784f70f2#;
   pragma Export (C, u03611, "osculating_planesB");
   u03612 : constant Version_32 := 16#6989dd51#;
   pragma Export (C, u03612, "osculating_planesS");
   u03613 : constant Version_32 := 16#db7e90f6#;
   pragma Export (C, u03613, "chebychev_polynomialsB");
   u03614 : constant Version_32 := 16#794aa62e#;
   pragma Export (C, u03614, "chebychev_polynomialsS");
   u03615 : constant Version_32 := 16#8cb350a2#;
   pragma Export (C, u03615, "standard_complex_vecmats_ioB");
   u03616 : constant Version_32 := 16#cb583f9b#;
   pragma Export (C, u03616, "standard_complex_vecmats_ioS");
   u03617 : constant Version_32 := 16#ac3ea3dc#;
   pragma Export (C, u03617, "generic_vecmats_ioB");
   u03618 : constant Version_32 := 16#f5172dce#;
   pragma Export (C, u03618, "generic_vecmats_ioS");
   u03619 : constant Version_32 := 16#f43ea47a#;
   pragma Export (C, u03619, "main_quantum_pieriB");
   u03620 : constant Version_32 := 16#438a67c4#;
   pragma Export (C, u03620, "main_quantum_pieriS");
   u03621 : constant Version_32 := 16#a69b1441#;
   pragma Export (C, u03621, "main_sagbi_homotopiesB");
   u03622 : constant Version_32 := 16#4f0ec90d#;
   pragma Export (C, u03622, "main_sagbi_homotopiesS");
   u03623 : constant Version_32 := 16#4149012c#;
   pragma Export (C, u03623, "bracket_expansionsB");
   u03624 : constant Version_32 := 16#6cc8d469#;
   pragma Export (C, u03624, "bracket_expansionsS");
   u03625 : constant Version_32 := 16#b976693b#;
   pragma Export (C, u03625, "matrix_homotopiesB");
   u03626 : constant Version_32 := 16#94c745e6#;
   pragma Export (C, u03626, "matrix_homotopiesS");
   u03627 : constant Version_32 := 16#909ae67a#;
   pragma Export (C, u03627, "matrix_homotopies_ioB");
   u03628 : constant Version_32 := 16#d0d3da61#;
   pragma Export (C, u03628, "matrix_homotopies_ioS");
   u03629 : constant Version_32 := 16#094e2f81#;
   pragma Export (C, u03629, "sagbi_homotopiesB");
   u03630 : constant Version_32 := 16#b31ac1cd#;
   pragma Export (C, u03630, "sagbi_homotopiesS");
   u03631 : constant Version_32 := 16#acf93616#;
   pragma Export (C, u03631, "quaddobl_solution_posetsB");
   u03632 : constant Version_32 := 16#53fc1f74#;
   pragma Export (C, u03632, "quaddobl_solution_posetsS");
   u03633 : constant Version_32 := 16#b33d00d5#;
   pragma Export (C, u03633, "resolve_schubert_problemsB");
   u03634 : constant Version_32 := 16#39fa6f7c#;
   pragma Export (C, u03634, "resolve_schubert_problemsS");
   u03635 : constant Version_32 := 16#41a38ceb#;
   pragma Export (C, u03635, "flag_transformationsB");
   u03636 : constant Version_32 := 16#4190043b#;
   pragma Export (C, u03636, "flag_transformationsS");
   u03637 : constant Version_32 := 16#97382b5a#;
   pragma Export (C, u03637, "standard_solution_posetsB");
   u03638 : constant Version_32 := 16#d19bdbb1#;
   pragma Export (C, u03638, "standard_solution_posetsS");
   u03639 : constant Version_32 := 16#01442faa#;
   pragma Export (C, u03639, "main_trackersB");
   u03640 : constant Version_32 := 16#f8e1f22c#;
   pragma Export (C, u03640, "main_trackersS");
   u03641 : constant Version_32 := 16#9d23a5ee#;
   pragma Export (C, u03641, "drivers_to_track_dobldobl_pathsB");
   u03642 : constant Version_32 := 16#f3769447#;
   pragma Export (C, u03642, "drivers_to_track_dobldobl_pathsS");
   u03643 : constant Version_32 := 16#eccf53de#;
   pragma Export (C, u03643, "dobldobl_linear_product_systemB");
   u03644 : constant Version_32 := 16#6599d8ef#;
   pragma Export (C, u03644, "dobldobl_linear_product_systemS");
   u03645 : constant Version_32 := 16#954bb2c9#;
   pragma Export (C, u03645, "dobldobl_complex_row_reductionB");
   u03646 : constant Version_32 := 16#20e3f4ea#;
   pragma Export (C, u03646, "dobldobl_complex_row_reductionS");
   u03647 : constant Version_32 := 16#c9217830#;
   pragma Export (C, u03647, "drivers_to_track_quaddobl_pathsB");
   u03648 : constant Version_32 := 16#1beddb97#;
   pragma Export (C, u03648, "drivers_to_track_quaddobl_pathsS");
   u03649 : constant Version_32 := 16#22f2a568#;
   pragma Export (C, u03649, "quaddobl_linear_product_systemB");
   u03650 : constant Version_32 := 16#b47689fc#;
   pragma Export (C, u03650, "quaddobl_linear_product_systemS");
   u03651 : constant Version_32 := 16#fbebcce4#;
   pragma Export (C, u03651, "quaddobl_complex_row_reductionB");
   u03652 : constant Version_32 := 16#3a3b23f8#;
   pragma Export (C, u03652, "quaddobl_complex_row_reductionS");
   u03653 : constant Version_32 := 16#cd66e0db#;
   pragma Export (C, u03653, "drivers_to_track_standard_pathsB");
   u03654 : constant Version_32 := 16#6f9de734#;
   pragma Export (C, u03654, "drivers_to_track_standard_pathsS");
   u03655 : constant Version_32 := 16#a930dfe6#;
   pragma Export (C, u03655, "jumpstart_diagonal_homotopiesB");
   u03656 : constant Version_32 := 16#4d0692a7#;
   pragma Export (C, u03656, "jumpstart_diagonal_homotopiesS");
   u03657 : constant Version_32 := 16#2d458d0a#;
   pragma Export (C, u03657, "jumpstart_polyhedral_homotopiesB");
   u03658 : constant Version_32 := 16#019be152#;
   pragma Export (C, u03658, "jumpstart_polyhedral_homotopiesS");
   u03659 : constant Version_32 := 16#a56b3125#;
   pragma Export (C, u03659, "polyhedral_coefficient_parametersB");
   u03660 : constant Version_32 := 16#97a7dd07#;
   pragma Export (C, u03660, "polyhedral_coefficient_parametersS");
   u03661 : constant Version_32 := 16#bedee9ae#;
   pragma Export (C, u03661, "polyhedral_coefficient_trackersB");
   u03662 : constant Version_32 := 16#a28a77c8#;
   pragma Export (C, u03662, "polyhedral_coefficient_trackersS");
   u03663 : constant Version_32 := 16#325e39a8#;
   pragma Export (C, u03663, "polyhedral_coefficient_correctorsB");
   u03664 : constant Version_32 := 16#d65b3891#;
   pragma Export (C, u03664, "polyhedral_coefficient_correctorsS");
   u03665 : constant Version_32 := 16#ad390f37#;
   pragma Export (C, u03665, "polyhedral_coefficient_predictorsB");
   u03666 : constant Version_32 := 16#0dd020ea#;
   pragma Export (C, u03666, "polyhedral_coefficient_predictorsS");
   u03667 : constant Version_32 := 16#713d672d#;
   pragma Export (C, u03667, "main_verificationB");
   u03668 : constant Version_32 := 16#12a217e1#;
   pragma Export (C, u03668, "main_verificationS");
   u03669 : constant Version_32 := 16#e866e97d#;
   pragma Export (C, u03669, "dobldobl_multiplicity_structureB");
   u03670 : constant Version_32 := 16#c98d9f78#;
   pragma Export (C, u03670, "dobldobl_multiplicity_structureS");
   u03671 : constant Version_32 := 16#6d1fbbd5#;
   pragma Export (C, u03671, "dobldobl_nullity_matricesB");
   u03672 : constant Version_32 := 16#751d8244#;
   pragma Export (C, u03672, "dobldobl_nullity_matricesS");
   u03673 : constant Version_32 := 16#a93a5fe0#;
   pragma Export (C, u03673, "dobldobl_nullity_polynomialsB");
   u03674 : constant Version_32 := 16#9d820229#;
   pragma Export (C, u03674, "dobldobl_nullity_polynomialsS");
   u03675 : constant Version_32 := 16#dbcade1e#;
   pragma Export (C, u03675, "driver_for_winding_numbersB");
   u03676 : constant Version_32 := 16#43c1ea41#;
   pragma Export (C, u03676, "driver_for_winding_numbersS");
   u03677 : constant Version_32 := 16#89c45d5a#;
   pragma Export (C, u03677, "drivers_for_orbits_of_solutionsB");
   u03678 : constant Version_32 := 16#66dcf904#;
   pragma Export (C, u03678, "drivers_for_orbits_of_solutionsS");
   u03679 : constant Version_32 := 16#bef275f0#;
   pragma Export (C, u03679, "drivers_to_dd_qd_root_refinersB");
   u03680 : constant Version_32 := 16#e6386fb3#;
   pragma Export (C, u03680, "drivers_to_dd_qd_root_refinersS");
   u03681 : constant Version_32 := 16#4e2d6c56#;
   pragma Export (C, u03681, "multitasked_dd_qd_refinersB");
   u03682 : constant Version_32 := 16#9924c826#;
   pragma Export (C, u03682, "multitasked_dd_qd_refinersS");
   u03683 : constant Version_32 := 16#45f1833e#;
   pragma Export (C, u03683, "multprec_system_and_solutions_ioB");
   u03684 : constant Version_32 := 16#74509b09#;
   pragma Export (C, u03684, "multprec_system_and_solutions_ioS");
   u03685 : constant Version_32 := 16#b4065943#;
   pragma Export (C, u03685, "drivers_to_deflate_singularitiesB");
   u03686 : constant Version_32 := 16#f4344f47#;
   pragma Export (C, u03686, "drivers_to_deflate_singularitiesS");
   u03687 : constant Version_32 := 16#82511f18#;
   pragma Export (C, u03687, "multprec_deflate_singularitiesB");
   u03688 : constant Version_32 := 16#e85c7108#;
   pragma Export (C, u03688, "multprec_deflate_singularitiesS");
   u03689 : constant Version_32 := 16#656876ba#;
   pragma Export (C, u03689, "multprec_embed_polynomialsB");
   u03690 : constant Version_32 := 16#a6762fff#;
   pragma Export (C, u03690, "multprec_embed_polynomialsS");
   u03691 : constant Version_32 := 16#acfa372a#;
   pragma Export (C, u03691, "multprec_random_matricesB");
   u03692 : constant Version_32 := 16#7864727f#;
   pragma Export (C, u03692, "multprec_random_matricesS");
   u03693 : constant Version_32 := 16#65e3707f#;
   pragma Export (C, u03693, "multprec_floating_qr_least_squaresB");
   u03694 : constant Version_32 := 16#28f5ca64#;
   pragma Export (C, u03694, "multprec_floating_qr_least_squaresS");
   u03695 : constant Version_32 := 16#79c37c8f#;
   pragma Export (C, u03695, "multprec_integer64_matricesB");
   u03696 : constant Version_32 := 16#7f8e2643#;
   pragma Export (C, u03696, "multprec_integer64_matricesS");
   u03697 : constant Version_32 := 16#f6c39de7#;
   pragma Export (C, u03697, "multprec_integer64_ringS");
   u03698 : constant Version_32 := 16#757f6707#;
   pragma Export (C, u03698, "multprec_integer64_vectorsB");
   u03699 : constant Version_32 := 16#01d8da92#;
   pragma Export (C, u03699, "multprec_integer64_vectorsS");
   u03700 : constant Version_32 := 16#081f1e0d#;
   pragma Export (C, u03700, "multprec_deflation_methodsB");
   u03701 : constant Version_32 := 16#e74fc72f#;
   pragma Export (C, u03701, "multprec_deflation_methodsS");
   u03702 : constant Version_32 := 16#512d3806#;
   pragma Export (C, u03702, "multprec_deflation_trees_ioB");
   u03703 : constant Version_32 := 16#07b53b9d#;
   pragma Export (C, u03703, "multprec_deflation_trees_ioS");
   u03704 : constant Version_32 := 16#862dd0ea#;
   pragma Export (C, u03704, "multprec_deflation_treesB");
   u03705 : constant Version_32 := 16#3d9cd426#;
   pragma Export (C, u03705, "multprec_deflation_treesS");
   u03706 : constant Version_32 := 16#bc151ed8#;
   pragma Export (C, u03706, "multprec_complex_vecmatsB");
   u03707 : constant Version_32 := 16#c3637b00#;
   pragma Export (C, u03707, "multprec_complex_vecmatsS");
   u03708 : constant Version_32 := 16#d36b0089#;
   pragma Export (C, u03708, "multprec_evaluate_deflationB");
   u03709 : constant Version_32 := 16#fce76493#;
   pragma Export (C, u03709, "multprec_evaluate_deflationS");
   u03710 : constant Version_32 := 16#89714bfc#;
   pragma Export (C, u03710, "multprec_deflation_matricesB");
   u03711 : constant Version_32 := 16#5b3345fb#;
   pragma Export (C, u03711, "multprec_deflation_matricesS");
   u03712 : constant Version_32 := 16#c282b284#;
   pragma Export (C, u03712, "multprec_jacobian_treesB");
   u03713 : constant Version_32 := 16#d52d2c59#;
   pragma Export (C, u03713, "multprec_jacobian_treesS");
   u03714 : constant Version_32 := 16#ded4737d#;
   pragma Export (C, u03714, "multprec_evaluate_deflation_ioB");
   u03715 : constant Version_32 := 16#b7d8048b#;
   pragma Export (C, u03715, "multprec_evaluate_deflation_ioS");
   u03716 : constant Version_32 := 16#b14f1dbd#;
   pragma Export (C, u03716, "multprec_residual_evaluationsB");
   u03717 : constant Version_32 := 16#ef20bf0b#;
   pragma Export (C, u03717, "multprec_residual_evaluationsS");
   u03718 : constant Version_32 := 16#4f967fb8#;
   pragma Export (C, u03718, "quaddobl_multiplicity_structureB");
   u03719 : constant Version_32 := 16#5fb3a220#;
   pragma Export (C, u03719, "quaddobl_multiplicity_structureS");
   u03720 : constant Version_32 := 16#448d5ac6#;
   pragma Export (C, u03720, "quaddobl_nullity_matricesB");
   u03721 : constant Version_32 := 16#c8077cb1#;
   pragma Export (C, u03721, "quaddobl_nullity_matricesS");
   u03722 : constant Version_32 := 16#363e8953#;
   pragma Export (C, u03722, "quaddobl_nullity_polynomialsB");
   u03723 : constant Version_32 := 16#51493848#;
   pragma Export (C, u03723, "quaddobl_nullity_polynomialsS");
   u03724 : constant Version_32 := 16#e91d11ca#;
   pragma Export (C, u03724, "standard_multiplicity_structureB");
   u03725 : constant Version_32 := 16#183e24d8#;
   pragma Export (C, u03725, "standard_multiplicity_structureS");
   u03726 : constant Version_32 := 16#29f230fc#;
   pragma Export (C, u03726, "standard_nullity_matricesB");
   u03727 : constant Version_32 := 16#f65f1698#;
   pragma Export (C, u03727, "standard_nullity_matricesS");
   u03728 : constant Version_32 := 16#40eb5139#;
   pragma Export (C, u03728, "standard_nullity_polynomialsB");
   u03729 : constant Version_32 := 16#04fd7eb3#;
   pragma Export (C, u03729, "standard_nullity_polynomialsS");
   u03730 : constant Version_32 := 16#30e94896#;
   pragma Export (C, u03730, "standard_refiner_circuitsB");
   u03731 : constant Version_32 := 16#0db48ea8#;
   pragma Export (C, u03731, "standard_refiner_circuitsS");
   u03732 : constant Version_32 := 16#eb6394b7#;
   pragma Export (C, u03732, "standard_solutions_heapB");
   u03733 : constant Version_32 := 16#9852be34#;
   pragma Export (C, u03733, "standard_solutions_heapS");
   u03734 : constant Version_32 := 16#44d60a09#;
   pragma Export (C, u03734, "valipocoB");
   u03735 : constant Version_32 := 16#d2c34dbe#;
   pragma Export (C, u03735, "valipocoS");
   u03736 : constant Version_32 := 16#71bfff3b#;
   pragma Export (C, u03736, "verification_of_solutionsB");
   u03737 : constant Version_32 := 16#a18c2e02#;
   pragma Export (C, u03737, "verification_of_solutionsS");
   u03738 : constant Version_32 := 16#234aeee8#;
   pragma Export (C, u03738, "multprec_complex_vector_stringsB");
   u03739 : constant Version_32 := 16#867e27da#;
   pragma Export (C, u03739, "multprec_complex_vector_stringsS");
   u03740 : constant Version_32 := 16#554ce759#;
   pragma Export (C, u03740, "standard_complex_vector_stringsB");
   u03741 : constant Version_32 := 16#2fe717a0#;
   pragma Export (C, u03741, "standard_complex_vector_stringsS");
   u03742 : constant Version_32 := 16#a36413d1#;
   pragma Export (C, u03742, "varbprec_complex_newton_stepsB");
   u03743 : constant Version_32 := 16#bd6ff6c6#;
   pragma Export (C, u03743, "varbprec_complex_newton_stepsS");
   u03744 : constant Version_32 := 16#eafacb77#;
   pragma Export (C, u03744, "dobldobl_complex_vector_stringsB");
   u03745 : constant Version_32 := 16#859d871b#;
   pragma Export (C, u03745, "dobldobl_complex_vector_stringsS");
   u03746 : constant Version_32 := 16#1c2b52ea#;
   pragma Export (C, u03746, "quaddobl_complex_vector_stringsB");
   u03747 : constant Version_32 := 16#1fa7928e#;
   pragma Export (C, u03747, "quaddobl_complex_vector_stringsS");
   u03748 : constant Version_32 := 16#b4a63081#;
   pragma Export (C, u03748, "varbprec_complex_linear_solversB");
   u03749 : constant Version_32 := 16#ca1a9f0f#;
   pragma Export (C, u03749, "varbprec_complex_linear_solversS");
   u03750 : constant Version_32 := 16#42eef139#;
   pragma Export (C, u03750, "varbprec_matrix_conversionsB");
   u03751 : constant Version_32 := 16#506c1bc8#;
   pragma Export (C, u03751, "varbprec_matrix_conversionsS");
   u03752 : constant Version_32 := 16#0af39bfd#;
   pragma Export (C, u03752, "varbprec_polynomial_evaluationsB");
   u03753 : constant Version_32 := 16#0e2eadc0#;
   pragma Export (C, u03753, "varbprec_polynomial_evaluationsS");
   u03754 : constant Version_32 := 16#df02bf1e#;
   pragma Export (C, u03754, "mixed_volume_calculatorB");
   u03755 : constant Version_32 := 16#0d878fa4#;
   pragma Export (C, u03755, "mixed_volume_calculatorS");
   u03756 : constant Version_32 := 16#48e76875#;
   pragma Export (C, u03756, "parse_strings_to_polynomialsB");
   u03757 : constant Version_32 := 16#1efac3e0#;
   pragma Export (C, u03757, "parse_strings_to_polynomialsS");
   u03758 : constant Version_32 := 16#c28f0e15#;
   pragma Export (C, u03758, "polynomial_homotopy_continuationB");
   u03759 : constant Version_32 := 16#a0cec6c3#;
   pragma Export (C, u03759, "polynomial_homotopy_continuationS");
   u03760 : constant Version_32 := 16#73bd2ab1#;
   pragma Export (C, u03760, "driver_for_root_refiningB");
   u03761 : constant Version_32 := 16#6b86617a#;
   pragma Export (C, u03761, "driver_for_root_refiningS");
   u03762 : constant Version_32 := 16#30f325e1#;
   pragma Export (C, u03762, "quaddobl_blackbox_solversB");
   u03763 : constant Version_32 := 16#02bd5d94#;
   pragma Export (C, u03763, "quaddobl_blackbox_solversS");
   u03764 : constant Version_32 := 16#8a4810ba#;
   pragma Export (C, u03764, "standard_blackbox_solversB");
   u03765 : constant Version_32 := 16#0f0c8380#;
   pragma Export (C, u03765, "standard_blackbox_solversS");
   u03766 : constant Version_32 := 16#b34196f8#;
   pragma Export (C, u03766, "symbol_table_orderB");
   u03767 : constant Version_32 := 16#c0cc013f#;
   pragma Export (C, u03767, "symbol_table_orderS");
   u03768 : constant Version_32 := 16#c055c36d#;
   pragma Export (C, u03768, "pieri_solverB");
   u03769 : constant Version_32 := 16#66e67b66#;
   pragma Export (C, u03769, "pieri_solverS");
   u03770 : constant Version_32 := 16#b078e0f1#;
   pragma Export (C, u03770, "c_integer_arraysS");
   u03771 : constant Version_32 := 16#87263a31#;
   pragma Export (C, u03771, "c_to_ada_arraysB");
   u03772 : constant Version_32 := 16#6bd23ccb#;
   pragma Export (C, u03772, "c_to_ada_arraysS");
   u03773 : constant Version_32 := 16#17ee07a6#;
   pragma Export (C, u03773, "c_double_arraysB");
   u03774 : constant Version_32 := 16#3a546192#;
   pragma Export (C, u03774, "c_double_arraysS");
   u03775 : constant Version_32 := 16#31d19735#;
   pragma Export (C, u03775, "complex_polynomial_matricesB");
   u03776 : constant Version_32 := 16#eb832630#;
   pragma Export (C, u03776, "complex_polynomial_matricesS");
   u03777 : constant Version_32 := 16#eba6fa42#;
   pragma Export (C, u03777, "complex_polynomial_matrices_ioB");
   u03778 : constant Version_32 := 16#3c06c637#;
   pragma Export (C, u03778, "complex_polynomial_matrices_ioS");
   u03779 : constant Version_32 := 16#d64a7a58#;
   pragma Export (C, u03779, "verify_solution_mapsB");
   u03780 : constant Version_32 := 16#92b8729d#;
   pragma Export (C, u03780, "verify_solution_mapsS");
   u03781 : constant Version_32 := 16#4e07c43c#;
   pragma Export (C, u03781, "unix_command_lineB");
   u03782 : constant Version_32 := 16#a1ed6bbe#;
   pragma Export (C, u03782, "unix_command_lineS");
   u03783 : constant Version_32 := 16#423bbbbc#;
   pragma Export (C, u03783, "ada__command_lineB");
   u03784 : constant Version_32 := 16#3cdef8c9#;
   pragma Export (C, u03784, "ada__command_lineS");
   u03785 : constant Version_32 := 16#45d8bf41#;
   pragma Export (C, u03785, "use_c2phcB");
   u03786 : constant Version_32 := 16#e674391d#;
   pragma Export (C, u03786, "use_c2phcS");
   u03787 : constant Version_32 := 16#e94bb70a#;
   pragma Export (C, u03787, "use_c2phc4cB");
   u03788 : constant Version_32 := 16#05014871#;
   pragma Export (C, u03788, "use_c2phc4cS");
   u03789 : constant Version_32 := 16#629c7228#;
   pragma Export (C, u03789, "c_to_phcpackB");
   u03790 : constant Version_32 := 16#59d086d3#;
   pragma Export (C, u03790, "c_to_phcpackS");
   u03791 : constant Version_32 := 16#121c3cff#;
   pragma Export (C, u03791, "phcpack_operations_ioB");
   u03792 : constant Version_32 := 16#4a6d5508#;
   pragma Export (C, u03792, "phcpack_operations_ioS");
   u03793 : constant Version_32 := 16#a5996022#;
   pragma Export (C, u03793, "file_managementB");
   u03794 : constant Version_32 := 16#47d75aac#;
   pragma Export (C, u03794, "file_managementS");
   u03795 : constant Version_32 := 16#9d74e0e1#;
   pragma Export (C, u03795, "standard_solutions_containerB");
   u03796 : constant Version_32 := 16#9c143fbb#;
   pragma Export (C, u03796, "standard_solutions_containerS");
   u03797 : constant Version_32 := 16#a7576aad#;
   pragma Export (C, u03797, "continuation_parameters_interfaceB");
   u03798 : constant Version_32 := 16#b9d54c8f#;
   pragma Export (C, u03798, "continuation_parameters_interfaceS");
   u03799 : constant Version_32 := 16#14267b39#;
   pragma Export (C, u03799, "assignments_in_ada_and_cB");
   u03800 : constant Version_32 := 16#5c0da770#;
   pragma Export (C, u03800, "assignments_in_ada_and_cS");
   u03801 : constant Version_32 := 16#44fa07f6#;
   pragma Export (C, u03801, "pack_continuation_parametersB");
   u03802 : constant Version_32 := 16#6c4ec5cc#;
   pragma Export (C, u03802, "pack_continuation_parametersS");
   u03803 : constant Version_32 := 16#f54f2b73#;
   pragma Export (C, u03803, "deflation_interfaceB");
   u03804 : constant Version_32 := 16#9815b321#;
   pragma Export (C, u03804, "deflation_interfaceS");
   u03805 : constant Version_32 := 16#cf9b9635#;
   pragma Export (C, u03805, "dobldobl_polysys_containerB");
   u03806 : constant Version_32 := 16#24b9a723#;
   pragma Export (C, u03806, "dobldobl_polysys_containerS");
   u03807 : constant Version_32 := 16#292e97ac#;
   pragma Export (C, u03807, "dobldobl_solutions_containerB");
   u03808 : constant Version_32 := 16#b5e2ad1c#;
   pragma Export (C, u03808, "dobldobl_solutions_containerS");
   u03809 : constant Version_32 := 16#adae43a4#;
   pragma Export (C, u03809, "quaddobl_polysys_containerB");
   u03810 : constant Version_32 := 16#1fb1a1f1#;
   pragma Export (C, u03810, "quaddobl_polysys_containerS");
   u03811 : constant Version_32 := 16#22bd9d2b#;
   pragma Export (C, u03811, "quaddobl_solutions_containerB");
   u03812 : constant Version_32 := 16#d88d4db4#;
   pragma Export (C, u03812, "quaddobl_solutions_containerS");
   u03813 : constant Version_32 := 16#89bfca31#;
   pragma Export (C, u03813, "standard_polysys_containerB");
   u03814 : constant Version_32 := 16#fad2a36d#;
   pragma Export (C, u03814, "standard_polysys_containerS");
   u03815 : constant Version_32 := 16#075da4ec#;
   pragma Export (C, u03815, "file_management_interfaceB");
   u03816 : constant Version_32 := 16#28ab4a30#;
   pragma Export (C, u03816, "file_management_interfaceS");
   u03817 : constant Version_32 := 16#b3ab6ad6#;
   pragma Export (C, u03817, "job_containersB");
   u03818 : constant Version_32 := 16#d7ff80a3#;
   pragma Export (C, u03818, "job_containersS");
   u03819 : constant Version_32 := 16#64a55666#;
   pragma Export (C, u03819, "dobldobl_laursys_containerB");
   u03820 : constant Version_32 := 16#3c4f4f62#;
   pragma Export (C, u03820, "dobldobl_laursys_containerS");
   u03821 : constant Version_32 := 16#414004cc#;
   pragma Export (C, u03821, "multprec_polysys_containerB");
   u03822 : constant Version_32 := 16#056a0350#;
   pragma Export (C, u03822, "multprec_polysys_containerS");
   u03823 : constant Version_32 := 16#e2047e94#;
   pragma Export (C, u03823, "multprec_solutions_containerB");
   u03824 : constant Version_32 := 16#88c9ec01#;
   pragma Export (C, u03824, "multprec_solutions_containerS");
   u03825 : constant Version_32 := 16#49e0dfd4#;
   pragma Export (C, u03825, "quaddobl_laursys_containerB");
   u03826 : constant Version_32 := 16#44dc728e#;
   pragma Export (C, u03826, "quaddobl_laursys_containerS");
   u03827 : constant Version_32 := 16#b6c2a34b#;
   pragma Export (C, u03827, "standard_laursys_containerB");
   u03828 : constant Version_32 := 16#011524b6#;
   pragma Export (C, u03828, "standard_laursys_containerS");
   u03829 : constant Version_32 := 16#b881e22d#;
   pragma Export (C, u03829, "job_handlersB");
   u03830 : constant Version_32 := 16#48f3853a#;
   pragma Export (C, u03830, "job_handlersS");
   u03831 : constant Version_32 := 16#55b56394#;
   pragma Export (C, u03831, "black_box_polyhedral_solversB");
   u03832 : constant Version_32 := 16#b7fa409d#;
   pragma Export (C, u03832, "black_box_polyhedral_solversS");
   u03833 : constant Version_32 := 16#5dd2d3a9#;
   pragma Export (C, u03833, "black_box_mixed_volumesB");
   u03834 : constant Version_32 := 16#a3dffeef#;
   pragma Export (C, u03834, "black_box_mixed_volumesS");
   u03835 : constant Version_32 := 16#0855a60e#;
   pragma Export (C, u03835, "double_cells_containerB");
   u03836 : constant Version_32 := 16#65a6a0f2#;
   pragma Export (C, u03836, "double_cells_containerS");
   u03837 : constant Version_32 := 16#a760ffcc#;
   pragma Export (C, u03837, "arrays_of_floating_vector_lists_ioB");
   u03838 : constant Version_32 := 16#54942c40#;
   pragma Export (C, u03838, "arrays_of_floating_vector_lists_ioS");
   u03839 : constant Version_32 := 16#516d10b8#;
   pragma Export (C, u03839, "multprec_polysys_interfaceB");
   u03840 : constant Version_32 := 16#db30b450#;
   pragma Export (C, u03840, "multprec_polysys_interfaceS");
   u03841 : constant Version_32 := 16#0c74085d#;
   pragma Export (C, u03841, "multprec_solutions_interfaceB");
   u03842 : constant Version_32 := 16#80e1042a#;
   pragma Export (C, u03842, "multprec_solutions_interfaceS");
   u03843 : constant Version_32 := 16#79677e46#;
   pragma Export (C, u03843, "multprec_solution_stringsB");
   u03844 : constant Version_32 := 16#9cec59c1#;
   pragma Export (C, u03844, "multprec_solution_stringsS");
   u03845 : constant Version_32 := 16#654a1bc6#;
   pragma Export (C, u03845, "standard_solution_stringsB");
   u03846 : constant Version_32 := 16#12e6f5df#;
   pragma Export (C, u03846, "standard_solution_stringsS");
   u03847 : constant Version_32 := 16#7559962f#;
   pragma Export (C, u03847, "string_parsingB");
   u03848 : constant Version_32 := 16#7e6f8eba#;
   pragma Export (C, u03848, "string_parsingS");
   u03849 : constant Version_32 := 16#7127f8da#;
   pragma Export (C, u03849, "newton_interfaceB");
   u03850 : constant Version_32 := 16#e3e7b039#;
   pragma Export (C, u03850, "newton_interfaceS");
   u03851 : constant Version_32 := 16#2ea21b03#;
   pragma Export (C, u03851, "assignments_of_solutionsB");
   u03852 : constant Version_32 := 16#460d9ce3#;
   pragma Export (C, u03852, "assignments_of_solutionsS");
   u03853 : constant Version_32 := 16#ddba9c74#;
   pragma Export (C, u03853, "multprec_laursys_containerB");
   u03854 : constant Version_32 := 16#6d58a967#;
   pragma Export (C, u03854, "multprec_laursys_containerS");
   u03855 : constant Version_32 := 16#461d67db#;
   pragma Export (C, u03855, "solutions_poolB");
   u03856 : constant Version_32 := 16#30c2db2b#;
   pragma Export (C, u03856, "solutions_poolS");
   u03857 : constant Version_32 := 16#9e057181#;
   pragma Export (C, u03857, "standard_systems_poolB");
   u03858 : constant Version_32 := 16#89bae18b#;
   pragma Export (C, u03858, "standard_systems_poolS");
   u03859 : constant Version_32 := 16#1c142312#;
   pragma Export (C, u03859, "path_trackers_interfaceB");
   u03860 : constant Version_32 := 16#c415e58a#;
   pragma Export (C, u03860, "path_trackers_interfaceS");
   u03861 : constant Version_32 := 16#47ae4d34#;
   pragma Export (C, u03861, "crude_path_trackersB");
   u03862 : constant Version_32 := 16#2a1035a5#;
   pragma Export (C, u03862, "crude_path_trackersS");
   u03863 : constant Version_32 := 16#c4a99db0#;
   pragma Export (C, u03863, "symbol_table_interfaceB");
   u03864 : constant Version_32 := 16#38c00cca#;
   pragma Export (C, u03864, "symbol_table_interfaceS");
   u03865 : constant Version_32 := 16#11d232e4#;
   pragma Export (C, u03865, "parse_dimensionsB");
   u03866 : constant Version_32 := 16#bdff409c#;
   pragma Export (C, u03866, "parse_dimensionsS");
   u03867 : constant Version_32 := 16#53b8a175#;
   pragma Export (C, u03867, "unisolveB");
   u03868 : constant Version_32 := 16#8c8754ac#;
   pragma Export (C, u03868, "unisolveS");
   u03869 : constant Version_32 := 16#6db8bbbe#;
   pragma Export (C, u03869, "univariate_solvers_interfaceB");
   u03870 : constant Version_32 := 16#69c0fc23#;
   pragma Export (C, u03870, "univariate_solvers_interfaceS");
   u03871 : constant Version_32 := 16#a3e8e974#;
   pragma Export (C, u03871, "use_avvconB");
   u03872 : constant Version_32 := 16#e96baff3#;
   pragma Export (C, u03872, "use_avvconS");
   u03873 : constant Version_32 := 16#6b6f8109#;
   pragma Export (C, u03873, "dcmplx_vecvecs_interfaceB");
   u03874 : constant Version_32 := 16#f67ddf0e#;
   pragma Export (C, u03874, "dcmplx_vecvecs_interfaceS");
   u03875 : constant Version_32 := 16#e743d13d#;
   pragma Export (C, u03875, "dcmplx_vecvecs_containerB");
   u03876 : constant Version_32 := 16#682e5c43#;
   pragma Export (C, u03876, "dcmplx_vecvecs_containerS");
   u03877 : constant Version_32 := 16#b6ae84da#;
   pragma Export (C, u03877, "double_puiseux_interfaceB");
   u03878 : constant Version_32 := 16#c5852e9b#;
   pragma Export (C, u03878, "double_puiseux_interfaceS");
   u03879 : constant Version_32 := 16#ccae908f#;
   pragma Export (C, u03879, "double_newton_puiseuxB");
   u03880 : constant Version_32 := 16#2fbd0cc2#;
   pragma Export (C, u03880, "double_newton_puiseuxS");
   u03881 : constant Version_32 := 16#377a2dc4#;
   pragma Export (C, u03881, "double_leading_evaluationsB");
   u03882 : constant Version_32 := 16#d8cd8397#;
   pragma Export (C, u03882, "double_leading_evaluationsS");
   u03883 : constant Version_32 := 16#e62cb15b#;
   pragma Export (C, u03883, "double_real_powered_seriesB");
   u03884 : constant Version_32 := 16#76ceda5b#;
   pragma Export (C, u03884, "double_real_powered_seriesS");
   u03885 : constant Version_32 := 16#7c4afe66#;
   pragma Export (C, u03885, "double_ordered_evaluationsB");
   u03886 : constant Version_32 := 16#75e76500#;
   pragma Export (C, u03886, "double_ordered_evaluationsS");
   u03887 : constant Version_32 := 16#af12a04a#;
   pragma Export (C, u03887, "laurent_homotopy_derivativesB");
   u03888 : constant Version_32 := 16#3000fa6c#;
   pragma Export (C, u03888, "laurent_homotopy_derivativesS");
   u03889 : constant Version_32 := 16#3a853eea#;
   pragma Export (C, u03889, "double_puiseux_structuresB");
   u03890 : constant Version_32 := 16#7ac21eb7#;
   pragma Export (C, u03890, "double_puiseux_structuresS");
   u03891 : constant Version_32 := 16#b495d3f8#;
   pragma Export (C, u03891, "double_vecvecs_containerB");
   u03892 : constant Version_32 := 16#c1eeec7b#;
   pragma Export (C, u03892, "double_vecvecs_containerS");
   u03893 : constant Version_32 := 16#035b99b0#;
   pragma Export (C, u03893, "real_powered_homotopy_ioB");
   u03894 : constant Version_32 := 16#a6d63081#;
   pragma Export (C, u03894, "real_powered_homotopy_ioS");
   u03895 : constant Version_32 := 16#8a17c420#;
   pragma Export (C, u03895, "real_powered_series_ioB");
   u03896 : constant Version_32 := 16#5ea7781e#;
   pragma Export (C, u03896, "real_powered_series_ioS");
   u03897 : constant Version_32 := 16#38d35b51#;
   pragma Export (C, u03897, "real_powered_homotopyB");
   u03898 : constant Version_32 := 16#a0d00ac6#;
   pragma Export (C, u03898, "real_powered_homotopyS");
   u03899 : constant Version_32 := 16#865b3e1e#;
   pragma Export (C, u03899, "double_vecvecs_interfaceB");
   u03900 : constant Version_32 := 16#a0f76896#;
   pragma Export (C, u03900, "double_vecvecs_interfaceS");
   u03901 : constant Version_32 := 16#3172b450#;
   pragma Export (C, u03901, "use_c2facB");
   u03902 : constant Version_32 := 16#c48e2936#;
   pragma Export (C, u03902, "use_c2facS");
   u03903 : constant Version_32 := 16#61d89afd#;
   pragma Export (C, u03903, "monodromy_interfaceB");
   u03904 : constant Version_32 := 16#015facb9#;
   pragma Export (C, u03904, "monodromy_interfaceS");
   u03905 : constant Version_32 := 16#efb19e18#;
   pragma Export (C, u03905, "dobldobl_monodromy_permutationsB");
   u03906 : constant Version_32 := 16#bab943d1#;
   pragma Export (C, u03906, "dobldobl_monodromy_permutationsS");
   u03907 : constant Version_32 := 16#925fc014#;
   pragma Export (C, u03907, "dobldobl_sampling_operationsB");
   u03908 : constant Version_32 := 16#5d0256c6#;
   pragma Export (C, u03908, "dobldobl_sampling_operationsS");
   u03909 : constant Version_32 := 16#5677a3b2#;
   pragma Export (C, u03909, "quaddobl_monodromy_permutationsB");
   u03910 : constant Version_32 := 16#77e199a7#;
   pragma Export (C, u03910, "quaddobl_monodromy_permutationsS");
   u03911 : constant Version_32 := 16#61429bf5#;
   pragma Export (C, u03911, "quaddobl_sampling_operationsB");
   u03912 : constant Version_32 := 16#dbf1e13b#;
   pragma Export (C, u03912, "quaddobl_sampling_operationsS");
   u03913 : constant Version_32 := 16#cb60245b#;
   pragma Export (C, u03913, "standard_monodromy_permutationsB");
   u03914 : constant Version_32 := 16#aa9dbb5c#;
   pragma Export (C, u03914, "standard_monodromy_permutationsS");
   u03915 : constant Version_32 := 16#a6c7c6a4#;
   pragma Export (C, u03915, "standard_sampling_operationsB");
   u03916 : constant Version_32 := 16#1b94c4d4#;
   pragma Export (C, u03916, "standard_sampling_operationsS");
   u03917 : constant Version_32 := 16#2135b2e8#;
   pragma Export (C, u03917, "witness_interfaceB");
   u03918 : constant Version_32 := 16#6fabd579#;
   pragma Export (C, u03918, "witness_interfaceS");
   u03919 : constant Version_32 := 16#0d027ad6#;
   pragma Export (C, u03919, "use_c2lrhomB");
   u03920 : constant Version_32 := 16#8ddbe70d#;
   pragma Export (C, u03920, "use_c2lrhomS");
   u03921 : constant Version_32 := 16#1059cbd9#;
   pragma Export (C, u03921, "schubert_interfaceB");
   u03922 : constant Version_32 := 16#2c683dd9#;
   pragma Export (C, u03922, "schubert_interfaceS");
   u03923 : constant Version_32 := 16#545ab76a#;
   pragma Export (C, u03923, "use_c2mbtB");
   u03924 : constant Version_32 := 16#240e206d#;
   pragma Export (C, u03924, "use_c2mbtS");
   u03925 : constant Version_32 := 16#62eec25f#;
   pragma Export (C, u03925, "member_interfaceB");
   u03926 : constant Version_32 := 16#5e57b686#;
   pragma Export (C, u03926, "member_interfaceS");
   u03927 : constant Version_32 := 16#1061d31a#;
   pragma Export (C, u03927, "dobldobl_solution_stringsB");
   u03928 : constant Version_32 := 16#ae4ef31e#;
   pragma Export (C, u03928, "dobldobl_solution_stringsS");
   u03929 : constant Version_32 := 16#60a146c3#;
   pragma Export (C, u03929, "quaddobl_solution_stringsB");
   u03930 : constant Version_32 := 16#99a52c42#;
   pragma Export (C, u03930, "quaddobl_solution_stringsS");
   u03931 : constant Version_32 := 16#f35d173f#;
   pragma Export (C, u03931, "use_c2pieriB");
   u03932 : constant Version_32 := 16#97a6ea9a#;
   pragma Export (C, u03932, "use_c2pieriS");
   u03933 : constant Version_32 := 16#93ad08d7#;
   pragma Export (C, u03933, "pieri_interfaceB");
   u03934 : constant Version_32 := 16#ff2b8dbd#;
   pragma Export (C, u03934, "pieri_interfaceS");
   u03935 : constant Version_32 := 16#fdda594b#;
   pragma Export (C, u03935, "localization_poset_stringsB");
   u03936 : constant Version_32 := 16#2bc555ec#;
   pragma Export (C, u03936, "localization_poset_stringsS");
   u03937 : constant Version_32 := 16#d124de67#;
   pragma Export (C, u03937, "pieri_homotopyB");
   u03938 : constant Version_32 := 16#091e8a0d#;
   pragma Export (C, u03938, "pieri_homotopyS");
   u03939 : constant Version_32 := 16#b8cb72ba#;
   pragma Export (C, u03939, "standard_bracket_polynomials_ioB");
   u03940 : constant Version_32 := 16#811ec274#;
   pragma Export (C, u03940, "standard_bracket_polynomials_ioS");
   u03941 : constant Version_32 := 16#3e90d9d7#;
   pragma Export (C, u03941, "pieri_root_countB");
   u03942 : constant Version_32 := 16#d0ce9a8c#;
   pragma Export (C, u03942, "pieri_root_countS");
   u03943 : constant Version_32 := 16#b5c0d889#;
   pragma Export (C, u03943, "use_celconB");
   u03944 : constant Version_32 := 16#fb271f3b#;
   pragma Export (C, u03944, "use_celconS");
   u03945 : constant Version_32 := 16#812547b3#;
   pragma Export (C, u03945, "cells_interfaceB");
   u03946 : constant Version_32 := 16#5f9a856c#;
   pragma Export (C, u03946, "cells_interfaceS");
   u03947 : constant Version_32 := 16#31dcb806#;
   pragma Export (C, u03947, "integer_cells_containerB");
   u03948 : constant Version_32 := 16#eeeb1165#;
   pragma Export (C, u03948, "integer_cells_containerS");
   u03949 : constant Version_32 := 16#c6705a33#;
   pragma Export (C, u03949, "use_giftwrapB");
   u03950 : constant Version_32 := 16#705da5d6#;
   pragma Export (C, u03950, "use_giftwrapS");
   u03951 : constant Version_32 := 16#c6903c75#;
   pragma Export (C, u03951, "giftwrap_interfaceB");
   u03952 : constant Version_32 := 16#95348d39#;
   pragma Export (C, u03952, "giftwrap_interfaceS");
   u03953 : constant Version_32 := 16#9f593675#;
   pragma Export (C, u03953, "facets_and_stringsB");
   u03954 : constant Version_32 := 16#4eafe748#;
   pragma Export (C, u03954, "facets_and_stringsS");
   u03955 : constant Version_32 := 16#deb409bf#;
   pragma Export (C, u03955, "multprec_lattice_supportsB");
   u03956 : constant Version_32 := 16#7f8a2b1a#;
   pragma Export (C, u03956, "multprec_lattice_supportsS");
   u03957 : constant Version_32 := 16#422ba027#;
   pragma Export (C, u03957, "multprec_lattice_3d_facetsB");
   u03958 : constant Version_32 := 16#5da7aef5#;
   pragma Export (C, u03958, "multprec_lattice_3d_facetsS");
   u03959 : constant Version_32 := 16#ec9fbe20#;
   pragma Export (C, u03959, "multprec_lattice_polygonsB");
   u03960 : constant Version_32 := 16#9184dc17#;
   pragma Export (C, u03960, "multprec_lattice_polygonsS");
   u03961 : constant Version_32 := 16#814b48b1#;
   pragma Export (C, u03961, "multprec_integer_vectors_ioB");
   u03962 : constant Version_32 := 16#5ad4db83#;
   pragma Export (C, u03962, "multprec_integer_vectors_ioS");
   u03963 : constant Version_32 := 16#6e1e7510#;
   pragma Export (C, u03963, "multprec_lattice_polytopesB");
   u03964 : constant Version_32 := 16#67990ff5#;
   pragma Export (C, u03964, "multprec_lattice_polytopesS");
   u03965 : constant Version_32 := 16#62fabc7b#;
   pragma Export (C, u03965, "multprec_integer_orthogonalsB");
   u03966 : constant Version_32 := 16#08e720b2#;
   pragma Export (C, u03966, "multprec_integer_orthogonalsS");
   u03967 : constant Version_32 := 16#c35c0db0#;
   pragma Export (C, u03967, "standard_lattice_supportsB");
   u03968 : constant Version_32 := 16#43624299#;
   pragma Export (C, u03968, "standard_lattice_supportsS");
   u03969 : constant Version_32 := 16#cbc35096#;
   pragma Export (C, u03969, "multprec_power_transformationsB");
   u03970 : constant Version_32 := 16#d34e4db2#;
   pragma Export (C, u03970, "multprec_power_transformationsS");
   u03971 : constant Version_32 := 16#45239c0c#;
   pragma Export (C, u03971, "lists_of_integer64_vectorsB");
   u03972 : constant Version_32 := 16#7c3c18c2#;
   pragma Export (C, u03972, "lists_of_integer64_vectorsS");
   u03973 : constant Version_32 := 16#81c4962c#;
   pragma Export (C, u03973, "standard_integer64_vecvecsB");
   u03974 : constant Version_32 := 16#c7e94cdd#;
   pragma Export (C, u03974, "standard_integer64_vecvecsS");
   u03975 : constant Version_32 := 16#99213213#;
   pragma Export (C, u03975, "multprec_lattice_4d_facetsB");
   u03976 : constant Version_32 := 16#98c7c1b8#;
   pragma Export (C, u03976, "multprec_lattice_4d_facetsS");
   u03977 : constant Version_32 := 16#2027c416#;
   pragma Export (C, u03977, "multprec_giftwrap_containerB");
   u03978 : constant Version_32 := 16#770487c5#;
   pragma Export (C, u03978, "multprec_giftwrap_containerS");
   u03979 : constant Version_32 := 16#0c892996#;
   pragma Export (C, u03979, "point_lists_and_stringsB");
   u03980 : constant Version_32 := 16#9a7355d4#;
   pragma Export (C, u03980, "point_lists_and_stringsS");
   u03981 : constant Version_32 := 16#fd955a4b#;
   pragma Export (C, u03981, "use_mapconB");
   u03982 : constant Version_32 := 16#881ed847#;
   pragma Export (C, u03982, "use_mapconS");
   u03983 : constant Version_32 := 16#0fc1baf7#;
   pragma Export (C, u03983, "monomial_maps_interfaceB");
   u03984 : constant Version_32 := 16#bb6c5684#;
   pragma Export (C, u03984, "monomial_maps_interfaceS");
   u03985 : constant Version_32 := 16#9823a468#;
   pragma Export (C, u03985, "monomial_maps_containerB");
   u03986 : constant Version_32 := 16#de628c07#;
   pragma Export (C, u03986, "monomial_maps_containerS");
   u03987 : constant Version_32 := 16#eefa37e9#;
   pragma Export (C, u03987, "use_multipB");
   u03988 : constant Version_32 := 16#26e134e0#;
   pragma Export (C, u03988, "use_multipS");
   u03989 : constant Version_32 := 16#7438083c#;
   pragma Export (C, u03989, "use_numbtropB");
   u03990 : constant Version_32 := 16#a1550c49#;
   pragma Export (C, u03990, "use_numbtropS");
   u03991 : constant Version_32 := 16#2084c988#;
   pragma Export (C, u03991, "numerical_tropisms_interfaceB");
   u03992 : constant Version_32 := 16#29cf7cb5#;
   pragma Export (C, u03992, "numerical_tropisms_interfaceS");
   u03993 : constant Version_32 := 16#69ee9b9c#;
   pragma Export (C, u03993, "use_nxtsolB");
   u03994 : constant Version_32 := 16#bbba9f40#;
   pragma Export (C, u03994, "use_nxtsolS");
   u03995 : constant Version_32 := 16#88237073#;
   pragma Export (C, u03995, "step_trackers_interfaceB");
   u03996 : constant Version_32 := 16#c36e6c3e#;
   pragma Export (C, u03996, "step_trackers_interfaceS");
   u03997 : constant Version_32 := 16#a57aeb12#;
   pragma Export (C, u03997, "dobldobl_path_trackerB");
   u03998 : constant Version_32 := 16#7e43925b#;
   pragma Export (C, u03998, "dobldobl_path_trackerS");
   u03999 : constant Version_32 := 16#06002dd8#;
   pragma Export (C, u03999, "multprec_path_trackerB");
   u04000 : constant Version_32 := 16#182472fe#;
   pragma Export (C, u04000, "multprec_path_trackerS");
   u04001 : constant Version_32 := 16#bb25f541#;
   pragma Export (C, u04001, "quaddobl_path_trackerB");
   u04002 : constant Version_32 := 16#c39e98b9#;
   pragma Export (C, u04002, "quaddobl_path_trackerS");
   u04003 : constant Version_32 := 16#1d328157#;
   pragma Export (C, u04003, "standard_path_trackerB");
   u04004 : constant Version_32 := 16#9952c2b6#;
   pragma Export (C, u04004, "standard_path_trackerS");
   u04005 : constant Version_32 := 16#6458c548#;
   pragma Export (C, u04005, "varbprec_path_trackerB");
   u04006 : constant Version_32 := 16#f9e4c975#;
   pragma Export (C, u04006, "varbprec_path_trackerS");
   u04007 : constant Version_32 := 16#1fb3cbab#;
   pragma Export (C, u04007, "solution_string_splittersB");
   u04008 : constant Version_32 := 16#2a9bf39a#;
   pragma Export (C, u04008, "solution_string_splittersS");
   u04009 : constant Version_32 := 16#1b8202b6#;
   pragma Export (C, u04009, "varbprec_corrector_stepsB");
   u04010 : constant Version_32 := 16#6ddc844e#;
   pragma Export (C, u04010, "varbprec_corrector_stepsS");
   u04011 : constant Version_32 := 16#d55f0884#;
   pragma Export (C, u04011, "varbprec_homotopyB");
   u04012 : constant Version_32 := 16#d9ec2d24#;
   pragma Export (C, u04012, "varbprec_homotopyS");
   u04013 : constant Version_32 := 16#0110c0bb#;
   pragma Export (C, u04013, "use_outdataB");
   u04014 : constant Version_32 := 16#32b85d77#;
   pragma Export (C, u04014, "use_outdataS");
   u04015 : constant Version_32 := 16#f52fa361#;
   pragma Export (C, u04015, "demics_output_dataB");
   u04016 : constant Version_32 := 16#be1eb3a6#;
   pragma Export (C, u04016, "demics_output_dataS");
   u04017 : constant Version_32 := 16#9cae5513#;
   pragma Export (C, u04017, "lists_of_stringsB");
   u04018 : constant Version_32 := 16#d96c02cc#;
   pragma Export (C, u04018, "lists_of_stringsS");
   u04019 : constant Version_32 := 16#fcb389aa#;
   pragma Export (C, u04019, "use_padconB");
   u04020 : constant Version_32 := 16#a5574d13#;
   pragma Export (C, u04020, "use_padconS");
   u04021 : constant Version_32 := 16#e067b048#;
   pragma Export (C, u04021, "pade_continuation_interfaceB");
   u04022 : constant Version_32 := 16#3f4ac747#;
   pragma Export (C, u04022, "pade_continuation_interfaceS");
   u04023 : constant Version_32 := 16#530d13cb#;
   pragma Export (C, u04023, "use_reductionB");
   u04024 : constant Version_32 := 16#ccfd3bc4#;
   pragma Export (C, u04024, "use_reductionS");
   u04025 : constant Version_32 := 16#2a5facfd#;
   pragma Export (C, u04025, "reduction_interfaceB");
   u04026 : constant Version_32 := 16#179b74a3#;
   pragma Export (C, u04026, "reduction_interfaceS");
   u04027 : constant Version_32 := 16#e10e6fc5#;
   pragma Export (C, u04027, "use_rocoB");
   u04028 : constant Version_32 := 16#5e1e7c19#;
   pragma Export (C, u04028, "use_rocoS");
   u04029 : constant Version_32 := 16#79a39006#;
   pragma Export (C, u04029, "linear_products_interfaceB");
   u04030 : constant Version_32 := 16#b920d8c5#;
   pragma Export (C, u04030, "linear_products_interfaceS");
   u04031 : constant Version_32 := 16#a11b4e7d#;
   pragma Export (C, u04031, "supporting_set_structureB");
   u04032 : constant Version_32 := 16#38ddd232#;
   pragma Export (C, u04032, "supporting_set_structureS");
   u04033 : constant Version_32 := 16#2860a76f#;
   pragma Export (C, u04033, "use_scalingB");
   u04034 : constant Version_32 := 16#c8a75c46#;
   pragma Export (C, u04034, "use_scalingS");
   u04035 : constant Version_32 := 16#ae8e3a27#;
   pragma Export (C, u04035, "scaling_interfaceB");
   u04036 : constant Version_32 := 16#ff27ad0a#;
   pragma Export (C, u04036, "scaling_interfaceS");
   u04037 : constant Version_32 := 16#15b47a85#;
   pragma Export (C, u04037, "use_seriesB");
   u04038 : constant Version_32 := 16#9e338744#;
   pragma Export (C, u04038, "use_seriesS");
   u04039 : constant Version_32 := 16#b49e73ae#;
   pragma Export (C, u04039, "power_series_interfaceB");
   u04040 : constant Version_32 := 16#bd2b3b5d#;
   pragma Export (C, u04040, "power_series_interfaceS");
   u04041 : constant Version_32 := 16#1ce44caf#;
   pragma Export (C, u04041, "dobldobl_systems_poolB");
   u04042 : constant Version_32 := 16#564b1f81#;
   pragma Export (C, u04042, "dobldobl_systems_poolS");
   u04043 : constant Version_32 := 16#6378ea2d#;
   pragma Export (C, u04043, "quaddobl_systems_poolB");
   u04044 : constant Version_32 := 16#7137a965#;
   pragma Export (C, u04044, "quaddobl_systems_poolS");
   u04045 : constant Version_32 := 16#eaab6fb9#;
   pragma Export (C, u04045, "use_solconB");
   u04046 : constant Version_32 := 16#8f3618de#;
   pragma Export (C, u04046, "use_solconS");
   u04047 : constant Version_32 := 16#4d8a293c#;
   pragma Export (C, u04047, "dobldobl_solutions_interfaceB");
   u04048 : constant Version_32 := 16#f50b021a#;
   pragma Export (C, u04048, "dobldobl_solutions_interfaceS");
   u04049 : constant Version_32 := 16#79bc21c5#;
   pragma Export (C, u04049, "quaddobl_solutions_interfaceB");
   u04050 : constant Version_32 := 16#5289e7f1#;
   pragma Export (C, u04050, "quaddobl_solutions_interfaceS");
   u04051 : constant Version_32 := 16#086f5ed2#;
   pragma Export (C, u04051, "standard_solutions_interfaceB");
   u04052 : constant Version_32 := 16#06ba9d8a#;
   pragma Export (C, u04052, "standard_solutions_interfaceS");
   u04053 : constant Version_32 := 16#a2f6ca35#;
   pragma Export (C, u04053, "use_solpoolB");
   u04054 : constant Version_32 := 16#2fdb7c3d#;
   pragma Export (C, u04054, "use_solpoolS");
   u04055 : constant Version_32 := 16#fe65bdf7#;
   pragma Export (C, u04055, "standard_solspool_interfaceB");
   u04056 : constant Version_32 := 16#1c9cb3e5#;
   pragma Export (C, u04056, "standard_solspool_interfaceS");
   u04057 : constant Version_32 := 16#e8172e80#;
   pragma Export (C, u04057, "use_sweepB");
   u04058 : constant Version_32 := 16#6c6bc92f#;
   pragma Export (C, u04058, "use_sweepS");
   u04059 : constant Version_32 := 16#32b2fdeb#;
   pragma Export (C, u04059, "sweep_interfaceB");
   u04060 : constant Version_32 := 16#cf0af3bc#;
   pragma Export (C, u04060, "sweep_interfaceS");
   u04061 : constant Version_32 := 16#5c4fb491#;
   pragma Export (C, u04061, "parameter_homotopy_stateB");
   u04062 : constant Version_32 := 16#a2cea2b0#;
   pragma Export (C, u04062, "parameter_homotopy_stateS");
   u04063 : constant Version_32 := 16#eb387fab#;
   pragma Export (C, u04063, "use_sysconB");
   u04064 : constant Version_32 := 16#8b4c750c#;
   pragma Export (C, u04064, "use_sysconS");
   u04065 : constant Version_32 := 16#718127da#;
   pragma Export (C, u04065, "dobldobl_laursys_interfaceB");
   u04066 : constant Version_32 := 16#745dd637#;
   pragma Export (C, u04066, "dobldobl_laursys_interfaceS");
   u04067 : constant Version_32 := 16#54c37893#;
   pragma Export (C, u04067, "polynomial_dropsB");
   u04068 : constant Version_32 := 16#60d95ad2#;
   pragma Export (C, u04068, "polynomial_dropsS");
   u04069 : constant Version_32 := 16#6a99d0e1#;
   pragma Export (C, u04069, "dobldobl_polysys_interfaceB");
   u04070 : constant Version_32 := 16#77d271b7#;
   pragma Export (C, u04070, "dobldobl_polysys_interfaceS");
   u04071 : constant Version_32 := 16#3f550900#;
   pragma Export (C, u04071, "dobldobl_random_polynomialsB");
   u04072 : constant Version_32 := 16#63632a60#;
   pragma Export (C, u04072, "dobldobl_random_polynomialsS");
   u04073 : constant Version_32 := 16#115e975a#;
   pragma Export (C, u04073, "multprec_laursys_interfaceB");
   u04074 : constant Version_32 := 16#f0e7f589#;
   pragma Export (C, u04074, "multprec_laursys_interfaceS");
   u04075 : constant Version_32 := 16#baa36d39#;
   pragma Export (C, u04075, "quaddobl_laursys_interfaceB");
   u04076 : constant Version_32 := 16#793be841#;
   pragma Export (C, u04076, "quaddobl_laursys_interfaceS");
   u04077 : constant Version_32 := 16#2a4ab3cc#;
   pragma Export (C, u04077, "quaddobl_polysys_interfaceB");
   u04078 : constant Version_32 := 16#86a25a53#;
   pragma Export (C, u04078, "quaddobl_polysys_interfaceS");
   u04079 : constant Version_32 := 16#60eab116#;
   pragma Export (C, u04079, "quaddobl_random_polynomialsB");
   u04080 : constant Version_32 := 16#690f4cb8#;
   pragma Export (C, u04080, "quaddobl_random_polynomialsS");
   u04081 : constant Version_32 := 16#c1eb7173#;
   pragma Export (C, u04081, "standard_laursys_interfaceB");
   u04082 : constant Version_32 := 16#f5d1f8a2#;
   pragma Export (C, u04082, "standard_laursys_interfaceS");
   u04083 : constant Version_32 := 16#139d019c#;
   pragma Export (C, u04083, "standard_polysys_interfaceB");
   u04084 : constant Version_32 := 16#e5fdbdd3#;
   pragma Export (C, u04084, "standard_polysys_interfaceS");
   u04085 : constant Version_32 := 16#0bd38518#;
   pragma Export (C, u04085, "standard_random_polynomialsB");
   u04086 : constant Version_32 := 16#039b5a0e#;
   pragma Export (C, u04086, "standard_random_polynomialsS");
   u04087 : constant Version_32 := 16#125bbbb4#;
   pragma Export (C, u04087, "use_syspoolB");
   u04088 : constant Version_32 := 16#4702b5a8#;
   pragma Export (C, u04088, "use_syspoolS");
   u04089 : constant Version_32 := 16#5ef69f03#;
   pragma Export (C, u04089, "dobldobl_syspool_interfaceB");
   u04090 : constant Version_32 := 16#3a816492#;
   pragma Export (C, u04090, "dobldobl_syspool_interfaceS");
   u04091 : constant Version_32 := 16#05e22bdd#;
   pragma Export (C, u04091, "quaddobl_syspool_interfaceB");
   u04092 : constant Version_32 := 16#da7f6805#;
   pragma Export (C, u04092, "quaddobl_syspool_interfaceS");
   u04093 : constant Version_32 := 16#5bc7d7f0#;
   pragma Export (C, u04093, "standard_syspool_interfaceB");
   u04094 : constant Version_32 := 16#f18dd31a#;
   pragma Export (C, u04094, "standard_syspool_interfaceS");
   u04095 : constant Version_32 := 16#de91c674#;
   pragma Export (C, u04095, "use_tabformB");
   u04096 : constant Version_32 := 16#d466af32#;
   pragma Export (C, u04096, "use_tabformS");
   u04097 : constant Version_32 := 16#135d5395#;
   pragma Export (C, u04097, "tableau_form_interfaceB");
   u04098 : constant Version_32 := 16#f7e69cef#;
   pragma Export (C, u04098, "tableau_form_interfaceS");
   u04099 : constant Version_32 := 16#393de276#;
   pragma Export (C, u04099, "use_trackB");
   u04100 : constant Version_32 := 16#6a0ff995#;
   pragma Export (C, u04100, "use_trackS");
   u04101 : constant Version_32 := 16#6b57d626#;
   pragma Export (C, u04101, "cascade_homotopy_interfaceB");
   u04102 : constant Version_32 := 16#0cba1f6f#;
   pragma Export (C, u04102, "cascade_homotopy_interfaceS");
   u04103 : constant Version_32 := 16#383ba33b#;
   pragma Export (C, u04103, "diagonal_homotopy_interfaceB");
   u04104 : constant Version_32 := 16#866e9e03#;
   pragma Export (C, u04104, "diagonal_homotopy_interfaceS");
   u04105 : constant Version_32 := 16#dcbbc533#;
   pragma Export (C, u04105, "dobldobl_hypersurface_witdriversB");
   u04106 : constant Version_32 := 16#7e3488cd#;
   pragma Export (C, u04106, "dobldobl_hypersurface_witdriversS");
   u04107 : constant Version_32 := 16#0c366352#;
   pragma Export (C, u04107, "dobldobl_hypersurface_witsets_ioB");
   u04108 : constant Version_32 := 16#952ee89d#;
   pragma Export (C, u04108, "dobldobl_hypersurface_witsets_ioS");
   u04109 : constant Version_32 := 16#1a760e77#;
   pragma Export (C, u04109, "witness_sets_formatsB");
   u04110 : constant Version_32 := 16#0f4093b5#;
   pragma Export (C, u04110, "witness_sets_formatsS");
   u04111 : constant Version_32 := 16#98e789f2#;
   pragma Export (C, u04111, "quaddobl_hypersurface_witdriversB");
   u04112 : constant Version_32 := 16#7b47830c#;
   pragma Export (C, u04112, "quaddobl_hypersurface_witdriversS");
   u04113 : constant Version_32 := 16#19d2531d#;
   pragma Export (C, u04113, "quaddobl_hypersurface_witsets_ioB");
   u04114 : constant Version_32 := 16#91acafb5#;
   pragma Export (C, u04114, "quaddobl_hypersurface_witsets_ioS");
   u04115 : constant Version_32 := 16#8891b314#;
   pragma Export (C, u04115, "standard_hypersurface_witdriversB");
   u04116 : constant Version_32 := 16#b39b9d8e#;
   pragma Export (C, u04116, "standard_hypersurface_witdriversS");
   u04117 : constant Version_32 := 16#699c6508#;
   pragma Export (C, u04117, "standard_hypersurface_witsets_ioB");
   u04118 : constant Version_32 := 16#eb83ec6d#;
   pragma Export (C, u04118, "standard_hypersurface_witsets_ioS");
   u04119 : constant Version_32 := 16#636a61df#;
   pragma Export (C, u04119, "use_witsolsB");
   u04120 : constant Version_32 := 16#4f75a81e#;
   pragma Export (C, u04120, "use_witsolsS");
   u04121 : constant Version_32 := 16#64deac4d#;
   pragma Export (C, u04121, "irreducible_components_interfaceB");
   u04122 : constant Version_32 := 16#03b36e57#;
   pragma Export (C, u04122, "irreducible_components_interfaceS");
   u04123 : constant Version_32 := 16#1d70ee78#;
   pragma Export (C, u04123, "dobldobl_witness_solutionsB");
   u04124 : constant Version_32 := 16#e8a79be5#;
   pragma Export (C, u04124, "dobldobl_witness_solutionsS");
   u04125 : constant Version_32 := 16#f42e93d8#;
   pragma Export (C, u04125, "quaddobl_witness_solutionsB");
   u04126 : constant Version_32 := 16#1873dded#;
   pragma Export (C, u04126, "quaddobl_witness_solutionsS");
   u04127 : constant Version_32 := 16#ccab3f9d#;
   pragma Export (C, u04127, "standard_witness_solutionsB");
   u04128 : constant Version_32 := 16#1f532e93#;
   pragma Export (C, u04128, "standard_witness_solutionsS");
   u04129 : constant Version_32 := 16#aae384e0#;
   pragma Export (C, u04129, "store_witness_solutionsB");
   u04130 : constant Version_32 := 16#159f07e7#;
   pragma Export (C, u04130, "store_witness_solutionsS");
   u04131 : constant Version_32 := 16#3106b8f8#;
   pragma Export (C, u04131, "write_witness_solutionsB");
   u04132 : constant Version_32 := 16#16af08bc#;
   pragma Export (C, u04132, "write_witness_solutionsS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.latin_1%s
   --  ada.task_initialization%s
   --  ada.task_initialization%b
   --  interfaces%s
   --  system%s
   --  system.atomic_operations%s
   --  system.float_control%s
   --  system.float_control%b
   --  system.io%s
   --  system.io%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.powten_flt%s
   --  system.powten_lflt%s
   --  system.powten_llf%s
   --  system.restrictions%s
   --  system.restrictions%b
   --  system.spark%s
   --  system.spark.cut_operations%s
   --  system.spark.cut_operations%b
   --  system.storage_elements%s
   --  system.img_address_32%s
   --  system.img_address_64%s
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%s
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  system.unsigned_types%s
   --  system.img_biu%s
   --  system.img_llb%s
   --  system.img_lllb%s
   --  system.img_lllw%s
   --  system.img_llw%s
   --  system.img_wiu%s
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%s
   --  system.wch_cnv%b
   --  system.concat_2%s
   --  system.concat_2%b
   --  system.concat_3%s
   --  system.concat_3%b
   --  system.exn_flt%s
   --  system.exn_lflt%s
   --  system.exn_llf%s
   --  system.traceback%s
   --  system.traceback%b
   --  ada.characters.handling%s
   --  system.atomic_operations.test_and_set%s
   --  system.case_util%s
   --  system.os_lib%s
   --  system.secondary_stack%s
   --  system.standard_library%s
   --  ada.exceptions%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.soft_links%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_llu%s
   --  system.val_lli%s
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  ada.exceptions.traceback%s
   --  ada.exceptions.traceback%b
   --  system.address_image%s
   --  system.address_image%b
   --  system.bit_ops%s
   --  system.bit_ops%b
   --  system.bounded_strings%s
   --  system.bounded_strings%b
   --  system.case_util%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.containers%s
   --  ada.io_exceptions%s
   --  ada.numerics%s
   --  ada.numerics.big_numbers%s
   --  ada.strings%s
   --  ada.strings.maps%s
   --  ada.strings.maps%b
   --  ada.strings.maps.constants%s
   --  interfaces.c%s
   --  interfaces.c%b
   --  system.atomic_primitives%s
   --  system.atomic_primitives%b
   --  system.exceptions%s
   --  system.exceptions.machine%s
   --  system.exceptions.machine%b
   --  system.win32%s
   --  ada.characters.handling%b
   --  system.atomic_operations.test_and_set%b
   --  system.exception_traces%s
   --  system.exception_traces%b
   --  system.img_int%s
   --  system.img_uns%s
   --  system.memory%s
   --  system.memory%b
   --  system.mmap%s
   --  system.mmap.os_interface%s
   --  system.mmap.os_interface%b
   --  system.mmap%b
   --  system.object_reader%s
   --  system.object_reader%b
   --  system.dwarf_lines%s
   --  system.dwarf_lines%b
   --  system.os_lib%b
   --  system.secondary_stack%b
   --  system.soft_links.initialize%s
   --  system.soft_links.initialize%b
   --  system.soft_links%b
   --  system.standard_library%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  ada.command_line%s
   --  ada.command_line%b
   --  ada.exceptions.is_null_occurrence%s
   --  ada.exceptions.is_null_occurrence%b
   --  ada.numerics.aux_linker_options%s
   --  ada.numerics.aux_float%s
   --  ada.numerics.aux_long_float%s
   --  ada.numerics.aux_long_long_float%s
   --  ada.numerics.aux_short_float%s
   --  ada.strings.utf_encoding%s
   --  ada.strings.utf_encoding%b
   --  ada.strings.utf_encoding.strings%s
   --  ada.strings.utf_encoding.strings%b
   --  ada.strings.utf_encoding.wide_strings%s
   --  ada.strings.utf_encoding.wide_strings%b
   --  ada.strings.utf_encoding.wide_wide_strings%s
   --  ada.strings.utf_encoding.wide_wide_strings%b
   --  ada.tags%s
   --  ada.tags%b
   --  ada.strings.text_buffers%s
   --  ada.strings.text_buffers%b
   --  ada.strings.text_buffers.utils%s
   --  ada.strings.text_buffers.utils%b
   --  interfaces.c.strings%s
   --  interfaces.c.strings%b
   --  system.arith_128%s
   --  system.arith_128%b
   --  system.arith_32%s
   --  system.arith_32%b
   --  system.arith_64%s
   --  system.arith_64%b
   --  system.fat_flt%s
   --  system.fat_lflt%s
   --  system.fat_llf%s
   --  system.multiprocessors%s
   --  system.multiprocessors%b
   --  system.os_locks%s
   --  system.finalization_primitives%s
   --  system.finalization_primitives%b
   --  system.os_interface%s
   --  system.interrupt_management%s
   --  system.interrupt_management%b
   --  system.put_images%s
   --  system.put_images%b
   --  ada.streams%s
   --  ada.streams%b
   --  system.file_control_block%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  system.file_io%s
   --  system.file_io%b
   --  system.stack_usage%s
   --  system.stack_usage%b
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.task_info%s
   --  system.task_info%b
   --  system.task_lock%s
   --  system.task_lock%b
   --  system.task_primitives%s
   --  system.val_fixed_128%s
   --  system.val_fixed_32%s
   --  system.val_fixed_64%s
   --  system.val_flt%s
   --  system.val_lflt%s
   --  system.val_llf%s
   --  system.val_lllu%s
   --  system.val_llli%s
   --  system.val_uns%s
   --  system.val_int%s
   --  system.win32.ext%s
   --  system.os_primitives%s
   --  system.os_primitives%b
   --  system.tasking%s
   --  system.task_primitives.operations%s
   --  system.tasking.debug%s
   --  system.tasking.debug%b
   --  system.task_primitives.operations%b
   --  system.tasking%b
   --  ada.calendar%s
   --  ada.calendar%b
   --  ada.calendar.delays%s
   --  ada.calendar.delays%b
   --  ada.real_time%s
   --  ada.real_time%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  ada.text_io.generic_aux%s
   --  ada.text_io.generic_aux%b
   --  system.exn_int%s
   --  system.exn_lli%s
   --  system.exn_llli%s
   --  system.img_lli%s
   --  system.img_llli%s
   --  system.img_llu%s
   --  system.img_util%s
   --  system.img_util%b
   --  system.img_fixed_128%s
   --  system.img_fixed_32%s
   --  system.img_fixed_64%s
   --  system.img_flt%s
   --  system.img_lflt%s
   --  system.img_llf%s
   --  system.pool_global%s
   --  system.pool_global%b
   --  system.soft_links.tasking%s
   --  system.soft_links.tasking%b
   --  system.tasking.initialization%s
   --  system.tasking.task_attributes%s
   --  system.tasking.task_attributes%b
   --  system.tasking.initialization%b
   --  system.tasking.protected_objects%s
   --  system.tasking.protected_objects%b
   --  system.tasking.protected_objects.entries%s
   --  system.tasking.protected_objects.entries%b
   --  system.tasking.queuing%s
   --  system.tasking.queuing%b
   --  system.tasking.utilities%s
   --  system.tasking.utilities%b
   --  system.tasking.entry_calls%s
   --  system.tasking.rendezvous%s
   --  system.tasking.protected_objects.operations%s
   --  system.tasking.protected_objects.operations%b
   --  system.tasking.entry_calls%b
   --  system.tasking.rendezvous%b
   --  system.tasking.stages%s
   --  system.tasking.stages%b
   --  text_io%s
   --  abstract_ring%s
   --  abstract_ring.domain%s
   --  abstract_ring.field%s
   --  boolean_numbers%s
   --  boolean_numbers%b
   --  boolean_ring%s
   --  bye_bye_message%s
   --  bye_bye_message%b
   --  c_double_arrays%s
   --  c_double_arrays%b
   --  c_integer_arrays%s
   --  demics_global_constants%s
   --  duration_io%s
   --  duration_io%b
   --  file_scanning%s
   --  file_scanning%b
   --  greatest_common_divisors%s
   --  greatest_common_divisors%b
   --  greeting_banners%s
   --  greeting_banners%b
   --  integer_io%s
   --  integer_io%b
   --  parse_polynomial_exceptions%s
   --  semaphore%s
   --  semaphore%b
   --  standard_integer_numbers%s
   --  standard_integer_numbers%b
   --  generic_vectors%s
   --  generic_vectors%b
   --  boolean_vectors%s
   --  boolean_vectors%b
   --  generic_dense_series%s
   --  generic_dense_series%b
   --  generic_matrices%s
   --  generic_matrices%b
   --  boolean_matrices%s
   --  boolean_matrices%b
   --  generic_norms_equals%s
   --  generic_norms_equals%b
   --  generic_vecmats%s
   --  generic_vecmats%b
   --  generic_vecvecs%s
   --  generic_vecvecs%b
   --  number_of_cores%s
   --  number_of_cores%b
   --  standard_integer64_ring%s
   --  standard_integer64_ring.ddomain%s
   --  standard64_common_divisors%s
   --  standard64_common_divisors%b
   --  standard_integer64_vectors%s
   --  standard_integer64_vectors%b
   --  standard_integer64_matrices%s
   --  standard_integer64_matrices%b
   --  standard_integer64_vecvecs%s
   --  standard_integer64_vecvecs%b
   --  standard_integer_ring%s
   --  standard_integer_ring.ddomain%s
   --  standard_common_divisors%s
   --  standard_common_divisors%b
   --  standard_integer_vectors%s
   --  standard_integer_vectors%b
   --  cell_stack%s
   --  cell_stack%b
   --  permutations%s
   --  permutations%b
   --  standard_integer_matrices%s
   --  standard_integer_matrices%b
   --  standard_integer_linear_equalities%s
   --  standard_integer_linear_equalities%b
   --  standard_integer_norms%s
   --  standard_integer_norms%b
   --  standard_integer_vecvecs%s
   --  standard_integer_vecvecs%b
   --  affine_binomial_iterator%s
   --  affine_binomial_iterator%b
   --  exponent_indices%s
   --  exponent_indices%b
   --  generic_speelpenning_convolutions%s
   --  generic_speelpenning_convolutions%b
   --  standard_lattice_supports%s
   --  standard_lattice_supports%b
   --  standard_natural_numbers%s
   --  standard_natural_numbers%b
   --  abstract_ring_io%s
   --  generate_unions%s
   --  generate_unions%b
   --  generic_complex_numbers%s
   --  generic_complex_numbers%b
   --  generic_integer_linear_solvers%s
   --  generic_integer_linear_solvers%b
   --  generic_lists%s
   --  generic_lists%b
   --  generic_lists_of_vectors%s
   --  generic_lists_of_vectors%b
   --  generic_arrays_of_vector_lists%s
   --  generic_arrays_of_vector_lists%b
   --  generic_matrices_io%s
   --  generic_matrices_io%b
   --  generic_nesvecs%s
   --  generic_nesvecs%b
   --  generic_vectors_io%s
   --  generic_vectors_io%b
   --  generic_lists_of_vectors_io%s
   --  generic_lists_of_vectors_io%b
   --  generic_vecvecs_io%s
   --  generic_vecvecs_io%b
   --  lists_of_integer64_vectors%s
   --  lists_of_integer64_vectors%b
   --  lists_of_integer_vectors%s
   --  lists_of_integer_vectors%b
   --  arrays_of_integer_vector_lists%s
   --  arrays_of_integer_vector_lists%b
   --  frequency_graph%s
   --  frequency_graph%b
   --  lexicographical_supports%s
   --  lexicographical_supports%b
   --  mixed_labels_queue%s
   --  mixed_labels_queue%b
   --  multitasking%s
   --  multitasking%b
   --  sets_of_unknowns%s
   --  sets_of_unknowns%b
   --  partitions_of_sets_of_unknowns%s
   --  partitions_of_sets_of_unknowns%b
   --  standard_floating_numbers%s
   --  standard_floating_numbers%b
   --  characters_and_numbers%s
   --  characters_and_numbers%b
   --  continuation_parameters%s
   --  continuation_parameters%b
   --  double_double_basics%s
   --  double_double_basics%b
   --  fast_double_renormalizations%s
   --  fast_double_renormalizations%b
   --  multprec_natural_coefficients%s
   --  multprec_natural_coefficients%b
   --  multprec_natural_numbers%s
   --  multprec_natural_numbers%b
   --  multprec_integer_numbers%s
   --  multprec_integer_numbers%b
   --  multprec_common_divisors%s
   --  multprec_common_divisors%b
   --  multprec_integer_ring%s
   --  multprec_integer_vectors%s
   --  multprec_integer_vectors%b
   --  multprec_integer_matrices%s
   --  multprec_integer_matrices%b
   --  multprec_integer_linear_solvers%s
   --  multprec_integer_linear_solvers%b
   --  multprec_lattice_supports%s
   --  multprec_lattice_supports%b
   --  multprec_integer_orthogonals%s
   --  multprec_integer_orthogonals%b
   --  multprec_power_transformations%s
   --  multprec_power_transformations%b
   --  quad_double_renormalizations%s
   --  quad_double_renormalizations%b
   --  standard_complex_numbers%s
   --  standard_complex_numbers%b
   --  standard_complex_ring%s
   --  standard_complex_ring.ffield%s
   --  standard_complex_vectors%s
   --  standard_complex_vectors%b
   --  polyhedral_coefficient_predictors%s
   --  polyhedral_coefficient_predictors%b
   --  standard_complex_matrices%s
   --  standard_complex_matrices%b
   --  complex_osculating_planes%s
   --  complex_osculating_planes%b
   --  matrix_homotopies%s
   --  matrix_homotopies%b
   --  standard_complex_nesvecs%s
   --  standard_complex_nesvecs%b
   --  standard_complex_series%s
   --  standard_complex_series%b
   --  standard_complex_series_ring%s
   --  standard_complex_series_vectors%s
   --  standard_complex_series_vectors%b
   --  standard_complex_series_matrices%s
   --  standard_complex_series_matrices%b
   --  standard_complex_series_vecvecs%s
   --  standard_complex_series_vecvecs%b
   --  standard_complex_vecmats%s
   --  standard_complex_vecmats%b
   --  standard_complex_vecvecs%s
   --  standard_complex_vecvecs%b
   --  dcmplx_vecvecs_container%s
   --  dcmplx_vecvecs_container%b
   --  standard_central_projections%s
   --  standard_central_projections%b
   --  standard_complex_veclists%s
   --  standard_complex_veclists%b
   --  standard_complex_vector_series%s
   --  standard_complex_vector_series%b
   --  standard_complex_matrix_series%s
   --  standard_complex_matrix_series%b
   --  standard_complex_vecvecvecs%s
   --  standard_complex_vecvecvecs%b
   --  standard_extrapolators%s
   --  standard_extrapolators%b
   --  standard_floating_numbers_io%s
   --  standard_floating_numbers_io%b
   --  standard_complex_numbers_io%s
   --  standard_complex_numbers_io%b
   --  standard_complex_ring_io%s
   --  standard_complex_matrices_io%s
   --  standard_complex_matrices_io%b
   --  standard_complex_vectors_io%s
   --  standard_complex_vectors_io%b
   --  standard_complex_vecvecs_io%s
   --  standard_complex_vecvecs_io%b
   --  standard_floating_ring%s
   --  standard_floating_ring.ffield%s
   --  standard_floating_ring_io%s
   --  standard_floating_vectors%s
   --  standard_floating_vectors%b
   --  pruning_statistics%s
   --  pruning_statistics%b
   --  standard_floating_matrices%s
   --  standard_floating_matrices%b
   --  complex_polynomial_matrices%s
   --  complex_polynomial_matrices%b
   --  dictionaries%s
   --  dictionaries%b
   --  floating_linear_inequality_solvers%s
   --  floating_linear_inequality_solvers%b
   --  linear_programming%s
   --  linear_programming%b
   --  simplex_pivoting%s
   --  simplex_pivoting%b
   --  standard_floating_matrices_io%s
   --  standard_floating_matrices_io%b
   --  standard_floating_norms_equals%s
   --  standard_floating_norms_equals%b
   --  standard_floating_vecmats%s
   --  standard_floating_vecmats%b
   --  standard_floating_vectors_io%s
   --  standard_floating_vectors_io%b
   --  standard_floating_vecvecs%s
   --  standard_floating_vecvecs%b
   --  double_vecvecs_container%s
   --  double_vecvecs_container%b
   --  lists_of_floating_vectors%s
   --  lists_of_floating_vectors%b
   --  arrays_of_floating_vector_lists%s
   --  arrays_of_floating_vector_lists%b
   --  floating_support_functions%s
   --  floating_support_functions%b
   --  lists_of_floating_vectors_io%s
   --  lists_of_floating_vectors_io%b
   --  standard_floating_vecvecs_io%s
   --  standard_floating_vecvecs_io%b
   --  standard_floating_vecvecvecs%s
   --  standard_floating_vecvecvecs%b
   --  standard_hessian_updaters%s
   --  standard_hessian_updaters%b
   --  standard_inlined_linear_solvers%s
   --  standard_inlined_linear_solvers%b
   --  standard_integer64_linear_solvers%s
   --  standard_integer64_linear_solvers%b
   --  standard_integer_linear_solvers%s
   --  standard_integer_linear_solvers%b
   --  face_enumerators_utilities%s
   --  face_enumerators_utilities%b
   --  lists_of_vectors32_utilities%s
   --  lists_of_vectors32_utilities%b
   --  standard_integer32_transformations%s
   --  standard_integer32_transformations%b
   --  integer32_vectors_utilities%s
   --  integer32_vectors_utilities%b
   --  standard_integer32_simplices%s
   --  standard_integer32_simplices%b
   --  standard_integer_kernel%s
   --  standard_integer_kernel%b
   --  standard_integer64_kernel%s
   --  standard_integer64_kernel%b
   --  standard_integer_matrix_inverse%s
   --  standard_integer_matrix_inverse%b
   --  standard_integer_numbers_io%s
   --  standard_integer_numbers_io%b
   --  complex_polynomial_matrices_io%s
   --  complex_polynomial_matrices_io%b
   --  demics_ftest%s
   --  demics_ftest%b
   --  double_laurent_series%s
   --  double_laurent_series%b
   --  double_linear_laurent_solvers%s
   --  double_linear_laurent_solvers%b
   --  filtered_points%s
   --  filtered_points%b
   --  index_tree_lp%s
   --  index_tree_lp%b
   --  main_output_feedback%s
   --  main_output_feedback%b
   --  standard_complex_row_reduction%s
   --  standard_complex_row_reduction%b
   --  standard_complex_series_io%s
   --  standard_complex_series_io%b
   --  standard_complex_series_ring_io%s
   --  standard_complex_series_vectors_io%s
   --  standard_complex_series_vectors_io%b
   --  standard_integer64_ring_io%s
   --  standard_integer64_matrices_io%s
   --  standard_integer64_matrices_io%b
   --  standard_integer64_vectors_io%s
   --  standard_integer64_vectors_io%b
   --  standard_integer_ring_io%s
   --  standard_integer_matrices_io%s
   --  standard_integer_matrices_io%b
   --  standard_integer_vectors_io%s
   --  standard_integer_vectors_io%b
   --  lists_of_integer_vectors_io%s
   --  lists_of_integer_vectors_io%b
   --  one_level_lp%s
   --  one_level_lp%b
   --  standard_echelon_forms%s
   --  standard_echelon_forms%b
   --  standard_integer_vecvecs_io%s
   --  standard_integer_vecvecs_io%b
   --  standard_mathematical_functions%s
   --  standard_mathematical_functions%b
   --  chebychev_polynomials%s
   --  chebychev_polynomials%b
   --  double_double_numbers%s
   --  double_double_numbers%b
   --  dobldobl_complex_numbers%s
   --  dobldobl_complex_numbers%b
   --  dobldobl_complex_ring%s
   --  dobldobl_complex_ring.ffield%s
   --  dobldobl_complex_vectors%s
   --  dobldobl_complex_vectors%b
   --  dobldobl_complex_equality_tests%s
   --  dobldobl_complex_equality_tests%b
   --  dobldobl_complex_matrices%s
   --  dobldobl_complex_matrices%b
   --  dobldobl_complex_nesvecs%s
   --  dobldobl_complex_nesvecs%b
   --  dobldobl_complex_series%s
   --  dobldobl_complex_series%b
   --  dobldobl_complex_series_ring%s
   --  dobldobl_complex_series_vectors%s
   --  dobldobl_complex_series_vectors%b
   --  dobldobl_complex_series_matrices%s
   --  dobldobl_complex_series_matrices%b
   --  dobldobl_complex_series_vecvecs%s
   --  dobldobl_complex_series_vecvecs%b
   --  dobldobl_complex_vecmats%s
   --  dobldobl_complex_vecmats%b
   --  dobldobl_complex_vecvecs%s
   --  dobldobl_complex_vecvecs%b
   --  dobldobl_complex_veclists%s
   --  dobldobl_complex_veclists%b
   --  dobldobl_complex_vector_series%s
   --  dobldobl_complex_vector_series%b
   --  dobldobl_complex_matrix_series%s
   --  dobldobl_complex_matrix_series%b
   --  dobldobl_echelon_forms%s
   --  dobldobl_echelon_forms%b
   --  dobldobl_extrapolators%s
   --  dobldobl_extrapolators%b
   --  dobldobl_point_coordinates%s
   --  dobldobl_point_coordinates%b
   --  dobldobl_power_traces%s
   --  dobldobl_power_traces%b
   --  dobldobl_speelpenning_convolutions%s
   --  dobldobl_speelpenning_convolutions%b
   --  dobldobl_univariate_interpolators%s
   --  dobldobl_univariate_interpolators%b
   --  dobldobl_vector_splitters%s
   --  dobldobl_vector_splitters%b
   --  double_double_constants%s
   --  dobldobl_mathematical_functions%s
   --  dobldobl_mathematical_functions%b
   --  dobldobl_complex_numbers_polar%s
   --  dobldobl_complex_numbers_polar%b
   --  dobldobl_complex_qr_least_squares%s
   --  dobldobl_complex_qr_least_squares%b
   --  dobldobl_complex_singular_values%s
   --  dobldobl_complex_singular_values%b
   --  dobldobl_complex_vector_norms%s
   --  dobldobl_complex_vector_norms%b
   --  dobldobl_durand_kerner%s
   --  dobldobl_durand_kerner%b
   --  double_double_numbers_io%s
   --  double_double_numbers_io%b
   --  dobldobl_complex_numbers_io%s
   --  dobldobl_complex_numbers_io%b
   --  dobldobl_complex_ring_io%s
   --  dobldobl_complex_matrices_io%s
   --  dobldobl_complex_matrices_io%b
   --  dobldobl_complex_row_reduction%s
   --  dobldobl_complex_row_reduction%b
   --  dobldobl_complex_vectors_io%s
   --  dobldobl_complex_vectors_io%b
   --  dobldobl_complex_series_io%s
   --  dobldobl_complex_series_io%b
   --  dobldobl_complex_algebraic_series%s
   --  dobldobl_complex_algebraic_series%b
   --  dobldobl_complex_series_norms%s
   --  dobldobl_complex_series_norms%b
   --  dobldobl_complex_series_ring_io%s
   --  dobldobl_complex_series_vectors_io%s
   --  dobldobl_complex_series_vectors_io%b
   --  dobldobl_complex_vecvecs_io%s
   --  dobldobl_complex_vecvecs_io%b
   --  dobldobl_cseries_vector_norms%s
   --  dobldobl_cseries_vector_norms%b
   --  dobldobl_numerical_rank%s
   --  dobldobl_numerical_rank%b
   --  dobldobl_complex_newton_steps%s
   --  dobldobl_complex_newton_steps%b
   --  dobldobl_rescaling_coordinates%s
   --  dobldobl_rescaling_coordinates%b
   --  double_double_ring%s
   --  double_double_ring.ffield%s
   --  double_double_ring_io%s
   --  double_double_vectors%s
   --  double_double_vectors%b
   --  double_double_matrices%s
   --  double_double_matrices%b
   --  dobldobl_vlprs_tables%s
   --  dobldobl_vlprs_tables%b
   --  dobldobl_vlprs_algorithm%s
   --  dobldobl_vlprs_algorithm%b
   --  double_double_eigenvalues%s
   --  double_double_eigenvalues%b
   --  double_double_matrices_io%s
   --  double_double_matrices_io%b
   --  double_double_qr_least_squares%s
   --  double_double_qr_least_squares%b
   --  double_double_vector_norms%s
   --  double_double_vector_norms%b
   --  double_double_vectors_io%s
   --  double_double_vectors_io%b
   --  double_double_vecvecs%s
   --  double_double_vecvecs%b
   --  directions_of_dobldobl_paths%s
   --  directions_of_dobldobl_paths%b
   --  double_double_two_norms%s
   --  double_double_two_norms%b
   --  givens_rotations%s
   --  givens_rotations%b
   --  multprec_floating_numbers%s
   --  multprec_floating_numbers%b
   --  multprec_floating_ring%s
   --  multprec_floating_ring.ffield%s
   --  multprec_complex_numbers%s
   --  multprec_complex_numbers%b
   --  multprec_complex_number_tools%s
   --  multprec_complex_number_tools%b
   --  multprec_complex_ring%s
   --  multprec_complex_ring.ffield%s
   --  multprec_complex_vectors%s
   --  multprec_complex_vectors%b
   --  multprec_complex_matrices%s
   --  multprec_complex_matrices%b
   --  multprec_complex_nesvecs%s
   --  multprec_complex_nesvecs%b
   --  multprec_complex_vecmats%s
   --  multprec_complex_vecmats%b
   --  multprec_complex_vecvecs%s
   --  multprec_complex_vecvecs%b
   --  multprec_central_projections%s
   --  multprec_central_projections%b
   --  multprec_complex_vector_tools%s
   --  multprec_complex_vector_tools%b
   --  multprec_extrapolators%s
   --  multprec_extrapolators%b
   --  multprec_floating_vectors%s
   --  multprec_floating_vectors%b
   --  multprec_floating_matrices%s
   --  multprec_floating_matrices%b
   --  multprec_floating_vecvecs%s
   --  multprec_floating_vecvecs%b
   --  multprec_mathematical_functions%s
   --  multprec_mathematical_functions%b
   --  multprec_complex_norms_equals%s
   --  multprec_complex_norms_equals%b
   --  multprec_complex_qr_least_squares%s
   --  multprec_complex_qr_least_squares%b
   --  multprec_complex_singular_values%s
   --  multprec_complex_singular_values%b
   --  multprec_durand_kerner%s
   --  multprec_durand_kerner%b
   --  multprec_floating_qr_least_squares%s
   --  multprec_floating_qr_least_squares%b
   --  multprec_power_traces%s
   --  multprec_power_traces%b
   --  multprec_univariate_interpolators%s
   --  multprec_univariate_interpolators%b
   --  octo_double_numbers%s
   --  octo_double_numbers%b
   --  octo_double_constants%s
   --  octo_double_numbers_io%s
   --  octo_double_numbers_io%b
   --  octo_double_ring%s
   --  octo_double_ring.ffield%s
   --  octo_double_ring_io%s
   --  octo_double_vectors%s
   --  octo_double_vectors%b
   --  octo_double_vectors_io%s
   --  octo_double_vectors_io%b
   --  octodobl_complex_numbers%s
   --  octodobl_complex_numbers%b
   --  octodobl_complex_numbers_io%s
   --  octodobl_complex_numbers_io%b
   --  octodobl_complex_ring%s
   --  octodobl_complex_ring_io%s
   --  octodobl_complex_vectors%s
   --  octodobl_complex_vectors%b
   --  octodobl_complex_matrices%s
   --  octodobl_complex_matrices%b
   --  octodobl_complex_matrices_io%s
   --  octodobl_complex_matrices_io%b
   --  octodobl_complex_series%s
   --  octodobl_complex_series%b
   --  octodobl_complex_series_ring%s
   --  octodobl_complex_series_vectors%s
   --  octodobl_complex_series_vectors%b
   --  octodobl_complex_series_matrices%s
   --  octodobl_complex_series_matrices%b
   --  octodobl_complex_series_vecvecs%s
   --  octodobl_complex_series_vecvecs%b
   --  octodobl_complex_vecmats%s
   --  octodobl_complex_vecmats%b
   --  octodobl_complex_vectors_io%s
   --  octodobl_complex_vectors_io%b
   --  octodobl_complex_series_io%s
   --  octodobl_complex_series_io%b
   --  octodobl_complex_vecvecs%s
   --  octodobl_complex_vecvecs%b
   --  octodobl_complex_vector_series%s
   --  octodobl_complex_vector_series%b
   --  octodobl_complex_matrix_series%s
   --  octodobl_complex_matrix_series%b
   --  octodobl_complex_vecvecs_io%s
   --  octodobl_complex_vecvecs_io%b
   --  octodobl_echelon_forms%s
   --  octodobl_echelon_forms%b
   --  octodobl_mathematical_functions%s
   --  octodobl_mathematical_functions%b
   --  octodobl_complex_numbers_polar%s
   --  octodobl_complex_numbers_polar%b
   --  octodobl_complex_algebraic_series%s
   --  octodobl_complex_algebraic_series%b
   --  octodobl_complex_qr_least_squares%s
   --  octodobl_complex_qr_least_squares%b
   --  octodobl_complex_series_norms%s
   --  octodobl_complex_series_norms%b
   --  octodobl_complex_singular_values%s
   --  octodobl_complex_singular_values%b
   --  octodobl_complex_vector_norms%s
   --  octodobl_complex_vector_norms%b
   --  octodobl_cseries_vector_norms%s
   --  octodobl_cseries_vector_norms%b
   --  octodobl_speelpenning_convolutions%s
   --  octodobl_speelpenning_convolutions%b
   --  penta_double_numbers%s
   --  penta_double_numbers%b
   --  penta_double_constants%s
   --  penta_double_numbers_io%s
   --  penta_double_numbers_io%b
   --  penta_double_ring%s
   --  penta_double_ring.ffield%s
   --  penta_double_ring_io%s
   --  penta_double_vectors%s
   --  penta_double_vectors%b
   --  penta_double_vectors_io%s
   --  penta_double_vectors_io%b
   --  pentdobl_complex_numbers%s
   --  pentdobl_complex_numbers%b
   --  pentdobl_complex_numbers_io%s
   --  pentdobl_complex_numbers_io%b
   --  pentdobl_complex_ring%s
   --  pentdobl_complex_ring_io%s
   --  pentdobl_complex_vectors%s
   --  pentdobl_complex_vectors%b
   --  pentdobl_complex_matrices%s
   --  pentdobl_complex_matrices%b
   --  pentdobl_complex_matrices_io%s
   --  pentdobl_complex_matrices_io%b
   --  pentdobl_complex_series%s
   --  pentdobl_complex_series%b
   --  pentdobl_complex_series_ring%s
   --  pentdobl_complex_series_vectors%s
   --  pentdobl_complex_series_vectors%b
   --  pentdobl_complex_series_matrices%s
   --  pentdobl_complex_series_matrices%b
   --  pentdobl_complex_series_vecvecs%s
   --  pentdobl_complex_series_vecvecs%b
   --  pentdobl_complex_vecmats%s
   --  pentdobl_complex_vecmats%b
   --  pentdobl_complex_vectors_io%s
   --  pentdobl_complex_vectors_io%b
   --  pentdobl_complex_series_io%s
   --  pentdobl_complex_series_io%b
   --  pentdobl_complex_vecvecs%s
   --  pentdobl_complex_vecvecs%b
   --  pentdobl_complex_vector_series%s
   --  pentdobl_complex_vector_series%b
   --  pentdobl_complex_matrix_series%s
   --  pentdobl_complex_matrix_series%b
   --  pentdobl_complex_vecvecs_io%s
   --  pentdobl_complex_vecvecs_io%b
   --  pentdobl_echelon_forms%s
   --  pentdobl_echelon_forms%b
   --  pentdobl_mathematical_functions%s
   --  pentdobl_mathematical_functions%b
   --  pentdobl_complex_numbers_polar%s
   --  pentdobl_complex_numbers_polar%b
   --  pentdobl_complex_algebraic_series%s
   --  pentdobl_complex_algebraic_series%b
   --  pentdobl_complex_qr_least_squares%s
   --  pentdobl_complex_qr_least_squares%b
   --  pentdobl_complex_series_norms%s
   --  pentdobl_complex_series_norms%b
   --  pentdobl_complex_singular_values%s
   --  pentdobl_complex_singular_values%b
   --  pentdobl_complex_vector_norms%s
   --  pentdobl_complex_vector_norms%b
   --  pentdobl_cseries_vector_norms%s
   --  pentdobl_cseries_vector_norms%b
   --  pentdobl_speelpenning_convolutions%s
   --  pentdobl_speelpenning_convolutions%b
   --  standard_complex_blas_helpers%s
   --  standard_complex_blas_helpers%b
   --  standard_complex_norms_equals%s
   --  standard_complex_norms_equals%b
   --  standard_complex_numbers_polar%s
   --  standard_complex_numbers_polar%b
   --  multprec_complex_numbers_polar%s
   --  multprec_complex_numbers_polar%b
   --  standard_complex_algebraic_series%s
   --  standard_complex_algebraic_series%b
   --  standard_complex_qr_least_squares%s
   --  standard_complex_qr_least_squares%b
   --  standard_complex_series_norms%s
   --  standard_complex_series_norms%b
   --  standard_complex_singular_values%s
   --  standard_complex_singular_values%b
   --  standard_coefficient_circuits%s
   --  standard_coefficient_circuits%b
   --  standard_complex_circuits%s
   --  standard_complex_circuits%b
   --  standard_complex_solutions%s
   --  standard_complex_solutions%b
   --  multprec_complex_solutions%s
   --  multprec_complex_solutions%b
   --  multprec_linear_projections%s
   --  multprec_linear_projections%b
   --  multprec_solution_diagnostics%s
   --  multprec_solution_diagnostics%b
   --  multprec_solutions_container%s
   --  multprec_solutions_container%b
   --  solutions_pool%s
   --  solutions_pool%b
   --  standard_complex_vector_norms%s
   --  standard_complex_vector_norms%b
   --  standard_continuation_data%s
   --  standard_continuation_data%b
   --  multprec_continuation_data%s
   --  multprec_continuation_data%b
   --  standard_cseries_vector_norms%s
   --  standard_cseries_vector_norms%b
   --  standard_diagonal_solutions%s
   --  standard_diagonal_solutions%b
   --  standard_durand_kerner%s
   --  standard_durand_kerner%b
   --  hybrid_durand_kerner%s
   --  hybrid_durand_kerner%b
   --  standard_floating_eigenvalues%s
   --  standard_floating_eigenvalues%b
   --  standard_floating_qr_least_squares%s
   --  standard_floating_qr_least_squares%b
   --  standard_floating_two_norms%s
   --  standard_floating_two_norms%b
   --  standard_floating_vector_norms%s
   --  standard_floating_vector_norms%b
   --  standard_inlined_blas_helpers%s
   --  standard_inlined_blas_helpers%b
   --  standard_linear_projections%s
   --  standard_linear_projections%b
   --  standard_matrix_splitters%s
   --  standard_matrix_splitters%b
   --  standard_natural64_ring%s
   --  standard_natural64_vectors%s
   --  standard_natural64_vectors%b
   --  standard_natural64_vecvecs%s
   --  standard_natural64_vecvecs%b
   --  standard_natural_numbers_io%s
   --  standard_natural_numbers_io%b
   --  generic_nesvecs_io%s
   --  generic_nesvecs_io%b
   --  dobldobl_complex_nesvecs_io%s
   --  dobldobl_complex_nesvecs_io%b
   --  generic_vecmats_io%s
   --  generic_vecmats_io%b
   --  matrix_homotopies_io%s
   --  matrix_homotopies_io%b
   --  multprec_natural64_coefficients%s
   --  multprec_natural64_coefficients%b
   --  multprec_natural64_numbers%s
   --  multprec_natural64_numbers%b
   --  multprec_integer64_numbers%s
   --  multprec_integer64_numbers%b
   --  multprec_floating64_numbers%s
   --  multprec_floating64_numbers%b
   --  multprec_integer64_ring%s
   --  multprec_integer64_vectors%s
   --  multprec_integer64_vectors%b
   --  multprec_integer64_matrices%s
   --  multprec_integer64_matrices%b
   --  multprec_natural_numbers_io%s
   --  multprec_natural_numbers_io%b
   --  multprec_integer_numbers_io%s
   --  multprec_integer_numbers_io%b
   --  multprec_integer_ring_io%s
   --  multprec_integer_matrices_io%s
   --  multprec_integer_matrices_io%b
   --  multprec_integer_vectors_io%s
   --  multprec_integer_vectors_io%b
   --  multprec_lattice_polygons%s
   --  multprec_lattice_polygons%b
   --  multprec_lattice_3d_facets%s
   --  multprec_lattice_polytopes%s
   --  multprec_lattice_polytopes%b
   --  multprec_lattice_3d_facets%b
   --  multprec_lattice_4d_facets%s
   --  multprec_lattice_4d_facets%b
   --  facets_and_strings%s
   --  facets_and_strings%b
   --  pack_continuation_parameters%s
   --  pack_continuation_parameters%b
   --  point_lists_and_strings%s
   --  point_lists_and_strings%b
   --  standard_complex_nesvecs_io%s
   --  standard_complex_nesvecs_io%b
   --  standard_complex_vecmats_io%s
   --  standard_complex_vecmats_io%b
   --  standard_integer32_simplices_io%s
   --  standard_integer32_simplices_io%b
   --  standard_lattice_polygons%s
   --  standard_lattice_polygons%b
   --  standard_natural_ring%s
   --  standard_natural_ring_io%s
   --  standard_natural_vectors%s
   --  standard_natural_vectors%b
   --  brackets%s
   --  brackets%b
   --  bracket_monomials%s
   --  bracket_monomials%b
   --  brackets_io%s
   --  brackets_io%b
   --  bracket_monomials_io%s
   --  bracket_monomials_io%b
   --  checker_boards%s
   --  checker_boards%b
   --  checker_moves%s
   --  checker_moves%b
   --  generic_bracket_polynomials%s
   --  generic_bracket_polynomials%b
   --  dobldobl_bracket_polynomials%s
   --  dobldobl_bracket_polynomials%b
   --  dobldobl_bracket_systems%s
   --  dobldobl_bracket_systems%b
   --  generic_polynomials%s
   --  generic_polynomials%b
   --  dobldobl_complex_polynomials%s
   --  dobldobl_complex_polynomials%b
   --  dobldobl_complex_poly_ring%s
   --  dobldobl_complex_poly_vectors%s
   --  dobldobl_complex_poly_vectors%b
   --  dobldobl_complex_poly_matrices%s
   --  dobldobl_complex_poly_matrices%b
   --  dobldobl_cseries_polynomials%s
   --  dobldobl_cseries_polynomials%b
   --  dobldobl_nvariate_interpolators%s
   --  dobldobl_nvariate_interpolators%b
   --  double_double_polynomials%s
   --  double_double_polynomials%b
   --  generic_lists_of_terms%s
   --  generic_lists_of_terms%b
   --  dobldobl_complex_term_lists%s
   --  dobldobl_complex_term_lists%b
   --  generic_polynomial_systems%s
   --  generic_polynomial_systems%b
   --  dobldobl_complex_poly_systems%s
   --  dobldobl_complex_poly_systems%b
   --  dobldobl_cseries_poly_systems%s
   --  dobldobl_cseries_poly_systems%b
   --  double_double_poly_systems%s
   --  double_double_poly_systems%b
   --  dobldobl_complex_to_real_poly%s
   --  dobldobl_complex_to_real_poly%b
   --  graded_lexicographic_order%s
   --  graded_lexicographic_order%b
   --  generic_laurent_polynomials%s
   --  generic_laurent_polynomials%b
   --  dobldobl_complex_laurentials%s
   --  dobldobl_complex_laurentials%b
   --  generic_laur_poly_functions%s
   --  generic_laur_poly_functions%b
   --  dobldobl_complex_laur_functions%s
   --  dobldobl_complex_laur_functions%b
   --  generic_laur_poly_systems%s
   --  generic_laur_poly_systems%b
   --  dobldobl_complex_laur_systems%s
   --  dobldobl_complex_laur_systems%b
   --  dobldobl_embed_laurentials%s
   --  dobldobl_embed_laurentials%b
   --  dobldobl_laur_poly_convertors%s
   --  dobldobl_laur_poly_convertors%b
   --  dobldobl_poly_laur_convertors%s
   --  dobldobl_poly_laur_convertors%b
   --  generic_laur_system_functions%s
   --  generic_laur_system_functions%b
   --  dobldobl_complex_laur_sysfun%s
   --  dobldobl_complex_laur_sysfun%b
   --  generic_laur_jaco_matrices%s
   --  generic_laur_jaco_matrices%b
   --  dobldobl_complex_laur_jacomats%s
   --  dobldobl_complex_laur_jacomats%b
   --  dobldobl_laurent_homotopy%s
   --  dobldobl_laurent_homotopy%b
   --  dobldobl_laursys_container%s
   --  dobldobl_laursys_container%b
   --  integer_support_functions%s
   --  integer_support_functions%b
   --  integer_mixed_subdivisions%s
   --  integer_mixed_subdivisions%b
   --  flatten_mixed_subdivisions%s
   --  flatten_mixed_subdivisions%b
   --  lexicographic_root_enumeration%s
   --  lexicographic_root_enumeration%b
   --  localization_posets%s
   --  localization_posets%b
   --  localization_poset_strings%s
   --  localization_poset_strings%b
   --  monomial_hashing%s
   --  monomial_hashing%b
   --  multprec_complex_laurentials%s
   --  multprec_complex_laurentials%b
   --  multprec_complex_laur_functions%s
   --  multprec_complex_laur_functions%b
   --  multprec_complex_laur_systems%s
   --  multprec_complex_laur_systems%b
   --  multprec_complex_laur_sysfun%s
   --  multprec_complex_laur_sysfun%b
   --  multprec_complex_laur_jacomats%s
   --  multprec_complex_laur_jacomats%b
   --  multprec_complex_polynomials%s
   --  multprec_complex_polynomials%b
   --  multprec_complex_poly_systems%s
   --  multprec_complex_poly_systems%b
   --  multprec_complex_term_lists%s
   --  multprec_complex_term_lists%b
   --  multprec_floating_polynomials%s
   --  multprec_floating_polynomials%b
   --  multprec_floating_poly_systems%s
   --  multprec_floating_poly_systems%b
   --  multprec_laursys_container%s
   --  multprec_laursys_container%b
   --  octo_double_polynomials%s
   --  octo_double_polynomials%b
   --  octo_double_poly_systems%s
   --  octo_double_poly_systems%b
   --  octodobl_complex_laurentials%s
   --  octodobl_complex_laurentials%b
   --  octodobl_complex_laur_systems%s
   --  octodobl_complex_laur_systems%b
   --  octodobl_complex_polynomials%s
   --  octodobl_complex_polynomials%b
   --  octodobl_complex_poly_systems%s
   --  octodobl_complex_poly_systems%b
   --  octodobl_cseries_polynomials%s
   --  octodobl_cseries_polynomials%b
   --  octodobl_cseries_poly_systems%s
   --  octodobl_cseries_poly_systems%b
   --  penta_double_polynomials%s
   --  penta_double_polynomials%b
   --  penta_double_poly_systems%s
   --  penta_double_poly_systems%b
   --  pentdobl_complex_laurentials%s
   --  pentdobl_complex_laurentials%b
   --  pentdobl_complex_laur_systems%s
   --  pentdobl_complex_laur_systems%b
   --  pentdobl_complex_polynomials%s
   --  pentdobl_complex_polynomials%b
   --  pentdobl_complex_poly_systems%s
   --  pentdobl_complex_poly_systems%b
   --  pentdobl_cseries_polynomials%s
   --  pentdobl_cseries_polynomials%b
   --  pentdobl_cseries_poly_systems%s
   --  pentdobl_cseries_poly_systems%b
   --  pieri_root_count%s
   --  pieri_root_count%b
   --  pivot_selection%s
   --  pivot_selection%b
   --  set_structure%s
   --  set_structure%b
   --  degree_sets_tables%s
   --  degree_sets_tables%b
   --  standard_bracket_polynomials%s
   --  standard_bracket_polynomials%b
   --  standard_bracket_polynomials_io%s
   --  standard_bracket_polynomials_io%b
   --  standard_complex_laurentials%s
   --  standard_complex_laurentials%b
   --  standard_complex_laur_functions%s
   --  standard_complex_laur_functions%b
   --  standard_complex_laur_systems%s
   --  standard_complex_laur_systems%b
   --  integer_lifting_utilities%s
   --  integer_lifting_utilities%b
   --  real_powered_homotopy%s
   --  real_powered_homotopy%b
   --  standard_affine_binomials%s
   --  standard_affine_binomials%b
   --  standard_complex_laur_sysfun%s
   --  standard_complex_laur_sysfun%b
   --  standard_complex_laur_jacomats%s
   --  standard_complex_laur_jacomats%b
   --  standard_complex_polynomials%s
   --  standard_complex_polynomials%b
   --  reduction_of_polynomials%s
   --  reduction_of_polynomials%b
   --  standard_complex_poly_lists%s
   --  standard_complex_poly_lists%b
   --  standard_complex_poly_ring%s
   --  standard_complex_poly_systems%s
   --  standard_complex_poly_systems%b
   --  multprec_to_standard_convertors%s
   --  multprec_to_standard_convertors%b
   --  standard_complex_poly_vectors%s
   --  standard_complex_poly_vectors%b
   --  standard_complex_poly_matrices%s
   --  standard_complex_poly_matrices%b
   --  standard_complex_prod_systems%s
   --  standard_complex_prod_systems%b
   --  standard_complex_substitutors%s
   --  standard_complex_substitutors%b
   --  standard_complex_term_lists%s
   --  standard_complex_term_lists%b
   --  standard_cseries_polynomials%s
   --  standard_cseries_polynomials%b
   --  standard_cseries_poly_systems%s
   --  standard_cseries_poly_systems%b
   --  standard_embed_laurentials%s
   --  standard_embed_laurentials%b
   --  standard_floating_polynomials%s
   --  standard_floating_polynomials%b
   --  standard_floating_poly_systems%s
   --  standard_floating_poly_systems%b
   --  standard_complex_to_real_poly%s
   --  standard_complex_to_real_poly%b
   --  standard_initial_forms%s
   --  standard_initial_forms%b
   --  standard_laur_poly_convertors%s
   --  standard_laur_poly_convertors%b
   --  standard_laurent_homotopy%s
   --  standard_laurent_homotopy%b
   --  standard_laursys_container%s
   --  standard_laursys_container%b
   --  standard_natural_matrices%s
   --  standard_natural_matrices%b
   --  bracket_expansions%s
   --  bracket_expansions%b
   --  curves_into_grassmannian%s
   --  curves_into_grassmannian%b
   --  dobldobl_complex_linear_solvers%s
   --  dobldobl_complex_linear_solvers%b
   --  dobldobl_linear_reduction%s
   --  dobldobl_linear_reduction%b
   --  dobldobl_rational_approximations%s
   --  dobldobl_rational_approximations%b
   --  dobldobl_pade_approximants%s
   --  dobldobl_pade_approximants%b
   --  flow_tables%s
   --  flow_tables%b
   --  generic_floating_linear_solvers%s
   --  generic_floating_linear_solvers%b
   --  double_double_linear_solvers%s
   --  double_double_linear_solvers%b
   --  dobldobl_matrix_inversion%s
   --  dobldobl_matrix_inversion%b
   --  generic_polynomial_functions%s
   --  generic_polynomial_functions%b
   --  dobldobl_complex_poly_functions%s
   --  dobldobl_complex_poly_functions%b
   --  dobldobl_cseries_poly_functions%s
   --  dobldobl_cseries_poly_functions%b
   --  double_double_poly_functions%s
   --  double_double_poly_functions%b
   --  generic_hessian_matrices%s
   --  generic_hessian_matrices%b
   --  dobldobl_complex_hessians%s
   --  dobldobl_complex_hessians%b
   --  generic_poly_system_functions%s
   --  generic_poly_system_functions%b
   --  dobldobl_complex_poly_sysfun%s
   --  dobldobl_complex_poly_sysfun%b
   --  dobldobl_cseries_poly_sysfun%s
   --  dobldobl_cseries_poly_sysfun%b
   --  dobldobl_mixed_residuals%s
   --  dobldobl_mixed_residuals%b
   --  double_double_poly_sysfun%s
   --  double_double_poly_sysfun%b
   --  generic_jacobian_matrices%s
   --  generic_jacobian_matrices%b
   --  dobldobl_complex_jaco_matrices%s
   --  dobldobl_complex_jaco_matrices%b
   --  dobldobl_coefficient_homotopy%s
   --  dobldobl_coefficient_homotopy%b
   --  dobldobl_cseries_jaco_matrices%s
   --  dobldobl_cseries_jaco_matrices%b
   --  dobldobl_embed_polynomials%s
   --  dobldobl_embed_polynomials%b
   --  dobldobl_homotopy%s
   --  dobldobl_homotopy%b
   --  dobldobl_jacobian_trees%s
   --  dobldobl_jacobian_trees%b
   --  dobldobl_polysys_container%s
   --  dobldobl_polysys_container%b
   --  dobldobl_systems_pool%s
   --  dobldobl_systems_pool%b
   --  double_double_jaco_matrices%s
   --  double_double_jaco_matrices%b
   --  multprec_complex_poly_functions%s
   --  multprec_complex_poly_functions%b
   --  multprec_complex_poly_sysfun%s
   --  multprec_complex_poly_sysfun%b
   --  multprec_complex_jaco_matrices%s
   --  multprec_complex_jaco_matrices%b
   --  multprec_embed_polynomials%s
   --  multprec_embed_polynomials%b
   --  multprec_homotopy%s
   --  multprec_homotopy%b
   --  multprec_jacobian_trees%s
   --  multprec_jacobian_trees%b
   --  multprec_polysys_container%s
   --  multprec_polysys_container%b
   --  octodobl_complex_linear_solvers%s
   --  octodobl_complex_linear_solvers%b
   --  octodobl_complex_poly_functions%s
   --  octodobl_complex_poly_functions%b
   --  octodobl_complex_poly_sysfun%s
   --  octodobl_complex_poly_sysfun%b
   --  octodobl_complex_jaco_matrices%s
   --  octodobl_complex_jaco_matrices%b
   --  octodobl_coefficient_homotopy%s
   --  octodobl_coefficient_homotopy%b
   --  octodobl_cseries_poly_functions%s
   --  octodobl_cseries_poly_functions%b
   --  octodobl_cseries_poly_sysfun%s
   --  octodobl_cseries_poly_sysfun%b
   --  octodobl_cseries_jaco_matrices%s
   --  octodobl_cseries_jaco_matrices%b
   --  octodobl_homotopy%s
   --  octodobl_homotopy%b
   --  pentdobl_complex_linear_solvers%s
   --  pentdobl_complex_linear_solvers%b
   --  pentdobl_complex_poly_functions%s
   --  pentdobl_complex_poly_functions%b
   --  pentdobl_complex_poly_sysfun%s
   --  pentdobl_complex_poly_sysfun%b
   --  pentdobl_complex_jaco_matrices%s
   --  pentdobl_complex_jaco_matrices%b
   --  pentdobl_coefficient_homotopy%s
   --  pentdobl_coefficient_homotopy%b
   --  pentdobl_cseries_poly_functions%s
   --  pentdobl_cseries_poly_functions%b
   --  pentdobl_cseries_poly_sysfun%s
   --  pentdobl_cseries_poly_sysfun%b
   --  pentdobl_cseries_jaco_matrices%s
   --  pentdobl_cseries_jaco_matrices%b
   --  pentdobl_homotopy%s
   --  pentdobl_homotopy%b
   --  plane_representations%s
   --  plane_representations%b
   --  standard_complex_linear_solvers%s
   --  standard_complex_linear_solvers%b
   --  polyhedral_coefficient_correctors%s
   --  polyhedral_coefficient_correctors%b
   --  standard_cascading_planes%s
   --  standard_cascading_planes%b
   --  standard_complex_poly_functions%s
   --  standard_complex_poly_functions%b
   --  standard_complex_hessians%s
   --  standard_complex_hessians%b
   --  standard_complex_poly_sysfun%s
   --  standard_complex_poly_sysfun%b
   --  standard_complex_jaco_matrices%s
   --  standard_complex_jaco_matrices%b
   --  standard_coefficient_homotopy%s
   --  standard_coefficient_homotopy%b
   --  standard_cseries_poly_functions%s
   --  standard_cseries_poly_functions%b
   --  standard_cseries_poly_sysfun%s
   --  standard_cseries_poly_sysfun%b
   --  standard_cseries_jaco_matrices%s
   --  standard_cseries_jaco_matrices%b
   --  standard_embed_polynomials%s
   --  standard_embed_polynomials%b
   --  standard_floating_linear_solvers%s
   --  standard_floating_linear_solvers%b
   --  basis_exchanges%s
   --  basis_exchanges%b
   --  floating_mixed_subdivisions%s
   --  floating_lifting_utilities%s
   --  floating_lifting_utilities%b
   --  floating_mixed_subdivisions%b
   --  demics_output_cells%s
   --  demics_output_cells%b
   --  demics_output_convertors%s
   --  demics_output_convertors%b
   --  floating_integer_convertors%s
   --  floating_integer_convertors%b
   --  linear_minimization%s
   --  linear_minimization%b
   --  mixed_cells_queue%s
   --  mixed_cells_queue%b
   --  standard_floating_poly_functions%s
   --  standard_floating_poly_functions%b
   --  standard_floating_poly_sysfun%s
   --  standard_floating_poly_sysfun%b
   --  standard_floating_jaco_matrices%s
   --  standard_floating_jaco_matrices%b
   --  standard_homotopy%s
   --  standard_homotopy%b
   --  standard_jacobian_trees%s
   --  standard_jacobian_trees%b
   --  standard_linear_poly_solvers%s
   --  standard_linear_poly_solvers%b
   --  standard_linear_reduction%s
   --  standard_linear_reduction%b
   --  standard_linear_spaces%s
   --  standard_linear_spaces%b
   --  standard_matrix_inversion%s
   --  standard_matrix_inversion%b
   --  standard_mixed_residuals%s
   --  standard_mixed_residuals%b
   --  standard_natural_matrices_io%s
   --  standard_natural_matrices_io%b
   --  standard_natural_vectors_io%s
   --  standard_natural_vectors_io%b
   --  checker_boards_io%s
   --  checker_boards_io%b
   --  dobldobl_nullity_polynomials%s
   --  dobldobl_nullity_polynomials%b
   --  dobldobl_nullity_matrices%s
   --  dobldobl_nullity_matrices%b
   --  generic_arrays_of_vector_lists_io%s
   --  generic_arrays_of_vector_lists_io%b
   --  arrays_of_floating_vector_lists_io%s
   --  arrays_of_floating_vector_lists_io%b
   --  arrays_of_integer_vector_lists_io%s
   --  arrays_of_integer_vector_lists_io%b
   --  localization_posets_io%s
   --  localization_posets_io%b
   --  standard_complex_term_lists_io%s
   --  standard_complex_term_lists_io%b
   --  standard_condition_tables%s
   --  standard_condition_tables%b
   --  multprec_condition_tables%s
   --  multprec_condition_tables%b
   --  standard_natural_vecvecs%s
   --  standard_natural_vecvecs%b
   --  dobldobl_deflation_matrices%s
   --  dobldobl_deflation_matrices%b
   --  dobldobl_evaluate_deflation%s
   --  dobldobl_evaluate_deflation_io%s
   --  dobldobl_evaluate_deflation_io%b
   --  dobldobl_evaluate_deflation%b
   --  monodromy_group_actions%s
   --  monodromy_group_actions%b
   --  monodromy_group_actions_io%s
   --  monodromy_group_actions_io%b
   --  multprec_deflation_matrices%s
   --  multprec_deflation_matrices%b
   --  multprec_evaluate_deflation%s
   --  multprec_evaluate_deflation_io%s
   --  multprec_evaluate_deflation_io%b
   --  multprec_evaluate_deflation%b
   --  standard_deflation_matrices%s
   --  standard_deflation_matrices%b
   --  standard_evaluate_deflation%s
   --  standard_evaluate_deflation_io%s
   --  standard_evaluate_deflation_io%b
   --  standard_evaluate_deflation%b
   --  standard_linear_product_system%s
   --  standard_linear_product_system%b
   --  standard_complex_prod_planes%s
   --  standard_complex_prod_planes%b
   --  standard_monomial_evaluations%s
   --  standard_monomial_evaluations%b
   --  dobldobl_monomial_evaluations%s
   --  dobldobl_monomial_evaluations%b
   --  standard_nullity_polynomials%s
   --  standard_nullity_polynomials%b
   --  standard_nullity_matrices%s
   --  standard_nullity_matrices%b
   --  standard_numerical_rank%s
   --  standard_numerical_rank%b
   --  standard_complex_newton_steps%s
   --  standard_complex_newton_steps%b
   --  standard_nvariate_interpolators%s
   --  standard_nvariate_interpolators%b
   --  standard_parameter_solutions%s
   --  standard_parameter_solutions%b
   --  standard_parse_numbers%s
   --  standard_parse_numbers%b
   --  multprec_parse_numbers%s
   --  multprec_parse_numbers%b
   --  multprec_floating_constants%s
   --  multprec_floating_constants%b
   --  multprec_floating_numbers_io%s
   --  multprec_floating_numbers_io%b
   --  multprec_complex_numbers_io%s
   --  multprec_complex_numbers_io%b
   --  multprec_complex_linear_solvers%s
   --  multprec_complex_linear_solvers%b
   --  multprec_complex_ring_io%s
   --  multprec_complex_matrices_io%s
   --  multprec_complex_matrices_io%b
   --  multprec_complex_vectors_io%s
   --  multprec_complex_vectors_io%b
   --  multprec_complex_nesvecs_io%s
   --  multprec_complex_nesvecs_io%b
   --  multprec_complex_vecvecs_io%s
   --  multprec_complex_vecvecs_io%b
   --  multprec_dobldobl_convertors%s
   --  multprec_dobldobl_convertors%b
   --  dobldobl_complex_numbers_cv%s
   --  dobldobl_complex_numbers_cv%b
   --  dobldobl_complex_vectors_cv%s
   --  dobldobl_complex_vectors_cv%b
   --  dobldobl_complex_solutions%s
   --  dobldobl_complex_solutions%b
   --  dobldobl_condition_tables%s
   --  dobldobl_condition_tables%b
   --  dobldobl_continuation_data%s
   --  dobldobl_continuation_data%b
   --  dobldobl_diagonal_solutions%s
   --  dobldobl_diagonal_solutions%b
   --  dobldobl_intrinsic_solutions%s
   --  dobldobl_intrinsic_solutions%b
   --  dobldobl_linear_poly_solvers%s
   --  dobldobl_linear_poly_solvers%b
   --  dobldobl_linear_product_system%s
   --  dobldobl_linear_product_system%b
   --  dobldobl_parameter_solutions%s
   --  dobldobl_parameter_solutions%b
   --  dobldobl_point_lists%s
   --  dobldobl_point_lists%b
   --  dobldobl_polynomial_convertors%s
   --  dobldobl_polynomial_convertors%b
   --  dobldobl_predictors%s
   --  dobldobl_predictors%b
   --  dobldobl_dispatch_predictors%s
   --  dobldobl_dispatch_predictors%b
   --  dobldobl_quad_trees%s
   --  dobldobl_quad_trees%b
   --  dobldobl_radial_solvers%s
   --  dobldobl_radial_solvers%b
   --  dobldobl_scaling%s
   --  dobldobl_scaling%b
   --  dobldobl_solution_diagnostics%s
   --  dobldobl_solution_diagnostics%b
   --  dobldobl_solution_manipulators%s
   --  dobldobl_solution_manipulators%b
   --  dobldobl_solutions_container%s
   --  dobldobl_solutions_container%b
   --  dobldobl_solutions_queue%s
   --  dobldobl_solutions_queue%b
   --  dobldobl_stable_homotopies%s
   --  dobldobl_stable_homotopies%b
   --  dobldobl_witness_solutions%s
   --  dobldobl_witness_solutions%b
   --  multprec_floating_ring_io%s
   --  multprec_floating_matrices_io%s
   --  multprec_floating_matrices_io%b
   --  multprec_floating_vectors_io%s
   --  multprec_floating_vectors_io%b
   --  multprec_data_on_path%s
   --  multprec_data_on_path%b
   --  multprec_linear_spaces%s
   --  multprec_linear_spaces%b
   --  multprec_numerical_rank%s
   --  multprec_numerical_rank%b
   --  multprec_complex_newton_steps%s
   --  multprec_complex_newton_steps%b
   --  multprec_nvariate_interpolators%s
   --  multprec_nvariate_interpolators%b
   --  multprec_octodobl_convertors%s
   --  multprec_octodobl_convertors%b
   --  multprec_pentdobl_convertors%s
   --  multprec_pentdobl_convertors%b
   --  multprec_predictors%s
   --  multprec_predictors%b
   --  multprec_dispatch_predictors%s
   --  multprec_dispatch_predictors%b
   --  multprec_residual_evaluations%s
   --  multprec_residual_evaluations%b
   --  multprec_scaling%s
   --  multprec_scaling%b
   --  multprec_write_numbers%s
   --  multprec_write_numbers%b
   --  octodobl_complex_numbers_cv%s
   --  octodobl_complex_numbers_cv%b
   --  octodobl_complex_vectors_cv%s
   --  octodobl_complex_vectors_cv%b
   --  octodobl_complex_solutions%s
   --  octodobl_complex_solutions%b
   --  octodobl_polynomial_convertors%s
   --  octodobl_polynomial_convertors%b
   --  pentdobl_complex_numbers_cv%s
   --  pentdobl_complex_numbers_cv%b
   --  pentdobl_complex_vectors_cv%s
   --  pentdobl_complex_vectors_cv%b
   --  pentdobl_complex_solutions%s
   --  pentdobl_complex_solutions%b
   --  pentdobl_polynomial_convertors%s
   --  pentdobl_polynomial_convertors%b
   --  standard_point_coordinates%s
   --  standard_point_coordinates%b
   --  standard_intrinsic_solutions%s
   --  standard_intrinsic_solutions%b
   --  standard_point_lists%s
   --  standard_point_lists%b
   --  standard_poly_laur_convertors%s
   --  standard_poly_laur_convertors%b
   --  standard_polysys_container%s
   --  standard_polysys_container%b
   --  standard_power_traces%s
   --  standard_power_traces%b
   --  standard_power_transformations%s
   --  standard_power_transformations%b
   --  standard_predictors%s
   --  standard_predictors%b
   --  standard_dispatch_predictors%s
   --  standard_dispatch_predictors%b
   --  standard_quad_trees%s
   --  standard_quad_trees%b
   --  standard_radial_solvers%s
   --  standard_radial_solvers%b
   --  standard_rational_approximations%s
   --  standard_rational_approximations%b
   --  standard_pade_approximants%s
   --  standard_pade_approximants%b
   --  standard_rescaling_coordinates%s
   --  standard_rescaling_coordinates%b
   --  standard_scaling%s
   --  standard_scaling%b
   --  standard_smith_normal_form%s
   --  standard_smith_normal_form%b
   --  standard_solution_diagnostics%s
   --  standard_solution_diagnostics%b
   --  standard_solution_manipulators%s
   --  standard_solution_manipulators%b
   --  standard_solutions_queue%s
   --  standard_solutions_queue%b
   --  standard_speelpenning_convolutions%s
   --  standard_speelpenning_convolutions%b
   --  standard_speelpenning_products%s
   --  standard_speelpenning_products%b
   --  dobldobl_speelpenning_products%s
   --  dobldobl_speelpenning_products%b
   --  dobldobl_gradient_evaluations%s
   --  dobldobl_gradient_evaluations%b
   --  standard_gradient_evaluations%s
   --  standard_gradient_evaluations%b
   --  standard_stable_homotopies%s
   --  standard_stable_homotopies%b
   --  standard_systems_pool%s
   --  standard_systems_pool%b
   --  standard_to_multprec_convertors%s
   --  standard_to_multprec_convertors%b
   --  standard_univariate_interpolators%s
   --  standard_univariate_interpolators%b
   --  standard_vector_splitters%s
   --  standard_vector_splitters%b
   --  standard_coefficient_convolutions%s
   --  standard_coefficient_convolutions%b
   --  dobldobl_coefficient_convolutions%s
   --  dobldobl_coefficient_convolutions%b
   --  standard_coefficient_storage%s
   --  standard_coefficient_storage%b
   --  standard_convolution_splitters%s
   --  standard_convolution_splitters%b
   --  standard_inlined_linearization%s
   --  standard_inlined_linearization%b
   --  standard_inlined_newton_circuits%s
   --  standard_inlined_newton_circuits%b
   --  standard_inlined_singular_values%s
   --  standard_inlined_singular_values%b
   --  standard_newton_circuits%s
   --  standard_newton_circuits%b
   --  standard_vlprs_tables%s
   --  standard_vlprs_tables%b
   --  standard_vlprs_algorithm%s
   --  standard_vlprs_algorithm%b
   --  directions_of_standard_paths%s
   --  directions_of_standard_paths%b
   --  standard_data_on_path%s
   --  standard_data_on_path%b
   --  dobldobl_data_on_path%s
   --  dobldobl_data_on_path%b
   --  standard_witness_solutions%s
   --  standard_witness_solutions%b
   --  standard_write_numbers%s
   --  standard_write_numbers%b
   --  straightening_syzygies%s
   --  straightening_syzygies%b
   --  standard_bracket_systems%s
   --  standard_bracket_systems%b
   --  string_parsing%s
   --  string_parsing%b
   --  string_splitters%s
   --  string_splitters%b
   --  actions_and_options%s
   --  actions_and_options%b
   --  communications_with_user%s
   --  communications_with_user%b
   --  demics_input_data%s
   --  demics_input_data%b
   --  demics_itest%s
   --  demics_itest%b
   --  file_management%s
   --  file_management%b
   --  lists_of_strings%s
   --  lists_of_strings%b
   --  demics_output_data%s
   --  demics_output_data%b
   --  main_pieri_count%s
   --  main_pieri_count%b
   --  multprec_giftwrap_container%s
   --  multprec_giftwrap_container%b
   --  standard_complex_vector_strings%s
   --  standard_complex_vector_strings%b
   --  dobldobl_complex_vector_strings%s
   --  dobldobl_complex_vector_strings%b
   --  multprec_complex_vector_strings%s
   --  multprec_complex_vector_strings%b
   --  string_system_readers%s
   --  string_system_readers%b
   --  strings_and_numbers%s
   --  strings_and_numbers%b
   --  real_powered_series_io%s
   --  real_powered_series_io%b
   --  supporting_set_structure%s
   --  supporting_set_structure%b
   --  symbol_table%s
   --  symbol_table%b
   --  curves_into_grassmannian_io%s
   --  curves_into_grassmannian_io%b
   --  line_breaks%s
   --  line_breaks%b
   --  lists_of_symbols%s
   --  lists_of_symbols%b
   --  set_structure_strings%s
   --  set_structure_strings%b
   --  sets_of_unknowns_strings%s
   --  sets_of_unknowns_strings%b
   --  partitions_of_sets_strings%s
   --  partitions_of_sets_strings%b
   --  standard_solution_strings%s
   --  standard_solution_strings%b
   --  dobldobl_solution_strings%s
   --  dobldobl_solution_strings%b
   --  multprec_solution_strings%s
   --  multprec_solution_strings%b
   --  solution_string_splitters%s
   --  solution_string_splitters%b
   --  standard_solutions_container%s
   --  standard_solutions_container%b
   --  symbol_table_io%s
   --  symbol_table_io%b
   --  dobldobl_quad_turn_points_io%s
   --  dobldobl_quad_turn_points_io%b
   --  multprec_complex_laurentials_io%s
   --  multprec_complex_laurentials_io%b
   --  dobldobl_complex_laurentials_io%s
   --  dobldobl_complex_laurentials_io%b
   --  multprec_maple_solutions_io%s
   --  multprec_maple_solutions_io%b
   --  octodobl_complex_laurentials_io%s
   --  octodobl_complex_laurentials_io%b
   --  pentdobl_complex_laurentials_io%s
   --  pentdobl_complex_laurentials_io%b
   --  set_structure_io%s
   --  set_structure_io%b
   --  sets_of_unknowns_io%s
   --  sets_of_unknowns_io%b
   --  standard_complex_laur_readers%s
   --  standard_complex_laur_readers%b
   --  standard_complex_laurentials_io%s
   --  standard_complex_laurentials_io%b
   --  standard_complex_poly_strings%s
   --  standard_complex_poly_strings%b
   --  multprec_complex_laur_strings%s
   --  multprec_complex_laur_strings%b
   --  dobldobl_complex_laur_strings%s
   --  dobldobl_complex_laur_strings%b
   --  multprec_complex_poly_strings%s
   --  multprec_complex_poly_strings%b
   --  dobldobl_complex_poly_strings%s
   --  dobldobl_complex_poly_strings%b
   --  standard_complex_laur_strings%s
   --  standard_complex_laur_strings%b
   --  parse_dimensions%s
   --  parse_dimensions%b
   --  real_powered_homotopy_io%s
   --  real_powered_homotopy_io%b
   --  standard_dictionary_solutions_io%s
   --  standard_dictionary_solutions_io%b
   --  standard_pade_approximants_io%s
   --  standard_pade_approximants_io%b
   --  dobldobl_pade_approximants_io%s
   --  dobldobl_pade_approximants_io%b
   --  standard_quad_turn_points_io%s
   --  standard_quad_turn_points_io%b
   --  symbols_io%s
   --  symbols_io%b
   --  standard_complex_solutions_io%s
   --  standard_complex_solutions_io%b
   --  dobldobl_complex_solutions_io%s
   --  dobldobl_complex_solutions_io%b
   --  dobldobl_continuation_data_io%s
   --  dobldobl_continuation_data_io%b
   --  dobldobl_multiplicity_structure%s
   --  dobldobl_multiplicity_structure%b
   --  dobldobl_solution_filters%s
   --  dobldobl_solution_filters%b
   --  dobldobl_solution_splitters%s
   --  dobldobl_solution_splitters%b
   --  main_dictionary_solutions%s
   --  main_dictionary_solutions%b
   --  multprec_complex_solutions_io%s
   --  multprec_complex_solutions_io%b
   --  main_maple_solutions%s
   --  main_maple_solutions%b
   --  multprec_root_refiners%s
   --  multprec_root_refiners%b
   --  octodobl_complex_solutions_io%s
   --  octodobl_complex_solutions_io%b
   --  pentdobl_complex_solutions_io%s
   --  pentdobl_complex_solutions_io%b
   --  standard_continuation_data_io%s
   --  standard_continuation_data_io%b
   --  standard_multiplicity_structure%s
   --  standard_multiplicity_structure%b
   --  standard_solution_filters%s
   --  standard_solution_filters%b
   --  standard_solution_splitters%s
   --  standard_solution_splitters%b
   --  symmetry_group%s
   --  symmetry_group%b
   --  symbolic_symmetry_group_io%s
   --  symbolic_symmetry_group_io%b
   --  symmetry_group_io%s
   --  symmetry_group_io%b
   --  system_call%s
   --  system_call%b
   --  machines%s
   --  machines%b
   --  standard_random_numbers%s
   --  standard_random_numbers%b
   --  demics_simplex%s
   --  demics_simplex%b
   --  demics_reltab%s
   --  demics_reltab%b
   --  demics_mvc%s
   --  demics_mvc%b
   --  dobldobl_random_numbers%s
   --  dobldobl_random_numbers%b
   --  dobldobl_lined_hypersurfaces%s
   --  dobldobl_lined_hypersurfaces%b
   --  dobldobl_random_matrices%s
   --  dobldobl_random_matrices%b
   --  dobldobl_random_polynomials%s
   --  dobldobl_random_polynomials%b
   --  dobldobl_random_vectors%s
   --  dobldobl_random_vectors%b
   --  dobldobl_deflate_singularities%s
   --  dobldobl_deflate_singularities%b
   --  dobldobl_deflation_trees%s
   --  dobldobl_deflation_trees%b
   --  dobldobl_hypersurface_witsets%s
   --  dobldobl_hypersurface_witsets%b
   --  dobldobl_interpolating_cseries%s
   --  dobldobl_interpolating_cseries%b
   --  dobldobl_multiple_solutions%s
   --  dobldobl_multiple_solutions%b
   --  dobldobl_plane_representations%s
   --  dobldobl_plane_representations%b
   --  dobldobl_moving_planes%s
   --  dobldobl_moving_planes%b
   --  dobldobl_polynomial_flatteners%s
   --  dobldobl_polynomial_flatteners%b
   --  dobldobl_series_matrix_solvers%s
   --  dobldobl_series_matrix_solvers%b
   --  extended_random_numbers%s
   --  extended_random_numbers%b
   --  facet_vertex_enumeration%s
   --  facet_vertex_enumeration%b
   --  floating_linear_inequalities%s
   --  floating_linear_inequalities%b
   --  floating_face_enumerators%s
   --  floating_face_enumerators%b
   --  floating_faces_of_polytope%s
   --  floating_faces_of_polytope%b
   --  floating_pruning_methods%s
   --  floating_pruning_methods%b
   --  homotopy_continuation_parameters%s
   --  homotopy_continuation_parameters%b
   --  integer_lifting_functions%s
   --  integer_lifting_functions%b
   --  integer_linear_inequalities%s
   --  integer_linear_inequalities%b
   --  integer_face_enumerators%s
   --  integer_face_enumerators%b
   --  integer_faces_of_polytope%s
   --  integer_faces_of_polytope%b
   --  common_faces_of_polytope%s
   --  common_faces_of_polytope%b
   --  integer_pruning_methods%s
   --  integer_pruning_methods%b
   --  multprec_random_numbers%s
   --  multprec_random_numbers%b
   --  multprec_random_matrices%s
   --  multprec_random_matrices%b
   --  multprec_random_vectors%s
   --  multprec_random_vectors%b
   --  multprec_deflate_singularities%s
   --  multprec_deflate_singularities%b
   --  multprec_deflation_trees%s
   --  multprec_deflation_trees%b
   --  multprec_polynomial_interpolators%s
   --  multprec_polynomial_interpolators%b
   --  octodobl_random_numbers%s
   --  octodobl_random_numbers%b
   --  octodobl_random_vectors%s
   --  octodobl_random_vectors%b
   --  octodobl_interpolating_cseries%s
   --  octodobl_interpolating_cseries%b
   --  octodobl_series_matrix_solvers%s
   --  octodobl_series_matrix_solvers%b
   --  octodobl_newton_convolutions%s
   --  octodobl_newton_convolutions%b
   --  octodobl_newton_convolution_steps%s
   --  octodobl_newton_convolution_steps%b
   --  osculating_planes%s
   --  osculating_planes%b
   --  pentdobl_random_numbers%s
   --  pentdobl_random_numbers%b
   --  pentdobl_random_vectors%s
   --  pentdobl_random_vectors%b
   --  pentdobl_interpolating_cseries%s
   --  pentdobl_interpolating_cseries%b
   --  pentdobl_series_matrix_solvers%s
   --  pentdobl_series_matrix_solvers%b
   --  pentdobl_newton_convolutions%s
   --  pentdobl_newton_convolutions%b
   --  pentdobl_newton_convolution_steps%s
   --  pentdobl_newton_convolution_steps%b
   --  prepare_for_mv%s
   --  prepare_for_mv%b
   --  random_product_start_systems%s
   --  random_product_start_systems%b
   --  reduction_of_nonsquare_systems%s
   --  reduction_of_nonsquare_systems%b
   --  span_of_supports%s
   --  span_of_supports%b
   --  specialization_of_planes%s
   --  specialization_of_planes%b
   --  standard_complex_laur_randomizers%s
   --  standard_complex_laur_randomizers%b
   --  standard_complex_poly_randomizers%s
   --  standard_complex_poly_randomizers%b
   --  standard_integer32_triangulations%s
   --  standard_integer32_triangulations%b
   --  cayley_embedding%s
   --  cayley_embedding%b
   --  dynamic32_lifting_functions%s
   --  dynamic32_lifting_functions%b
   --  enumerate_faces_of_polytope%s
   --  enumerate_faces_of_polytope%b
   --  standard_integer32_triangulations_io%s
   --  standard_integer32_triangulations_io%b
   --  standard_lined_hypersurfaces%s
   --  standard_lined_hypersurfaces%b
   --  standard_random_matrices%s
   --  standard_random_matrices%b
   --  standard_random_polynomials%s
   --  standard_random_polynomials%b
   --  standard_random_vectors%s
   --  standard_random_vectors%b
   --  double_real_powered_series%s
   --  double_real_powered_series%b
   --  double_leading_evaluations%s
   --  double_leading_evaluations%b
   --  double_ordered_evaluations%s
   --  double_ordered_evaluations%b
   --  random_laurent_series%s
   --  random_laurent_series%b
   --  double_lseries_polynomials%s
   --  double_lseries_polynomials%b
   --  standard_deflate_singularities%s
   --  standard_deflate_singularities%b
   --  standard_deflation_trees%s
   --  standard_deflation_trees%b
   --  standard_hypersurface_witsets%s
   --  standard_hypersurface_witsets%b
   --  standard_interpolating_cseries%s
   --  standard_interpolating_cseries%b
   --  standard_multiple_solutions%s
   --  standard_multiple_solutions%b
   --  standard_plane_representations%s
   --  standard_plane_representations%b
   --  standard_moving_planes%s
   --  standard_moving_planes%b
   --  standard_plane_operations%s
   --  standard_plane_operations%b
   --  standard_polynomial_interpolators%s
   --  standard_polynomial_interpolators%b
   --  standard_series_matrix_solvers%s
   --  standard_series_matrix_solvers%b
   --  dobldobl_newton_convolutions%s
   --  dobldobl_newton_convolutions%b
   --  dobldobl_newton_convolution_steps%s
   --  dobldobl_newton_convolution_steps%b
   --  standard_newton_convolutions%s
   --  standard_newton_convolutions%b
   --  newton_coefficient_convolutions%s
   --  newton_coefficient_convolutions%b
   --  staggered_newton_convolutions%s
   --  staggered_newton_convolutions%b
   --  standard_newton_convolution_steps%s
   --  standard_newton_convolution_steps%b
   --  standard_solutions_heap%s
   --  standard_solutions_heap%b
   --  templates%s
   --  templates%b
   --  test_double_lseries_matrices%s
   --  test_double_lseries_matrices%b
   --  double_lseries_newton_steps%s
   --  double_lseries_newton_steps%b
   --  time_stamps%s
   --  time_stamps%b
   --  timing_package%s
   --  timing_package%b
   --  multitasking_volume_computation%s
   --  multitasking_volume_computation%b
   --  path_counts_table%s
   --  path_counts_table%b
   --  transformation_of_supports%s
   --  transformation_of_supports%b
   --  transforming_integer32_vector_lists%s
   --  transforming_integer32_vector_lists%b
   --  arrays_of_lists_utilities%s
   --  arrays_of_lists_utilities%b
   --  integer_mixed_subdivisions_io%s
   --  mixed_volume_computation%s
   --  mixed_volume_computation%b
   --  integer_mixed_subdivisions_io%b
   --  floating_mixed_subdivisions_io%s
   --  floating_mixed_subdivisions_io%b
   --  minkowski_polynomials%s
   --  minkowski_polynomials%b
   --  driver_for_minkowski_polynomials%s
   --  driver_for_minkowski_polynomials%b
   --  standard_integer32_vertices%s
   --  standard_integer32_vertices%b
   --  global_dynamic32_triangulation%s
   --  global_dynamic32_triangulation%b
   --  initial_mixed_cell%s
   --  initial_mixed_cell%b
   --  inner_normal_cones%s
   --  inner_normal_cones%b
   --  normal_cone_intersections%s
   --  normal_cone_intersections%b
   --  contributions_to_mixed_volume%s
   --  contributions_to_mixed_volume%b
   --  drivers_for_mixed_contributions%s
   --  drivers_for_mixed_contributions%b
   --  dynamic_mixed_subdivisions%s
   --  dynamic_mixed_subdivisions%b
   --  standard_dynamic32_triangulations%s
   --  standard_dynamic32_triangulations%b
   --  cayley_trick%s
   --  cayley_trick%b
   --  transforming_solutions%s
   --  transforming_solutions%b
   --  trees_of_vectors%s
   --  trees_of_vectors%b
   --  trees_of_vectors_io%s
   --  trees_of_vectors_io%b
   --  triple_double_numbers%s
   --  triple_double_numbers%b
   --  quad_double_numbers%s
   --  quad_double_numbers%b
   --  deca_double_numbers%s
   --  deca_double_numbers%b
   --  deca_double_constants%s
   --  deca_double_numbers_io%s
   --  deca_double_numbers_io%b
   --  deca_double_ring%s
   --  deca_double_polynomials%s
   --  deca_double_polynomials%b
   --  deca_double_poly_systems%s
   --  deca_double_poly_systems%b
   --  deca_double_ring.ffield%s
   --  deca_double_ring_io%s
   --  deca_double_vectors%s
   --  deca_double_vectors%b
   --  deca_double_vectors_io%s
   --  deca_double_vectors_io%b
   --  decadobl_complex_numbers%s
   --  decadobl_complex_numbers%b
   --  decadobl_complex_numbers_io%s
   --  decadobl_complex_numbers_io%b
   --  decadobl_complex_ring%s
   --  decadobl_complex_laurentials%s
   --  decadobl_complex_laurentials%b
   --  decadobl_complex_laur_systems%s
   --  decadobl_complex_laur_systems%b
   --  decadobl_complex_polynomials%s
   --  decadobl_complex_polynomials%b
   --  decadobl_complex_poly_systems%s
   --  decadobl_complex_poly_systems%b
   --  decadobl_complex_ring_io%s
   --  decadobl_complex_vectors%s
   --  decadobl_complex_vectors%b
   --  decadobl_complex_matrices%s
   --  decadobl_complex_matrices%b
   --  decadobl_complex_matrices_io%s
   --  decadobl_complex_matrices_io%b
   --  decadobl_complex_poly_functions%s
   --  decadobl_complex_poly_functions%b
   --  decadobl_complex_series%s
   --  decadobl_complex_series%b
   --  decadobl_complex_series_ring%s
   --  decadobl_complex_series_vectors%s
   --  decadobl_complex_series_vectors%b
   --  decadobl_complex_series_matrices%s
   --  decadobl_complex_series_matrices%b
   --  decadobl_complex_series_vecvecs%s
   --  decadobl_complex_series_vecvecs%b
   --  decadobl_complex_vecmats%s
   --  decadobl_complex_vecmats%b
   --  decadobl_complex_vectors_io%s
   --  decadobl_complex_vectors_io%b
   --  decadobl_complex_series_io%s
   --  decadobl_complex_series_io%b
   --  decadobl_complex_vecvecs%s
   --  decadobl_complex_vecvecs%b
   --  decadobl_complex_linear_solvers%s
   --  decadobl_complex_linear_solvers%b
   --  decadobl_complex_poly_sysfun%s
   --  decadobl_complex_poly_sysfun%b
   --  decadobl_complex_jaco_matrices%s
   --  decadobl_complex_jaco_matrices%b
   --  decadobl_coefficient_homotopy%s
   --  decadobl_coefficient_homotopy%b
   --  decadobl_complex_vector_series%s
   --  decadobl_complex_vector_series%b
   --  decadobl_complex_matrix_series%s
   --  decadobl_complex_matrix_series%b
   --  decadobl_complex_vecvecs_io%s
   --  decadobl_complex_vecvecs_io%b
   --  decadobl_cseries_polynomials%s
   --  decadobl_cseries_polynomials%b
   --  decadobl_cseries_poly_functions%s
   --  decadobl_cseries_poly_functions%b
   --  decadobl_cseries_poly_systems%s
   --  decadobl_cseries_poly_systems%b
   --  decadobl_cseries_poly_sysfun%s
   --  decadobl_cseries_poly_sysfun%b
   --  decadobl_cseries_jaco_matrices%s
   --  decadobl_cseries_jaco_matrices%b
   --  decadobl_echelon_forms%s
   --  decadobl_echelon_forms%b
   --  decadobl_homotopy%s
   --  decadobl_homotopy%b
   --  decadobl_mathematical_functions%s
   --  decadobl_mathematical_functions%b
   --  decadobl_complex_numbers_polar%s
   --  decadobl_complex_numbers_polar%b
   --  decadobl_complex_algebraic_series%s
   --  decadobl_complex_algebraic_series%b
   --  decadobl_complex_qr_least_squares%s
   --  decadobl_complex_qr_least_squares%b
   --  decadobl_complex_series_norms%s
   --  decadobl_complex_series_norms%b
   --  decadobl_complex_singular_values%s
   --  decadobl_complex_singular_values%b
   --  decadobl_complex_vector_norms%s
   --  decadobl_complex_vector_norms%b
   --  decadobl_cseries_vector_norms%s
   --  decadobl_cseries_vector_norms%b
   --  decadobl_random_numbers%s
   --  decadobl_random_numbers%b
   --  decadobl_random_vectors%s
   --  decadobl_random_vectors%b
   --  decadobl_interpolating_cseries%s
   --  decadobl_interpolating_cseries%b
   --  decadobl_series_matrix_solvers%s
   --  decadobl_series_matrix_solvers%b
   --  decadobl_speelpenning_convolutions%s
   --  decadobl_speelpenning_convolutions%b
   --  decadobl_newton_convolutions%s
   --  decadobl_newton_convolutions%b
   --  decadobl_newton_convolution_steps%s
   --  decadobl_newton_convolution_steps%b
   --  hexa_double_numbers%s
   --  hexa_double_numbers%b
   --  binomial_coefficients%s
   --  binomial_coefficients%b
   --  decadobl_complex_series_functions%s
   --  decadobl_complex_series_functions%b
   --  dobldobl_complex_series_functions%s
   --  dobldobl_complex_series_functions%b
   --  dobldobl_cseries_vector_functions%s
   --  dobldobl_cseries_vector_functions%b
   --  hexa_double_constants%s
   --  hexa_double_numbers_io%s
   --  hexa_double_numbers_io%b
   --  hexa_double_ring%s
   --  hexa_double_polynomials%s
   --  hexa_double_polynomials%b
   --  hexa_double_poly_systems%s
   --  hexa_double_poly_systems%b
   --  hexa_double_ring.ffield%s
   --  hexa_double_ring_io%s
   --  hexa_double_vectors%s
   --  hexa_double_vectors%b
   --  hexa_double_vectors_io%s
   --  hexa_double_vectors_io%b
   --  hexadobl_complex_numbers%s
   --  hexadobl_complex_numbers%b
   --  hexadobl_complex_numbers_io%s
   --  hexadobl_complex_numbers_io%b
   --  hexadobl_complex_ring%s
   --  hexadobl_complex_laurentials%s
   --  hexadobl_complex_laurentials%b
   --  hexadobl_complex_laur_systems%s
   --  hexadobl_complex_laur_systems%b
   --  hexadobl_complex_polynomials%s
   --  hexadobl_complex_polynomials%b
   --  hexadobl_complex_poly_systems%s
   --  hexadobl_complex_poly_systems%b
   --  hexadobl_complex_ring_io%s
   --  hexadobl_complex_vectors%s
   --  hexadobl_complex_vectors%b
   --  hexadobl_complex_matrices%s
   --  hexadobl_complex_matrices%b
   --  hexadobl_complex_matrices_io%s
   --  hexadobl_complex_matrices_io%b
   --  hexadobl_complex_poly_functions%s
   --  hexadobl_complex_poly_functions%b
   --  hexadobl_complex_series%s
   --  hexadobl_complex_series%b
   --  hexadobl_complex_series_ring%s
   --  hexadobl_complex_series_vectors%s
   --  hexadobl_complex_series_vectors%b
   --  hexadobl_complex_series_matrices%s
   --  hexadobl_complex_series_matrices%b
   --  hexadobl_complex_series_vecvecs%s
   --  hexadobl_complex_series_vecvecs%b
   --  hexadobl_complex_vecmats%s
   --  hexadobl_complex_vecmats%b
   --  hexadobl_complex_vectors_io%s
   --  hexadobl_complex_vectors_io%b
   --  hexadobl_complex_series_io%s
   --  hexadobl_complex_series_io%b
   --  hexadobl_complex_vecvecs%s
   --  hexadobl_complex_vecvecs%b
   --  hexadobl_complex_linear_solvers%s
   --  hexadobl_complex_linear_solvers%b
   --  hexadobl_complex_poly_sysfun%s
   --  hexadobl_complex_poly_sysfun%b
   --  hexadobl_complex_jaco_matrices%s
   --  hexadobl_complex_jaco_matrices%b
   --  hexadobl_coefficient_homotopy%s
   --  hexadobl_coefficient_homotopy%b
   --  hexadobl_complex_vector_series%s
   --  hexadobl_complex_vector_series%b
   --  hexadobl_complex_matrix_series%s
   --  hexadobl_complex_matrix_series%b
   --  hexadobl_complex_vecvecs_io%s
   --  hexadobl_complex_vecvecs_io%b
   --  hexadobl_cseries_polynomials%s
   --  hexadobl_cseries_polynomials%b
   --  hexadobl_cseries_poly_functions%s
   --  hexadobl_cseries_poly_functions%b
   --  hexadobl_cseries_poly_systems%s
   --  hexadobl_cseries_poly_systems%b
   --  hexadobl_cseries_poly_sysfun%s
   --  hexadobl_cseries_poly_sysfun%b
   --  hexadobl_cseries_jaco_matrices%s
   --  hexadobl_cseries_jaco_matrices%b
   --  hexadobl_echelon_forms%s
   --  hexadobl_echelon_forms%b
   --  hexadobl_homotopy%s
   --  hexadobl_homotopy%b
   --  hexadobl_mathematical_functions%s
   --  hexadobl_mathematical_functions%b
   --  hexadobl_complex_numbers_polar%s
   --  hexadobl_complex_numbers_polar%b
   --  hexadobl_complex_qr_least_squares%s
   --  hexadobl_complex_qr_least_squares%b
   --  hexadobl_complex_series_functions%s
   --  hexadobl_complex_series_functions%b
   --  hexadobl_complex_singular_values%s
   --  hexadobl_complex_singular_values%b
   --  hexadobl_complex_vector_norms%s
   --  hexadobl_complex_vector_norms%b
   --  hexadobl_random_numbers%s
   --  hexadobl_random_numbers%b
   --  hexadobl_random_vectors%s
   --  hexadobl_random_vectors%b
   --  hexadobl_interpolating_cseries%s
   --  hexadobl_interpolating_cseries%b
   --  hexadobl_series_matrix_solvers%s
   --  hexadobl_series_matrix_solvers%b
   --  hexadobl_speelpenning_convolutions%s
   --  hexadobl_speelpenning_convolutions%b
   --  hexadobl_newton_convolutions%s
   --  hexadobl_newton_convolutions%b
   --  hexadobl_newton_convolution_steps%s
   --  hexadobl_newton_convolution_steps%b
   --  multprec_decadobl_convertors%s
   --  multprec_decadobl_convertors%b
   --  multprec_hexadobl_convertors%s
   --  multprec_hexadobl_convertors%b
   --  octodobl_complex_series_functions%s
   --  octodobl_complex_series_functions%b
   --  pentdobl_complex_series_functions%s
   --  pentdobl_complex_series_functions%b
   --  quad_double_constants%s
   --  quad_double_numbers_io%s
   --  quad_double_numbers_io%b
   --  multprec_quaddobl_convertors%s
   --  multprec_quaddobl_convertors%b
   --  numbers_io%s
   --  numbers_io%b
   --  continuation_parameters_io%s
   --  continuation_parameters_io%b
   --  dobldobl_quad_parameters%s
   --  dobldobl_quad_parameters%b
   --  dobldobl_quad_turn_points%s
   --  dobldobl_quad_turn_points%b
   --  drivers_for_symmetry_group_io%s
   --  drivers_for_symmetry_group_io%b
   --  homotopy_continuation_parameters_io%s
   --  homotopy_continuation_parameters_io%b
   --  make_input_planes%s
   --  make_input_planes%b
   --  multprec_complex_laur_systems_io%s
   --  multprec_complex_laur_systems_io%b
   --  dobldobl_complex_laur_systems_io%s
   --  dobldobl_complex_laur_systems_io%b
   --  octodobl_complex_laur_systems_io%s
   --  octodobl_complex_laur_systems_io%b
   --  partitions_of_sets_of_unknowns_io%s
   --  partitions_of_sets_of_unknowns_io%b
   --  pentdobl_complex_laur_systems_io%s
   --  pentdobl_complex_laur_systems_io%b
   --  polyhedral_coefficient_parameters%s
   --  polyhedral_coefficient_parameters%b
   --  quad_double_ring%s
   --  quad_double_polynomials%s
   --  quad_double_polynomials%b
   --  quad_double_poly_systems%s
   --  quad_double_poly_systems%b
   --  quad_double_ring.ffield%s
   --  quad_double_ring_io%s
   --  quad_double_vectors%s
   --  quad_double_vectors%b
   --  quad_double_matrices%s
   --  quad_double_matrices%b
   --  quad_double_linear_solvers%s
   --  quad_double_linear_solvers%b
   --  quad_double_matrices_io%s
   --  quad_double_matrices_io%b
   --  quad_double_poly_functions%s
   --  quad_double_poly_functions%b
   --  quad_double_vectors_io%s
   --  quad_double_vectors_io%b
   --  quad_double_vecvecs%s
   --  quad_double_vecvecs%b
   --  numerical_tropisms_container%s
   --  numerical_tropisms_container%b
   --  quad_double_poly_sysfun%s
   --  quad_double_poly_sysfun%b
   --  quad_double_jaco_matrices%s
   --  quad_double_jaco_matrices%b
   --  quaddobl_complex_numbers%s
   --  quaddobl_complex_numbers%b
   --  quaddobl_complex_numbers_io%s
   --  quaddobl_complex_numbers_io%b
   --  quaddobl_complex_ring%s
   --  quaddobl_bracket_polynomials%s
   --  quaddobl_bracket_polynomials%b
   --  quaddobl_bracket_systems%s
   --  quaddobl_bracket_systems%b
   --  quaddobl_complex_laurentials%s
   --  quaddobl_complex_laurentials%b
   --  quaddobl_complex_laur_systems%s
   --  quaddobl_complex_laur_systems%b
   --  quaddobl_complex_polynomials%s
   --  quaddobl_complex_polynomials%b
   --  matrix_indeterminates%s
   --  matrix_indeterminates%b
   --  quaddobl_complex_poly_ring%s
   --  quaddobl_complex_poly_systems%s
   --  quaddobl_complex_poly_systems%b
   --  exponent_vectors%s
   --  exponent_vectors%b
   --  floating_lifting_functions%s
   --  floating_lifting_functions%b
   --  induced_permutations%s
   --  induced_permutations%b
   --  polynomial_drops%s
   --  polynomial_drops%b
   --  quaddobl_complex_poly_vectors%s
   --  quaddobl_complex_poly_vectors%b
   --  quaddobl_complex_poly_matrices%s
   --  quaddobl_complex_poly_matrices%b
   --  quaddobl_complex_ring.ffield%s
   --  quaddobl_complex_ring_io%s
   --  quaddobl_complex_term_lists%s
   --  quaddobl_complex_term_lists%b
   --  quaddobl_complex_to_real_poly%s
   --  quaddobl_complex_to_real_poly%b
   --  quaddobl_complex_vectors%s
   --  quaddobl_complex_vectors%b
   --  assignments_in_ada_and_c%s
   --  assignments_in_ada_and_c%b
   --  c_to_ada_arrays%s
   --  c_to_ada_arrays%b
   --  coefficient_supported_polynomials%s
   --  coefficient_supported_polynomials%b
   --  dcmplx_vecvecs_interface%s
   --  dcmplx_vecvecs_interface%b
   --  dobldobl_syspool_interface%s
   --  dobldobl_syspool_interface%b
   --  double_vecvecs_interface%s
   --  double_vecvecs_interface%b
   --  factored_witness_vectors%s
   --  factored_witness_vectors%b
   --  handle_underflow_gracefully%s
   --  handle_underflow_gracefully%b
   --  monodromy_partitions%s
   --  monodromy_partitions%b
   --  numerical_tropisms_interface%s
   --  numerical_tropisms_interface%b
   --  permute_operations%s
   --  permute_operations%b
   --  equivariant_polynomial_systems%s
   --  equivariant_polynomial_systems%b
   --  generating_mixed_cells%s
   --  generating_mixed_cells%b
   --  linear_symmetric_reduction%s
   --  linear_symmetric_reduction%b
   --  orbits_of_solutions%s
   --  orbits_of_solutions%b
   --  drivers_for_orbits_of_solutions%s
   --  drivers_for_orbits_of_solutions%b
   --  permutations_of_faces%s
   --  permutations_of_faces%b
   --  faces_of_symmetric_polytopes%s
   --  faces_of_symmetric_polytopes%b
   --  planes_and_polynomials%s
   --  planes_and_polynomials%b
   --  multprec_membership_tests%s
   --  multprec_membership_tests%b
   --  quaddobl_complex_equality_tests%s
   --  quaddobl_complex_equality_tests%b
   --  quaddobl_complex_laur_functions%s
   --  quaddobl_complex_laur_functions%b
   --  quaddobl_complex_matrices%s
   --  quaddobl_complex_matrices%b
   --  checker_localization_patterns%s
   --  checker_localization_patterns%b
   --  checker_posets%s
   --  checker_posets%b
   --  checker_posets_io%s
   --  checker_posets_io%b
   --  intersection_posets%s
   --  intersection_posets%b
   --  dobldobl_solution_posets%s
   --  dobldobl_solution_posets%b
   --  intersection_posets_io%s
   --  intersection_posets_io%b
   --  quaddobl_complex_matrices_io%s
   --  quaddobl_complex_matrices_io%b
   --  quaddobl_complex_nesvecs%s
   --  quaddobl_complex_nesvecs%b
   --  quaddobl_complex_poly_functions%s
   --  quaddobl_complex_poly_functions%b
   --  affine_transformations%s
   --  affine_transformations%b
   --  quaddobl_complex_hessians%s
   --  quaddobl_complex_hessians%b
   --  quaddobl_complex_row_reduction%s
   --  quaddobl_complex_row_reduction%b
   --  quaddobl_complex_series%s
   --  quaddobl_complex_series%b
   --  quaddobl_complex_series_ring%s
   --  quaddobl_complex_series_vectors%s
   --  quaddobl_complex_series_vectors%b
   --  quaddobl_complex_series_matrices%s
   --  quaddobl_complex_series_matrices%b
   --  quaddobl_complex_series_vecvecs%s
   --  quaddobl_complex_series_vecvecs%b
   --  quaddobl_complex_vecmats%s
   --  quaddobl_complex_vecmats%b
   --  quaddobl_complex_vector_strings%s
   --  quaddobl_complex_vector_strings%b
   --  quaddobl_complex_vectors_io%s
   --  quaddobl_complex_vectors_io%b
   --  quaddobl_complex_nesvecs_io%s
   --  quaddobl_complex_nesvecs_io%b
   --  quaddobl_complex_series_io%s
   --  quaddobl_complex_series_io%b
   --  quaddobl_complex_series_ring_io%s
   --  quaddobl_complex_series_vectors_io%s
   --  quaddobl_complex_series_vectors_io%b
   --  quaddobl_complex_vecvecs%s
   --  quaddobl_complex_vecvecs%b
   --  quaddobl_complex_laur_sysfun%s
   --  quaddobl_complex_laur_sysfun%b
   --  quaddobl_complex_laur_jacomats%s
   --  quaddobl_complex_laur_jacomats%b
   --  quaddobl_complex_linear_solvers%s
   --  quaddobl_complex_linear_solvers%b
   --  evaluated_minors%s
   --  evaluated_minors%b
   --  quaddobl_complex_poly_sysfun%s
   --  quaddobl_complex_poly_sysfun%b
   --  quaddobl_complex_jaco_matrices%s
   --  quaddobl_complex_jaco_matrices%b
   --  quaddobl_coefficient_homotopy%s
   --  quaddobl_coefficient_homotopy%b
   --  quaddobl_complex_veclists%s
   --  quaddobl_complex_veclists%b
   --  quaddobl_complex_vector_series%s
   --  quaddobl_complex_vector_series%b
   --  quaddobl_complex_matrix_series%s
   --  quaddobl_complex_matrix_series%b
   --  quaddobl_complex_vecvecs_io%s
   --  quaddobl_complex_vecvecs_io%b
   --  quaddobl_cseries_polynomials%s
   --  quaddobl_cseries_polynomials%b
   --  quaddobl_cseries_poly_functions%s
   --  quaddobl_cseries_poly_functions%b
   --  quaddobl_cseries_poly_systems%s
   --  quaddobl_cseries_poly_systems%b
   --  quaddobl_cseries_poly_sysfun%s
   --  quaddobl_cseries_poly_sysfun%b
   --  quaddobl_cseries_jaco_matrices%s
   --  quaddobl_cseries_jaco_matrices%b
   --  quaddobl_echelon_forms%s
   --  quaddobl_echelon_forms%b
   --  quaddobl_embed_laurentials%s
   --  quaddobl_embed_laurentials%b
   --  quaddobl_embed_polynomials%s
   --  quaddobl_embed_polynomials%b
   --  quaddobl_extrapolators%s
   --  quaddobl_extrapolators%b
   --  quaddobl_hessian_updaters%s
   --  quaddobl_hessian_updaters%b
   --  quaddobl_homotopy%s
   --  quaddobl_homotopy%b
   --  quaddobl_jacobian_trees%s
   --  quaddobl_jacobian_trees%b
   --  quaddobl_deflation_matrices%s
   --  quaddobl_deflation_matrices%b
   --  quaddobl_evaluate_deflation%s
   --  quaddobl_evaluate_deflation_io%s
   --  quaddobl_evaluate_deflation_io%b
   --  quaddobl_evaluate_deflation%b
   --  quaddobl_laur_poly_convertors%s
   --  quaddobl_laur_poly_convertors%b
   --  quaddobl_laurent_homotopy%s
   --  quaddobl_laurent_homotopy%b
   --  quaddobl_laursys_container%s
   --  quaddobl_laursys_container%b
   --  quaddobl_linear_reduction%s
   --  quaddobl_linear_reduction%b
   --  quaddobl_mathematical_functions%s
   --  quaddobl_mathematical_functions%b
   --  polyhedral_coefficient_homotopies%s
   --  polyhedral_coefficient_homotopies%b
   --  quad_double_eigenvalues%s
   --  quad_double_eigenvalues%b
   --  quad_double_qr_least_squares%s
   --  quad_double_qr_least_squares%b
   --  quad_double_two_norms%s
   --  quad_double_two_norms%b
   --  quad_double_vector_norms%s
   --  quad_double_vector_norms%b
   --  quaddobl_complex_numbers_polar%s
   --  quaddobl_complex_numbers_polar%b
   --  quaddobl_complex_algebraic_series%s
   --  quaddobl_complex_algebraic_series%b
   --  quaddobl_complex_qr_least_squares%s
   --  quaddobl_complex_qr_least_squares%b
   --  quaddobl_complex_series_functions%s
   --  quaddobl_complex_series_functions%b
   --  quaddobl_complex_series_norms%s
   --  quaddobl_complex_series_norms%b
   --  quaddobl_complex_singular_values%s
   --  quaddobl_complex_singular_values%b
   --  quaddobl_complex_circuits%s
   --  quaddobl_complex_circuits%b
   --  quaddobl_complex_vector_norms%s
   --  quaddobl_complex_vector_norms%b
   --  hyperplane_solution_scaling%s
   --  hyperplane_solution_scaling%b
   --  quaddobl_cseries_vector_functions%s
   --  quaddobl_cseries_vector_functions%b
   --  quaddobl_cseries_vector_norms%s
   --  quaddobl_cseries_vector_norms%b
   --  quaddobl_durand_kerner%s
   --  quaddobl_durand_kerner%b
   --  quaddobl_matrix_inversion%s
   --  quaddobl_matrix_inversion%b
   --  quaddobl_mixed_residuals%s
   --  quaddobl_mixed_residuals%b
   --  homotopy_mixed_residuals%s
   --  homotopy_mixed_residuals%b
   --  quaddobl_monomial_evaluations%s
   --  quaddobl_monomial_evaluations%b
   --  quaddobl_nullity_polynomials%s
   --  quaddobl_nullity_polynomials%b
   --  quaddobl_nullity_matrices%s
   --  quaddobl_nullity_matrices%b
   --  quaddobl_numerical_rank%s
   --  quaddobl_numerical_rank%b
   --  quaddobl_complex_newton_steps%s
   --  quaddobl_complex_newton_steps%b
   --  quaddobl_nvariate_interpolators%s
   --  quaddobl_nvariate_interpolators%b
   --  quaddobl_point_coordinates%s
   --  quaddobl_point_coordinates%b
   --  quaddobl_poly_laur_convertors%s
   --  quaddobl_poly_laur_convertors%b
   --  quaddobl_polysys_container%s
   --  quaddobl_polysys_container%b
   --  quaddobl_power_traces%s
   --  quaddobl_power_traces%b
   --  quaddobl_quad_parameters%s
   --  quaddobl_quad_parameters%b
   --  quaddobl_random_numbers%s
   --  quaddobl_random_numbers%b
   --  quaddobl_lined_hypersurfaces%s
   --  quaddobl_lined_hypersurfaces%b
   --  quaddobl_random_matrices%s
   --  quaddobl_random_matrices%b
   --  quaddobl_random_polynomials%s
   --  quaddobl_random_polynomials%b
   --  quaddobl_random_vectors%s
   --  quaddobl_random_vectors%b
   --  monodromy_polynomial_breakup%s
   --  monodromy_polynomial_breakup%b
   --  quaddobl_hypersurface_witsets%s
   --  quaddobl_hypersurface_witsets%b
   --  quaddobl_interpolating_cseries%s
   --  quaddobl_interpolating_cseries%b
   --  quaddobl_plane_representations%s
   --  quaddobl_plane_representations%b
   --  quaddobl_moving_planes%s
   --  quaddobl_moving_planes%b
   --  quaddobl_polynomial_flatteners%s
   --  quaddobl_polynomial_flatteners%b
   --  quaddobl_rational_approximations%s
   --  quaddobl_rational_approximations%b
   --  quaddobl_pade_approximants%s
   --  quaddobl_pade_approximants%b
   --  quaddobl_rescaling_coordinates%s
   --  quaddobl_rescaling_coordinates%b
   --  quaddobl_series_matrix_solvers%s
   --  quaddobl_series_matrix_solvers%b
   --  quaddobl_speelpenning_convolutions%s
   --  quaddobl_speelpenning_convolutions%b
   --  hessian_convolution_circuits%s
   --  hessian_convolution_circuits%b
   --  hyperplane_convolution_scaling%s
   --  hyperplane_convolution_scaling%b
   --  jacobian_convolution_circuits%s
   --  jacobian_convolution_circuits%b
   --  quaddobl_newton_convolutions%s
   --  quaddobl_newton_convolutions%b
   --  quaddobl_newton_convolution_steps%s
   --  quaddobl_newton_convolution_steps%b
   --  quaddobl_speelpenning_products%s
   --  quaddobl_speelpenning_products%b
   --  quaddobl_gradient_evaluations%s
   --  quaddobl_gradient_evaluations%b
   --  quaddobl_systems_pool%s
   --  quaddobl_systems_pool%b
   --  quaddobl_syspool_interface%s
   --  quaddobl_syspool_interface%b
   --  quaddobl_univariate_interpolators%s
   --  quaddobl_univariate_interpolators%b
   --  quaddobl_vector_splitters%s
   --  quaddobl_vector_splitters%b
   --  quaddobl_coefficient_convolutions%s
   --  quaddobl_coefficient_convolutions%b
   --  quaddobl_vlprs_tables%s
   --  quaddobl_vlprs_tables%b
   --  quaddobl_vlprs_algorithm%s
   --  quaddobl_vlprs_algorithm%b
   --  directions_of_quaddobl_paths%s
   --  directions_of_quaddobl_paths%b
   --  random_coefficient_systems%s
   --  random_coefficient_systems%b
   --  residual_convolution_circuits%s
   --  residual_convolution_circuits%b
   --  root_counters_output%s
   --  root_counters_output%b
   --  root_refining_parameters%s
   --  root_refining_parameters%b
   --  sagbi_homotopies%s
   --  sagbi_homotopies%b
   --  shift_coefficient_convolutions%s
   --  shift_coefficient_convolutions%b
   --  shift_convolution_circuits%s
   --  shift_convolution_circuits%b
   --  shuffle_polynomials%s
   --  shuffle_polynomials%b
   --  standard_complex_exponentiation%s
   --  standard_complex_exponentiation%b
   --  dobldobl_complex_exponentiation%s
   --  dobldobl_complex_exponentiation%b
   --  dobldobl_binomial_systems%s
   --  dobldobl_binomial_systems%b
   --  dobldobl_binomial_solvers%s
   --  dobldobl_binomial_solvers%b
   --  dobldobl_simplex_systems%s
   --  dobldobl_simplex_systems%b
   --  dobldobl_simplex_solvers%s
   --  dobldobl_simplex_solvers%b
   --  dobldobl_simpomial_solvers%s
   --  dobldobl_simpomial_solvers%b
   --  quaddobl_complex_exponentiation%s
   --  quaddobl_complex_exponentiation%b
   --  standard_binomial_systems%s
   --  standard_binomial_systems%b
   --  standard_binomial_solvers%s
   --  standard_binomial_solvers%b
   --  standard_complex_laur_systems_io%s
   --  standard_complex_laur_systems_io%b
   --  double_puiseux_structures%s
   --  double_puiseux_structures%b
   --  laurent_homotopy_derivatives%s
   --  laurent_homotopy_derivatives%b
   --  double_newton_puiseux%s
   --  double_newton_puiseux%b
   --  double_puiseux_interface%s
   --  double_puiseux_interface%b
   --  parse_strings_to_polynomials%s
   --  parse_strings_to_polynomials%b
   --  standard_complex_series_functions%s
   --  standard_complex_series_functions%b
   --  standard_cseries_vector_functions%s
   --  standard_cseries_vector_functions%b
   --  standard_exponent_transformations%s
   --  standard_exponent_transformations%b
   --  standard_binomial_varieties%s
   --  standard_binomial_varieties_io%s
   --  standard_binomial_varieties_io%b
   --  standard_binomial_varieties%b
   --  dobldobl_monomial_maps%s
   --  dobldobl_monomial_maps%b
   --  quaddobl_monomial_maps%s
   --  quaddobl_monomial_maps%b
   --  standard_jacobian_evaluations%s
   --  standard_jacobian_evaluations%b
   --  dobldobl_jacobian_evaluations%s
   --  dobldobl_jacobian_evaluations%b
   --  dobldobl_jacobian_circuits%s
   --  dobldobl_jacobian_circuits%b
   --  quaddobl_jacobian_evaluations%s
   --  quaddobl_jacobian_evaluations%b
   --  quaddobl_jacobian_circuits%s
   --  quaddobl_jacobian_circuits%b
   --  standard_membership_tests%s
   --  standard_membership_tests%b
   --  standard_monomial_maps%s
   --  standard_monomial_maps%b
   --  monomial_maps_container%s
   --  monomial_maps_container%b
   --  standard_monomial_map_filters%s
   --  standard_monomial_maps_io%s
   --  standard_monomial_maps_io%b
   --  standard_monomial_map_filters%b
   --  standard_monomial_map_solvers%s
   --  standard_monomial_map_solvers%b
   --  standard_permanent_factors%s
   --  standard_permanent_factors%b
   --  black_box_binomial_solvers%s
   --  black_box_binomial_solvers%b
   --  monomial_maps_interface%s
   --  monomial_maps_interface%b
   --  standard_quad_parameters%s
   --  standard_quad_parameters%b
   --  standard_quad_turn_points%s
   --  standard_quad_turn_points%b
   --  standard_simplex_systems%s
   --  standard_simplex_systems%b
   --  standard_simplex_solvers%s
   --  standard_simplex_solvers%b
   --  standard_simpomial_solvers%s
   --  standard_simpomial_solvers%b
   --  standard_solution_posets%s
   --  standard_solution_posets%b
   --  standard_subspace_restrictions%s
   --  standard_subspace_restrictions%b
   --  start_flag_homotopies%s
   --  start_flag_homotopies%b
   --  supports_of_polynomial_systems%s
   --  supports_of_polynomial_systems%b
   --  demics_translated_setup%s
   --  demics_translated_setup%b
   --  demics_translated%s
   --  demics_translated%b
   --  driver_to_rank_supports%s
   --  driver_to_rank_supports%b
   --  generic_position%s
   --  generic_position%b
   --  giftwrap_interface%s
   --  giftwrap_interface%b
   --  pipelined_cell_indices%s
   --  pipelined_cell_indices%b
   --  standard_binomial_factors%s
   --  standard_binomial_factors%b
   --  standard_binomial_factors_io%s
   --  standard_binomial_factors_io%b
   --  standard_puiseux_certificates%s
   --  standard_puiseux_certificates%b
   --  standard_puiseux_certificates_io%s
   --  standard_puiseux_certificates_io%b
   --  driver_for_common_factor%s
   --  driver_for_common_factor%b
   --  symbol_table_order%s
   --  symbol_table_order%b
   --  symbolic_minor_equations%s
   --  symbolic_minor_equations%b
   --  numeric_minor_equations%s
   --  numeric_minor_equations%b
   --  determinantal_systems%s
   --  determinantal_systems%b
   --  pieri_homotopies%s
   --  pieri_homotopies%b
   --  remember_numeric_minors%s
   --  remember_numeric_minors%b
   --  symbolic_schubert_conditions%s
   --  symbolic_schubert_conditions%b
   --  setup_flag_homotopies%s
   --  setup_flag_homotopies%b
   --  flag_transformations%s
   --  flag_transformations%b
   --  symmetric_lifting_functions%s
   --  symmetric_lifting_functions%b
   --  symmetric_randomize%s
   --  symmetric_randomize%b
   --  symmetric_set_structure%s
   --  symmetric_set_structure%b
   --  three_way_minima%s
   --  three_way_minima%b
   --  transforming_laurent_systems%s
   --  transforming_laurent_systems%b
   --  triple_double_constants%s
   --  tripdobl_mathematical_functions%s
   --  tripdobl_mathematical_functions%b
   --  triple_double_numbers_io%s
   --  triple_double_numbers_io%b
   --  multprec_tripdobl_convertors%s
   --  multprec_tripdobl_convertors%b
   --  triple_double_ring%s
   --  triple_double_polynomials%s
   --  triple_double_polynomials%b
   --  triple_double_poly_systems%s
   --  triple_double_poly_systems%b
   --  triple_double_ring.ffield%s
   --  tripdobl_complex_numbers%s
   --  tripdobl_complex_numbers%b
   --  decadobl_complex_numbers_cv%s
   --  decadobl_complex_numbers_cv%b
   --  decadobl_polynomial_convertors%s
   --  decadobl_polynomial_convertors%b
   --  decadobl_complex_laurentials_io%s
   --  decadobl_complex_laurentials_io%b
   --  decadobl_complex_laur_systems_io%s
   --  decadobl_complex_laur_systems_io%b
   --  hexadobl_complex_numbers_cv%s
   --  hexadobl_complex_numbers_cv%b
   --  hexadobl_polynomial_convertors%s
   --  hexadobl_polynomial_convertors%b
   --  hexadobl_complex_laurentials_io%s
   --  hexadobl_complex_laurentials_io%b
   --  hexadobl_complex_laur_systems_io%s
   --  hexadobl_complex_laur_systems_io%b
   --  quaddobl_complex_numbers_cv%s
   --  quaddobl_complex_numbers_cv%b
   --  bracket_polynomial_convertors%s
   --  bracket_polynomial_convertors%b
   --  homotopy_newton_steps%s
   --  homotopy_newton_steps%b
   --  quaddobl_polynomial_convertors%s
   --  quaddobl_polynomial_convertors%b
   --  quaddobl_complex_laur_strings%s
   --  quaddobl_complex_laur_strings%b
   --  quaddobl_complex_laurentials_io%s
   --  quaddobl_complex_laurentials_io%b
   --  quaddobl_complex_laur_systems_io%s
   --  quaddobl_complex_laur_systems_io%b
   --  quaddobl_complex_poly_strings%s
   --  quaddobl_complex_poly_strings%b
   --  quaddobl_pade_approximants_io%s
   --  quaddobl_pade_approximants_io%b
   --  tripdobl_complex_numbers_cv%s
   --  tripdobl_complex_numbers_cv%b
   --  tripdobl_complex_numbers_io%s
   --  tripdobl_complex_numbers_io%b
   --  fabry_on_homotopy_helpers%s
   --  fabry_on_homotopy_helpers%b
   --  tripdobl_complex_numbers_polar%s
   --  tripdobl_complex_numbers_polar%b
   --  tripdobl_complex_ring%s
   --  tripdobl_complex_laurentials%s
   --  tripdobl_complex_laurentials%b
   --  tripdobl_complex_laur_systems%s
   --  tripdobl_complex_laur_systems%b
   --  tripdobl_complex_polynomials%s
   --  tripdobl_complex_polynomials%b
   --  degrees_in_sets_of_unknowns%s
   --  degrees_in_sets_of_unknowns%b
   --  degree_structure%s
   --  degree_structure%b
   --  interpolating_homotopies%s
   --  interpolating_homotopies%b
   --  interpolating_homotopies_driver%s
   --  interpolating_homotopies_driver%b
   --  m_homogeneous_bezout_numbers%s
   --  m_homogeneous_bezout_numbers%b
   --  m_homogeneous_permanent_factors%s
   --  m_homogeneous_permanent_factors%b
   --  m_homogeneous_start_systems%s
   --  m_homogeneous_start_systems%b
   --  multi_homogeneous_start_systems%s
   --  multi_homogeneous_start_systems%b
   --  tripdobl_complex_poly_systems%s
   --  tripdobl_complex_poly_systems%b
   --  tripdobl_complex_ring_io%s
   --  tripdobl_complex_vectors%s
   --  tripdobl_complex_vectors%b
   --  tripdobl_complex_matrices%s
   --  tripdobl_complex_matrices%b
   --  tripdobl_complex_matrices_io%s
   --  tripdobl_complex_matrices_io%b
   --  tripdobl_complex_poly_functions%s
   --  tripdobl_complex_poly_functions%b
   --  tripdobl_complex_qr_least_squares%s
   --  tripdobl_complex_qr_least_squares%b
   --  tripdobl_complex_series%s
   --  tripdobl_complex_series%b
   --  tripdobl_complex_series_functions%s
   --  tripdobl_complex_series_functions%b
   --  tripdobl_complex_series_ring%s
   --  tripdobl_complex_series_vectors%s
   --  tripdobl_complex_series_vectors%b
   --  tripdobl_complex_series_matrices%s
   --  tripdobl_complex_series_matrices%b
   --  tripdobl_complex_series_vecvecs%s
   --  tripdobl_complex_series_vecvecs%b
   --  tripdobl_complex_singular_values%s
   --  tripdobl_complex_singular_values%b
   --  tripdobl_complex_vecmats%s
   --  tripdobl_complex_vecmats%b
   --  tripdobl_complex_vector_norms%s
   --  tripdobl_complex_vector_norms%b
   --  tripdobl_complex_vectors_cv%s
   --  tripdobl_complex_vectors_cv%b
   --  tripdobl_complex_solutions%s
   --  tripdobl_complex_solutions%b
   --  tripdobl_complex_solutions_io%s
   --  tripdobl_complex_solutions_io%b
   --  tripdobl_complex_vectors_io%s
   --  tripdobl_complex_vectors_io%b
   --  tripdobl_complex_series_io%s
   --  tripdobl_complex_series_io%b
   --  tripdobl_complex_algebraic_series%s
   --  tripdobl_complex_algebraic_series%b
   --  tripdobl_complex_series_norms%s
   --  tripdobl_complex_series_norms%b
   --  tripdobl_complex_vecvecs%s
   --  tripdobl_complex_vecvecs%b
   --  convergence_radius_estimates%s
   --  convergence_radius_estimates%b
   --  decadobl_complex_vectors_cv%s
   --  decadobl_complex_vectors_cv%b
   --  decadobl_complex_solutions%s
   --  decadobl_complex_solutions%b
   --  decadobl_complex_solutions_io%s
   --  decadobl_complex_solutions_io%b
   --  hexadobl_complex_vectors_cv%s
   --  hexadobl_complex_vectors_cv%b
   --  hexadobl_complex_solutions%s
   --  hexadobl_complex_solutions%b
   --  hexadobl_complex_solutions_io%s
   --  hexadobl_complex_solutions_io%b
   --  quaddobl_complex_vectors_cv%s
   --  quaddobl_complex_vectors_cv%b
   --  quaddobl_complex_solutions%s
   --  quaddobl_complex_solutions%b
   --  assignments_of_solutions%s
   --  assignments_of_solutions%b
   --  hypersurfaces_and_filters%s
   --  hypersurfaces_and_filters%b
   --  projective_transformations%s
   --  projective_transformations%b
   --  quaddobl_binomial_systems%s
   --  quaddobl_binomial_systems%b
   --  quaddobl_complex_solutions_io%s
   --  quaddobl_complex_solutions_io%b
   --  black_box_helpers%s
   --  black_box_helpers%b
   --  process_io%s
   --  process_io%b
   --  dobldobl_correctors%s
   --  dobldobl_correctors%b
   --  dobldobl_intrinsic_newton%s
   --  dobldobl_intrinsic_newton%b
   --  dobldobl_intrinsic_trackers%s
   --  dobldobl_intrinsic_trackers%b
   --  dobldobl_intrinsic_continuation%s
   --  dobldobl_intrinsic_continuation%b
   --  dobldobl_orthogonal_correctors%s
   --  dobldobl_orthogonal_correctors%b
   --  dobldobl_path_tracker%s
   --  dobldobl_path_tracker%b
   --  dobldobl_path_trackers%s
   --  dobldobl_path_trackers%b
   --  dobldobl_incfix_continuation%s
   --  dobldobl_incfix_continuation%b
   --  dobldobl_polyhedral_continuation%s
   --  dobldobl_polyhedral_continuation%b
   --  multprec_correctors%s
   --  multprec_correctors%b
   --  multprec_path_tracker%s
   --  multprec_path_tracker%b
   --  multprec_path_trackers%s
   --  multprec_path_trackers%b
   --  multprec_incfix_continuation%s
   --  multprec_incfix_continuation%b
   --  prompt_for_solutions%s
   --  prompt_for_solutions%b
   --  quaddobl_condition_tables%s
   --  quaddobl_condition_tables%b
   --  quaddobl_continuation_data%s
   --  quaddobl_continuation_data%b
   --  quaddobl_continuation_data_io%s
   --  quaddobl_continuation_data_io%b
   --  quaddobl_correctors%s
   --  quaddobl_correctors%b
   --  quaddobl_data_on_path%s
   --  quaddobl_data_on_path%b
   --  quaddobl_deflate_singularities%s
   --  quaddobl_deflate_singularities%b
   --  quaddobl_deflation_trees%s
   --  quaddobl_deflation_trees%b
   --  quaddobl_diagonal_solutions%s
   --  quaddobl_diagonal_solutions%b
   --  quaddobl_intrinsic_newton%s
   --  quaddobl_intrinsic_newton%b
   --  quaddobl_intrinsic_solutions%s
   --  quaddobl_intrinsic_solutions%b
   --  quaddobl_intrinsic_trackers%s
   --  quaddobl_intrinsic_trackers%b
   --  quaddobl_intrinsic_continuation%s
   --  quaddobl_intrinsic_continuation%b
   --  quaddobl_linear_poly_solvers%s
   --  quaddobl_linear_poly_solvers%b
   --  quaddobl_linear_product_system%s
   --  quaddobl_linear_product_system%b
   --  quaddobl_multiple_solutions%s
   --  quaddobl_multiple_solutions%b
   --  quaddobl_multiplicity_structure%s
   --  quaddobl_multiplicity_structure%b
   --  quaddobl_orthogonal_correctors%s
   --  quaddobl_orthogonal_correctors%b
   --  quaddobl_parameter_solutions%s
   --  quaddobl_parameter_solutions%b
   --  quaddobl_point_lists%s
   --  quaddobl_point_lists%b
   --  quaddobl_predictors%s
   --  quaddobl_predictors%b
   --  quaddobl_dispatch_predictors%s
   --  quaddobl_dispatch_predictors%b
   --  quaddobl_path_tracker%s
   --  quaddobl_path_tracker%b
   --  quaddobl_path_trackers%s
   --  quaddobl_path_trackers%b
   --  quaddobl_incfix_continuation%s
   --  quaddobl_incfix_continuation%b
   --  quaddobl_quad_trees%s
   --  quaddobl_quad_trees%b
   --  quaddobl_quad_turn_points_io%s
   --  quaddobl_quad_turn_points_io%b
   --  quaddobl_quad_turn_points%s
   --  quaddobl_quad_turn_points%b
   --  quaddobl_radial_solvers%s
   --  quaddobl_radial_solvers%b
   --  quaddobl_binomial_solvers%s
   --  quaddobl_binomial_solvers%b
   --  quaddobl_scaling%s
   --  quaddobl_scaling%b
   --  quaddobl_simplex_systems%s
   --  quaddobl_simplex_systems%b
   --  quaddobl_simplex_solvers%s
   --  quaddobl_simplex_solvers%b
   --  quaddobl_simpomial_solvers%s
   --  quaddobl_simpomial_solvers%b
   --  quaddobl_polyhedral_continuation%s
   --  quaddobl_polyhedral_continuation%b
   --  quaddobl_solution_diagnostics%s
   --  quaddobl_solution_diagnostics%b
   --  quaddobl_solution_filters%s
   --  quaddobl_solution_filters%b
   --  quaddobl_solution_manipulators%s
   --  quaddobl_solution_manipulators%b
   --  quaddobl_solution_posets%s
   --  quaddobl_solution_posets%b
   --  quaddobl_solution_splitters%s
   --  quaddobl_solution_splitters%b
   --  quaddobl_solution_strings%s
   --  quaddobl_solution_strings%b
   --  quaddobl_solutions_container%s
   --  quaddobl_solutions_container%b
   --  quaddobl_solutions_queue%s
   --  quaddobl_solutions_queue%b
   --  quaddobl_stable_homotopies%s
   --  quaddobl_stable_homotopies%b
   --  quaddobl_witness_solutions%s
   --  quaddobl_witness_solutions%b
   --  recondition_swap_homotopies%s
   --  recondition_swap_homotopies%b
   --  scaling_interface%s
   --  scaling_interface%b
   --  series_and_solutions%s
   --  series_and_solutions%b
   --  homotopy_coefficient_scaling%s
   --  homotopy_coefficient_scaling%b
   --  singular_values_of_hessians%s
   --  singular_values_of_hessians%b
   --  solution_drops%s
   --  solution_drops%b
   --  standard_circuit_makers%s
   --  standard_circuit_makers%b
   --  standard_correctors%s
   --  standard_correctors%b
   --  standard_intrinsic_newton%s
   --  standard_intrinsic_newton%b
   --  standard_intrinsic_trackers%s
   --  standard_intrinsic_trackers%b
   --  standard_intrinsic_continuation%s
   --  standard_intrinsic_continuation%b
   --  standard_orthogonal_correctors%s
   --  standard_orthogonal_correctors%b
   --  standard_path_tracker%s
   --  standard_path_tracker%b
   --  standard_path_trackers%s
   --  standard_path_trackers%b
   --  single_polyhedral_trackers%s
   --  single_polyhedral_trackers%b
   --  standard_solspool_interface%s
   --  standard_solspool_interface%b
   --  store_witness_solutions%s
   --  store_witness_solutions%b
   --  total_degree_start_systems%s
   --  total_degree_start_systems%b
   --  reduction_of_polynomial_systems%s
   --  reduction_of_polynomial_systems%b
   --  reduction_interface%s
   --  reduction_interface%b
   --  tripdobl_complex_linear_solvers%s
   --  tripdobl_complex_linear_solvers%b
   --  tripdobl_complex_poly_sysfun%s
   --  tripdobl_complex_poly_sysfun%b
   --  tripdobl_complex_jaco_matrices%s
   --  tripdobl_complex_jaco_matrices%b
   --  tripdobl_coefficient_homotopy%s
   --  tripdobl_coefficient_homotopy%b
   --  tripdobl_complex_vector_series%s
   --  tripdobl_complex_vector_series%b
   --  tripdobl_complex_matrix_series%s
   --  tripdobl_complex_matrix_series%b
   --  tripdobl_complex_vecvecs_io%s
   --  tripdobl_complex_vecvecs_io%b
   --  tripdobl_cseries_polynomials%s
   --  tripdobl_cseries_polynomials%b
   --  tripdobl_cseries_poly_functions%s
   --  tripdobl_cseries_poly_functions%b
   --  tripdobl_cseries_poly_systems%s
   --  tripdobl_cseries_poly_systems%b
   --  tripdobl_cseries_poly_sysfun%s
   --  tripdobl_cseries_poly_sysfun%b
   --  tripdobl_cseries_jaco_matrices%s
   --  tripdobl_cseries_jaco_matrices%b
   --  complex_series_and_polynomials%s
   --  complex_series_and_polynomials%b
   --  series_and_homotopies%s
   --  series_and_homotopies%b
   --  standard_newton_matrix_series%s
   --  standard_newton_matrix_series%b
   --  decadobl_newton_matrix_series%s
   --  decadobl_newton_matrix_series%b
   --  dobldobl_newton_matrix_series%s
   --  dobldobl_newton_matrix_series%b
   --  octodobl_newton_matrix_series%s
   --  octodobl_newton_matrix_series%b
   --  pentdobl_newton_matrix_series%s
   --  pentdobl_newton_matrix_series%b
   --  quaddobl_newton_matrix_series%s
   --  quaddobl_newton_matrix_series%b
   --  tripdobl_cseries_vector_norms%s
   --  tripdobl_cseries_vector_norms%b
   --  tripdobl_echelon_forms%s
   --  tripdobl_echelon_forms%b
   --  tripdobl_homotopy%s
   --  tripdobl_homotopy%b
   --  tripdobl_polynomial_convertors%s
   --  tripdobl_polynomial_convertors%b
   --  tripdobl_complex_laurentials_io%s
   --  tripdobl_complex_laurentials_io%b
   --  tripdobl_complex_laur_systems_io%s
   --  tripdobl_complex_laur_systems_io%b
   --  tripdobl_random_numbers%s
   --  tripdobl_random_numbers%b
   --  homogenization%s
   --  homogenization%b
   --  drivers_for_homotopy_creation%s
   --  drivers_for_homotopy_creation%b
   --  multi_projective_transformations%s
   --  multi_projective_transformations%b
   --  tripdobl_speelpenning_convolutions%s
   --  tripdobl_speelpenning_convolutions%b
   --  multitasked_algodiff_convolutions%s
   --  multitasked_algodiff_convolutions%b
   --  triple_double_ring_io%s
   --  triple_double_vectors%s
   --  triple_double_vectors%b
   --  tripdobl_random_vectors%s
   --  tripdobl_random_vectors%b
   --  triple_double_vectors_io%s
   --  triple_double_vectors_io%b
   --  tripdobl_interpolating_cseries%s
   --  tripdobl_interpolating_cseries%b
   --  tripdobl_series_matrix_solvers%s
   --  tripdobl_series_matrix_solvers%b
   --  multitasked_series_linearization%s
   --  multitasked_series_linearization%b
   --  tripdobl_newton_convolutions%s
   --  tripdobl_newton_convolutions%b
   --  multitasked_newton_convolutions%s
   --  multitasked_newton_convolutions%b
   --  multitasked_power_newton%s
   --  multitasked_power_newton%b
   --  tripdobl_newton_convolution_steps%s
   --  tripdobl_newton_convolution_steps%b
   --  tripdobl_newton_matrix_series%s
   --  tripdobl_newton_matrix_series%b
   --  triple_double_vecvecs%s
   --  triple_double_vecvecs%b
   --  unfolding_subdivisions%s
   --  unfolding_subdivisions%b
   --  triangulations_and_subdivisions%s
   --  triangulations_and_subdivisions%b
   --  unix_command_line%s
   --  unix_command_line%b
   --  use_avvcon%s
   --  use_avvcon%b
   --  use_giftwrap%s
   --  use_giftwrap%b
   --  use_mapcon%s
   --  use_mapcon%b
   --  use_numbtrop%s
   --  use_numbtrop%b
   --  use_reduction%s
   --  use_reduction%b
   --  use_scaling%s
   --  use_scaling%b
   --  use_solpool%s
   --  use_solpool%b
   --  valid_vector_checks%s
   --  valid_vector_checks%b
   --  standard_incfix_continuation%s
   --  standard_incfix_continuation%b
   --  complex_convex_continuation%s
   --  complex_convex_continuation%b
   --  drivers_for_path_directions%s
   --  drivers_for_path_directions%b
   --  varbprec_homotopy%s
   --  varbprec_homotopy%b
   --  varbprec_matrix_conversions%s
   --  varbprec_matrix_conversions%b
   --  varbprec_polynomial_evaluations%s
   --  varbprec_polynomial_evaluations%b
   --  varbprec_vecvec_conversions%s
   --  varbprec_vecvec_conversions%b
   --  system_convolution_circuits%s
   --  system_convolution_circuits%b
   --  varbprec_complex_linear_solvers%s
   --  varbprec_complex_linear_solvers%b
   --  varbprec_complex_newton_steps%s
   --  varbprec_complex_newton_steps%b
   --  varbprec_corrector_steps%s
   --  varbprec_corrector_steps%b
   --  varbprec_path_tracker%s
   --  varbprec_path_tracker%b
   --  verification_of_solutions%s
   --  verification_of_solutions%b
   --  verify_solution_maps%s
   --  verify_solution_maps%b
   --  volumes%s
   --  volumes%b
   --  witness_sets%s
   --  witness_sets%b
   --  dobldobl_diagonal_polynomials%s
   --  dobldobl_diagonal_polynomials%b
   --  homotopy_membership_target%s
   --  homotopy_membership_target%b
   --  quaddobl_diagonal_polynomials%s
   --  quaddobl_diagonal_polynomials%b
   --  standard_diagonal_polynomials%s
   --  standard_diagonal_polynomials%b
   --  extrinsic_diagonal_homotopies%s
   --  extrinsic_diagonal_homotopies%b
   --  wrapped_solution_vectors%s
   --  wrapped_solution_vectors%b
   --  write_factors%s
   --  write_factors%b
   --  standard_complex_polynomials_io%s
   --  standard_complex_polynomials_io%b
   --  multprec_complex_polynomials_io%s
   --  multprec_complex_polynomials_io%b
   --  decadobl_complex_polynomials_io%s
   --  decadobl_complex_polynomials_io%b
   --  dobldobl_complex_polynomials_io%s
   --  dobldobl_complex_polynomials_io%b
   --  dobldobl_complex_poly_ring_io%s
   --  dobldobl_complex_poly_matrices_io%s
   --  dobldobl_complex_poly_matrices_io%b
   --  hexadobl_complex_polynomials_io%s
   --  hexadobl_complex_polynomials_io%b
   --  multprec_complex_poly_systems_io%s
   --  multprec_complex_poly_systems_io%b
   --  decadobl_complex_poly_systems_io%s
   --  decadobl_complex_poly_systems_io%b
   --  decadobl_system_and_solutions_io%s
   --  decadobl_system_and_solutions_io%b
   --  dobldobl_complex_poly_systems_io%s
   --  dobldobl_complex_poly_systems_io%b
   --  dobldobl_system_and_solutions_io%s
   --  dobldobl_system_and_solutions_io%b
   --  dobldobl_system_readers%s
   --  dobldobl_system_readers%b
   --  dobldobl_tableau_formats%s
   --  dobldobl_tableau_formats%b
   --  dobldobl_tracked_solutions_io%s
   --  dobldobl_tracked_solutions_io%b
   --  double_double_poly_systems_io%s
   --  double_double_poly_systems_io%b
   --  dobldobl_quad_sweepers%s
   --  dobldobl_quad_sweepers%b
   --  hexadobl_complex_poly_systems_io%s
   --  hexadobl_complex_poly_systems_io%b
   --  hexadobl_system_and_solutions_io%s
   --  hexadobl_system_and_solutions_io%b
   --  multprec_system_and_solutions_io%s
   --  multprec_system_and_solutions_io%b
   --  octodobl_complex_polynomials_io%s
   --  octodobl_complex_polynomials_io%b
   --  octodobl_complex_poly_systems_io%s
   --  octodobl_complex_poly_systems_io%b
   --  octodobl_system_and_solutions_io%s
   --  octodobl_system_and_solutions_io%b
   --  pentdobl_complex_polynomials_io%s
   --  pentdobl_complex_polynomials_io%b
   --  pentdobl_complex_poly_systems_io%s
   --  pentdobl_complex_poly_systems_io%b
   --  pentdobl_system_and_solutions_io%s
   --  pentdobl_system_and_solutions_io%b
   --  quaddobl_complex_polynomials_io%s
   --  quaddobl_complex_polynomials_io%b
   --  black_box_univariate_solvers%s
   --  black_box_univariate_solvers%b
   --  quaddobl_complex_poly_ring_io%s
   --  quaddobl_complex_poly_matrices_io%s
   --  quaddobl_complex_poly_matrices_io%b
   --  quaddobl_complex_poly_systems_io%s
   --  quaddobl_complex_poly_systems_io%b
   --  quad_double_poly_systems_io%s
   --  quad_double_poly_systems_io%b
   --  quaddobl_quad_sweepers%s
   --  quaddobl_quad_sweepers%b
   --  quaddobl_system_and_solutions_io%s
   --  quaddobl_system_and_solutions_io%b
   --  quaddobl_system_readers%s
   --  quaddobl_system_readers%b
   --  quaddobl_tableau_formats%s
   --  quaddobl_tableau_formats%b
   --  quaddobl_tracked_solutions_io%s
   --  quaddobl_tracked_solutions_io%b
   --  remember_symbolic_minors%s
   --  remember_symbolic_minors%b
   --  numeric_schubert_conditions%s
   --  numeric_schubert_conditions%b
   --  standard_complex_poly_lists_io%s
   --  standard_complex_poly_lists_io%b
   --  standard_complex_poly_ring_io%s
   --  standard_complex_poly_matrices_io%s
   --  standard_complex_poly_matrices_io%b
   --  checker_homotopies%s
   --  checker_homotopies%b
   --  moving_flag_homotopies%s
   --  moving_flag_homotopies%b
   --  standard_complex_poly_systems_io%s
   --  standard_complex_poly_systems_io%b
   --  black_box_linear_solvers%s
   --  black_box_linear_solvers%b
   --  cascade_homotopies_io%s
   --  cascade_homotopies_io%b
   --  driver_for_symmetric_set_structure%s
   --  driver_for_symmetric_set_structure%b
   --  extrinsic_diagonal_homotopies_io%s
   --  extrinsic_diagonal_homotopies_io%b
   --  main_lifting_functions%s
   --  main_lifting_functions%b
   --  main_poly_continuation%s
   --  main_poly_continuation%b
   --  driver_for_own_start_system%s
   --  driver_for_own_start_system%b
   --  driver_for_winding_numbers%s
   --  driver_for_winding_numbers%b
   --  drivers_for_coefficient_systems%s
   --  drivers_for_coefficient_systems%b
   --  main_vertex_points%s
   --  main_vertex_points%b
   --  driver_for_criterion%s
   --  driver_for_criterion%b
   --  multprec_subspace_restrictions%s
   --  multprec_subspace_restrictions%b
   --  polyhedral_coefficient_trackers%s
   --  polyhedral_coefficient_trackers%b
   --  jumpstart_polyhedral_homotopies%s
   --  jumpstart_polyhedral_homotopies%b
   --  prompt_for_systems%s
   --  prompt_for_systems%b
   --  scaling_methods%s
   --  scaling_methods%b
   --  main_scaling%s
   --  main_scaling%b
   --  standard_complex_prod_systems_io%s
   --  standard_complex_prod_systems_io%b
   --  drivers_to_track_dobldobl_paths%s
   --  drivers_to_track_dobldobl_paths%b
   --  drivers_to_track_quaddobl_paths%s
   --  drivers_to_track_quaddobl_paths%b
   --  drivers_to_track_standard_paths%s
   --  drivers_to_track_standard_paths%b
   --  main_m_homogenization%s
   --  main_m_homogenization%b
   --  main_multi_homogenization%s
   --  main_multi_homogenization%b
   --  main_set_structures%s
   --  main_set_structures%b
   --  standard_deflation_trees_io%s
   --  standard_deflation_trees_io%b
   --  dobldobl_deflation_trees_io%s
   --  dobldobl_deflation_trees_io%b
   --  dobldobl_deflation_methods%s
   --  dobldobl_deflation_methods%b
   --  jacobian_rabinowitsch_trick%s
   --  jacobian_rabinowitsch_trick%b
   --  multprec_deflation_trees_io%s
   --  multprec_deflation_trees_io%b
   --  multprec_deflation_methods%s
   --  multprec_deflation_methods%b
   --  quaddobl_deflation_trees_io%s
   --  quaddobl_deflation_trees_io%b
   --  quaddobl_deflation_methods%s
   --  quaddobl_deflation_methods%b
   --  standard_deflation_methods%s
   --  standard_deflation_methods%b
   --  deflation_interface%s
   --  deflation_interface%b
   --  drivers_to_deflate_singularities%s
   --  drivers_to_deflate_singularities%b
   --  standard_floating_poly_systems_io%s
   --  standard_floating_poly_systems_io%b
   --  standard_parameter_systems%s
   --  standard_parameter_systems%b
   --  decadobl_parameter_systems%s
   --  decadobl_parameter_systems%b
   --  dobldobl_parameter_systems%s
   --  dobldobl_parameter_systems%b
   --  hexadobl_parameter_systems%s
   --  hexadobl_parameter_systems%b
   --  octodobl_parameter_systems%s
   --  octodobl_parameter_systems%b
   --  parameter_homotopy_state%s
   --  parameter_homotopy_state%b
   --  pentdobl_parameter_systems%s
   --  pentdobl_parameter_systems%b
   --  quaddobl_parameter_systems%s
   --  quaddobl_parameter_systems%b
   --  standard_quad_sweepers%s
   --  standard_quad_sweepers%b
   --  standard_system_and_solutions_io%s
   --  standard_system_and_solutions_io%b
   --  main_laurent_series_newton%s
   --  main_laurent_series_newton%b
   --  monodromy_homotopies_io%s
   --  monodromy_homotopies_io%b
   --  standard_refiner_circuits%s
   --  standard_refiner_circuits%b
   --  standard_system_readers%s
   --  standard_system_readers%b
   --  main_reduction%s
   --  main_reduction%b
   --  standard_tableau_formats%s
   --  standard_tableau_formats%b
   --  polyhedral_start_systems%s
   --  polyhedral_start_systems%b
   --  multitasking_polyhedral_trackers%s
   --  multitasking_polyhedral_trackers%b
   --  pipelined_cell_trackers%s
   --  pipelined_cell_trackers%b
   --  pipelined_polyhedral_homotopies%s
   --  pipelined_polyhedral_homotopies%b
   --  standard_tracked_solutions_io%s
   --  standard_tracked_solutions_io%b
   --  drivers_for_failed_paths%s
   --  drivers_for_failed_paths%b
   --  dobldobl_condition_report%s
   --  dobldobl_select_solutions%s
   --  dobldobl_condition_report%b
   --  drivers_for_condition_tables%s
   --  quaddobl_condition_report%s
   --  quaddobl_select_solutions%s
   --  quaddobl_condition_report%b
   --  standard_condition_report%s
   --  standard_select_solutions%s
   --  standard_select_solutions%b
   --  dobldobl_select_solutions%b
   --  drivers_for_condition_tables%b
   --  quaddobl_select_solutions%b
   --  standard_condition_report%b
   --  dobldobl_root_refiners%s
   --  dobldobl_root_refiners%b
   --  dobldobl_sampling_laurent_machine%s
   --  dobldobl_sampling_laurent_machine%b
   --  dobldobl_sampling_machine%s
   --  dobldobl_sampling_machine%b
   --  dobldobl_sample_points%s
   --  dobldobl_sample_points%b
   --  dobldobl_sample_lists%s
   --  dobldobl_sample_lists%b
   --  dobldobl_rectangular_sample_grids%s
   --  dobldobl_rectangular_sample_grids%b
   --  dobldobl_sample_grids%s
   --  dobldobl_sample_grids%b
   --  dobldobl_sampling_operations%s
   --  dobldobl_sampling_operations%b
   --  dobldobl_stacked_sample_grids%s
   --  dobldobl_stacked_sample_grids%b
   --  dobldobl_divided_differences%s
   --  dobldobl_divided_differences%b
   --  dobldobl_gridded_hypersurfaces%s
   --  dobldobl_gridded_hypersurfaces%b
   --  dobldobl_trace_interpolators%s
   --  dobldobl_trace_interpolators%b
   --  main_solution_filters%s
   --  main_solution_filters%b
   --  quaddobl_root_refiners%s
   --  quaddobl_root_refiners%b
   --  multitasked_dd_qd_refiners%s
   --  multitasked_dd_qd_refiners%b
   --  drivers_to_dd_qd_root_refiners%s
   --  drivers_to_dd_qd_root_refiners%b
   --  quaddobl_sampling_laurent_machine%s
   --  quaddobl_sampling_laurent_machine%b
   --  quaddobl_sampling_machine%s
   --  quaddobl_sampling_machine%b
   --  quaddobl_sample_points%s
   --  quaddobl_sample_points%b
   --  quaddobl_sample_lists%s
   --  quaddobl_sample_lists%b
   --  quaddobl_rectangular_sample_grids%s
   --  quaddobl_rectangular_sample_grids%b
   --  quaddobl_sample_grids%s
   --  quaddobl_sample_grids%b
   --  quaddobl_sampling_operations%s
   --  quaddobl_sampling_operations%b
   --  quaddobl_stacked_sample_grids%s
   --  quaddobl_stacked_sample_grids%b
   --  quaddobl_divided_differences%s
   --  quaddobl_divided_differences%b
   --  quaddobl_gridded_hypersurfaces%s
   --  quaddobl_gridded_hypersurfaces%b
   --  quaddobl_trace_interpolators%s
   --  quaddobl_trace_interpolators%b
   --  standard_root_refiners%s
   --  standard_root_refiners%b
   --  black_box_root_refiners%s
   --  black_box_root_refiners%b
   --  black_box_simplex_solvers%s
   --  black_box_simplex_solvers%b
   --  black_box_solver_cases%s
   --  black_box_solver_cases%b
   --  driver_for_root_refining%s
   --  driver_for_root_refining%b
   --  mixed_homotopy_continuation%s
   --  mixed_homotopy_continuation%b
   --  bkk_bound_computations%s
   --  integer_polyhedral_continuation%s
   --  integer_polyhedral_continuation%b
   --  bkk_bound_computations%b
   --  dynamic_polyhedral_continuation%s
   --  dynamic_polyhedral_continuation%b
   --  drivers_for_dynamic_lifting%s
   --  drivers_for_dynamic_lifting%b
   --  floating_polyhedral_continuation%s
   --  floating_polyhedral_continuation%b
   --  main_sagbi_homotopies%s
   --  main_sagbi_homotopies%b
   --  multitasking_root_refiners%s
   --  multitasking_root_refiners%b
   --  dobldobl_blackbox_refiners%s
   --  dobldobl_blackbox_refiners%b
   --  parameter_homotopy_continuation%s
   --  parameter_homotopy_continuation%b
   --  quaddobl_blackbox_refiners%s
   --  quaddobl_blackbox_refiners%b
   --  sampling_laurent_machine%s
   --  sampling_laurent_machine%b
   --  sampling_machine%s
   --  sampling_machine%b
   --  homotopy_membership_tests%s
   --  homotopy_membership_tests%b
   --  sample_points%s
   --  sample_points%b
   --  interpolation_points%s
   --  interpolation_points%b
   --  sample_point_lists%s
   --  sample_point_lists%b
   --  interpolation_point_lists%s
   --  interpolation_point_lists%b
   --  projection_operators%s
   --  projection_operators%b
   --  interpolation_filters%s
   --  interpolation_filters%b
   --  interpolation_filters_io%s
   --  interpolation_filters_io%b
   --  rectangular_sample_grids%s
   --  rectangular_sample_grids%b
   --  multprec_stacked_sample_grids%s
   --  multprec_stacked_sample_grids%b
   --  multprec_divided_differences%s
   --  multprec_divided_differences%b
   --  multprec_trace_interpolators%s
   --  multprec_trace_interpolators%b
   --  sample_point_grids%s
   --  sample_point_grids%b
   --  multprec_breakup_components%s
   --  multprec_breakup_components%b
   --  multprec_irreducible_decomp%s
   --  multprec_irreducible_decomp%b
   --  multprec_irreducible_decomp_io%s
   --  multprec_irreducible_decomp_io%b
   --  sample_points_io%s
   --  sample_points_io%b
   --  sample_point_lists_io%s
   --  sample_point_lists_io%b
   --  monodromy_actions_breakup%s
   --  monodromy_actions_breakup%b
   --  set_structures_and_volumes%s
   --  set_structures_and_volumes%b
   --  drivers_for_implicit_lifting%s
   --  drivers_for_implicit_lifting%b
   --  span_of_component%s
   --  span_of_component%b
   --  irreducible_components%s
   --  irreducible_components%b
   --  span_of_component_creators%s
   --  span_of_component_creators%b
   --  span_of_component_io%s
   --  span_of_component_io%b
   --  irreducible_components_io%s
   --  irreducible_components_io%b
   --  stable_polyhedral_continuation%s
   --  stable_polyhedral_continuation%b
   --  drivers_for_static_lifting%s
   --  drivers_for_static_lifting%b
   --  standard_blackbox_refiners%s
   --  standard_blackbox_refiners%b
   --  standard_breakup_components%s
   --  standard_breakup_components%b
   --  standard_irreducible_decomp%s
   --  standard_irreducible_decomp%b
   --  standard_irreducible_decomp_io%s
   --  standard_irreducible_decomp_io%b
   --  standard_sampling_operations%s
   --  standard_sampling_operations%b
   --  standard_stacked_sample_grids%s
   --  standard_stacked_sample_grids%b
   --  hypersurface_sample_grids%s
   --  hypersurface_sample_grids%b
   --  make_sample_grids%s
   --  make_sample_grids%b
   --  standard_divided_differences%s
   --  standard_divided_differences%b
   --  standard_trace_interpolators%s
   --  standard_trace_interpolators%b
   --  certify_factor_with_trace%s
   --  certify_factor_with_trace%b
   --  combinatorial_factorization%s
   --  combinatorial_factorization%b
   --  interpolate_multivariate_factor%s
   --  interpolate_multivariate_factor%b
   --  irreducible_component_creators%s
   --  irreducible_component_creators%b
   --  irreducible_component_lists%s
   --  irreducible_component_lists%b
   --  drivers_to_component_creators%s
   --  drivers_to_component_creators%b
   --  irreducible_component_lists_io%s
   --  irreducible_component_lists_io%b
   --  monodromy_component_breakup%s
   --  monodromy_component_breakup%b
   --  monodromy_homotopies%s
   --  monodromy_homotopies%b
   --  multivariate_factorization%s
   --  multivariate_factorization%b
   --  drivers_to_factor_polynomials%s
   --  drivers_to_factor_polynomials%b
   --  black_box_factorization%s
   --  black_box_factorization%b
   --  black_box_single_solvers%s
   --  black_box_single_solvers%b
   --  sweep_interface%s
   --  sweep_interface%b
   --  symmetric_bkk_bound_solvers%s
   --  symmetric_polyhedral_continuation%s
   --  symmetric_polyhedral_continuation%b
   --  symmetric_bkk_bound_solvers%b
   --  drivers_for_symmetric_lifting%s
   --  drivers_for_symmetric_lifting%b
   --  tableau_form_interface%s
   --  tableau_form_interface%b
   --  tripdobl_complex_polynomials_io%s
   --  tripdobl_complex_polynomials_io%b
   --  tripdobl_complex_poly_systems_io%s
   --  tripdobl_complex_poly_systems_io%b
   --  complex_series_and_polynomials_io%s
   --  complex_series_and_polynomials_io%b
   --  power_series_methods%s
   --  power_series_methods%b
   --  tripdobl_parameter_systems%s
   --  tripdobl_parameter_systems%b
   --  tripdobl_system_and_solutions_io%s
   --  tripdobl_system_and_solutions_io%b
   --  artificial_parameter_homotopy_io%s
   --  artificial_parameter_homotopy_io%b
   --  homotopy_pade_approximants%s
   --  homotopy_series_readers%s
   --  homotopy_pade_approximants%b
   --  series_and_predictors%s
   --  series_and_predictors%b
   --  homotopy_series_readers%b
   --  dobldobl_predictor_convolutions%s
   --  dobldobl_predictor_convolutions%b
   --  power_series_interface%s
   --  power_series_interface%b
   --  quaddobl_predictor_convolutions%s
   --  quaddobl_predictor_convolutions%b
   --  run_power_series_methods%s
   --  run_power_series_methods%b
   --  standard_pade_trackers%s
   --  standard_pade_trackers%b
   --  dobldobl_pade_trackers%s
   --  dobldobl_pade_trackers%b
   --  dobldobl_seriespade_tracker%s
   --  dobldobl_seriespade_tracker%b
   --  quaddobl_pade_trackers%s
   --  quaddobl_pade_trackers%b
   --  quaddobl_seriespade_tracker%s
   --  quaddobl_seriespade_tracker%b
   --  series_and_trackers%s
   --  series_and_trackers%b
   --  standard_predictor_convolutions%s
   --  standard_predictor_convolutions%b
   --  corrector_convolutions%s
   --  corrector_convolutions%b
   --  predictor_corrector_loops%s
   --  predictor_corrector_loops%b
   --  predictor_corrector_trackers%s
   --  predictor_corrector_trackers%b
   --  standard_seriespade_tracker%s
   --  standard_seriespade_tracker%b
   --  test_series_predictors%s
   --  test_series_predictors%b
   --  univariate_solvers_interface%s
   --  univariate_solvers_interface%b
   --  unisolve%s
   --  unisolve%b
   --  use_multip%s
   --  use_multip%b
   --  use_series%s
   --  use_series%b
   --  use_sweep%s
   --  use_sweep%b
   --  use_tabform%s
   --  use_tabform%b
   --  valipoco%s
   --  valipoco%b
   --  main_verification%s
   --  main_verification%b
   --  verification_with_determinants%s
   --  verification_with_determinants%b
   --  pieri_continuation%s
   --  pieri_continuation%b
   --  deformation_posets%s
   --  deformation_posets%b
   --  main_pieri_homotopies%s
   --  main_pieri_homotopies%b
   --  main_quantum_pieri%s
   --  main_quantum_pieri%b
   --  pieri_homotopy%s
   --  pieri_homotopy%b
   --  pieri_interface%s
   --  pieri_interface%b
   --  pieri_solver%s
   --  pieri_solver%b
   --  use_c2pieri%s
   --  use_c2pieri%b
   --  witness_sets_io%s
   --  witness_sets_io%b
   --  drivers_to_breakup_components%s
   --  drivers_to_breakup_components%b
   --  drivers_to_factor_components%s
   --  drivers_to_factor_components%b
   --  extrinsic_diagonal_continuation%s
   --  extrinsic_diagonal_continuation%b
   --  extrinsic_diagonal_solvers%s
   --  extrinsic_diagonal_solvers%b
   --  intrinsic_diagonal_continuation%s
   --  intrinsic_diagonal_continuation%b
   --  drivers_to_intersect_varieties%s
   --  drivers_to_intersect_varieties%b
   --  intrinsic_witness_sets_io%s
   --  intrinsic_witness_sets_io%b
   --  equation_by_equation_solvers%s
   --  equation_by_equation_solvers%b
   --  jumpstart_diagonal_homotopies%s
   --  jumpstart_diagonal_homotopies%b
   --  main_eqn_by_eqn_solvers%s
   --  main_eqn_by_eqn_solvers%b
   --  bablsolve%s
   --  bablsolve%b
   --  main_hypersurface_witsets%s
   --  main_hypersurface_witsets%b
   --  main_intersection%s
   --  main_intersection%b
   --  main_samplers%s
   --  main_samplers%b
   --  main_trackers%s
   --  main_trackers%b
   --  multitasking_continuation%s
   --  phcpack_operations%s
   --  phcpack_operations%b
   --  multitasking_continuation%b
   --  cascade_homotopy_interface%s
   --  cascade_homotopy_interface%b
   --  continuation_parameters_interface%s
   --  continuation_parameters_interface%b
   --  crude_path_trackers%s
   --  crude_path_trackers%b
   --  dobldobl_blackbox_continuations%s
   --  dobldobl_blackbox_continuations%b
   --  dobldobl_laursys_interface%s
   --  dobldobl_laursys_interface%b
   --  dobldobl_monodromy_permutations%s
   --  dobldobl_monodromy_permutations%b
   --  dobldobl_solutions_interface%s
   --  dobldobl_solutions_interface%b
   --  file_management_interface%s
   --  file_management_interface%b
   --  job_containers%s
   --  job_containers%b
   --  multitasking_membership_tests%s
   --  multitasking_membership_tests%b
   --  homotopy_membership_filters%s
   --  homotopy_membership_filters%b
   --  cascade_membership_filters%s
   --  cascade_membership_filters%b
   --  member_interface%s
   --  member_interface%b
   --  multprec_laursys_interface%s
   --  multprec_laursys_interface%b
   --  newton_interface%s
   --  newton_interface%b
   --  path_trackers_interface%s
   --  path_trackers_interface%b
   --  phcpack_operations_io%s
   --  phcpack_operations_io%b
   --  c_to_phcpack%s
   --  c_to_phcpack%b
   --  dobldobl_polysys_interface%s
   --  dobldobl_polysys_interface%b
   --  linear_products_interface%s
   --  linear_products_interface%b
   --  multprec_polysys_interface%s
   --  multprec_polysys_interface%b
   --  multprec_solutions_interface%s
   --  multprec_solutions_interface%b
   --  quaddobl_blackbox_continuations%s
   --  quaddobl_blackbox_continuations%b
   --  quaddobl_laursys_interface%s
   --  quaddobl_laursys_interface%b
   --  quaddobl_monodromy_permutations%s
   --  quaddobl_monodromy_permutations%b
   --  quaddobl_polysys_interface%s
   --  quaddobl_polysys_interface%b
   --  quaddobl_solutions_interface%s
   --  quaddobl_solutions_interface%b
   --  square_and_embed_systems%s
   --  square_and_embed_systems%b
   --  standard_blackbox_continuations%s
   --  standard_blackbox_continuations%b
   --  cascade_homotopy_steps%s
   --  cascade_homotopy_steps%b
   --  homotopy_cascade_filter%s
   --  homotopy_cascade_filter%b
   --  standard_laursys_interface%s
   --  standard_laursys_interface%b
   --  standard_monodromy_permutations%s
   --  standard_monodromy_permutations%b
   --  monodromy_interface%s
   --  monodromy_interface%b
   --  standard_polysys_interface%s
   --  standard_polysys_interface%b
   --  standard_solutions_interface%s
   --  standard_solutions_interface%b
   --  standard_syspool_interface%s
   --  standard_syspool_interface%b
   --  step_trackers_interface%s
   --  step_trackers_interface%b
   --  symbol_table_interface%s
   --  symbol_table_interface%b
   --  use_c2mbt%s
   --  use_c2mbt%b
   --  use_nxtsol%s
   --  use_nxtsol%b
   --  use_roco%s
   --  use_roco%b
   --  use_solcon%s
   --  use_solcon%b
   --  use_syscon%s
   --  use_syscon%b
   --  use_syspool%s
   --  use_syspool%b
   --  witness_interface%s
   --  witness_interface%b
   --  use_c2fac%s
   --  use_c2fac%b
   --  witness_sets_formats%s
   --  witness_sets_formats%b
   --  dobldobl_hypersurface_witsets_io%s
   --  dobldobl_hypersurface_witsets_io%b
   --  dobldobl_hypersurface_witdrivers%s
   --  dobldobl_hypersurface_witdrivers%b
   --  quaddobl_hypersurface_witsets_io%s
   --  quaddobl_hypersurface_witsets_io%b
   --  quaddobl_hypersurface_witdrivers%s
   --  quaddobl_hypersurface_witdrivers%b
   --  standard_hypersurface_witsets_io%s
   --  standard_hypersurface_witsets_io%b
   --  standard_hypersurface_witdrivers%s
   --  standard_hypersurface_witdrivers%b
   --  diagonal_homotopy_interface%s
   --  diagonal_homotopy_interface%b
   --  use_track%s
   --  use_track%b
   --  wrapped_path_trackers%s
   --  wrapped_path_trackers%b
   --  write_number_of_tasks%s
   --  write_number_of_tasks%b
   --  write_seed_number%s
   --  write_seed_number%b
   --  add_and_remove_embedding%s
   --  add_and_remove_embedding%b
   --  cascade_homotopies%s
   --  cascade_homotopies%b
   --  cascade_homotopy_filters%s
   --  cascade_homotopy_filters%b
   --  drivers_to_breakup_solutions%s
   --  drivers_to_breakup_solutions%b
   --  drivers_to_series_trackers%s
   --  drivers_to_series_trackers%b
   --  greetings_and_conclusions%s
   --  greetings_and_conclusions%b
   --  main_factorization%s
   --  main_factorization%b
   --  main_homotopy_continuation%s
   --  main_homotopy_continuation%b
   --  running_cascades%s
   --  running_cascades%b
   --  series_path_trackers%s
   --  series_path_trackers%b
   --  decadobl_homotopy_convolutions_io%s
   --  decadobl_homotopy_convolutions_io%b
   --  decadobl_fabry_on_homotopy%s
   --  decadobl_fabry_on_homotopy%b
   --  dobldobl_homotopy_convolutions_io%s
   --  dobldobl_homotopy_convolutions_io%b
   --  dobldobl_fabry_on_homotopy%s
   --  dobldobl_fabry_on_homotopy%b
   --  hexadobl_homotopy_convolutions_io%s
   --  hexadobl_homotopy_convolutions_io%b
   --  hexadobl_fabry_on_homotopy%s
   --  hexadobl_fabry_on_homotopy%b
   --  interactive_pade_trackers%s
   --  interactive_pade_trackers%b
   --  octodobl_homotopy_convolutions_io%s
   --  octodobl_homotopy_convolutions_io%b
   --  octodobl_fabry_on_homotopy%s
   --  octodobl_fabry_on_homotopy%b
   --  pade_continuation_interface%s
   --  pade_continuation_interface%b
   --  pentdobl_homotopy_convolutions_io%s
   --  pentdobl_homotopy_convolutions_io%b
   --  pentdobl_fabry_on_homotopy%s
   --  pentdobl_fabry_on_homotopy%b
   --  quaddobl_homotopy_convolutions_io%s
   --  quaddobl_homotopy_convolutions_io%b
   --  quaddobl_fabry_on_homotopy%s
   --  quaddobl_fabry_on_homotopy%b
   --  standard_homotopy_convolutions_io%s
   --  standard_homotopy_convolutions_io%b
   --  standard_fabry_on_homotopy%s
   --  standard_fabry_on_homotopy%b
   --  track_path_convolutions%s
   --  track_path_convolutions%b
   --  multitasked_path_convolutions%s
   --  multitasked_path_convolutions%b
   --  tripdobl_homotopy_convolutions_io%s
   --  tripdobl_homotopy_convolutions_io%b
   --  tripdobl_fabry_on_homotopy%s
   --  tripdobl_fabry_on_homotopy%b
   --  newton_fabry_on_homotopy%s
   --  newton_fabry_on_homotopy%b
   --  use_padcon%s
   --  use_padcon%b
   --  wrapped_pade_trackers%s
   --  wrapped_pade_trackers%b
   --  moving_flag_continuation%s
   --  moving_flag_continuation%b
   --  checker_poset_deformations%s
   --  checker_poset_deformations%b
   --  resolve_schubert_problems%s
   --  resolve_schubert_problems%b
   --  main_schubert_induction%s
   --  main_schubert_induction%b
   --  schubert_interface%s
   --  schubert_interface%b
   --  use_c2lrhom%s
   --  use_c2lrhom%b
   --  write_witness_solutions%s
   --  write_witness_solutions%b
   --  zero_index_tree%s
   --  zero_index_tree%b
   --  relation_table%s
   --  relation_table%b
   --  form_lp%s
   --  form_lp%b
   --  mixed_volume%s
   --  mixed_volume%b
   --  mixedvol_algorithm%s
   --  mixedvol_algorithm%b
   --  pipelined_labeled_cells%s
   --  pipelined_labeled_cells%b
   --  pipelined_polyhedral_trackers%s
   --  pipelined_polyhedral_trackers%b
   --  pipelined_polyhedral_drivers%s
   --  pipelined_polyhedral_drivers%b
   --  drivers_for_mixedvol_algorithm%s
   --  drivers_for_mixedvol_algorithm%b
   --  black_mixed_volume_computations%s
   --  black_mixed_volume_computations%b
   --  apply_induced_permutations%s
   --  apply_induced_permutations%b
   --  black_polyhedral_continuations%s
   --  black_polyhedral_continuations%b
   --  black_box_root_counters%s
   --  black_box_root_counters%b
   --  black_box_mixed_volumes%s
   --  black_box_mixed_volumes%b
   --  black_box_polyhedral_solvers%s
   --  black_box_polyhedral_solvers%b
   --  black_box_solvers%s
   --  black_box_solvers%b
   --  black_box_square_solvers%s
   --  black_box_square_solvers%b
   --  dobldobl_blackbox_solvers%s
   --  dobldobl_blackbox_solvers%b
   --  double_cells_container%s
   --  double_cells_container%b
   --  drivers_for_demics_algorithm%s
   --  drivers_for_demics_algorithm%b
   --  drivers_to_witness_generate%s
   --  drivers_to_witness_generate%b
   --  embeddings_and_cascades%s
   --  embeddings_and_cascades%b
   --  drivers_to_cascade_filtering%s
   --  drivers_to_cascade_filtering%b
   --  integer_cells_container%s
   --  integer_cells_container%b
   --  cells_interface%s
   --  cells_interface%b
   --  irreducible_components_interface%s
   --  irreducible_components_interface%b
   --  job_handlers%s
   --  job_handlers%b
   --  main_component_solvers%s
   --  main_component_solvers%b
   --  main_decomposition%s
   --  main_decomposition%b
   --  main_root_counters%s
   --  main_root_counters%b
   --  mixed_volume_calculator%s
   --  mixed_volume_calculator%b
   --  polynomial_homotopy_continuation%s
   --  polynomial_homotopy_continuation%b
   --  quaddobl_blackbox_solvers%s
   --  quaddobl_blackbox_solvers%b
   --  regular_solution_curves_series%s
   --  regular_solution_curves_series%b
   --  regular_newton_puiseux%s
   --  regular_newton_puiseux%b
   --  main_pade_trackers%s
   --  main_pade_trackers%b
   --  standard_blackbox_solvers%s
   --  standard_blackbox_solvers%b
   --  option_handlers%s
   --  option_handlers%b
   --  use_celcon%s
   --  use_celcon%b
   --  use_outdata%s
   --  use_outdata%b
   --  use_witsols%s
   --  use_witsols%b
   --  use_c2phc4c%s
   --  use_c2phc4c%b
   --  use_c2phc%s
   --  use_c2phc%b
   --  phctop%s
   --  phctop%b
   --  END ELABORATION ORDER

end ada_main;
