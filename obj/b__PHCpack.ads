pragma Warnings (Off);
pragma Ada_95;
with System;
with System.Parameters;
with System.Secondary_Stack;
package adamain is

   procedure adainit;
   pragma Export (C, adainit, "adainit");
   pragma Linker_Constructor (adainit);

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");
   pragma Linker_Destructor (adafinal);

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#17ee07a6#;
   pragma Export (C, u00001, "c_double_arraysB");
   u00002 : constant Version_32 := 16#3a546192#;
   pragma Export (C, u00002, "c_double_arraysS");
   u00003 : constant Version_32 := 16#b078e0f1#;
   pragma Export (C, u00003, "c_integer_arraysS");
   u00004 : constant Version_32 := 16#739ffd0a#;
   pragma Export (C, u00004, "phctopB");
   u00005 : constant Version_32 := 16#c9d5c3c5#;
   pragma Export (C, u00005, "phctopS");
   u00006 : constant Version_32 := 16#b332bdc5#;
   pragma Export (C, u00006, "standard_integer_numbersB");
   u00007 : constant Version_32 := 16#7fe0621b#;
   pragma Export (C, u00007, "standard_integer_numbersS");
   u00008 : constant Version_32 := 16#45d8bf41#;
   pragma Export (C, u00008, "use_c2phcB");
   u00009 : constant Version_32 := 16#e674391d#;
   pragma Export (C, u00009, "use_c2phcS");
   u00010 : constant Version_32 := 16#d43ce5fa#;
   pragma Export (C, u00010, "actions_and_optionsB");
   u00011 : constant Version_32 := 16#d0e53fa3#;
   pragma Export (C, u00011, "actions_and_optionsS");
   u00012 : constant Version_32 := 16#d0c89005#;
   pragma Export (C, u00012, "characters_and_numbersB");
   u00013 : constant Version_32 := 16#72bc624b#;
   pragma Export (C, u00013, "characters_and_numbersS");
   u00014 : constant Version_32 := 16#acc680df#;
   pragma Export (C, u00014, "number_of_coresB");
   u00015 : constant Version_32 := 16#364f4b98#;
   pragma Export (C, u00015, "number_of_coresS");
   u00016 : constant Version_32 := 16#0c3b95ed#;
   pragma Export (C, u00016, "option_handlersB");
   u00017 : constant Version_32 := 16#ff19fbbf#;
   pragma Export (C, u00017, "option_handlersS");
   u00018 : constant Version_32 := 16#9a4aaaad#;
   pragma Export (C, u00018, "black_box_root_countersB");
   u00019 : constant Version_32 := 16#19840b4b#;
   pragma Export (C, u00019, "black_box_root_countersS");
   u00020 : constant Version_32 := 16#1700a8b1#;
   pragma Export (C, u00020, "apply_induced_permutationsB");
   u00021 : constant Version_32 := 16#41d46aa3#;
   pragma Export (C, u00021, "apply_induced_permutationsS");
   u00022 : constant Version_32 := 16#692438df#;
   pragma Export (C, u00022, "arrays_of_floating_vector_listsB");
   u00023 : constant Version_32 := 16#9836f526#;
   pragma Export (C, u00023, "arrays_of_floating_vector_listsS");
   u00024 : constant Version_32 := 16#1062c910#;
   pragma Export (C, u00024, "arrays_of_integer_vector_listsB");
   u00025 : constant Version_32 := 16#5c0c7e9c#;
   pragma Export (C, u00025, "arrays_of_integer_vector_listsS");
   u00026 : constant Version_32 := 16#a3c56370#;
   pragma Export (C, u00026, "black_box_root_refinersB");
   u00027 : constant Version_32 := 16#fcd4c82d#;
   pragma Export (C, u00027, "black_box_root_refinersS");
   u00028 : constant Version_32 := 16#adc3d92e#;
   pragma Export (C, u00028, "black_mixed_volume_computationsB");
   u00029 : constant Version_32 := 16#f80f4752#;
   pragma Export (C, u00029, "black_mixed_volume_computationsS");
   u00030 : constant Version_32 := 16#7debdd60#;
   pragma Export (C, u00030, "black_polyhedral_continuationsB");
   u00031 : constant Version_32 := 16#7b0b93bf#;
   pragma Export (C, u00031, "black_polyhedral_continuationsS");
   u00032 : constant Version_32 := 16#939026dc#;
   pragma Export (C, u00032, "cayley_trickB");
   u00033 : constant Version_32 := 16#ff7ad078#;
   pragma Export (C, u00033, "cayley_trickS");
   u00034 : constant Version_32 := 16#ecdb7001#;
   pragma Export (C, u00034, "cayley_embeddingB");
   u00035 : constant Version_32 := 16#c2905ec6#;
   pragma Export (C, u00035, "cayley_embeddingS");
   u00036 : constant Version_32 := 16#fcb3c698#;
   pragma Export (C, u00036, "communications_with_userB");
   u00037 : constant Version_32 := 16#42442c61#;
   pragma Export (C, u00037, "communications_with_userS");
   u00038 : constant Version_32 := 16#73918e21#;
   pragma Export (C, u00038, "continuation_parametersB");
   u00039 : constant Version_32 := 16#275126e3#;
   pragma Export (C, u00039, "continuation_parametersS");
   u00040 : constant Version_32 := 16#a983cecb#;
   pragma Export (C, u00040, "dobldobl_blackbox_continuationsB");
   u00041 : constant Version_32 := 16#a2d7959f#;
   pragma Export (C, u00041, "dobldobl_blackbox_continuationsS");
   u00042 : constant Version_32 := 16#0f88fe35#;
   pragma Export (C, u00042, "continuation_parameters_ioB");
   u00043 : constant Version_32 := 16#6a8c933c#;
   pragma Export (C, u00043, "continuation_parameters_ioS");
   u00044 : constant Version_32 := 16#814ac353#;
   pragma Export (C, u00044, "dobldobl_blackbox_refinersB");
   u00045 : constant Version_32 := 16#7bc40ded#;
   pragma Export (C, u00045, "dobldobl_blackbox_refinersS");
   u00046 : constant Version_32 := 16#a0f671ba#;
   pragma Export (C, u00046, "dobldobl_blackbox_solversB");
   u00047 : constant Version_32 := 16#61873d32#;
   pragma Export (C, u00047, "dobldobl_blackbox_solversS");
   u00048 : constant Version_32 := 16#737a79cb#;
   pragma Export (C, u00048, "bablsolveB");
   u00049 : constant Version_32 := 16#e9dd1767#;
   pragma Export (C, u00049, "bablsolveS");
   u00050 : constant Version_32 := 16#ad812593#;
   pragma Export (C, u00050, "black_box_linear_solversB");
   u00051 : constant Version_32 := 16#e4a6e5fb#;
   pragma Export (C, u00051, "black_box_linear_solversS");
   u00052 : constant Version_32 := 16#db79776f#;
   pragma Export (C, u00052, "black_box_helpersB");
   u00053 : constant Version_32 := 16#ecd94842#;
   pragma Export (C, u00053, "black_box_helpersS");
   u00054 : constant Version_32 := 16#7451fdd5#;
   pragma Export (C, u00054, "black_box_single_solversB");
   u00055 : constant Version_32 := 16#2135afe3#;
   pragma Export (C, u00055, "black_box_single_solversS");
   u00056 : constant Version_32 := 16#7175b577#;
   pragma Export (C, u00056, "black_box_factorizationB");
   u00057 : constant Version_32 := 16#622ba14f#;
   pragma Export (C, u00057, "black_box_factorizationS");
   u00058 : constant Version_32 := 16#47ab33e4#;
   pragma Export (C, u00058, "black_box_square_solversB");
   u00059 : constant Version_32 := 16#66e852fa#;
   pragma Export (C, u00059, "black_box_square_solversS");
   u00060 : constant Version_32 := 16#fcff24e8#;
   pragma Export (C, u00060, "black_box_binomial_solversB");
   u00061 : constant Version_32 := 16#c2f901e4#;
   pragma Export (C, u00061, "black_box_binomial_solversS");
   u00062 : constant Version_32 := 16#5b535c8d#;
   pragma Export (C, u00062, "black_box_simplex_solversB");
   u00063 : constant Version_32 := 16#bc675cc5#;
   pragma Export (C, u00063, "black_box_simplex_solversS");
   u00064 : constant Version_32 := 16#69916259#;
   pragma Export (C, u00064, "black_box_univariate_solversB");
   u00065 : constant Version_32 := 16#0760bc21#;
   pragma Export (C, u00065, "black_box_univariate_solversS");
   u00066 : constant Version_32 := 16#e9ed3e87#;
   pragma Export (C, u00066, "dobldobl_coefficient_homotopyB");
   u00067 : constant Version_32 := 16#ee0aa2d8#;
   pragma Export (C, u00067, "dobldobl_coefficient_homotopyS");
   u00068 : constant Version_32 := 16#835481de#;
   pragma Export (C, u00068, "dobldobl_complex_jaco_matricesB");
   u00069 : constant Version_32 := 16#da5a470c#;
   pragma Export (C, u00069, "dobldobl_complex_jaco_matricesS");
   u00070 : constant Version_32 := 16#21d985d5#;
   pragma Export (C, u00070, "dobldobl_complex_laur_functionsB");
   u00071 : constant Version_32 := 16#a17cd310#;
   pragma Export (C, u00071, "dobldobl_complex_laur_functionsS");
   u00072 : constant Version_32 := 16#0db367b1#;
   pragma Export (C, u00072, "dobldobl_complex_laur_jacomatsB");
   u00073 : constant Version_32 := 16#e8eb5f5d#;
   pragma Export (C, u00073, "dobldobl_complex_laur_jacomatsS");
   u00074 : constant Version_32 := 16#7bfc0ee3#;
   pragma Export (C, u00074, "dobldobl_complex_laur_sysfunB");
   u00075 : constant Version_32 := 16#f621cf3d#;
   pragma Export (C, u00075, "dobldobl_complex_laur_sysfunS");
   u00076 : constant Version_32 := 16#306c2e67#;
   pragma Export (C, u00076, "dobldobl_complex_laur_systemsB");
   u00077 : constant Version_32 := 16#61235f99#;
   pragma Export (C, u00077, "dobldobl_complex_laur_systemsS");
   u00078 : constant Version_32 := 16#11566188#;
   pragma Export (C, u00078, "dobldobl_complex_laur_systems_ioB");
   u00079 : constant Version_32 := 16#c45f8fc0#;
   pragma Export (C, u00079, "dobldobl_complex_laur_systems_ioS");
   u00080 : constant Version_32 := 16#041a8972#;
   pragma Export (C, u00080, "dobldobl_complex_laurentialsB");
   u00081 : constant Version_32 := 16#7c5b12e9#;
   pragma Export (C, u00081, "dobldobl_complex_laurentialsS");
   u00082 : constant Version_32 := 16#4051c755#;
   pragma Export (C, u00082, "dobldobl_complex_laurentials_ioB");
   u00083 : constant Version_32 := 16#264c437b#;
   pragma Export (C, u00083, "dobldobl_complex_laurentials_ioS");
   u00084 : constant Version_32 := 16#6c70dcc1#;
   pragma Export (C, u00084, "dobldobl_complex_matricesB");
   u00085 : constant Version_32 := 16#a3a06a62#;
   pragma Export (C, u00085, "dobldobl_complex_matricesS");
   u00086 : constant Version_32 := 16#6bdefc12#;
   pragma Export (C, u00086, "dobldobl_complex_numbersB");
   u00087 : constant Version_32 := 16#b00e7c5f#;
   pragma Export (C, u00087, "dobldobl_complex_numbersS");
   u00088 : constant Version_32 := 16#83df4757#;
   pragma Export (C, u00088, "dobldobl_complex_numbers_ioB");
   u00089 : constant Version_32 := 16#ddd08877#;
   pragma Export (C, u00089, "dobldobl_complex_numbers_ioS");
   u00090 : constant Version_32 := 16#c33d968a#;
   pragma Export (C, u00090, "dobldobl_complex_poly_functionsB");
   u00091 : constant Version_32 := 16#36965b40#;
   pragma Export (C, u00091, "dobldobl_complex_poly_functionsS");
   u00092 : constant Version_32 := 16#d88794b5#;
   pragma Export (C, u00092, "dobldobl_complex_poly_sysfunB");
   u00093 : constant Version_32 := 16#dd952367#;
   pragma Export (C, u00093, "dobldobl_complex_poly_sysfunS");
   u00094 : constant Version_32 := 16#1cc767a4#;
   pragma Export (C, u00094, "dobldobl_complex_poly_systemsB");
   u00095 : constant Version_32 := 16#3b422145#;
   pragma Export (C, u00095, "dobldobl_complex_poly_systemsS");
   u00096 : constant Version_32 := 16#0778171f#;
   pragma Export (C, u00096, "dobldobl_complex_poly_systems_ioB");
   u00097 : constant Version_32 := 16#73924d7c#;
   pragma Export (C, u00097, "dobldobl_complex_poly_systems_ioS");
   u00098 : constant Version_32 := 16#6a18d9c1#;
   pragma Export (C, u00098, "dobldobl_complex_polynomialsB");
   u00099 : constant Version_32 := 16#9bec29fe#;
   pragma Export (C, u00099, "dobldobl_complex_polynomialsS");
   u00100 : constant Version_32 := 16#18fc006a#;
   pragma Export (C, u00100, "dobldobl_complex_polynomials_ioB");
   u00101 : constant Version_32 := 16#b61b521f#;
   pragma Export (C, u00101, "dobldobl_complex_polynomials_ioS");
   u00102 : constant Version_32 := 16#47120117#;
   pragma Export (C, u00102, "dobldobl_complex_ringS");
   u00103 : constant Version_32 := 16#e7c27303#;
   pragma Export (C, u00103, "abstract_ringS");
   u00104 : constant Version_32 := 16#8459ea2e#;
   pragma Export (C, u00104, "dobldobl_complex_ring__ffieldS");
   u00105 : constant Version_32 := 16#a6341e69#;
   pragma Export (C, u00105, "abstract_ring__fieldS");
   u00106 : constant Version_32 := 16#fa27b322#;
   pragma Export (C, u00106, "dobldobl_complex_solutionsB");
   u00107 : constant Version_32 := 16#5d6124c3#;
   pragma Export (C, u00107, "dobldobl_complex_solutionsS");
   u00108 : constant Version_32 := 16#ab81bdd4#;
   pragma Export (C, u00108, "dobldobl_complex_numbers_cvB");
   u00109 : constant Version_32 := 16#a69d3cb4#;
   pragma Export (C, u00109, "dobldobl_complex_numbers_cvS");
   u00110 : constant Version_32 := 16#278abc9f#;
   pragma Export (C, u00110, "dobldobl_complex_solutions_ioB");
   u00111 : constant Version_32 := 16#8e427ab5#;
   pragma Export (C, u00111, "dobldobl_complex_solutions_ioS");
   u00112 : constant Version_32 := 16#7cd3eeac#;
   pragma Export (C, u00112, "dobldobl_complex_vector_normsB");
   u00113 : constant Version_32 := 16#20547be1#;
   pragma Export (C, u00113, "dobldobl_complex_vector_normsS");
   u00114 : constant Version_32 := 16#b8c7048c#;
   pragma Export (C, u00114, "dobldobl_complex_vectorsB");
   u00115 : constant Version_32 := 16#c84536fd#;
   pragma Export (C, u00115, "dobldobl_complex_vectorsS");
   u00116 : constant Version_32 := 16#ffa38782#;
   pragma Export (C, u00116, "dobldobl_complex_vectors_cvB");
   u00117 : constant Version_32 := 16#2912ae85#;
   pragma Export (C, u00117, "dobldobl_complex_vectors_cvS");
   u00118 : constant Version_32 := 16#6c4df959#;
   pragma Export (C, u00118, "dobldobl_complex_vectors_ioB");
   u00119 : constant Version_32 := 16#dd6e886f#;
   pragma Export (C, u00119, "dobldobl_complex_vectors_ioS");
   u00120 : constant Version_32 := 16#b12ab6f2#;
   pragma Export (C, u00120, "dobldobl_complex_ring_ioS");
   u00121 : constant Version_32 := 16#0c234456#;
   pragma Export (C, u00121, "abstract_ring_ioS");
   u00122 : constant Version_32 := 16#10a3a3c4#;
   pragma Export (C, u00122, "dobldobl_complex_vecvecsB");
   u00123 : constant Version_32 := 16#c6eed971#;
   pragma Export (C, u00123, "dobldobl_complex_vecvecsS");
   u00124 : constant Version_32 := 16#99e010cb#;
   pragma Export (C, u00124, "dobldobl_durand_kernerB");
   u00125 : constant Version_32 := 16#9d09781c#;
   pragma Export (C, u00125, "dobldobl_durand_kernerS");
   u00126 : constant Version_32 := 16#336667f3#;
   pragma Export (C, u00126, "dobldobl_homotopyB");
   u00127 : constant Version_32 := 16#35331807#;
   pragma Export (C, u00127, "dobldobl_homotopyS");
   u00128 : constant Version_32 := 16#076e5a9f#;
   pragma Export (C, u00128, "dobldobl_incfix_continuationB");
   u00129 : constant Version_32 := 16#f1ed5243#;
   pragma Export (C, u00129, "dobldobl_incfix_continuationS");
   u00130 : constant Version_32 := 16#fe489a9d#;
   pragma Export (C, u00130, "dobldobl_continuation_dataB");
   u00131 : constant Version_32 := 16#e5dd765d#;
   pragma Export (C, u00131, "dobldobl_continuation_dataS");
   u00132 : constant Version_32 := 16#951c4252#;
   pragma Export (C, u00132, "dobldobl_continuation_data_ioB");
   u00133 : constant Version_32 := 16#da94bf66#;
   pragma Export (C, u00133, "dobldobl_continuation_data_ioS");
   u00134 : constant Version_32 := 16#d2c5a126#;
   pragma Export (C, u00134, "dobldobl_laur_poly_convertorsB");
   u00135 : constant Version_32 := 16#187995b4#;
   pragma Export (C, u00135, "dobldobl_laur_poly_convertorsS");
   u00136 : constant Version_32 := 16#a50bed13#;
   pragma Export (C, u00136, "dobldobl_laurent_homotopyB");
   u00137 : constant Version_32 := 16#72e6de42#;
   pragma Export (C, u00137, "dobldobl_laurent_homotopyS");
   u00138 : constant Version_32 := 16#c19fa6a7#;
   pragma Export (C, u00138, "dobldobl_linear_poly_solversB");
   u00139 : constant Version_32 := 16#976a1544#;
   pragma Export (C, u00139, "dobldobl_linear_poly_solversS");
   u00140 : constant Version_32 := 16#8f9a7b1c#;
   pragma Export (C, u00140, "dobldobl_complex_linear_solversB");
   u00141 : constant Version_32 := 16#49428678#;
   pragma Export (C, u00141, "dobldobl_complex_linear_solversS");
   u00142 : constant Version_32 := 16#73a069be#;
   pragma Export (C, u00142, "dobldobl_mathematical_functionsB");
   u00143 : constant Version_32 := 16#35d959dc#;
   pragma Export (C, u00143, "dobldobl_mathematical_functionsS");
   u00144 : constant Version_32 := 16#2c08ea55#;
   pragma Export (C, u00144, "dobldobl_monomial_mapsB");
   u00145 : constant Version_32 := 16#6251600e#;
   pragma Export (C, u00145, "dobldobl_monomial_mapsS");
   u00146 : constant Version_32 := 16#7aff9bc1#;
   pragma Export (C, u00146, "dobldobl_path_trackersB");
   u00147 : constant Version_32 := 16#2d285f8f#;
   pragma Export (C, u00147, "dobldobl_path_trackersS");
   u00148 : constant Version_32 := 16#4df583b1#;
   pragma Export (C, u00148, "directions_of_dobldobl_pathsB");
   u00149 : constant Version_32 := 16#66f2a385#;
   pragma Export (C, u00149, "directions_of_dobldobl_pathsS");
   u00150 : constant Version_32 := 16#19500866#;
   pragma Export (C, u00150, "dobldobl_complex_equality_testsB");
   u00151 : constant Version_32 := 16#b547b963#;
   pragma Export (C, u00151, "dobldobl_complex_equality_testsS");
   u00152 : constant Version_32 := 16#27f1fda4#;
   pragma Export (C, u00152, "dobldobl_correctorsB");
   u00153 : constant Version_32 := 16#92f49118#;
   pragma Export (C, u00153, "dobldobl_correctorsS");
   u00154 : constant Version_32 := 16#a55987db#;
   pragma Export (C, u00154, "dobldobl_data_on_pathB");
   u00155 : constant Version_32 := 16#5a03f9fe#;
   pragma Export (C, u00155, "dobldobl_data_on_pathS");
   u00156 : constant Version_32 := 16#717e4393#;
   pragma Export (C, u00156, "dobldobl_dispatch_predictorsB");
   u00157 : constant Version_32 := 16#b04b4c8e#;
   pragma Export (C, u00157, "dobldobl_dispatch_predictorsS");
   u00158 : constant Version_32 := 16#f92924b1#;
   pragma Export (C, u00158, "dobldobl_orthogonal_correctorsB");
   u00159 : constant Version_32 := 16#0605619b#;
   pragma Export (C, u00159, "dobldobl_orthogonal_correctorsS");
   u00160 : constant Version_32 := 16#0715367a#;
   pragma Export (C, u00160, "dobldobl_complex_qr_least_squaresB");
   u00161 : constant Version_32 := 16#a70567f6#;
   pragma Export (C, u00161, "dobldobl_complex_qr_least_squaresS");
   u00162 : constant Version_32 := 16#70bd6870#;
   pragma Export (C, u00162, "dobldobl_complex_singular_valuesB");
   u00163 : constant Version_32 := 16#579cbe02#;
   pragma Export (C, u00163, "dobldobl_complex_singular_valuesS");
   u00164 : constant Version_32 := 16#18734238#;
   pragma Export (C, u00164, "dobldobl_poly_laur_convertorsB");
   u00165 : constant Version_32 := 16#b03d0c2f#;
   pragma Export (C, u00165, "dobldobl_poly_laur_convertorsS");
   u00166 : constant Version_32 := 16#7bc188b5#;
   pragma Export (C, u00166, "dobldobl_polyhedral_continuationB");
   u00167 : constant Version_32 := 16#d465bb1e#;
   pragma Export (C, u00167, "dobldobl_polyhedral_continuationS");
   u00168 : constant Version_32 := 16#024e6c1b#;
   pragma Export (C, u00168, "dobldobl_polynomial_convertorsB");
   u00169 : constant Version_32 := 16#8f6ec87c#;
   pragma Export (C, u00169, "dobldobl_polynomial_convertorsS");
   u00170 : constant Version_32 := 16#d4d2a688#;
   pragma Export (C, u00170, "dobldobl_predictorsB");
   u00171 : constant Version_32 := 16#e08d7357#;
   pragma Export (C, u00171, "dobldobl_predictorsS");
   u00172 : constant Version_32 := 16#095ff920#;
   pragma Export (C, u00172, "dobldobl_extrapolatorsB");
   u00173 : constant Version_32 := 16#e75ad16e#;
   pragma Export (C, u00173, "dobldobl_extrapolatorsS");
   u00174 : constant Version_32 := 16#204caaca#;
   pragma Export (C, u00174, "dobldobl_random_numbersB");
   u00175 : constant Version_32 := 16#6ec20d48#;
   pragma Export (C, u00175, "dobldobl_random_numbersS");
   u00176 : constant Version_32 := 16#90006296#;
   pragma Export (C, u00176, "dobldobl_random_vectorsB");
   u00177 : constant Version_32 := 16#afca0dc8#;
   pragma Export (C, u00177, "dobldobl_random_vectorsS");
   u00178 : constant Version_32 := 16#1280a018#;
   pragma Export (C, u00178, "dobldobl_root_refinersB");
   u00179 : constant Version_32 := 16#f31148f6#;
   pragma Export (C, u00179, "dobldobl_root_refinersS");
   u00180 : constant Version_32 := 16#1b09f088#;
   pragma Export (C, u00180, "dobldobl_complex_vecmatsB");
   u00181 : constant Version_32 := 16#a899e9a3#;
   pragma Export (C, u00181, "dobldobl_complex_vecmatsS");
   u00182 : constant Version_32 := 16#40cf5436#;
   pragma Export (C, u00182, "dobldobl_condition_reportB");
   u00183 : constant Version_32 := 16#35975c83#;
   pragma Export (C, u00183, "dobldobl_condition_reportS");
   u00184 : constant Version_32 := 16#a76ba855#;
   pragma Export (C, u00184, "dobldobl_condition_tablesB");
   u00185 : constant Version_32 := 16#54692302#;
   pragma Export (C, u00185, "dobldobl_condition_tablesS");
   u00186 : constant Version_32 := 16#1a8baa50#;
   pragma Export (C, u00186, "dobldobl_deflation_methodsB");
   u00187 : constant Version_32 := 16#4ff869b5#;
   pragma Export (C, u00187, "dobldobl_deflation_methodsS");
   u00188 : constant Version_32 := 16#b0989176#;
   pragma Export (C, u00188, "dobldobl_complex_newton_stepsB");
   u00189 : constant Version_32 := 16#9d510202#;
   pragma Export (C, u00189, "dobldobl_complex_newton_stepsS");
   u00190 : constant Version_32 := 16#77de82f3#;
   pragma Export (C, u00190, "dobldobl_deflate_singularitiesB");
   u00191 : constant Version_32 := 16#b07f7e8c#;
   pragma Export (C, u00191, "dobldobl_deflate_singularitiesS");
   u00192 : constant Version_32 := 16#200f31e8#;
   pragma Export (C, u00192, "dobldobl_deflation_treesB");
   u00193 : constant Version_32 := 16#1688e75e#;
   pragma Export (C, u00193, "dobldobl_deflation_treesS");
   u00194 : constant Version_32 := 16#9143b711#;
   pragma Export (C, u00194, "dobldobl_deflation_trees_ioB");
   u00195 : constant Version_32 := 16#7d65db64#;
   pragma Export (C, u00195, "dobldobl_deflation_trees_ioS");
   u00196 : constant Version_32 := 16#fc19d207#;
   pragma Export (C, u00196, "dobldobl_embed_polynomialsB");
   u00197 : constant Version_32 := 16#0f285c39#;
   pragma Export (C, u00197, "dobldobl_embed_polynomialsS");
   u00198 : constant Version_32 := 16#bc2be122#;
   pragma Export (C, u00198, "dobldobl_complex_poly_matricesB");
   u00199 : constant Version_32 := 16#0355268e#;
   pragma Export (C, u00199, "dobldobl_complex_poly_matricesS");
   u00200 : constant Version_32 := 16#de2037cf#;
   pragma Export (C, u00200, "dobldobl_complex_poly_ringS");
   u00201 : constant Version_32 := 16#6f84740e#;
   pragma Export (C, u00201, "dobldobl_complex_poly_vectorsB");
   u00202 : constant Version_32 := 16#b8eb47f2#;
   pragma Export (C, u00202, "dobldobl_complex_poly_vectorsS");
   u00203 : constant Version_32 := 16#b54e443b#;
   pragma Export (C, u00203, "dobldobl_evaluate_deflationB");
   u00204 : constant Version_32 := 16#b88df708#;
   pragma Export (C, u00204, "dobldobl_evaluate_deflationS");
   u00205 : constant Version_32 := 16#36fe7f1f#;
   pragma Export (C, u00205, "dobldobl_deflation_matricesB");
   u00206 : constant Version_32 := 16#bf03ad48#;
   pragma Export (C, u00206, "dobldobl_deflation_matricesS");
   u00207 : constant Version_32 := 16#b3f2e29c#;
   pragma Export (C, u00207, "dobldobl_evaluate_deflation_ioB");
   u00208 : constant Version_32 := 16#757aef74#;
   pragma Export (C, u00208, "dobldobl_evaluate_deflation_ioS");
   u00209 : constant Version_32 := 16#54d75c4a#;
   pragma Export (C, u00209, "dobldobl_jacobian_circuitsB");
   u00210 : constant Version_32 := 16#8974073f#;
   pragma Export (C, u00210, "dobldobl_jacobian_circuitsS");
   u00211 : constant Version_32 := 16#7151b139#;
   pragma Export (C, u00211, "coefficient_supported_polynomialsB");
   u00212 : constant Version_32 := 16#c7b823f4#;
   pragma Export (C, u00212, "coefficient_supported_polynomialsS");
   u00213 : constant Version_32 := 16#83a0b779#;
   pragma Export (C, u00213, "dobldobl_jacobian_evaluationsB");
   u00214 : constant Version_32 := 16#c50d1c01#;
   pragma Export (C, u00214, "dobldobl_jacobian_evaluationsS");
   u00215 : constant Version_32 := 16#32ddd704#;
   pragma Export (C, u00215, "dobldobl_gradient_evaluationsB");
   u00216 : constant Version_32 := 16#44698c61#;
   pragma Export (C, u00216, "dobldobl_gradient_evaluationsS");
   u00217 : constant Version_32 := 16#fc911c1d#;
   pragma Export (C, u00217, "dobldobl_jacobian_treesB");
   u00218 : constant Version_32 := 16#33dbe85b#;
   pragma Export (C, u00218, "dobldobl_jacobian_treesS");
   u00219 : constant Version_32 := 16#6fc6a937#;
   pragma Export (C, u00219, "dobldobl_mixed_residualsB");
   u00220 : constant Version_32 := 16#f7b5dec0#;
   pragma Export (C, u00220, "dobldobl_mixed_residualsS");
   u00221 : constant Version_32 := 16#db938d05#;
   pragma Export (C, u00221, "dobldobl_complex_numbers_polarB");
   u00222 : constant Version_32 := 16#7bcbfbde#;
   pragma Export (C, u00222, "dobldobl_complex_numbers_polarS");
   u00223 : constant Version_32 := 16#d03f30c0#;
   pragma Export (C, u00223, "dobldobl_monomial_evaluationsB");
   u00224 : constant Version_32 := 16#9dcad5fb#;
   pragma Export (C, u00224, "dobldobl_monomial_evaluationsS");
   u00225 : constant Version_32 := 16#b1005b82#;
   pragma Export (C, u00225, "dobldobl_multiple_solutionsB");
   u00226 : constant Version_32 := 16#5014c56b#;
   pragma Export (C, u00226, "dobldobl_multiple_solutionsS");
   u00227 : constant Version_32 := 16#2ddca6f0#;
   pragma Export (C, u00227, "dobldobl_numerical_rankB");
   u00228 : constant Version_32 := 16#643bf562#;
   pragma Export (C, u00228, "dobldobl_numerical_rankS");
   u00229 : constant Version_32 := 16#9b33b2ab#;
   pragma Export (C, u00229, "dobldobl_point_listsB");
   u00230 : constant Version_32 := 16#0c15faf8#;
   pragma Export (C, u00230, "dobldobl_point_listsS");
   u00231 : constant Version_32 := 16#08a06b15#;
   pragma Export (C, u00231, "dobldobl_polynomial_flattenersB");
   u00232 : constant Version_32 := 16#3bf86578#;
   pragma Export (C, u00232, "dobldobl_polynomial_flattenersS");
   u00233 : constant Version_32 := 16#65ce0a50#;
   pragma Export (C, u00233, "dobldobl_quad_treesB");
   u00234 : constant Version_32 := 16#966fa45e#;
   pragma Export (C, u00234, "dobldobl_quad_treesS");
   u00235 : constant Version_32 := 16#55598459#;
   pragma Export (C, u00235, "dobldobl_random_matricesB");
   u00236 : constant Version_32 := 16#f4ceb434#;
   pragma Export (C, u00236, "dobldobl_random_matricesS");
   u00237 : constant Version_32 := 16#321c7f0b#;
   pragma Export (C, u00237, "dobldobl_scalingB");
   u00238 : constant Version_32 := 16#e535c5e6#;
   pragma Export (C, u00238, "dobldobl_scalingS");
   u00239 : constant Version_32 := 16#a9a680e5#;
   pragma Export (C, u00239, "dobldobl_select_solutionsB");
   u00240 : constant Version_32 := 16#a37f1807#;
   pragma Export (C, u00240, "dobldobl_select_solutionsS");
   u00241 : constant Version_32 := 16#9aa672de#;
   pragma Export (C, u00241, "dobldobl_simpomial_solversB");
   u00242 : constant Version_32 := 16#0865bc35#;
   pragma Export (C, u00242, "dobldobl_simpomial_solversS");
   u00243 : constant Version_32 := 16#c624628d#;
   pragma Export (C, u00243, "dobldobl_simplex_solversB");
   u00244 : constant Version_32 := 16#a4731b9c#;
   pragma Export (C, u00244, "dobldobl_simplex_solversS");
   u00245 : constant Version_32 := 16#0c48bb6f#;
   pragma Export (C, u00245, "dobldobl_binomial_solversB");
   u00246 : constant Version_32 := 16#e2887a8a#;
   pragma Export (C, u00246, "dobldobl_binomial_solversS");
   u00247 : constant Version_32 := 16#9c7b0f8f#;
   pragma Export (C, u00247, "dobldobl_binomial_systemsB");
   u00248 : constant Version_32 := 16#dc52a0e8#;
   pragma Export (C, u00248, "dobldobl_binomial_systemsS");
   u00249 : constant Version_32 := 16#fae39d90#;
   pragma Export (C, u00249, "dobldobl_complex_exponentiationB");
   u00250 : constant Version_32 := 16#0821b916#;
   pragma Export (C, u00250, "dobldobl_complex_exponentiationS");
   u00251 : constant Version_32 := 16#aa4da0a6#;
   pragma Export (C, u00251, "dobldobl_complex_matrices_ioB");
   u00252 : constant Version_32 := 16#137e4465#;
   pragma Export (C, u00252, "dobldobl_complex_matrices_ioS");
   u00253 : constant Version_32 := 16#c478172f#;
   pragma Export (C, u00253, "dobldobl_radial_solversB");
   u00254 : constant Version_32 := 16#d30ace18#;
   pragma Export (C, u00254, "dobldobl_radial_solversS");
   u00255 : constant Version_32 := 16#2577276c#;
   pragma Export (C, u00255, "dobldobl_simplex_systemsB");
   u00256 : constant Version_32 := 16#9df022da#;
   pragma Export (C, u00256, "dobldobl_simplex_systemsS");
   u00257 : constant Version_32 := 16#ff637385#;
   pragma Export (C, u00257, "dobldobl_solution_diagnosticsB");
   u00258 : constant Version_32 := 16#b9a70946#;
   pragma Export (C, u00258, "dobldobl_solution_diagnosticsS");
   u00259 : constant Version_32 := 16#3d328d12#;
   pragma Export (C, u00259, "dobldobl_solution_filtersB");
   u00260 : constant Version_32 := 16#6cc4f280#;
   pragma Export (C, u00260, "dobldobl_solution_filtersS");
   u00261 : constant Version_32 := 16#83117a98#;
   pragma Export (C, u00261, "dobldobl_solution_manipulatorsB");
   u00262 : constant Version_32 := 16#eaea18a0#;
   pragma Export (C, u00262, "dobldobl_solution_manipulatorsS");
   u00263 : constant Version_32 := 16#b2f00177#;
   pragma Export (C, u00263, "dobldobl_solution_splittersB");
   u00264 : constant Version_32 := 16#c6c92e0c#;
   pragma Export (C, u00264, "dobldobl_solution_splittersS");
   u00265 : constant Version_32 := 16#293eadcc#;
   pragma Export (C, u00265, "dobldobl_speelpenning_productsB");
   u00266 : constant Version_32 := 16#52e3dceb#;
   pragma Export (C, u00266, "dobldobl_speelpenning_productsS");
   u00267 : constant Version_32 := 16#ed5f2108#;
   pragma Export (C, u00267, "dobldobl_stable_homotopiesB");
   u00268 : constant Version_32 := 16#c030afcb#;
   pragma Export (C, u00268, "dobldobl_stable_homotopiesS");
   u00269 : constant Version_32 := 16#0b981474#;
   pragma Export (C, u00269, "dobldobl_system_readersB");
   u00270 : constant Version_32 := 16#f8b00e39#;
   pragma Export (C, u00270, "dobldobl_system_readersS");
   u00271 : constant Version_32 := 16#be8be006#;
   pragma Export (C, u00271, "dobldobl_vlprs_algorithmB");
   u00272 : constant Version_32 := 16#df8e7fdf#;
   pragma Export (C, u00272, "dobldobl_vlprs_algorithmS");
   u00273 : constant Version_32 := 16#f39798a5#;
   pragma Export (C, u00273, "dobldobl_vlprs_tablesB");
   u00274 : constant Version_32 := 16#d8ed8c5e#;
   pragma Export (C, u00274, "dobldobl_vlprs_tablesS");
   u00275 : constant Version_32 := 16#f10c79f3#;
   pragma Export (C, u00275, "double_double_constantsS");
   u00276 : constant Version_32 := 16#0bbeb89f#;
   pragma Export (C, u00276, "double_double_matricesB");
   u00277 : constant Version_32 := 16#5c5565e8#;
   pragma Export (C, u00277, "double_double_matricesS");
   u00278 : constant Version_32 := 16#26e7fc30#;
   pragma Export (C, u00278, "double_double_numbersB");
   u00279 : constant Version_32 := 16#425f13a6#;
   pragma Export (C, u00279, "double_double_numbersS");
   u00280 : constant Version_32 := 16#122831c1#;
   pragma Export (C, u00280, "double_double_basicsB");
   u00281 : constant Version_32 := 16#e749fa23#;
   pragma Export (C, u00281, "double_double_basicsS");
   u00282 : constant Version_32 := 16#b71b55e9#;
   pragma Export (C, u00282, "double_double_numbers_ioB");
   u00283 : constant Version_32 := 16#79484e39#;
   pragma Export (C, u00283, "double_double_numbers_ioS");
   u00284 : constant Version_32 := 16#b3d27733#;
   pragma Export (C, u00284, "double_double_poly_systemsB");
   u00285 : constant Version_32 := 16#b4bd5eb1#;
   pragma Export (C, u00285, "double_double_poly_systemsS");
   u00286 : constant Version_32 := 16#95e3c047#;
   pragma Export (C, u00286, "double_double_polynomialsB");
   u00287 : constant Version_32 := 16#bb06469d#;
   pragma Export (C, u00287, "double_double_polynomialsS");
   u00288 : constant Version_32 := 16#13b5298b#;
   pragma Export (C, u00288, "double_double_qr_least_squaresB");
   u00289 : constant Version_32 := 16#9669d934#;
   pragma Export (C, u00289, "double_double_qr_least_squaresS");
   u00290 : constant Version_32 := 16#569a0867#;
   pragma Export (C, u00290, "double_double_ringS");
   u00291 : constant Version_32 := 16#0bbd0eed#;
   pragma Export (C, u00291, "double_double_vector_normsB");
   u00292 : constant Version_32 := 16#251e73e5#;
   pragma Export (C, u00292, "double_double_vector_normsS");
   u00293 : constant Version_32 := 16#ffed19bd#;
   pragma Export (C, u00293, "double_double_vectorsB");
   u00294 : constant Version_32 := 16#507e5d29#;
   pragma Export (C, u00294, "double_double_vectorsS");
   u00295 : constant Version_32 := 16#27cc2b67#;
   pragma Export (C, u00295, "double_double_vectors_ioB");
   u00296 : constant Version_32 := 16#ec2a960d#;
   pragma Export (C, u00296, "double_double_vectors_ioS");
   u00297 : constant Version_32 := 16#4635caba#;
   pragma Export (C, u00297, "double_double_ring_ioS");
   u00298 : constant Version_32 := 16#e534e05b#;
   pragma Export (C, u00298, "double_double_vecvecsB");
   u00299 : constant Version_32 := 16#ab42f13a#;
   pragma Export (C, u00299, "double_double_vecvecsS");
   u00300 : constant Version_32 := 16#197e6134#;
   pragma Export (C, u00300, "drivers_for_mixedvol_algorithmB");
   u00301 : constant Version_32 := 16#273cd985#;
   pragma Export (C, u00301, "drivers_for_mixedvol_algorithmS");
   u00302 : constant Version_32 := 16#538f458c#;
   pragma Export (C, u00302, "cell_stackB");
   u00303 : constant Version_32 := 16#84ab77d9#;
   pragma Export (C, u00303, "cell_stackS");
   u00304 : constant Version_32 := 16#3c50c069#;
   pragma Export (C, u00304, "dobldobl_system_and_solutions_ioB");
   u00305 : constant Version_32 := 16#5059e2fe#;
   pragma Export (C, u00305, "dobldobl_system_and_solutions_ioS");
   u00306 : constant Version_32 := 16#f6b83b15#;
   pragma Export (C, u00306, "drivers_for_static_liftingB");
   u00307 : constant Version_32 := 16#b833641d#;
   pragma Export (C, u00307, "drivers_for_static_liftingS");
   u00308 : constant Version_32 := 16#c67f81e7#;
   pragma Export (C, u00308, "driver_for_criterionB");
   u00309 : constant Version_32 := 16#a52a7b61#;
   pragma Export (C, u00309, "driver_for_criterionS");
   u00310 : constant Version_32 := 16#fbb14ae7#;
   pragma Export (C, u00310, "drivers_for_coefficient_systemsB");
   u00311 : constant Version_32 := 16#0112ee8a#;
   pragma Export (C, u00311, "drivers_for_coefficient_systemsS");
   u00312 : constant Version_32 := 16#c5e0db9d#;
   pragma Export (C, u00312, "drivers_for_mixed_contributionsB");
   u00313 : constant Version_32 := 16#1c785835#;
   pragma Export (C, u00313, "drivers_for_mixed_contributionsS");
   u00314 : constant Version_32 := 16#b2c16385#;
   pragma Export (C, u00314, "contributions_to_mixed_volumeB");
   u00315 : constant Version_32 := 16#0382c3af#;
   pragma Export (C, u00315, "contributions_to_mixed_volumeS");
   u00316 : constant Version_32 := 16#82357927#;
   pragma Export (C, u00316, "drivers_to_factor_polynomialsB");
   u00317 : constant Version_32 := 16#8663625b#;
   pragma Export (C, u00317, "drivers_to_factor_polynomialsS");
   u00318 : constant Version_32 := 16#5c9a1c20#;
   pragma Export (C, u00318, "exponent_vectorsB");
   u00319 : constant Version_32 := 16#d341ecb5#;
   pragma Export (C, u00319, "exponent_vectorsS");
   u00320 : constant Version_32 := 16#40bb28b7#;
   pragma Export (C, u00320, "file_scanningB");
   u00321 : constant Version_32 := 16#ae92c354#;
   pragma Export (C, u00321, "file_scanningS");
   u00322 : constant Version_32 := 16#975426d6#;
   pragma Export (C, u00322, "flatten_mixed_subdivisionsB");
   u00323 : constant Version_32 := 16#6504c2dd#;
   pragma Export (C, u00323, "flatten_mixed_subdivisionsS");
   u00324 : constant Version_32 := 16#b1fa05e2#;
   pragma Export (C, u00324, "floating_faces_of_polytopeB");
   u00325 : constant Version_32 := 16#ed27dbfb#;
   pragma Export (C, u00325, "floating_faces_of_polytopeS");
   u00326 : constant Version_32 := 16#a56b70eb#;
   pragma Export (C, u00326, "facet_vertex_enumerationB");
   u00327 : constant Version_32 := 16#a3491fba#;
   pragma Export (C, u00327, "facet_vertex_enumerationS");
   u00328 : constant Version_32 := 16#3c35b2e7#;
   pragma Export (C, u00328, "floating_face_enumeratorsB");
   u00329 : constant Version_32 := 16#95ba8e1a#;
   pragma Export (C, u00329, "floating_face_enumeratorsS");
   u00330 : constant Version_32 := 16#42136db0#;
   pragma Export (C, u00330, "floating_integer_convertorsB");
   u00331 : constant Version_32 := 16#bc9c11b5#;
   pragma Export (C, u00331, "floating_integer_convertorsS");
   u00332 : constant Version_32 := 16#eb9dcf3c#;
   pragma Export (C, u00332, "floating_lifting_functionsB");
   u00333 : constant Version_32 := 16#65c78bc3#;
   pragma Export (C, u00333, "floating_lifting_functionsS");
   u00334 : constant Version_32 := 16#02cede09#;
   pragma Export (C, u00334, "floating_lifting_utilitiesB");
   u00335 : constant Version_32 := 16#747c731e#;
   pragma Export (C, u00335, "floating_lifting_utilitiesS");
   u00336 : constant Version_32 := 16#1a2a9d76#;
   pragma Export (C, u00336, "floating_linear_inequalitiesB");
   u00337 : constant Version_32 := 16#e2032098#;
   pragma Export (C, u00337, "floating_linear_inequalitiesS");
   u00338 : constant Version_32 := 16#5a31bdfe#;
   pragma Export (C, u00338, "floating_mixed_subdivisionsB");
   u00339 : constant Version_32 := 16#bed0da8f#;
   pragma Export (C, u00339, "floating_mixed_subdivisionsS");
   u00340 : constant Version_32 := 16#cbbb3289#;
   pragma Export (C, u00340, "floating_mixed_subdivisions_ioB");
   u00341 : constant Version_32 := 16#34084959#;
   pragma Export (C, u00341, "floating_mixed_subdivisions_ioS");
   u00342 : constant Version_32 := 16#ce80b864#;
   pragma Export (C, u00342, "floating_polyhedral_continuationB");
   u00343 : constant Version_32 := 16#e56d7f5e#;
   pragma Export (C, u00343, "floating_polyhedral_continuationS");
   u00344 : constant Version_32 := 16#c95e13c3#;
   pragma Export (C, u00344, "bkk_bound_computationsB");
   u00345 : constant Version_32 := 16#dd75ce07#;
   pragma Export (C, u00345, "bkk_bound_computationsS");
   u00346 : constant Version_32 := 16#687a3ad6#;
   pragma Export (C, u00346, "floating_pruning_methodsB");
   u00347 : constant Version_32 := 16#6eee9a44#;
   pragma Export (C, u00347, "floating_pruning_methodsS");
   u00348 : constant Version_32 := 16#6a4a14f4#;
   pragma Export (C, u00348, "floating_support_functionsB");
   u00349 : constant Version_32 := 16#0245702a#;
   pragma Export (C, u00349, "floating_support_functionsS");
   u00350 : constant Version_32 := 16#aef81f10#;
   pragma Export (C, u00350, "generic_arrays_of_vector_listsB");
   u00351 : constant Version_32 := 16#0f93c409#;
   pragma Export (C, u00351, "generic_arrays_of_vector_listsS");
   u00352 : constant Version_32 := 16#db6ab190#;
   pragma Export (C, u00352, "generic_jacobian_matricesB");
   u00353 : constant Version_32 := 16#82cba993#;
   pragma Export (C, u00353, "generic_jacobian_matricesS");
   u00354 : constant Version_32 := 16#48c07110#;
   pragma Export (C, u00354, "generic_laur_jaco_matricesB");
   u00355 : constant Version_32 := 16#4fc678f9#;
   pragma Export (C, u00355, "generic_laur_jaco_matricesS");
   u00356 : constant Version_32 := 16#3a1ed1eb#;
   pragma Export (C, u00356, "generic_laur_poly_functionsB");
   u00357 : constant Version_32 := 16#8810fbf3#;
   pragma Export (C, u00357, "generic_laur_poly_functionsS");
   u00358 : constant Version_32 := 16#ea2f5be0#;
   pragma Export (C, u00358, "generic_laur_poly_systemsB");
   u00359 : constant Version_32 := 16#0568d58c#;
   pragma Export (C, u00359, "generic_laur_poly_systemsS");
   u00360 : constant Version_32 := 16#fac1fba7#;
   pragma Export (C, u00360, "generic_laur_system_functionsB");
   u00361 : constant Version_32 := 16#e6a6cc40#;
   pragma Export (C, u00361, "generic_laur_system_functionsS");
   u00362 : constant Version_32 := 16#091c0510#;
   pragma Export (C, u00362, "generic_laurent_polynomialsB");
   u00363 : constant Version_32 := 16#48f4f280#;
   pragma Export (C, u00363, "generic_laurent_polynomialsS");
   u00364 : constant Version_32 := 16#602f86ec#;
   pragma Export (C, u00364, "generic_listsB");
   u00365 : constant Version_32 := 16#6cfe715e#;
   pragma Export (C, u00365, "generic_listsS");
   u00366 : constant Version_32 := 16#cee08cc8#;
   pragma Export (C, u00366, "generic_lists_of_vectorsB");
   u00367 : constant Version_32 := 16#f028056e#;
   pragma Export (C, u00367, "generic_lists_of_vectorsS");
   u00368 : constant Version_32 := 16#52967604#;
   pragma Export (C, u00368, "generic_matricesB");
   u00369 : constant Version_32 := 16#9fb79146#;
   pragma Export (C, u00369, "generic_matricesS");
   u00370 : constant Version_32 := 16#df21c86f#;
   pragma Export (C, u00370, "generic_matrices_ioB");
   u00371 : constant Version_32 := 16#d9db925a#;
   pragma Export (C, u00371, "generic_matrices_ioS");
   u00372 : constant Version_32 := 16#e8c6700b#;
   pragma Export (C, u00372, "generic_poly_system_functionsB");
   u00373 : constant Version_32 := 16#05a31abd#;
   pragma Export (C, u00373, "generic_poly_system_functionsS");
   u00374 : constant Version_32 := 16#363eb710#;
   pragma Export (C, u00374, "generic_polynomial_functionsB");
   u00375 : constant Version_32 := 16#ca375f51#;
   pragma Export (C, u00375, "generic_polynomial_functionsS");
   u00376 : constant Version_32 := 16#fe7461e2#;
   pragma Export (C, u00376, "generic_polynomial_systemsB");
   u00377 : constant Version_32 := 16#9415d984#;
   pragma Export (C, u00377, "generic_polynomial_systemsS");
   u00378 : constant Version_32 := 16#6c617c09#;
   pragma Export (C, u00378, "generic_polynomialsB");
   u00379 : constant Version_32 := 16#4016caab#;
   pragma Export (C, u00379, "generic_polynomialsS");
   u00380 : constant Version_32 := 16#28a431f5#;
   pragma Export (C, u00380, "generic_vecmatsB");
   u00381 : constant Version_32 := 16#0c87cca0#;
   pragma Export (C, u00381, "generic_vecmatsS");
   u00382 : constant Version_32 := 16#c1b40574#;
   pragma Export (C, u00382, "generic_vectorsB");
   u00383 : constant Version_32 := 16#1cb7bfe9#;
   pragma Export (C, u00383, "generic_vectorsS");
   u00384 : constant Version_32 := 16#4f217078#;
   pragma Export (C, u00384, "generic_vectors_ioB");
   u00385 : constant Version_32 := 16#415b97da#;
   pragma Export (C, u00385, "generic_vectors_ioS");
   u00386 : constant Version_32 := 16#da6c59d7#;
   pragma Export (C, u00386, "generic_vecvecsB");
   u00387 : constant Version_32 := 16#862a5d50#;
   pragma Export (C, u00387, "generic_vecvecsS");
   u00388 : constant Version_32 := 16#5746c8ec#;
   pragma Export (C, u00388, "givens_rotationsB");
   u00389 : constant Version_32 := 16#516020ac#;
   pragma Export (C, u00389, "givens_rotationsS");
   u00390 : constant Version_32 := 16#edb4180d#;
   pragma Export (C, u00390, "graded_lexicographic_orderB");
   u00391 : constant Version_32 := 16#c695b525#;
   pragma Export (C, u00391, "graded_lexicographic_orderS");
   u00392 : constant Version_32 := 16#dd8a13cb#;
   pragma Export (C, u00392, "greeting_bannersB");
   u00393 : constant Version_32 := 16#0470dd63#;
   pragma Export (C, u00393, "greeting_bannersS");
   u00394 : constant Version_32 := 16#e08a2565#;
   pragma Export (C, u00394, "handle_underflow_gracefullyB");
   u00395 : constant Version_32 := 16#6e0b336c#;
   pragma Export (C, u00395, "handle_underflow_gracefullyS");
   u00396 : constant Version_32 := 16#cfa09930#;
   pragma Export (C, u00396, "induced_permutationsB");
   u00397 : constant Version_32 := 16#2378d1f4#;
   pragma Export (C, u00397, "induced_permutationsS");
   u00398 : constant Version_32 := 16#94342d38#;
   pragma Export (C, u00398, "inner_normal_conesB");
   u00399 : constant Version_32 := 16#b0f2345e#;
   pragma Export (C, u00399, "inner_normal_conesS");
   u00400 : constant Version_32 := 16#8678c28a#;
   pragma Export (C, u00400, "integer32_vectors_utilitiesB");
   u00401 : constant Version_32 := 16#0ee7a7d4#;
   pragma Export (C, u00401, "integer32_vectors_utilitiesS");
   u00402 : constant Version_32 := 16#df2dac5d#;
   pragma Export (C, u00402, "integer_faces_of_polytopeB");
   u00403 : constant Version_32 := 16#7273315f#;
   pragma Export (C, u00403, "integer_faces_of_polytopeS");
   u00404 : constant Version_32 := 16#20730b15#;
   pragma Export (C, u00404, "integer_face_enumeratorsB");
   u00405 : constant Version_32 := 16#0b3b26dd#;
   pragma Export (C, u00405, "integer_face_enumeratorsS");
   u00406 : constant Version_32 := 16#32cc8eee#;
   pragma Export (C, u00406, "face_enumerators_utilitiesB");
   u00407 : constant Version_32 := 16#e12baf18#;
   pragma Export (C, u00407, "face_enumerators_utilitiesS");
   u00408 : constant Version_32 := 16#b9e983ef#;
   pragma Export (C, u00408, "integer_lifting_utilitiesB");
   u00409 : constant Version_32 := 16#7eb264f2#;
   pragma Export (C, u00409, "integer_lifting_utilitiesS");
   u00410 : constant Version_32 := 16#e3863294#;
   pragma Export (C, u00410, "integer_linear_inequalitiesB");
   u00411 : constant Version_32 := 16#c9b13b1b#;
   pragma Export (C, u00411, "integer_linear_inequalitiesS");
   u00412 : constant Version_32 := 16#5598dc1f#;
   pragma Export (C, u00412, "integer_mixed_subdivisionsB");
   u00413 : constant Version_32 := 16#1c07dc36#;
   pragma Export (C, u00413, "integer_mixed_subdivisionsS");
   u00414 : constant Version_32 := 16#5721c902#;
   pragma Export (C, u00414, "integer_mixed_subdivisions_ioB");
   u00415 : constant Version_32 := 16#ddff0477#;
   pragma Export (C, u00415, "integer_mixed_subdivisions_ioS");
   u00416 : constant Version_32 := 16#f2225860#;
   pragma Export (C, u00416, "integer_polyhedral_continuationB");
   u00417 : constant Version_32 := 16#bb48dfb1#;
   pragma Export (C, u00417, "integer_polyhedral_continuationS");
   u00418 : constant Version_32 := 16#84a9caa2#;
   pragma Export (C, u00418, "integer_pruning_methodsB");
   u00419 : constant Version_32 := 16#9425b71e#;
   pragma Export (C, u00419, "integer_pruning_methodsS");
   u00420 : constant Version_32 := 16#0b9b93a9#;
   pragma Export (C, u00420, "floating_linear_inequality_solversB");
   u00421 : constant Version_32 := 16#4ec47b4e#;
   pragma Export (C, u00421, "floating_linear_inequality_solversS");
   u00422 : constant Version_32 := 16#89d93079#;
   pragma Export (C, u00422, "integer_support_functionsB");
   u00423 : constant Version_32 := 16#1f1b4be3#;
   pragma Export (C, u00423, "integer_support_functionsS");
   u00424 : constant Version_32 := 16#ff3880d4#;
   pragma Export (C, u00424, "interpolate_multivariate_factorB");
   u00425 : constant Version_32 := 16#24dd26b4#;
   pragma Export (C, u00425, "interpolate_multivariate_factorS");
   u00426 : constant Version_32 := 16#1b0fe8d7#;
   pragma Export (C, u00426, "dobldobl_divided_differencesB");
   u00427 : constant Version_32 := 16#34a36d98#;
   pragma Export (C, u00427, "dobldobl_divided_differencesS");
   u00428 : constant Version_32 := 16#5445b26a#;
   pragma Export (C, u00428, "dobldobl_gridded_hypersurfacesB");
   u00429 : constant Version_32 := 16#42f4869b#;
   pragma Export (C, u00429, "dobldobl_gridded_hypersurfacesS");
   u00430 : constant Version_32 := 16#2dc52f7f#;
   pragma Export (C, u00430, "dobldobl_lined_hypersurfacesB");
   u00431 : constant Version_32 := 16#b61ce830#;
   pragma Export (C, u00431, "dobldobl_lined_hypersurfacesS");
   u00432 : constant Version_32 := 16#da408e6e#;
   pragma Export (C, u00432, "dobldobl_plane_representationsB");
   u00433 : constant Version_32 := 16#cfd73519#;
   pragma Export (C, u00433, "dobldobl_plane_representationsS");
   u00434 : constant Version_32 := 16#f4cabb8b#;
   pragma Export (C, u00434, "dobldobl_rectangular_sample_gridsB");
   u00435 : constant Version_32 := 16#8ebab26e#;
   pragma Export (C, u00435, "dobldobl_rectangular_sample_gridsS");
   u00436 : constant Version_32 := 16#c833f904#;
   pragma Export (C, u00436, "dobldobl_sample_listsB");
   u00437 : constant Version_32 := 16#bb95791d#;
   pragma Export (C, u00437, "dobldobl_sample_listsS");
   u00438 : constant Version_32 := 16#ecaee2d7#;
   pragma Export (C, u00438, "dobldobl_sample_pointsB");
   u00439 : constant Version_32 := 16#38fde649#;
   pragma Export (C, u00439, "dobldobl_sample_pointsS");
   u00440 : constant Version_32 := 16#84c294ed#;
   pragma Export (C, u00440, "dobldobl_sampling_laurent_machineB");
   u00441 : constant Version_32 := 16#5fc35b40#;
   pragma Export (C, u00441, "dobldobl_sampling_laurent_machineS");
   u00442 : constant Version_32 := 16#e34c9d62#;
   pragma Export (C, u00442, "dobldobl_sampling_machineB");
   u00443 : constant Version_32 := 16#78f2fc40#;
   pragma Export (C, u00443, "dobldobl_sampling_machineS");
   u00444 : constant Version_32 := 16#f94aacb3#;
   pragma Export (C, u00444, "dobldobl_stacked_sample_gridsB");
   u00445 : constant Version_32 := 16#ada37cd3#;
   pragma Export (C, u00445, "dobldobl_stacked_sample_gridsS");
   u00446 : constant Version_32 := 16#ed7c8e35#;
   pragma Export (C, u00446, "dobldobl_trace_interpolatorsB");
   u00447 : constant Version_32 := 16#dce3418f#;
   pragma Export (C, u00447, "dobldobl_trace_interpolatorsS");
   u00448 : constant Version_32 := 16#01ad67d6#;
   pragma Export (C, u00448, "dobldobl_complex_nesvecsB");
   u00449 : constant Version_32 := 16#f3757b44#;
   pragma Export (C, u00449, "dobldobl_complex_nesvecsS");
   u00450 : constant Version_32 := 16#312ecbe7#;
   pragma Export (C, u00450, "dobldobl_complex_nesvecs_ioB");
   u00451 : constant Version_32 := 16#d08dace2#;
   pragma Export (C, u00451, "dobldobl_complex_nesvecs_ioS");
   u00452 : constant Version_32 := 16#cc18a728#;
   pragma Export (C, u00452, "dobldobl_complex_vecvecs_ioB");
   u00453 : constant Version_32 := 16#44b4bc9e#;
   pragma Export (C, u00453, "dobldobl_complex_vecvecs_ioS");
   u00454 : constant Version_32 := 16#0d80cc91#;
   pragma Export (C, u00454, "dobldobl_nvariate_interpolatorsB");
   u00455 : constant Version_32 := 16#26682b6c#;
   pragma Export (C, u00455, "dobldobl_nvariate_interpolatorsS");
   u00456 : constant Version_32 := 16#f79d7c12#;
   pragma Export (C, u00456, "dobldobl_power_tracesB");
   u00457 : constant Version_32 := 16#513420f5#;
   pragma Export (C, u00457, "dobldobl_power_tracesS");
   u00458 : constant Version_32 := 16#5f329300#;
   pragma Export (C, u00458, "dobldobl_univariate_interpolatorsB");
   u00459 : constant Version_32 := 16#393d9107#;
   pragma Export (C, u00459, "dobldobl_univariate_interpolatorsS");
   u00460 : constant Version_32 := 16#ceb83ceb#;
   pragma Export (C, u00460, "double_double_matrices_ioB");
   u00461 : constant Version_32 := 16#6a80702a#;
   pragma Export (C, u00461, "double_double_matrices_ioS");
   u00462 : constant Version_32 := 16#a94ad08c#;
   pragma Export (C, u00462, "generic_nesvecsB");
   u00463 : constant Version_32 := 16#a3c85aa6#;
   pragma Export (C, u00463, "generic_nesvecsS");
   u00464 : constant Version_32 := 16#a7d2d6a8#;
   pragma Export (C, u00464, "generic_nesvecs_ioB");
   u00465 : constant Version_32 := 16#ed6bf457#;
   pragma Export (C, u00465, "generic_nesvecs_ioS");
   u00466 : constant Version_32 := 16#0f448f0b#;
   pragma Export (C, u00466, "generic_vecvecs_ioB");
   u00467 : constant Version_32 := 16#b0884b00#;
   pragma Export (C, u00467, "generic_vecvecs_ioS");
   u00468 : constant Version_32 := 16#1ef8cca2#;
   pragma Export (C, u00468, "hypersurface_sample_gridsB");
   u00469 : constant Version_32 := 16#d14d0018#;
   pragma Export (C, u00469, "hypersurface_sample_gridsS");
   u00470 : constant Version_32 := 16#7fafe605#;
   pragma Export (C, u00470, "lexicographical_supportsB");
   u00471 : constant Version_32 := 16#874cca9f#;
   pragma Export (C, u00471, "lexicographical_supportsS");
   u00472 : constant Version_32 := 16#f4bb547c#;
   pragma Export (C, u00472, "linear_minimizationB");
   u00473 : constant Version_32 := 16#effe2b6d#;
   pragma Export (C, u00473, "linear_minimizationS");
   u00474 : constant Version_32 := 16#36c601d0#;
   pragma Export (C, u00474, "basis_exchangesB");
   u00475 : constant Version_32 := 16#5c7ff5f1#;
   pragma Export (C, u00475, "basis_exchangesS");
   u00476 : constant Version_32 := 16#ac5cfddf#;
   pragma Export (C, u00476, "lists_of_floating_vectorsB");
   u00477 : constant Version_32 := 16#79dc3571#;
   pragma Export (C, u00477, "lists_of_floating_vectorsS");
   u00478 : constant Version_32 := 16#71ffe65f#;
   pragma Export (C, u00478, "lists_of_floating_vectors_ioB");
   u00479 : constant Version_32 := 16#4dcbd84f#;
   pragma Export (C, u00479, "lists_of_floating_vectors_ioS");
   u00480 : constant Version_32 := 16#d0a2f87e#;
   pragma Export (C, u00480, "generic_lists_of_vectors_ioB");
   u00481 : constant Version_32 := 16#bbcb688e#;
   pragma Export (C, u00481, "generic_lists_of_vectors_ioS");
   u00482 : constant Version_32 := 16#0dd4e793#;
   pragma Export (C, u00482, "lists_of_integer_vectorsB");
   u00483 : constant Version_32 := 16#c4a04f04#;
   pragma Export (C, u00483, "lists_of_integer_vectorsS");
   u00484 : constant Version_32 := 16#de566e5c#;
   pragma Export (C, u00484, "lists_of_integer_vectors_ioB");
   u00485 : constant Version_32 := 16#70395dd3#;
   pragma Export (C, u00485, "lists_of_integer_vectors_ioS");
   u00486 : constant Version_32 := 16#bf74a22e#;
   pragma Export (C, u00486, "lists_of_vectors32_utilitiesB");
   u00487 : constant Version_32 := 16#11acddf0#;
   pragma Export (C, u00487, "lists_of_vectors32_utilitiesS");
   u00488 : constant Version_32 := 16#a73499cb#;
   pragma Export (C, u00488, "m_homogeneous_bezout_numbersB");
   u00489 : constant Version_32 := 16#b248bce3#;
   pragma Export (C, u00489, "m_homogeneous_bezout_numbersS");
   u00490 : constant Version_32 := 16#e84202fd#;
   pragma Export (C, u00490, "degrees_in_sets_of_unknownsB");
   u00491 : constant Version_32 := 16#80f1326e#;
   pragma Export (C, u00491, "degrees_in_sets_of_unknownsS");
   u00492 : constant Version_32 := 16#43c8f541#;
   pragma Export (C, u00492, "decadobl_complex_polynomialsB");
   u00493 : constant Version_32 := 16#5c2b23a2#;
   pragma Export (C, u00493, "decadobl_complex_polynomialsS");
   u00494 : constant Version_32 := 16#161c553f#;
   pragma Export (C, u00494, "decadobl_complex_ringS");
   u00495 : constant Version_32 := 16#ebde9c60#;
   pragma Export (C, u00495, "decadobl_complex_numbersB");
   u00496 : constant Version_32 := 16#1b488252#;
   pragma Export (C, u00496, "decadobl_complex_numbersS");
   u00497 : constant Version_32 := 16#d6160f82#;
   pragma Export (C, u00497, "deca_double_ringS");
   u00498 : constant Version_32 := 16#551eb7fa#;
   pragma Export (C, u00498, "deca_double_numbersB");
   u00499 : constant Version_32 := 16#579dd309#;
   pragma Export (C, u00499, "deca_double_numbersS");
   u00500 : constant Version_32 := 16#29f918c3#;
   pragma Export (C, u00500, "deca_double_ring__ffieldS");
   u00501 : constant Version_32 := 16#1c1bc379#;
   pragma Export (C, u00501, "fast_double_renormalizationsB");
   u00502 : constant Version_32 := 16#53669449#;
   pragma Export (C, u00502, "fast_double_renormalizationsS");
   u00503 : constant Version_32 := 16#69598a46#;
   pragma Export (C, u00503, "generic_complex_numbersB");
   u00504 : constant Version_32 := 16#71ee0ab9#;
   pragma Export (C, u00504, "generic_complex_numbersS");
   u00505 : constant Version_32 := 16#6915d63a#;
   pragma Export (C, u00505, "hexadobl_complex_polynomialsB");
   u00506 : constant Version_32 := 16#4b591f94#;
   pragma Export (C, u00506, "hexadobl_complex_polynomialsS");
   u00507 : constant Version_32 := 16#1c5a5811#;
   pragma Export (C, u00507, "hexadobl_complex_ringS");
   u00508 : constant Version_32 := 16#dc378e03#;
   pragma Export (C, u00508, "hexadobl_complex_numbersB");
   u00509 : constant Version_32 := 16#df0006d7#;
   pragma Export (C, u00509, "hexadobl_complex_numbersS");
   u00510 : constant Version_32 := 16#6ee1443d#;
   pragma Export (C, u00510, "hexa_double_ringS");
   u00511 : constant Version_32 := 16#909abe9b#;
   pragma Export (C, u00511, "hexa_double_numbersB");
   u00512 : constant Version_32 := 16#7d2f2f65#;
   pragma Export (C, u00512, "hexa_double_numbersS");
   u00513 : constant Version_32 := 16#62afc59a#;
   pragma Export (C, u00513, "hexa_double_ring__ffieldS");
   u00514 : constant Version_32 := 16#80bfd885#;
   pragma Export (C, u00514, "m_homogeneous_start_systemsB");
   u00515 : constant Version_32 := 16#5d3c6f30#;
   pragma Export (C, u00515, "m_homogeneous_start_systemsS");
   u00516 : constant Version_32 := 16#90394088#;
   pragma Export (C, u00516, "m_homogeneous_permanent_factorsB");
   u00517 : constant Version_32 := 16#1ac0302b#;
   pragma Export (C, u00517, "m_homogeneous_permanent_factorsS");
   u00518 : constant Version_32 := 16#2798f2c2#;
   pragma Export (C, u00518, "main_component_solversB");
   u00519 : constant Version_32 := 16#10b8f53b#;
   pragma Export (C, u00519, "main_component_solversS");
   u00520 : constant Version_32 := 16#bb12a20a#;
   pragma Export (C, u00520, "embeddings_and_cascadesB");
   u00521 : constant Version_32 := 16#0a6c2f00#;
   pragma Export (C, u00521, "embeddings_and_cascadesS");
   u00522 : constant Version_32 := 16#67712bfb#;
   pragma Export (C, u00522, "black_box_solversB");
   u00523 : constant Version_32 := 16#db42683d#;
   pragma Export (C, u00523, "black_box_solversS");
   u00524 : constant Version_32 := 16#cf56f04e#;
   pragma Export (C, u00524, "black_box_solver_casesB");
   u00525 : constant Version_32 := 16#d5d99e4d#;
   pragma Export (C, u00525, "black_box_solver_casesS");
   u00526 : constant Version_32 := 16#057e1672#;
   pragma Export (C, u00526, "greetings_and_conclusionsB");
   u00527 : constant Version_32 := 16#7223d659#;
   pragma Export (C, u00527, "greetings_and_conclusionsS");
   u00528 : constant Version_32 := 16#03f2a40d#;
   pragma Export (C, u00528, "main_decompositionB");
   u00529 : constant Version_32 := 16#66088a18#;
   pragma Export (C, u00529, "main_decompositionS");
   u00530 : constant Version_32 := 16#f9b1dc2a#;
   pragma Export (C, u00530, "add_and_remove_embeddingB");
   u00531 : constant Version_32 := 16#5c5b2211#;
   pragma Export (C, u00531, "add_and_remove_embeddingS");
   u00532 : constant Version_32 := 16#6bebef08#;
   pragma Export (C, u00532, "driver_to_rank_supportsB");
   u00533 : constant Version_32 := 16#ca040023#;
   pragma Export (C, u00533, "driver_to_rank_supportsS");
   u00534 : constant Version_32 := 16#49093a17#;
   pragma Export (C, u00534, "drivers_to_cascade_filteringB");
   u00535 : constant Version_32 := 16#32beeca0#;
   pragma Export (C, u00535, "drivers_to_cascade_filteringS");
   u00536 : constant Version_32 := 16#c7c1fb69#;
   pragma Export (C, u00536, "cascade_homotopiesB");
   u00537 : constant Version_32 := 16#79947b16#;
   pragma Export (C, u00537, "cascade_homotopiesS");
   u00538 : constant Version_32 := 16#e57d7878#;
   pragma Export (C, u00538, "cascade_homotopies_ioB");
   u00539 : constant Version_32 := 16#eba0ac9b#;
   pragma Export (C, u00539, "cascade_homotopies_ioS");
   u00540 : constant Version_32 := 16#0c8e1826#;
   pragma Export (C, u00540, "cascade_homotopy_stepsB");
   u00541 : constant Version_32 := 16#f346acc9#;
   pragma Export (C, u00541, "cascade_homotopy_stepsS");
   u00542 : constant Version_32 := 16#73f57d19#;
   pragma Export (C, u00542, "drivers_to_intersect_varietiesB");
   u00543 : constant Version_32 := 16#28c60d17#;
   pragma Export (C, u00543, "drivers_to_intersect_varietiesS");
   u00544 : constant Version_32 := 16#5cb52658#;
   pragma Export (C, u00544, "drivers_to_witness_generateB");
   u00545 : constant Version_32 := 16#7128987e#;
   pragma Export (C, u00545, "drivers_to_witness_generateS");
   u00546 : constant Version_32 := 16#63cf7089#;
   pragma Export (C, u00546, "drivers_to_breakup_componentsB");
   u00547 : constant Version_32 := 16#f7aca53a#;
   pragma Export (C, u00547, "drivers_to_breakup_componentsS");
   u00548 : constant Version_32 := 16#363dcc5e#;
   pragma Export (C, u00548, "extrinsic_diagonal_continuationB");
   u00549 : constant Version_32 := 16#8b1f917a#;
   pragma Export (C, u00549, "extrinsic_diagonal_continuationS");
   u00550 : constant Version_32 := 16#43ba3f14#;
   pragma Export (C, u00550, "extrinsic_diagonal_homotopiesB");
   u00551 : constant Version_32 := 16#3bd2a750#;
   pragma Export (C, u00551, "extrinsic_diagonal_homotopiesS");
   u00552 : constant Version_32 := 16#e2266f67#;
   pragma Export (C, u00552, "dobldobl_diagonal_polynomialsB");
   u00553 : constant Version_32 := 16#6f223267#;
   pragma Export (C, u00553, "dobldobl_diagonal_polynomialsS");
   u00554 : constant Version_32 := 16#c7c999f9#;
   pragma Export (C, u00554, "dobldobl_diagonal_solutionsB");
   u00555 : constant Version_32 := 16#993c793e#;
   pragma Export (C, u00555, "dobldobl_diagonal_solutionsS");
   u00556 : constant Version_32 := 16#10f5a313#;
   pragma Export (C, u00556, "extrinsic_diagonal_homotopies_ioB");
   u00557 : constant Version_32 := 16#1ccc776f#;
   pragma Export (C, u00557, "extrinsic_diagonal_homotopies_ioS");
   u00558 : constant Version_32 := 16#80d7ed5d#;
   pragma Export (C, u00558, "extrinsic_diagonal_solversB");
   u00559 : constant Version_32 := 16#fcd6c243#;
   pragma Export (C, u00559, "extrinsic_diagonal_solversS");
   u00560 : constant Version_32 := 16#f064d1b6#;
   pragma Export (C, u00560, "homotopy_cascade_filterB");
   u00561 : constant Version_32 := 16#e5dbce56#;
   pragma Export (C, u00561, "homotopy_cascade_filterS");
   u00562 : constant Version_32 := 16#3a7dc150#;
   pragma Export (C, u00562, "filtered_pointsB");
   u00563 : constant Version_32 := 16#9a11016a#;
   pragma Export (C, u00563, "filtered_pointsS");
   u00564 : constant Version_32 := 16#00f3a1b5#;
   pragma Export (C, u00564, "intrinsic_diagonal_continuationB");
   u00565 : constant Version_32 := 16#615ecfe4#;
   pragma Export (C, u00565, "intrinsic_diagonal_continuationS");
   u00566 : constant Version_32 := 16#73120512#;
   pragma Export (C, u00566, "intrinsic_witness_sets_ioB");
   u00567 : constant Version_32 := 16#431fc3e6#;
   pragma Export (C, u00567, "intrinsic_witness_sets_ioS");
   u00568 : constant Version_32 := 16#34eb858a#;
   pragma Export (C, u00568, "dobldobl_intrinsic_solutionsB");
   u00569 : constant Version_32 := 16#5f73ed1c#;
   pragma Export (C, u00569, "dobldobl_intrinsic_solutionsS");
   u00570 : constant Version_32 := 16#3e21ddd2#;
   pragma Export (C, u00570, "dobldobl_point_coordinatesB");
   u00571 : constant Version_32 := 16#b8633262#;
   pragma Export (C, u00571, "dobldobl_point_coordinatesS");
   u00572 : constant Version_32 := 16#8e20f1bd#;
   pragma Export (C, u00572, "main_dictionary_solutionsB");
   u00573 : constant Version_32 := 16#800e12d4#;
   pragma Export (C, u00573, "main_dictionary_solutionsS");
   u00574 : constant Version_32 := 16#1194dbc8#;
   pragma Export (C, u00574, "main_eqn_by_eqn_solversB");
   u00575 : constant Version_32 := 16#cf86650c#;
   pragma Export (C, u00575, "main_eqn_by_eqn_solversS");
   u00576 : constant Version_32 := 16#6308bb01#;
   pragma Export (C, u00576, "equation_by_equation_solversB");
   u00577 : constant Version_32 := 16#5ebff10d#;
   pragma Export (C, u00577, "equation_by_equation_solversS");
   u00578 : constant Version_32 := 16#6e776b5e#;
   pragma Export (C, u00578, "flow_tablesB");
   u00579 : constant Version_32 := 16#14bae697#;
   pragma Export (C, u00579, "flow_tablesS");
   u00580 : constant Version_32 := 16#e7f17891#;
   pragma Export (C, u00580, "hypersurfaces_and_filtersB");
   u00581 : constant Version_32 := 16#190a0c13#;
   pragma Export (C, u00581, "hypersurfaces_and_filtersS");
   u00582 : constant Version_32 := 16#a3453b63#;
   pragma Export (C, u00582, "dobldobl_hypersurface_witsetsB");
   u00583 : constant Version_32 := 16#3a64e835#;
   pragma Export (C, u00583, "dobldobl_hypersurface_witsetsS");
   u00584 : constant Version_32 := 16#b8a582a5#;
   pragma Export (C, u00584, "main_factorizationB");
   u00585 : constant Version_32 := 16#e23b625a#;
   pragma Export (C, u00585, "main_factorizationS");
   u00586 : constant Version_32 := 16#38a8c2ba#;
   pragma Export (C, u00586, "driver_for_common_factorB");
   u00587 : constant Version_32 := 16#334b0d71#;
   pragma Export (C, u00587, "driver_for_common_factorS");
   u00588 : constant Version_32 := 16#ee81277a#;
   pragma Export (C, u00588, "drivers_to_breakup_solutionsB");
   u00589 : constant Version_32 := 16#5b01fd88#;
   pragma Export (C, u00589, "drivers_to_breakup_solutionsS");
   u00590 : constant Version_32 := 16#384b35ba#;
   pragma Export (C, u00590, "combinatorial_factorizationB");
   u00591 : constant Version_32 := 16#b0086ade#;
   pragma Export (C, u00591, "combinatorial_factorizationS");
   u00592 : constant Version_32 := 16#65e54fd4#;
   pragma Export (C, u00592, "drivers_to_factor_componentsB");
   u00593 : constant Version_32 := 16#d59b3a99#;
   pragma Export (C, u00593, "drivers_to_factor_componentsS");
   u00594 : constant Version_32 := 16#b0f4b4a4#;
   pragma Export (C, u00594, "drivers_to_component_creatorsB");
   u00595 : constant Version_32 := 16#dbf2d6e2#;
   pragma Export (C, u00595, "drivers_to_component_creatorsS");
   u00596 : constant Version_32 := 16#7715f909#;
   pragma Export (C, u00596, "homotopy_membership_testsB");
   u00597 : constant Version_32 := 16#0c7fb23b#;
   pragma Export (C, u00597, "homotopy_membership_testsS");
   u00598 : constant Version_32 := 16#e5c42402#;
   pragma Export (C, u00598, "homotopy_membership_targetB");
   u00599 : constant Version_32 := 16#1d3480f9#;
   pragma Export (C, u00599, "homotopy_membership_targetS");
   u00600 : constant Version_32 := 16#2aa8edc1#;
   pragma Export (C, u00600, "interpolation_filtersB");
   u00601 : constant Version_32 := 16#471915a0#;
   pragma Export (C, u00601, "interpolation_filtersS");
   u00602 : constant Version_32 := 16#bb6c292a#;
   pragma Export (C, u00602, "interpolation_point_listsB");
   u00603 : constant Version_32 := 16#61450813#;
   pragma Export (C, u00603, "interpolation_point_listsS");
   u00604 : constant Version_32 := 16#58248ec3#;
   pragma Export (C, u00604, "interpolation_pointsB");
   u00605 : constant Version_32 := 16#e4368e5d#;
   pragma Export (C, u00605, "interpolation_pointsS");
   u00606 : constant Version_32 := 16#f5b42b8d#;
   pragma Export (C, u00606, "irreducible_component_listsB");
   u00607 : constant Version_32 := 16#66c91b41#;
   pragma Export (C, u00607, "irreducible_component_listsS");
   u00608 : constant Version_32 := 16#869e5ff9#;
   pragma Export (C, u00608, "irreducible_component_creatorsB");
   u00609 : constant Version_32 := 16#ee6e1195#;
   pragma Export (C, u00609, "irreducible_component_creatorsS");
   u00610 : constant Version_32 := 16#426d635f#;
   pragma Export (C, u00610, "irreducible_component_lists_ioB");
   u00611 : constant Version_32 := 16#03cd3e47#;
   pragma Export (C, u00611, "irreducible_component_lists_ioS");
   u00612 : constant Version_32 := 16#eb3a9069#;
   pragma Export (C, u00612, "irreducible_componentsB");
   u00613 : constant Version_32 := 16#4a6bc41a#;
   pragma Export (C, u00613, "irreducible_componentsS");
   u00614 : constant Version_32 := 16#51ae6728#;
   pragma Export (C, u00614, "irreducible_components_ioB");
   u00615 : constant Version_32 := 16#3271ab06#;
   pragma Export (C, u00615, "irreducible_components_ioS");
   u00616 : constant Version_32 := 16#d956db28#;
   pragma Export (C, u00616, "interpolation_filters_ioB");
   u00617 : constant Version_32 := 16#1ac53b25#;
   pragma Export (C, u00617, "interpolation_filters_ioS");
   u00618 : constant Version_32 := 16#932314ae#;
   pragma Export (C, u00618, "main_homotopy_continuationB");
   u00619 : constant Version_32 := 16#f59eb674#;
   pragma Export (C, u00619, "main_homotopy_continuationS");
   u00620 : constant Version_32 := 16#9f57f2d5#;
   pragma Export (C, u00620, "dobldobl_complex_laur_stringsB");
   u00621 : constant Version_32 := 16#83f52fe9#;
   pragma Export (C, u00621, "dobldobl_complex_laur_stringsS");
   u00622 : constant Version_32 := 16#095960e9#;
   pragma Export (C, u00622, "dobldobl_complex_poly_stringsB");
   u00623 : constant Version_32 := 16#8286efd9#;
   pragma Export (C, u00623, "dobldobl_complex_poly_stringsS");
   u00624 : constant Version_32 := 16#3801d89f#;
   pragma Export (C, u00624, "dobldobl_complex_term_listsB");
   u00625 : constant Version_32 := 16#73c1c250#;
   pragma Export (C, u00625, "dobldobl_complex_term_listsS");
   u00626 : constant Version_32 := 16#5f4e81e2#;
   pragma Export (C, u00626, "dobldobl_complex_to_real_polyB");
   u00627 : constant Version_32 := 16#e3d319df#;
   pragma Export (C, u00627, "dobldobl_complex_to_real_polyS");
   u00628 : constant Version_32 := 16#3fd73a62#;
   pragma Export (C, u00628, "dobldobl_parameter_systemsB");
   u00629 : constant Version_32 := 16#509f024c#;
   pragma Export (C, u00629, "dobldobl_parameter_systemsS");
   u00630 : constant Version_32 := 16#91249e74#;
   pragma Export (C, u00630, "generic_lists_of_termsB");
   u00631 : constant Version_32 := 16#258732a6#;
   pragma Export (C, u00631, "generic_lists_of_termsS");
   u00632 : constant Version_32 := 16#88a40ce4#;
   pragma Export (C, u00632, "main_hypersurface_witsetsB");
   u00633 : constant Version_32 := 16#d7da7a88#;
   pragma Export (C, u00633, "main_hypersurface_witsetsS");
   u00634 : constant Version_32 := 16#792dd140#;
   pragma Export (C, u00634, "main_intersectionB");
   u00635 : constant Version_32 := 16#1de8cc47#;
   pragma Export (C, u00635, "main_intersectionS");
   u00636 : constant Version_32 := 16#ce9571f7#;
   pragma Export (C, u00636, "main_lifting_functionsB");
   u00637 : constant Version_32 := 16#a88b3c8d#;
   pragma Export (C, u00637, "main_lifting_functionsS");
   u00638 : constant Version_32 := 16#78206f5f#;
   pragma Export (C, u00638, "arrays_of_integer_vector_lists_ioB");
   u00639 : constant Version_32 := 16#cf60c880#;
   pragma Export (C, u00639, "arrays_of_integer_vector_lists_ioS");
   u00640 : constant Version_32 := 16#4cdef4d0#;
   pragma Export (C, u00640, "generic_arrays_of_vector_lists_ioB");
   u00641 : constant Version_32 := 16#353a78a5#;
   pragma Export (C, u00641, "generic_arrays_of_vector_lists_ioS");
   u00642 : constant Version_32 := 16#f24828a4#;
   pragma Export (C, u00642, "integer_lifting_functionsB");
   u00643 : constant Version_32 := 16#6911c5e0#;
   pragma Export (C, u00643, "integer_lifting_functionsS");
   u00644 : constant Version_32 := 16#c1aff00f#;
   pragma Export (C, u00644, "main_maple_solutionsB");
   u00645 : constant Version_32 := 16#c51c2f80#;
   pragma Export (C, u00645, "main_maple_solutionsS");
   u00646 : constant Version_32 := 16#62a441af#;
   pragma Export (C, u00646, "main_output_feedbackB");
   u00647 : constant Version_32 := 16#3c1ab703#;
   pragma Export (C, u00647, "main_output_feedbackS");
   u00648 : constant Version_32 := 16#32429c85#;
   pragma Export (C, u00648, "main_pade_trackersB");
   u00649 : constant Version_32 := 16#4a92c748#;
   pragma Export (C, u00649, "main_pade_trackersS");
   u00650 : constant Version_32 := 16#67edb4cf#;
   pragma Export (C, u00650, "interactive_pade_trackersB");
   u00651 : constant Version_32 := 16#bc2e629d#;
   pragma Export (C, u00651, "interactive_pade_trackersS");
   u00652 : constant Version_32 := 16#bff13e9d#;
   pragma Export (C, u00652, "dobldobl_seriespade_trackerB");
   u00653 : constant Version_32 := 16#e4b21974#;
   pragma Export (C, u00653, "dobldobl_seriespade_trackerS");
   u00654 : constant Version_32 := 16#b0fa2640#;
   pragma Export (C, u00654, "dobldobl_complex_hessiansB");
   u00655 : constant Version_32 := 16#b1575bab#;
   pragma Export (C, u00655, "dobldobl_complex_hessiansS");
   u00656 : constant Version_32 := 16#73f1bdf7#;
   pragma Export (C, u00656, "dobldobl_complex_series_vectorsB");
   u00657 : constant Version_32 := 16#a1b00b90#;
   pragma Export (C, u00657, "dobldobl_complex_series_vectorsS");
   u00658 : constant Version_32 := 16#76f04d06#;
   pragma Export (C, u00658, "dobldobl_complex_series_ringS");
   u00659 : constant Version_32 := 16#c7e62693#;
   pragma Export (C, u00659, "dobldobl_complex_seriesB");
   u00660 : constant Version_32 := 16#adc33a57#;
   pragma Export (C, u00660, "dobldobl_complex_seriesS");
   u00661 : constant Version_32 := 16#fbfec89f#;
   pragma Export (C, u00661, "dobldobl_complex_series_vecvecsB");
   u00662 : constant Version_32 := 16#44468f47#;
   pragma Export (C, u00662, "dobldobl_complex_series_vecvecsS");
   u00663 : constant Version_32 := 16#5388543b#;
   pragma Export (C, u00663, "dobldobl_cseries_jaco_matricesB");
   u00664 : constant Version_32 := 16#0b834391#;
   pragma Export (C, u00664, "dobldobl_cseries_jaco_matricesS");
   u00665 : constant Version_32 := 16#51378b78#;
   pragma Export (C, u00665, "dobldobl_complex_series_matricesB");
   u00666 : constant Version_32 := 16#f71200b6#;
   pragma Export (C, u00666, "dobldobl_complex_series_matricesS");
   u00667 : constant Version_32 := 16#04f3f910#;
   pragma Export (C, u00667, "dobldobl_cseries_poly_functionsB");
   u00668 : constant Version_32 := 16#fb014c64#;
   pragma Export (C, u00668, "dobldobl_cseries_poly_functionsS");
   u00669 : constant Version_32 := 16#5f04acac#;
   pragma Export (C, u00669, "dobldobl_cseries_poly_sysfunB");
   u00670 : constant Version_32 := 16#e1d7a5a6#;
   pragma Export (C, u00670, "dobldobl_cseries_poly_sysfunS");
   u00671 : constant Version_32 := 16#81cca503#;
   pragma Export (C, u00671, "dobldobl_cseries_poly_systemsB");
   u00672 : constant Version_32 := 16#67262227#;
   pragma Export (C, u00672, "dobldobl_cseries_poly_systemsS");
   u00673 : constant Version_32 := 16#09b49c12#;
   pragma Export (C, u00673, "dobldobl_cseries_polynomialsB");
   u00674 : constant Version_32 := 16#5a83e83b#;
   pragma Export (C, u00674, "dobldobl_cseries_polynomialsS");
   u00675 : constant Version_32 := 16#7d497c46#;
   pragma Export (C, u00675, "dobldobl_cseries_vector_functionsB");
   u00676 : constant Version_32 := 16#9b30003c#;
   pragma Export (C, u00676, "dobldobl_cseries_vector_functionsS");
   u00677 : constant Version_32 := 16#c7fe1b06#;
   pragma Export (C, u00677, "dobldobl_complex_series_functionsB");
   u00678 : constant Version_32 := 16#1fbd0cf5#;
   pragma Export (C, u00678, "dobldobl_complex_series_functionsS");
   u00679 : constant Version_32 := 16#0250b969#;
   pragma Export (C, u00679, "binomial_coefficientsB");
   u00680 : constant Version_32 := 16#304181ff#;
   pragma Export (C, u00680, "binomial_coefficientsS");
   u00681 : constant Version_32 := 16#c1f44e4a#;
   pragma Export (C, u00681, "dobldobl_pade_approximantsB");
   u00682 : constant Version_32 := 16#d999bfa3#;
   pragma Export (C, u00682, "dobldobl_pade_approximantsS");
   u00683 : constant Version_32 := 16#9c351173#;
   pragma Export (C, u00683, "dobldobl_pade_approximants_ioB");
   u00684 : constant Version_32 := 16#ac21fecd#;
   pragma Export (C, u00684, "dobldobl_pade_approximants_ioS");
   u00685 : constant Version_32 := 16#d00262c7#;
   pragma Export (C, u00685, "dobldobl_pade_trackersB");
   u00686 : constant Version_32 := 16#69cd17bd#;
   pragma Export (C, u00686, "dobldobl_pade_trackersS");
   u00687 : constant Version_32 := 16#36d717bf#;
   pragma Export (C, u00687, "dobldobl_rational_approximationsB");
   u00688 : constant Version_32 := 16#2fdcc185#;
   pragma Export (C, u00688, "dobldobl_rational_approximationsS");
   u00689 : constant Version_32 := 16#6b0ab46e#;
   pragma Export (C, u00689, "generic_dense_seriesB");
   u00690 : constant Version_32 := 16#6e85d5b5#;
   pragma Export (C, u00690, "generic_dense_seriesS");
   u00691 : constant Version_32 := 16#9d0606c5#;
   pragma Export (C, u00691, "generic_hessian_matricesB");
   u00692 : constant Version_32 := 16#64526397#;
   pragma Export (C, u00692, "generic_hessian_matricesS");
   u00693 : constant Version_32 := 16#90dbe14c#;
   pragma Export (C, u00693, "homotopy_coefficient_scalingB");
   u00694 : constant Version_32 := 16#79585f4a#;
   pragma Export (C, u00694, "homotopy_coefficient_scalingS");
   u00695 : constant Version_32 := 16#7e3841f8#;
   pragma Export (C, u00695, "dobldobl_complex_series_vectors_ioB");
   u00696 : constant Version_32 := 16#0344914c#;
   pragma Export (C, u00696, "dobldobl_complex_series_vectors_ioS");
   u00697 : constant Version_32 := 16#701c2f39#;
   pragma Export (C, u00697, "dobldobl_complex_series_ring_ioS");
   u00698 : constant Version_32 := 16#7552503e#;
   pragma Export (C, u00698, "dobldobl_complex_series_ioB");
   u00699 : constant Version_32 := 16#558d274f#;
   pragma Export (C, u00699, "dobldobl_complex_series_ioS");
   u00700 : constant Version_32 := 16#5b90f837#;
   pragma Export (C, u00700, "homotopy_continuation_parametersB");
   u00701 : constant Version_32 := 16#4cb4557e#;
   pragma Export (C, u00701, "homotopy_continuation_parametersS");
   u00702 : constant Version_32 := 16#b6f7e329#;
   pragma Export (C, u00702, "homotopy_continuation_parameters_ioB");
   u00703 : constant Version_32 := 16#53c6faf1#;
   pragma Export (C, u00703, "homotopy_continuation_parameters_ioS");
   u00704 : constant Version_32 := 16#29132d71#;
   pragma Export (C, u00704, "homotopy_mixed_residualsB");
   u00705 : constant Version_32 := 16#ee0445ad#;
   pragma Export (C, u00705, "homotopy_mixed_residualsS");
   u00706 : constant Version_32 := 16#ac29c37a#;
   pragma Export (C, u00706, "homotopy_newton_stepsB");
   u00707 : constant Version_32 := 16#c7d954ee#;
   pragma Export (C, u00707, "homotopy_newton_stepsS");
   u00708 : constant Version_32 := 16#f2e906cf#;
   pragma Export (C, u00708, "homotopy_pade_approximantsB");
   u00709 : constant Version_32 := 16#cb1a16b2#;
   pragma Export (C, u00709, "homotopy_pade_approximantsS");
   u00710 : constant Version_32 := 16#e21fe8eb#;
   pragma Export (C, u00710, "homotopy_series_readersB");
   u00711 : constant Version_32 := 16#24dbac6b#;
   pragma Export (C, u00711, "homotopy_series_readersS");
   u00712 : constant Version_32 := 16#98759ffa#;
   pragma Export (C, u00712, "artificial_parameter_homotopy_ioB");
   u00713 : constant Version_32 := 16#5f50a8b4#;
   pragma Export (C, u00713, "artificial_parameter_homotopy_ioS");
   u00714 : constant Version_32 := 16#4b40793c#;
   pragma Export (C, u00714, "decadobl_coefficient_homotopyB");
   u00715 : constant Version_32 := 16#e212bc1d#;
   pragma Export (C, u00715, "decadobl_coefficient_homotopyS");
   u00716 : constant Version_32 := 16#0d4c2dbb#;
   pragma Export (C, u00716, "decadobl_complex_jaco_matricesB");
   u00717 : constant Version_32 := 16#b89b8f59#;
   pragma Export (C, u00717, "decadobl_complex_jaco_matricesS");
   u00718 : constant Version_32 := 16#475d7e6e#;
   pragma Export (C, u00718, "decadobl_complex_matricesB");
   u00719 : constant Version_32 := 16#93c6049d#;
   pragma Export (C, u00719, "decadobl_complex_matricesS");
   u00720 : constant Version_32 := 16#0ac1c738#;
   pragma Export (C, u00720, "decadobl_complex_poly_functionsB");
   u00721 : constant Version_32 := 16#cdf1ea22#;
   pragma Export (C, u00721, "decadobl_complex_poly_functionsS");
   u00722 : constant Version_32 := 16#2a7e7b50#;
   pragma Export (C, u00722, "decadobl_complex_poly_sysfunB");
   u00723 : constant Version_32 := 16#1a61e5f8#;
   pragma Export (C, u00723, "decadobl_complex_poly_sysfunS");
   u00724 : constant Version_32 := 16#22819e34#;
   pragma Export (C, u00724, "decadobl_complex_poly_systemsB");
   u00725 : constant Version_32 := 16#c2c3d289#;
   pragma Export (C, u00725, "decadobl_complex_poly_systemsS");
   u00726 : constant Version_32 := 16#2e4d53eb#;
   pragma Export (C, u00726, "decadobl_complex_poly_systems_ioB");
   u00727 : constant Version_32 := 16#9cfe8b39#;
   pragma Export (C, u00727, "decadobl_complex_poly_systems_ioS");
   u00728 : constant Version_32 := 16#bf14393e#;
   pragma Export (C, u00728, "decadobl_complex_polynomials_ioB");
   u00729 : constant Version_32 := 16#ef7a4eb0#;
   pragma Export (C, u00729, "decadobl_complex_polynomials_ioS");
   u00730 : constant Version_32 := 16#bfaa3b12#;
   pragma Export (C, u00730, "deca_double_numbers_ioB");
   u00731 : constant Version_32 := 16#e6d34983#;
   pragma Export (C, u00731, "deca_double_numbers_ioS");
   u00732 : constant Version_32 := 16#8522b523#;
   pragma Export (C, u00732, "decadobl_complex_series_vectorsB");
   u00733 : constant Version_32 := 16#e864072c#;
   pragma Export (C, u00733, "decadobl_complex_series_vectorsS");
   u00734 : constant Version_32 := 16#7c160f9a#;
   pragma Export (C, u00734, "decadobl_complex_series_ringS");
   u00735 : constant Version_32 := 16#72076067#;
   pragma Export (C, u00735, "decadobl_complex_seriesB");
   u00736 : constant Version_32 := 16#bc70c207#;
   pragma Export (C, u00736, "decadobl_complex_seriesS");
   u00737 : constant Version_32 := 16#649420c5#;
   pragma Export (C, u00737, "decadobl_complex_solutionsB");
   u00738 : constant Version_32 := 16#8ba39f54#;
   pragma Export (C, u00738, "decadobl_complex_solutionsS");
   u00739 : constant Version_32 := 16#8eb7e894#;
   pragma Export (C, u00739, "decadobl_complex_numbers_cvB");
   u00740 : constant Version_32 := 16#a0124201#;
   pragma Export (C, u00740, "decadobl_complex_numbers_cvS");
   u00741 : constant Version_32 := 16#4d9bee00#;
   pragma Export (C, u00741, "decadobl_complex_vectorsB");
   u00742 : constant Version_32 := 16#d30efaad#;
   pragma Export (C, u00742, "decadobl_complex_vectorsS");
   u00743 : constant Version_32 := 16#fb973948#;
   pragma Export (C, u00743, "decadobl_complex_vectors_cvB");
   u00744 : constant Version_32 := 16#281de05d#;
   pragma Export (C, u00744, "decadobl_complex_vectors_cvS");
   u00745 : constant Version_32 := 16#e08fc24c#;
   pragma Export (C, u00745, "decadobl_complex_vecvecsB");
   u00746 : constant Version_32 := 16#2d8974a9#;
   pragma Export (C, u00746, "decadobl_complex_vecvecsS");
   u00747 : constant Version_32 := 16#4937907c#;
   pragma Export (C, u00747, "decadobl_cseries_poly_systemsB");
   u00748 : constant Version_32 := 16#fe5a7386#;
   pragma Export (C, u00748, "decadobl_cseries_poly_systemsS");
   u00749 : constant Version_32 := 16#e734fca4#;
   pragma Export (C, u00749, "decadobl_cseries_polynomialsB");
   u00750 : constant Version_32 := 16#0b048ce5#;
   pragma Export (C, u00750, "decadobl_cseries_polynomialsS");
   u00751 : constant Version_32 := 16#d85a692d#;
   pragma Export (C, u00751, "decadobl_homotopyB");
   u00752 : constant Version_32 := 16#03974ee1#;
   pragma Export (C, u00752, "decadobl_homotopyS");
   u00753 : constant Version_32 := 16#21209e17#;
   pragma Export (C, u00753, "decadobl_parameter_systemsB");
   u00754 : constant Version_32 := 16#224bc59b#;
   pragma Export (C, u00754, "decadobl_parameter_systemsS");
   u00755 : constant Version_32 := 16#b84d1132#;
   pragma Export (C, u00755, "decadobl_complex_solutions_ioB");
   u00756 : constant Version_32 := 16#6f0b14d0#;
   pragma Export (C, u00756, "decadobl_complex_solutions_ioS");
   u00757 : constant Version_32 := 16#358f4ce4#;
   pragma Export (C, u00757, "decadobl_complex_numbers_ioB");
   u00758 : constant Version_32 := 16#52976c2b#;
   pragma Export (C, u00758, "decadobl_complex_numbers_ioS");
   u00759 : constant Version_32 := 16#d5195428#;
   pragma Export (C, u00759, "decadobl_polynomial_convertorsB");
   u00760 : constant Version_32 := 16#2386511c#;
   pragma Export (C, u00760, "decadobl_polynomial_convertorsS");
   u00761 : constant Version_32 := 16#7fa154cb#;
   pragma Export (C, u00761, "deca_double_poly_systemsB");
   u00762 : constant Version_32 := 16#6c2e0c80#;
   pragma Export (C, u00762, "deca_double_poly_systemsS");
   u00763 : constant Version_32 := 16#0d6b75ee#;
   pragma Export (C, u00763, "deca_double_polynomialsB");
   u00764 : constant Version_32 := 16#afe63754#;
   pragma Export (C, u00764, "deca_double_polynomialsS");
   u00765 : constant Version_32 := 16#1fde60c2#;
   pragma Export (C, u00765, "decadobl_complex_laur_systemsB");
   u00766 : constant Version_32 := 16#bbbcc0a1#;
   pragma Export (C, u00766, "decadobl_complex_laur_systemsS");
   u00767 : constant Version_32 := 16#1f207e33#;
   pragma Export (C, u00767, "decadobl_complex_laurentialsB");
   u00768 : constant Version_32 := 16#8976c374#;
   pragma Export (C, u00768, "decadobl_complex_laurentialsS");
   u00769 : constant Version_32 := 16#36973b57#;
   pragma Export (C, u00769, "decadobl_random_numbersB");
   u00770 : constant Version_32 := 16#77a2b542#;
   pragma Export (C, u00770, "decadobl_random_numbersS");
   u00771 : constant Version_32 := 16#1a1dd705#;
   pragma Export (C, u00771, "deca_double_constantsS");
   u00772 : constant Version_32 := 16#6b310d00#;
   pragma Export (C, u00772, "decadobl_mathematical_functionsB");
   u00773 : constant Version_32 := 16#324b1080#;
   pragma Export (C, u00773, "decadobl_mathematical_functionsS");
   u00774 : constant Version_32 := 16#0bf49847#;
   pragma Export (C, u00774, "decadobl_system_and_solutions_ioB");
   u00775 : constant Version_32 := 16#751b8ead#;
   pragma Export (C, u00775, "decadobl_system_and_solutions_ioS");
   u00776 : constant Version_32 := 16#192f6f85#;
   pragma Export (C, u00776, "decadobl_complex_laur_systems_ioB");
   u00777 : constant Version_32 := 16#9ba1e56e#;
   pragma Export (C, u00777, "decadobl_complex_laur_systems_ioS");
   u00778 : constant Version_32 := 16#7a6f5243#;
   pragma Export (C, u00778, "decadobl_complex_laurentials_ioB");
   u00779 : constant Version_32 := 16#31f180ab#;
   pragma Export (C, u00779, "decadobl_complex_laurentials_ioS");
   u00780 : constant Version_32 := 16#4252c1c9#;
   pragma Export (C, u00780, "hexadobl_coefficient_homotopyB");
   u00781 : constant Version_32 := 16#c1254ef1#;
   pragma Export (C, u00781, "hexadobl_coefficient_homotopyS");
   u00782 : constant Version_32 := 16#66a81a1d#;
   pragma Export (C, u00782, "hexadobl_complex_jaco_matricesB");
   u00783 : constant Version_32 := 16#b458a12c#;
   pragma Export (C, u00783, "hexadobl_complex_jaco_matricesS");
   u00784 : constant Version_32 := 16#f8985ee3#;
   pragma Export (C, u00784, "hexadobl_complex_matricesB");
   u00785 : constant Version_32 := 16#fbb624f2#;
   pragma Export (C, u00785, "hexadobl_complex_matricesS");
   u00786 : constant Version_32 := 16#27cfaf9e#;
   pragma Export (C, u00786, "hexadobl_complex_poly_functionsB");
   u00787 : constant Version_32 := 16#1d97a11d#;
   pragma Export (C, u00787, "hexadobl_complex_poly_functionsS");
   u00788 : constant Version_32 := 16#05e1becc#;
   pragma Export (C, u00788, "hexadobl_complex_poly_sysfunB");
   u00789 : constant Version_32 := 16#c283dca6#;
   pragma Export (C, u00789, "hexadobl_complex_poly_sysfunS");
   u00790 : constant Version_32 := 16#7b1e606c#;
   pragma Export (C, u00790, "hexadobl_complex_poly_systemsB");
   u00791 : constant Version_32 := 16#8c2e10e7#;
   pragma Export (C, u00791, "hexadobl_complex_poly_systemsS");
   u00792 : constant Version_32 := 16#303b00ec#;
   pragma Export (C, u00792, "hexadobl_complex_poly_systems_ioB");
   u00793 : constant Version_32 := 16#a317705c#;
   pragma Export (C, u00793, "hexadobl_complex_poly_systems_ioS");
   u00794 : constant Version_32 := 16#9d4b91b0#;
   pragma Export (C, u00794, "hexadobl_complex_polynomials_ioB");
   u00795 : constant Version_32 := 16#1cb9fb69#;
   pragma Export (C, u00795, "hexadobl_complex_polynomials_ioS");
   u00796 : constant Version_32 := 16#60d581c1#;
   pragma Export (C, u00796, "hexa_double_numbers_ioB");
   u00797 : constant Version_32 := 16#4845dbdf#;
   pragma Export (C, u00797, "hexa_double_numbers_ioS");
   u00798 : constant Version_32 := 16#361ade3f#;
   pragma Export (C, u00798, "hexadobl_complex_series_vectorsB");
   u00799 : constant Version_32 := 16#229e6756#;
   pragma Export (C, u00799, "hexadobl_complex_series_vectorsS");
   u00800 : constant Version_32 := 16#922731d3#;
   pragma Export (C, u00800, "hexadobl_complex_series_ringS");
   u00801 : constant Version_32 := 16#e5f45548#;
   pragma Export (C, u00801, "hexadobl_complex_seriesB");
   u00802 : constant Version_32 := 16#cbdfe5a9#;
   pragma Export (C, u00802, "hexadobl_complex_seriesS");
   u00803 : constant Version_32 := 16#847288c7#;
   pragma Export (C, u00803, "hexadobl_complex_solutionsB");
   u00804 : constant Version_32 := 16#08cf3040#;
   pragma Export (C, u00804, "hexadobl_complex_solutionsS");
   u00805 : constant Version_32 := 16#5ba99fdc#;
   pragma Export (C, u00805, "hexadobl_complex_numbers_cvB");
   u00806 : constant Version_32 := 16#a9203749#;
   pragma Export (C, u00806, "hexadobl_complex_numbers_cvS");
   u00807 : constant Version_32 := 16#a781f1af#;
   pragma Export (C, u00807, "hexadobl_complex_vectorsB");
   u00808 : constant Version_32 := 16#04bbfa4f#;
   pragma Export (C, u00808, "hexadobl_complex_vectorsS");
   u00809 : constant Version_32 := 16#3e5e9c07#;
   pragma Export (C, u00809, "hexadobl_complex_vectors_cvB");
   u00810 : constant Version_32 := 16#54422f6c#;
   pragma Export (C, u00810, "hexadobl_complex_vectors_cvS");
   u00811 : constant Version_32 := 16#9e0b8be9#;
   pragma Export (C, u00811, "hexadobl_complex_vecvecsB");
   u00812 : constant Version_32 := 16#84b83dee#;
   pragma Export (C, u00812, "hexadobl_complex_vecvecsS");
   u00813 : constant Version_32 := 16#b9e81622#;
   pragma Export (C, u00813, "hexadobl_cseries_poly_systemsB");
   u00814 : constant Version_32 := 16#581c2be5#;
   pragma Export (C, u00814, "hexadobl_cseries_poly_systemsS");
   u00815 : constant Version_32 := 16#c86f29ff#;
   pragma Export (C, u00815, "hexadobl_cseries_polynomialsB");
   u00816 : constant Version_32 := 16#5d9d52d8#;
   pragma Export (C, u00816, "hexadobl_cseries_polynomialsS");
   u00817 : constant Version_32 := 16#333e7b94#;
   pragma Export (C, u00817, "hexadobl_homotopyB");
   u00818 : constant Version_32 := 16#7c297b0a#;
   pragma Export (C, u00818, "hexadobl_homotopyS");
   u00819 : constant Version_32 := 16#1105a646#;
   pragma Export (C, u00819, "hexadobl_parameter_systemsB");
   u00820 : constant Version_32 := 16#cbeaa87b#;
   pragma Export (C, u00820, "hexadobl_parameter_systemsS");
   u00821 : constant Version_32 := 16#9f9e0387#;
   pragma Export (C, u00821, "hexadobl_complex_solutions_ioB");
   u00822 : constant Version_32 := 16#e3be0633#;
   pragma Export (C, u00822, "hexadobl_complex_solutions_ioS");
   u00823 : constant Version_32 := 16#5e08783d#;
   pragma Export (C, u00823, "hexadobl_complex_numbers_ioB");
   u00824 : constant Version_32 := 16#0dddddc7#;
   pragma Export (C, u00824, "hexadobl_complex_numbers_ioS");
   u00825 : constant Version_32 := 16#3f2d4ff3#;
   pragma Export (C, u00825, "hexadobl_polynomial_convertorsB");
   u00826 : constant Version_32 := 16#59fe5355#;
   pragma Export (C, u00826, "hexadobl_polynomial_convertorsS");
   u00827 : constant Version_32 := 16#6743d6dc#;
   pragma Export (C, u00827, "hexa_double_poly_systemsB");
   u00828 : constant Version_32 := 16#e5ab5e51#;
   pragma Export (C, u00828, "hexa_double_poly_systemsS");
   u00829 : constant Version_32 := 16#98f3407f#;
   pragma Export (C, u00829, "hexa_double_polynomialsB");
   u00830 : constant Version_32 := 16#3e81e792#;
   pragma Export (C, u00830, "hexa_double_polynomialsS");
   u00831 : constant Version_32 := 16#1aaa3bb5#;
   pragma Export (C, u00831, "hexadobl_complex_laur_systemsB");
   u00832 : constant Version_32 := 16#a5bb588d#;
   pragma Export (C, u00832, "hexadobl_complex_laur_systemsS");
   u00833 : constant Version_32 := 16#39fca225#;
   pragma Export (C, u00833, "hexadobl_complex_laurentialsB");
   u00834 : constant Version_32 := 16#9205002f#;
   pragma Export (C, u00834, "hexadobl_complex_laurentialsS");
   u00835 : constant Version_32 := 16#caad24ae#;
   pragma Export (C, u00835, "hexadobl_random_numbersB");
   u00836 : constant Version_32 := 16#555fa1a8#;
   pragma Export (C, u00836, "hexadobl_random_numbersS");
   u00837 : constant Version_32 := 16#7d9285d4#;
   pragma Export (C, u00837, "hexa_double_constantsS");
   u00838 : constant Version_32 := 16#cdac9bf0#;
   pragma Export (C, u00838, "hexadobl_mathematical_functionsB");
   u00839 : constant Version_32 := 16#1386f05d#;
   pragma Export (C, u00839, "hexadobl_mathematical_functionsS");
   u00840 : constant Version_32 := 16#1de9cd2e#;
   pragma Export (C, u00840, "hexadobl_system_and_solutions_ioB");
   u00841 : constant Version_32 := 16#5be91ce5#;
   pragma Export (C, u00841, "hexadobl_system_and_solutions_ioS");
   u00842 : constant Version_32 := 16#371183ca#;
   pragma Export (C, u00842, "hexadobl_complex_laur_systems_ioB");
   u00843 : constant Version_32 := 16#d023ea2c#;
   pragma Export (C, u00843, "hexadobl_complex_laur_systems_ioS");
   u00844 : constant Version_32 := 16#b3a745df#;
   pragma Export (C, u00844, "hexadobl_complex_laurentials_ioB");
   u00845 : constant Version_32 := 16#c3952f0d#;
   pragma Export (C, u00845, "hexadobl_complex_laurentials_ioS");
   u00846 : constant Version_32 := 16#95e87ed4#;
   pragma Export (C, u00846, "homogenizationB");
   u00847 : constant Version_32 := 16#61786754#;
   pragma Export (C, u00847, "homogenizationS");
   u00848 : constant Version_32 := 16#57a96ab4#;
   pragma Export (C, u00848, "hyperplane_solution_scalingB");
   u00849 : constant Version_32 := 16#024e7a33#;
   pragma Export (C, u00849, "hyperplane_solution_scalingS");
   u00850 : constant Version_32 := 16#e6947403#;
   pragma Export (C, u00850, "jacobian_rabinowitsch_trickB");
   u00851 : constant Version_32 := 16#d0038723#;
   pragma Export (C, u00851, "jacobian_rabinowitsch_trickS");
   u00852 : constant Version_32 := 16#bae0443c#;
   pragma Export (C, u00852, "main_laurent_series_newtonB");
   u00853 : constant Version_32 := 16#07202636#;
   pragma Export (C, u00853, "main_laurent_series_newtonS");
   u00854 : constant Version_32 := 16#4091a716#;
   pragma Export (C, u00854, "double_linear_laurent_solversB");
   u00855 : constant Version_32 := 16#c37e70e6#;
   pragma Export (C, u00855, "double_linear_laurent_solversS");
   u00856 : constant Version_32 := 16#43d49036#;
   pragma Export (C, u00856, "double_laurent_seriesB");
   u00857 : constant Version_32 := 16#1dfbd671#;
   pragma Export (C, u00857, "double_laurent_seriesS");
   u00858 : constant Version_32 := 16#bb6b21a8#;
   pragma Export (C, u00858, "double_lseries_newton_stepsB");
   u00859 : constant Version_32 := 16#2b1931e8#;
   pragma Export (C, u00859, "double_lseries_newton_stepsS");
   u00860 : constant Version_32 := 16#a07508d1#;
   pragma Export (C, u00860, "double_lseries_polynomialsB");
   u00861 : constant Version_32 := 16#0f67396e#;
   pragma Export (C, u00861, "double_lseries_polynomialsS");
   u00862 : constant Version_32 := 16#3140a753#;
   pragma Export (C, u00862, "main_pieri_countB");
   u00863 : constant Version_32 := 16#12a2b908#;
   pragma Export (C, u00863, "main_pieri_countS");
   u00864 : constant Version_32 := 16#29044338#;
   pragma Export (C, u00864, "localization_posetsB");
   u00865 : constant Version_32 := 16#f2fd7dd6#;
   pragma Export (C, u00865, "localization_posetsS");
   u00866 : constant Version_32 := 16#5d62a841#;
   pragma Export (C, u00866, "bracketsB");
   u00867 : constant Version_32 := 16#b9483a3c#;
   pragma Export (C, u00867, "bracketsS");
   u00868 : constant Version_32 := 16#fc4d31e9#;
   pragma Export (C, u00868, "main_poly_continuationB");
   u00869 : constant Version_32 := 16#897cc40a#;
   pragma Export (C, u00869, "main_poly_continuationS");
   u00870 : constant Version_32 := 16#243d3e82#;
   pragma Export (C, u00870, "drivers_for_homotopy_creationB");
   u00871 : constant Version_32 := 16#4f891ff8#;
   pragma Export (C, u00871, "drivers_for_homotopy_creationS");
   u00872 : constant Version_32 := 16#a807ed54#;
   pragma Export (C, u00872, "drivers_for_path_directionsB");
   u00873 : constant Version_32 := 16#18efcb3f#;
   pragma Export (C, u00873, "drivers_for_path_directionsS");
   u00874 : constant Version_32 := 16#174a7258#;
   pragma Export (C, u00874, "main_reductionB");
   u00875 : constant Version_32 := 16#d87ba26f#;
   pragma Export (C, u00875, "main_reductionS");
   u00876 : constant Version_32 := 16#b7c69e74#;
   pragma Export (C, u00876, "main_root_countersB");
   u00877 : constant Version_32 := 16#efcc7531#;
   pragma Export (C, u00877, "main_root_countersS");
   u00878 : constant Version_32 := 16#0028f027#;
   pragma Export (C, u00878, "bye_bye_messageB");
   u00879 : constant Version_32 := 16#64fba5f2#;
   pragma Export (C, u00879, "bye_bye_messageS");
   u00880 : constant Version_32 := 16#f0e2ce37#;
   pragma Export (C, u00880, "driver_for_own_start_systemB");
   u00881 : constant Version_32 := 16#d0535175#;
   pragma Export (C, u00881, "driver_for_own_start_systemS");
   u00882 : constant Version_32 := 16#595f8584#;
   pragma Export (C, u00882, "driver_for_symmetric_set_structureB");
   u00883 : constant Version_32 := 16#25b3ac61#;
   pragma Export (C, u00883, "driver_for_symmetric_set_structureS");
   u00884 : constant Version_32 := 16#8189454a#;
   pragma Export (C, u00884, "degree_sets_tablesB");
   u00885 : constant Version_32 := 16#9ae99780#;
   pragma Export (C, u00885, "degree_sets_tablesS");
   u00886 : constant Version_32 := 16#6bd2b435#;
   pragma Export (C, u00886, "boolean_matricesB");
   u00887 : constant Version_32 := 16#aea58362#;
   pragma Export (C, u00887, "boolean_matricesS");
   u00888 : constant Version_32 := 16#ffd6fd4c#;
   pragma Export (C, u00888, "boolean_ringS");
   u00889 : constant Version_32 := 16#14d5a679#;
   pragma Export (C, u00889, "boolean_numbersB");
   u00890 : constant Version_32 := 16#464cf11b#;
   pragma Export (C, u00890, "boolean_numbersS");
   u00891 : constant Version_32 := 16#182f66ac#;
   pragma Export (C, u00891, "boolean_vectorsB");
   u00892 : constant Version_32 := 16#c2e2b709#;
   pragma Export (C, u00892, "boolean_vectorsS");
   u00893 : constant Version_32 := 16#327c3787#;
   pragma Export (C, u00893, "drivers_for_demics_algorithmB");
   u00894 : constant Version_32 := 16#3c7d5fff#;
   pragma Export (C, u00894, "drivers_for_demics_algorithmS");
   u00895 : constant Version_32 := 16#12951221#;
   pragma Export (C, u00895, "demics_output_cellsB");
   u00896 : constant Version_32 := 16#07f2a7b2#;
   pragma Export (C, u00896, "demics_output_cellsS");
   u00897 : constant Version_32 := 16#f82181f5#;
   pragma Export (C, u00897, "demics_translatedB");
   u00898 : constant Version_32 := 16#2565de05#;
   pragma Export (C, u00898, "demics_translatedS");
   u00899 : constant Version_32 := 16#510c846b#;
   pragma Export (C, u00899, "demics_input_dataB");
   u00900 : constant Version_32 := 16#41548f5e#;
   pragma Export (C, u00900, "demics_input_dataS");
   u00901 : constant Version_32 := 16#09c0e5f5#;
   pragma Export (C, u00901, "demics_mvcB");
   u00902 : constant Version_32 := 16#d83d40c2#;
   pragma Export (C, u00902, "demics_mvcS");
   u00903 : constant Version_32 := 16#9ea33d05#;
   pragma Export (C, u00903, "demics_ftestB");
   u00904 : constant Version_32 := 16#7a8e7bfa#;
   pragma Export (C, u00904, "demics_ftestS");
   u00905 : constant Version_32 := 16#c6c569df#;
   pragma Export (C, u00905, "demics_global_constantsS");
   u00906 : constant Version_32 := 16#8152cc7a#;
   pragma Export (C, u00906, "demics_itestB");
   u00907 : constant Version_32 := 16#be4cbfb9#;
   pragma Export (C, u00907, "demics_itestS");
   u00908 : constant Version_32 := 16#b1c2a011#;
   pragma Export (C, u00908, "demics_output_convertorsB");
   u00909 : constant Version_32 := 16#483c49e5#;
   pragma Export (C, u00909, "demics_output_convertorsS");
   u00910 : constant Version_32 := 16#283fc06d#;
   pragma Export (C, u00910, "demics_reltabB");
   u00911 : constant Version_32 := 16#be2eee0e#;
   pragma Export (C, u00911, "demics_reltabS");
   u00912 : constant Version_32 := 16#b46aa1d8#;
   pragma Export (C, u00912, "demics_simplexB");
   u00913 : constant Version_32 := 16#47fde6b2#;
   pragma Export (C, u00913, "demics_simplexS");
   u00914 : constant Version_32 := 16#cbf4f44b#;
   pragma Export (C, u00914, "demics_translated_setupB");
   u00915 : constant Version_32 := 16#e88a0fa3#;
   pragma Export (C, u00915, "demics_translated_setupS");
   u00916 : constant Version_32 := 16#297b0cbc#;
   pragma Export (C, u00916, "drivers_for_dynamic_liftingB");
   u00917 : constant Version_32 := 16#5ba5944e#;
   pragma Export (C, u00917, "drivers_for_dynamic_liftingS");
   u00918 : constant Version_32 := 16#a177d835#;
   pragma Export (C, u00918, "driver_for_minkowski_polynomialsB");
   u00919 : constant Version_32 := 16#1a55da45#;
   pragma Export (C, u00919, "driver_for_minkowski_polynomialsS");
   u00920 : constant Version_32 := 16#d1e5590a#;
   pragma Export (C, u00920, "drivers_for_implicit_liftingB");
   u00921 : constant Version_32 := 16#88b70651#;
   pragma Export (C, u00921, "drivers_for_implicit_liftingS");
   u00922 : constant Version_32 := 16#45ddf2cc#;
   pragma Export (C, u00922, "drivers_for_symmetric_liftingB");
   u00923 : constant Version_32 := 16#d2311a55#;
   pragma Export (C, u00923, "drivers_for_symmetric_liftingS");
   u00924 : constant Version_32 := 16#ee2bfb7c#;
   pragma Export (C, u00924, "drivers_for_symmetry_group_ioB");
   u00925 : constant Version_32 := 16#a7edf4a5#;
   pragma Export (C, u00925, "drivers_for_symmetry_group_ioS");
   u00926 : constant Version_32 := 16#cd489251#;
   pragma Export (C, u00926, "dynamic_mixed_subdivisionsB");
   u00927 : constant Version_32 := 16#68d565b5#;
   pragma Export (C, u00927, "dynamic_mixed_subdivisionsS");
   u00928 : constant Version_32 := 16#5b2e0e76#;
   pragma Export (C, u00928, "common_faces_of_polytopeB");
   u00929 : constant Version_32 := 16#e9f1bbbb#;
   pragma Export (C, u00929, "common_faces_of_polytopeS");
   u00930 : constant Version_32 := 16#1b44fed1#;
   pragma Export (C, u00930, "dynamic32_lifting_functionsB");
   u00931 : constant Version_32 := 16#c0a20806#;
   pragma Export (C, u00931, "dynamic32_lifting_functionsS");
   u00932 : constant Version_32 := 16#b0cc5265#;
   pragma Export (C, u00932, "dynamic_polyhedral_continuationB");
   u00933 : constant Version_32 := 16#0e0a06aa#;
   pragma Export (C, u00933, "dynamic_polyhedral_continuationS");
   u00934 : constant Version_32 := 16#6917dae4#;
   pragma Export (C, u00934, "enumerate_faces_of_polytopeB");
   u00935 : constant Version_32 := 16#331bd014#;
   pragma Export (C, u00935, "enumerate_faces_of_polytopeS");
   u00936 : constant Version_32 := 16#6e6208d9#;
   pragma Export (C, u00936, "equivariant_polynomial_systemsB");
   u00937 : constant Version_32 := 16#f587b922#;
   pragma Export (C, u00937, "equivariant_polynomial_systemsS");
   u00938 : constant Version_32 := 16#e94b505f#;
   pragma Export (C, u00938, "faces_of_symmetric_polytopesB");
   u00939 : constant Version_32 := 16#1aed9b34#;
   pragma Export (C, u00939, "faces_of_symmetric_polytopesS");
   u00940 : constant Version_32 := 16#cdcd20a7#;
   pragma Export (C, u00940, "generating_mixed_cellsB");
   u00941 : constant Version_32 := 16#df500e50#;
   pragma Export (C, u00941, "generating_mixed_cellsS");
   u00942 : constant Version_32 := 16#437aa60a#;
   pragma Export (C, u00942, "generic_positionB");
   u00943 : constant Version_32 := 16#e99f7dfe#;
   pragma Export (C, u00943, "generic_positionS");
   u00944 : constant Version_32 := 16#ad61e74b#;
   pragma Export (C, u00944, "global_dynamic32_triangulationB");
   u00945 : constant Version_32 := 16#71213c69#;
   pragma Export (C, u00945, "global_dynamic32_triangulationS");
   u00946 : constant Version_32 := 16#ad2b05ce#;
   pragma Export (C, u00946, "initial_mixed_cellB");
   u00947 : constant Version_32 := 16#f07553db#;
   pragma Export (C, u00947, "initial_mixed_cellS");
   u00948 : constant Version_32 := 16#686d5bfa#;
   pragma Export (C, u00948, "frequency_graphB");
   u00949 : constant Version_32 := 16#c03a7948#;
   pragma Export (C, u00949, "frequency_graphS");
   u00950 : constant Version_32 := 16#d7b0ea77#;
   pragma Export (C, u00950, "linear_symmetric_reductionB");
   u00951 : constant Version_32 := 16#d105094b#;
   pragma Export (C, u00951, "linear_symmetric_reductionS");
   u00952 : constant Version_32 := 16#71450a79#;
   pragma Export (C, u00952, "main_m_homogenizationB");
   u00953 : constant Version_32 := 16#50d6a683#;
   pragma Export (C, u00953, "main_m_homogenizationS");
   u00954 : constant Version_32 := 16#deef7810#;
   pragma Export (C, u00954, "interpolating_homotopies_driverB");
   u00955 : constant Version_32 := 16#e4474727#;
   pragma Export (C, u00955, "interpolating_homotopies_driverS");
   u00956 : constant Version_32 := 16#4ac207e1#;
   pragma Export (C, u00956, "interpolating_homotopiesB");
   u00957 : constant Version_32 := 16#16efa6ee#;
   pragma Export (C, u00957, "interpolating_homotopiesS");
   u00958 : constant Version_32 := 16#80030503#;
   pragma Export (C, u00958, "main_multi_homogenizationB");
   u00959 : constant Version_32 := 16#dbaba70c#;
   pragma Export (C, u00959, "main_multi_homogenizationS");
   u00960 : constant Version_32 := 16#9c6c1070#;
   pragma Export (C, u00960, "degree_structureB");
   u00961 : constant Version_32 := 16#ebdd2f7e#;
   pragma Export (C, u00961, "degree_structureS");
   u00962 : constant Version_32 := 16#588de907#;
   pragma Export (C, u00962, "generate_unionsB");
   u00963 : constant Version_32 := 16#8595c7dd#;
   pragma Export (C, u00963, "generate_unionsS");
   u00964 : constant Version_32 := 16#3464ba2d#;
   pragma Export (C, u00964, "main_samplersB");
   u00965 : constant Version_32 := 16#257b4f8c#;
   pragma Export (C, u00965, "main_samplersS");
   u00966 : constant Version_32 := 16#fec8ac10#;
   pragma Export (C, u00966, "dobldobl_intrinsic_continuationB");
   u00967 : constant Version_32 := 16#bc27be09#;
   pragma Export (C, u00967, "dobldobl_intrinsic_continuationS");
   u00968 : constant Version_32 := 16#06e5dcdf#;
   pragma Export (C, u00968, "dobldobl_intrinsic_newtonB");
   u00969 : constant Version_32 := 16#c225ebfc#;
   pragma Export (C, u00969, "dobldobl_intrinsic_newtonS");
   u00970 : constant Version_32 := 16#2794b9fe#;
   pragma Export (C, u00970, "dobldobl_intrinsic_trackersB");
   u00971 : constant Version_32 := 16#9ea9eb07#;
   pragma Export (C, u00971, "dobldobl_intrinsic_trackersS");
   u00972 : constant Version_32 := 16#55512aa9#;
   pragma Export (C, u00972, "dobldobl_moving_planesB");
   u00973 : constant Version_32 := 16#98e486eb#;
   pragma Export (C, u00973, "dobldobl_moving_planesS");
   u00974 : constant Version_32 := 16#e54266e4#;
   pragma Export (C, u00974, "dobldobl_rescaling_coordinatesB");
   u00975 : constant Version_32 := 16#16ecad27#;
   pragma Export (C, u00975, "dobldobl_rescaling_coordinatesS");
   u00976 : constant Version_32 := 16#2d04600b#;
   pragma Export (C, u00976, "main_scalingB");
   u00977 : constant Version_32 := 16#1df7807b#;
   pragma Export (C, u00977, "main_scalingS");
   u00978 : constant Version_32 := 16#0856fcfc#;
   pragma Export (C, u00978, "main_schubert_inductionB");
   u00979 : constant Version_32 := 16#441ca345#;
   pragma Export (C, u00979, "main_schubert_inductionS");
   u00980 : constant Version_32 := 16#ddd11ef9#;
   pragma Export (C, u00980, "bracket_monomialsB");
   u00981 : constant Version_32 := 16#404df805#;
   pragma Export (C, u00981, "bracket_monomialsS");
   u00982 : constant Version_32 := 16#39dd1bd3#;
   pragma Export (C, u00982, "bracket_monomials_ioB");
   u00983 : constant Version_32 := 16#faef0cfe#;
   pragma Export (C, u00983, "bracket_monomials_ioS");
   u00984 : constant Version_32 := 16#b1a46bdc#;
   pragma Export (C, u00984, "brackets_ioB");
   u00985 : constant Version_32 := 16#e601964d#;
   pragma Export (C, u00985, "brackets_ioS");
   u00986 : constant Version_32 := 16#6766534b#;
   pragma Export (C, u00986, "checker_boards_ioB");
   u00987 : constant Version_32 := 16#453a8af5#;
   pragma Export (C, u00987, "checker_boards_ioS");
   u00988 : constant Version_32 := 16#3654de5f#;
   pragma Export (C, u00988, "checker_boardsB");
   u00989 : constant Version_32 := 16#6527cec6#;
   pragma Export (C, u00989, "checker_boardsS");
   u00990 : constant Version_32 := 16#8b4ebc3f#;
   pragma Export (C, u00990, "checker_localization_patternsB");
   u00991 : constant Version_32 := 16#849a9939#;
   pragma Export (C, u00991, "checker_localization_patternsS");
   u00992 : constant Version_32 := 16#05210df8#;
   pragma Export (C, u00992, "checker_movesB");
   u00993 : constant Version_32 := 16#ce84b841#;
   pragma Export (C, u00993, "checker_movesS");
   u00994 : constant Version_32 := 16#365a49eb#;
   pragma Export (C, u00994, "checker_poset_deformationsB");
   u00995 : constant Version_32 := 16#7f5c92b6#;
   pragma Export (C, u00995, "checker_poset_deformationsS");
   u00996 : constant Version_32 := 16#32297134#;
   pragma Export (C, u00996, "checker_homotopiesB");
   u00997 : constant Version_32 := 16#3a7108d6#;
   pragma Export (C, u00997, "checker_homotopiesS");
   u00998 : constant Version_32 := 16#fdd19598#;
   pragma Export (C, u00998, "checker_posetsB");
   u00999 : constant Version_32 := 16#05a53d7d#;
   pragma Export (C, u00999, "checker_posetsS");
   u01000 : constant Version_32 := 16#eb1086e9#;
   pragma Export (C, u01000, "checker_posets_ioB");
   u01001 : constant Version_32 := 16#0bc1a378#;
   pragma Export (C, u01001, "checker_posets_ioS");
   u01002 : constant Version_32 := 16#9721eccc#;
   pragma Export (C, u01002, "dobldobl_complex_poly_matrices_ioB");
   u01003 : constant Version_32 := 16#01af06ab#;
   pragma Export (C, u01003, "dobldobl_complex_poly_matrices_ioS");
   u01004 : constant Version_32 := 16#929628fd#;
   pragma Export (C, u01004, "dobldobl_complex_poly_ring_ioS");
   u01005 : constant Version_32 := 16#a5f6f764#;
   pragma Export (C, u01005, "dobldobl_matrix_inversionB");
   u01006 : constant Version_32 := 16#7c2e187f#;
   pragma Export (C, u01006, "dobldobl_matrix_inversionS");
   u01007 : constant Version_32 := 16#55a6779a#;
   pragma Export (C, u01007, "dobldobl_solution_posetsB");
   u01008 : constant Version_32 := 16#e81d4daf#;
   pragma Export (C, u01008, "dobldobl_solution_posetsS");
   u01009 : constant Version_32 := 16#8df1b795#;
   pragma Export (C, u01009, "double_double_linear_solversB");
   u01010 : constant Version_32 := 16#eaf75a13#;
   pragma Export (C, u01010, "double_double_linear_solversS");
   u01011 : constant Version_32 := 16#48af9d5f#;
   pragma Export (C, u01011, "double_double_ring__ffieldS");
   u01012 : constant Version_32 := 16#4e345094#;
   pragma Export (C, u01012, "generic_floating_linear_solversB");
   u01013 : constant Version_32 := 16#0cead201#;
   pragma Export (C, u01013, "generic_floating_linear_solversS");
   u01014 : constant Version_32 := 16#8ea96cc3#;
   pragma Export (C, u01014, "intersection_posetsB");
   u01015 : constant Version_32 := 16#ae619f3a#;
   pragma Export (C, u01015, "intersection_posetsS");
   u01016 : constant Version_32 := 16#e427811a#;
   pragma Export (C, u01016, "intersection_posets_ioB");
   u01017 : constant Version_32 := 16#d5ca1957#;
   pragma Export (C, u01017, "intersection_posets_ioS");
   u01018 : constant Version_32 := 16#eb2f46fb#;
   pragma Export (C, u01018, "main_pieri_homotopiesB");
   u01019 : constant Version_32 := 16#5bf04a42#;
   pragma Export (C, u01019, "main_pieri_homotopiesS");
   u01020 : constant Version_32 := 16#61b54501#;
   pragma Export (C, u01020, "deformation_posetsB");
   u01021 : constant Version_32 := 16#a0831748#;
   pragma Export (C, u01021, "deformation_posetsS");
   u01022 : constant Version_32 := 16#216af16e#;
   pragma Export (C, u01022, "curves_into_grassmannianB");
   u01023 : constant Version_32 := 16#0edbaac1#;
   pragma Export (C, u01023, "curves_into_grassmannianS");
   u01024 : constant Version_32 := 16#c902eebc#;
   pragma Export (C, u01024, "curves_into_grassmannian_ioB");
   u01025 : constant Version_32 := 16#866891d5#;
   pragma Export (C, u01025, "curves_into_grassmannian_ioS");
   u01026 : constant Version_32 := 16#d7acbe15#;
   pragma Export (C, u01026, "determinantal_systemsB");
   u01027 : constant Version_32 := 16#0a6b8707#;
   pragma Export (C, u01027, "determinantal_systemsS");
   u01028 : constant Version_32 := 16#e32584b7#;
   pragma Export (C, u01028, "evaluated_minorsB");
   u01029 : constant Version_32 := 16#c5abe649#;
   pragma Export (C, u01029, "evaluated_minorsS");
   u01030 : constant Version_32 := 16#14bad5e8#;
   pragma Export (C, u01030, "localization_posets_ioB");
   u01031 : constant Version_32 := 16#b373ab74#;
   pragma Export (C, u01031, "localization_posets_ioS");
   u01032 : constant Version_32 := 16#f43ea47a#;
   pragma Export (C, u01032, "main_quantum_pieriB");
   u01033 : constant Version_32 := 16#438a67c4#;
   pragma Export (C, u01033, "main_quantum_pieriS");
   u01034 : constant Version_32 := 16#a69b1441#;
   pragma Export (C, u01034, "main_sagbi_homotopiesB");
   u01035 : constant Version_32 := 16#4f0ec90d#;
   pragma Export (C, u01035, "main_sagbi_homotopiesS");
   u01036 : constant Version_32 := 16#4149012c#;
   pragma Export (C, u01036, "bracket_expansionsB");
   u01037 : constant Version_32 := 16#6cc8d469#;
   pragma Export (C, u01037, "bracket_expansionsS");
   u01038 : constant Version_32 := 16#d8411744#;
   pragma Export (C, u01038, "main_set_structuresB");
   u01039 : constant Version_32 := 16#b5a411d0#;
   pragma Export (C, u01039, "main_set_structuresS");
   u01040 : constant Version_32 := 16#c60aa851#;
   pragma Export (C, u01040, "main_solution_filtersB");
   u01041 : constant Version_32 := 16#972762df#;
   pragma Export (C, u01041, "main_solution_filtersS");
   u01042 : constant Version_32 := 16#01442faa#;
   pragma Export (C, u01042, "main_trackersB");
   u01043 : constant Version_32 := 16#f8e1f22c#;
   pragma Export (C, u01043, "main_trackersS");
   u01044 : constant Version_32 := 16#9d23a5ee#;
   pragma Export (C, u01044, "drivers_to_track_dobldobl_pathsB");
   u01045 : constant Version_32 := 16#f3769447#;
   pragma Export (C, u01045, "drivers_to_track_dobldobl_pathsS");
   u01046 : constant Version_32 := 16#eccf53de#;
   pragma Export (C, u01046, "dobldobl_linear_product_systemB");
   u01047 : constant Version_32 := 16#6599d8ef#;
   pragma Export (C, u01047, "dobldobl_linear_product_systemS");
   u01048 : constant Version_32 := 16#954bb2c9#;
   pragma Export (C, u01048, "dobldobl_complex_row_reductionB");
   u01049 : constant Version_32 := 16#20e3f4ea#;
   pragma Export (C, u01049, "dobldobl_complex_row_reductionS");
   u01050 : constant Version_32 := 16#c9217830#;
   pragma Export (C, u01050, "drivers_to_track_quaddobl_pathsB");
   u01051 : constant Version_32 := 16#1beddb97#;
   pragma Export (C, u01051, "drivers_to_track_quaddobl_pathsS");
   u01052 : constant Version_32 := 16#cd66e0db#;
   pragma Export (C, u01052, "drivers_to_track_standard_pathsB");
   u01053 : constant Version_32 := 16#6f9de734#;
   pragma Export (C, u01053, "drivers_to_track_standard_pathsS");
   u01054 : constant Version_32 := 16#a930dfe6#;
   pragma Export (C, u01054, "jumpstart_diagonal_homotopiesB");
   u01055 : constant Version_32 := 16#4d0692a7#;
   pragma Export (C, u01055, "jumpstart_diagonal_homotopiesS");
   u01056 : constant Version_32 := 16#2d458d0a#;
   pragma Export (C, u01056, "jumpstart_polyhedral_homotopiesB");
   u01057 : constant Version_32 := 16#019be152#;
   pragma Export (C, u01057, "jumpstart_polyhedral_homotopiesS");
   u01058 : constant Version_32 := 16#39e941ba#;
   pragma Export (C, u01058, "lexicographic_root_enumerationB");
   u01059 : constant Version_32 := 16#7fae2b23#;
   pragma Export (C, u01059, "lexicographic_root_enumerationS");
   u01060 : constant Version_32 := 16#713d672d#;
   pragma Export (C, u01060, "main_verificationB");
   u01061 : constant Version_32 := 16#12a217e1#;
   pragma Export (C, u01061, "main_verificationS");
   u01062 : constant Version_32 := 16#e866e97d#;
   pragma Export (C, u01062, "dobldobl_multiplicity_structureB");
   u01063 : constant Version_32 := 16#c98d9f78#;
   pragma Export (C, u01063, "dobldobl_multiplicity_structureS");
   u01064 : constant Version_32 := 16#6d1fbbd5#;
   pragma Export (C, u01064, "dobldobl_nullity_matricesB");
   u01065 : constant Version_32 := 16#751d8244#;
   pragma Export (C, u01065, "dobldobl_nullity_matricesS");
   u01066 : constant Version_32 := 16#a93a5fe0#;
   pragma Export (C, u01066, "dobldobl_nullity_polynomialsB");
   u01067 : constant Version_32 := 16#9d820229#;
   pragma Export (C, u01067, "dobldobl_nullity_polynomialsS");
   u01068 : constant Version_32 := 16#dbcade1e#;
   pragma Export (C, u01068, "driver_for_winding_numbersB");
   u01069 : constant Version_32 := 16#43c1ea41#;
   pragma Export (C, u01069, "driver_for_winding_numbersS");
   u01070 : constant Version_32 := 16#02836ea1#;
   pragma Export (C, u01070, "drivers_for_condition_tablesB");
   u01071 : constant Version_32 := 16#5579bd38#;
   pragma Export (C, u01071, "drivers_for_condition_tablesS");
   u01072 : constant Version_32 := 16#ee61de2f#;
   pragma Export (C, u01072, "drivers_for_failed_pathsB");
   u01073 : constant Version_32 := 16#6cd30166#;
   pragma Export (C, u01073, "drivers_for_failed_pathsS");
   u01074 : constant Version_32 := 16#73936973#;
   pragma Export (C, u01074, "dobldobl_tracked_solutions_ioB");
   u01075 : constant Version_32 := 16#ec912e63#;
   pragma Export (C, u01075, "dobldobl_tracked_solutions_ioS");
   u01076 : constant Version_32 := 16#89c45d5a#;
   pragma Export (C, u01076, "drivers_for_orbits_of_solutionsB");
   u01077 : constant Version_32 := 16#66dcf904#;
   pragma Export (C, u01077, "drivers_for_orbits_of_solutionsS");
   u01078 : constant Version_32 := 16#bef275f0#;
   pragma Export (C, u01078, "drivers_to_dd_qd_root_refinersB");
   u01079 : constant Version_32 := 16#e6386fb3#;
   pragma Export (C, u01079, "drivers_to_dd_qd_root_refinersS");
   u01080 : constant Version_32 := 16#b4065943#;
   pragma Export (C, u01080, "drivers_to_deflate_singularitiesB");
   u01081 : constant Version_32 := 16#f4344f47#;
   pragma Export (C, u01081, "drivers_to_deflate_singularitiesS");
   u01082 : constant Version_32 := 16#50ca2467#;
   pragma Export (C, u01082, "main_vertex_pointsB");
   u01083 : constant Version_32 := 16#4e77d725#;
   pragma Export (C, u01083, "main_vertex_pointsS");
   u01084 : constant Version_32 := 16#3293caa4#;
   pragma Export (C, u01084, "make_input_planesB");
   u01085 : constant Version_32 := 16#abe67abf#;
   pragma Export (C, u01085, "make_input_planesS");
   u01086 : constant Version_32 := 16#057aa1b4#;
   pragma Export (C, u01086, "complex_osculating_planesB");
   u01087 : constant Version_32 := 16#5cbd6a7a#;
   pragma Export (C, u01087, "complex_osculating_planesS");
   u01088 : constant Version_32 := 16#88abad2b#;
   pragma Export (C, u01088, "make_sample_gridsB");
   u01089 : constant Version_32 := 16#b08da1ad#;
   pragma Export (C, u01089, "make_sample_gridsS");
   u01090 : constant Version_32 := 16#b976693b#;
   pragma Export (C, u01090, "matrix_homotopiesB");
   u01091 : constant Version_32 := 16#94c745e6#;
   pragma Export (C, u01091, "matrix_homotopiesS");
   u01092 : constant Version_32 := 16#909ae67a#;
   pragma Export (C, u01092, "matrix_homotopies_ioB");
   u01093 : constant Version_32 := 16#d0d3da61#;
   pragma Export (C, u01093, "matrix_homotopies_ioS");
   u01094 : constant Version_32 := 16#b5e7cdd7#;
   pragma Export (C, u01094, "matrix_indeterminatesB");
   u01095 : constant Version_32 := 16#dd76dcf0#;
   pragma Export (C, u01095, "matrix_indeterminatesS");
   u01096 : constant Version_32 := 16#fe51b4cf#;
   pragma Export (C, u01096, "minkowski_polynomialsB");
   u01097 : constant Version_32 := 16#158ec46d#;
   pragma Export (C, u01097, "minkowski_polynomialsS");
   u01098 : constant Version_32 := 16#4275eca0#;
   pragma Export (C, u01098, "mixed_homotopy_continuationB");
   u01099 : constant Version_32 := 16#f95c9ea6#;
   pragma Export (C, u01099, "mixed_homotopy_continuationS");
   u01100 : constant Version_32 := 16#5c7d689b#;
   pragma Export (C, u01100, "arrays_of_lists_utilitiesB");
   u01101 : constant Version_32 := 16#31e3b052#;
   pragma Export (C, u01101, "arrays_of_lists_utilitiesS");
   u01102 : constant Version_32 := 16#df02bf1e#;
   pragma Export (C, u01102, "mixed_volume_calculatorB");
   u01103 : constant Version_32 := 16#0d878fa4#;
   pragma Export (C, u01103, "mixed_volume_calculatorS");
   u01104 : constant Version_32 := 16#3f0a5f7b#;
   pragma Export (C, u01104, "mixed_volume_computationB");
   u01105 : constant Version_32 := 16#6514ee73#;
   pragma Export (C, u01105, "mixed_volume_computationS");
   u01106 : constant Version_32 := 16#df8de31a#;
   pragma Export (C, u01106, "mixedvol_algorithmB");
   u01107 : constant Version_32 := 16#db750b05#;
   pragma Export (C, u01107, "mixedvol_algorithmS");
   u01108 : constant Version_32 := 16#bdc237b7#;
   pragma Export (C, u01108, "mixed_volumeB");
   u01109 : constant Version_32 := 16#d3da3cd1#;
   pragma Export (C, u01109, "mixed_volumeS");
   u01110 : constant Version_32 := 16#292d6220#;
   pragma Export (C, u01110, "form_lpB");
   u01111 : constant Version_32 := 16#464f8645#;
   pragma Export (C, u01111, "form_lpS");
   u01112 : constant Version_32 := 16#5d73d2e9#;
   pragma Export (C, u01112, "index_tree_lpB");
   u01113 : constant Version_32 := 16#908f4056#;
   pragma Export (C, u01113, "index_tree_lpS");
   u01114 : constant Version_32 := 16#83adf5a5#;
   pragma Export (C, u01114, "integer_ioB");
   u01115 : constant Version_32 := 16#a21f3d3d#;
   pragma Export (C, u01115, "integer_ioS");
   u01116 : constant Version_32 := 16#0e4b1158#;
   pragma Export (C, u01116, "monodromy_actions_breakupB");
   u01117 : constant Version_32 := 16#6d3cbf1f#;
   pragma Export (C, u01117, "monodromy_actions_breakupS");
   u01118 : constant Version_32 := 16#80f1a221#;
   pragma Export (C, u01118, "monodromy_component_breakupB");
   u01119 : constant Version_32 := 16#382821bd#;
   pragma Export (C, u01119, "monodromy_component_breakupS");
   u01120 : constant Version_32 := 16#4b155b48#;
   pragma Export (C, u01120, "dobldobl_sample_gridsB");
   u01121 : constant Version_32 := 16#1d04b4f3#;
   pragma Export (C, u01121, "dobldobl_sample_gridsS");
   u01122 : constant Version_32 := 16#5f4d0017#;
   pragma Export (C, u01122, "monodromy_group_actionsB");
   u01123 : constant Version_32 := 16#119fb741#;
   pragma Export (C, u01123, "monodromy_group_actionsS");
   u01124 : constant Version_32 := 16#c8c51254#;
   pragma Export (C, u01124, "monodromy_group_actions_ioB");
   u01125 : constant Version_32 := 16#35d3b701#;
   pragma Export (C, u01125, "monodromy_group_actions_ioS");
   u01126 : constant Version_32 := 16#9f21481a#;
   pragma Export (C, u01126, "monodromy_partitionsB");
   u01127 : constant Version_32 := 16#985b47f2#;
   pragma Export (C, u01127, "monodromy_partitionsS");
   u01128 : constant Version_32 := 16#b433a75c#;
   pragma Export (C, u01128, "monomial_hashingB");
   u01129 : constant Version_32 := 16#4a404a69#;
   pragma Export (C, u01129, "monomial_hashingS");
   u01130 : constant Version_32 := 16#3792e674#;
   pragma Export (C, u01130, "moving_flag_continuationB");
   u01131 : constant Version_32 := 16#7a88f86e#;
   pragma Export (C, u01131, "moving_flag_continuationS");
   u01132 : constant Version_32 := 16#bb4e99cd#;
   pragma Export (C, u01132, "moving_flag_homotopiesB");
   u01133 : constant Version_32 := 16#7f12b107#;
   pragma Export (C, u01133, "moving_flag_homotopiesS");
   u01134 : constant Version_32 := 16#b54cc2e4#;
   pragma Export (C, u01134, "multi_homogeneous_start_systemsB");
   u01135 : constant Version_32 := 16#4b560d7f#;
   pragma Export (C, u01135, "multi_homogeneous_start_systemsS");
   u01136 : constant Version_32 := 16#0c520e67#;
   pragma Export (C, u01136, "multi_projective_transformationsB");
   u01137 : constant Version_32 := 16#f77915fb#;
   pragma Export (C, u01137, "multi_projective_transformationsS");
   u01138 : constant Version_32 := 16#4e2d6c56#;
   pragma Export (C, u01138, "multitasked_dd_qd_refinersB");
   u01139 : constant Version_32 := 16#9924c826#;
   pragma Export (C, u01139, "multitasked_dd_qd_refinersS");
   u01140 : constant Version_32 := 16#5bc8b2fd#;
   pragma Export (C, u01140, "dobldobl_solutions_queueB");
   u01141 : constant Version_32 := 16#6c7b0540#;
   pragma Export (C, u01141, "dobldobl_solutions_queueS");
   u01142 : constant Version_32 := 16#da6c1f5a#;
   pragma Export (C, u01142, "multitasked_path_convolutionsB");
   u01143 : constant Version_32 := 16#7325afe2#;
   pragma Export (C, u01143, "multitasked_path_convolutionsS");
   u01144 : constant Version_32 := 16#0f2b3395#;
   pragma Export (C, u01144, "corrector_convolutionsB");
   u01145 : constant Version_32 := 16#4b230884#;
   pragma Export (C, u01145, "corrector_convolutionsS");
   u01146 : constant Version_32 := 16#cbe7f4b4#;
   pragma Export (C, u01146, "dobldobl_predictor_convolutionsB");
   u01147 : constant Version_32 := 16#ba9e96d7#;
   pragma Export (C, u01147, "dobldobl_predictor_convolutionsS");
   u01148 : constant Version_32 := 16#6adb9008#;
   pragma Export (C, u01148, "convergence_radius_estimatesB");
   u01149 : constant Version_32 := 16#c131fad6#;
   pragma Export (C, u01149, "convergence_radius_estimatesS");
   u01150 : constant Version_32 := 16#00205476#;
   pragma Export (C, u01150, "decadobl_complex_numbers_polarB");
   u01151 : constant Version_32 := 16#bd335813#;
   pragma Export (C, u01151, "decadobl_complex_numbers_polarS");
   u01152 : constant Version_32 := 16#b64b10bf#;
   pragma Export (C, u01152, "dobldobl_newton_convolution_stepsB");
   u01153 : constant Version_32 := 16#0dd13dc7#;
   pragma Export (C, u01153, "dobldobl_newton_convolution_stepsS");
   u01154 : constant Version_32 := 16#d2b29007#;
   pragma Export (C, u01154, "dobldobl_newton_convolutionsB");
   u01155 : constant Version_32 := 16#d641e0c9#;
   pragma Export (C, u01155, "dobldobl_newton_convolutionsS");
   u01156 : constant Version_32 := 16#0e8cbf5a#;
   pragma Export (C, u01156, "dobldobl_series_matrix_solversB");
   u01157 : constant Version_32 := 16#32d8a9c3#;
   pragma Export (C, u01157, "dobldobl_series_matrix_solversS");
   u01158 : constant Version_32 := 16#06217ca3#;
   pragma Export (C, u01158, "dobldobl_complex_matrix_seriesB");
   u01159 : constant Version_32 := 16#8235fc53#;
   pragma Export (C, u01159, "dobldobl_complex_matrix_seriesS");
   u01160 : constant Version_32 := 16#2f77e51e#;
   pragma Export (C, u01160, "dobldobl_complex_vector_seriesB");
   u01161 : constant Version_32 := 16#5a11a87e#;
   pragma Export (C, u01161, "dobldobl_complex_vector_seriesS");
   u01162 : constant Version_32 := 16#133d421a#;
   pragma Export (C, u01162, "dobldobl_echelon_formsB");
   u01163 : constant Version_32 := 16#9479d269#;
   pragma Export (C, u01163, "dobldobl_echelon_formsS");
   u01164 : constant Version_32 := 16#ab83c936#;
   pragma Export (C, u01164, "dobldobl_interpolating_cseriesB");
   u01165 : constant Version_32 := 16#49923800#;
   pragma Export (C, u01165, "dobldobl_interpolating_cseriesS");
   u01166 : constant Version_32 := 16#a1bd69cf#;
   pragma Export (C, u01166, "dobldobl_speelpenning_convolutionsB");
   u01167 : constant Version_32 := 16#2bfaa0a4#;
   pragma Export (C, u01167, "dobldobl_speelpenning_convolutionsS");
   u01168 : constant Version_32 := 16#6a41e606#;
   pragma Export (C, u01168, "generic_speelpenning_convolutionsB");
   u01169 : constant Version_32 := 16#81c92442#;
   pragma Export (C, u01169, "generic_speelpenning_convolutionsS");
   u01170 : constant Version_32 := 16#91975c35#;
   pragma Export (C, u01170, "exponent_indicesB");
   u01171 : constant Version_32 := 16#f191f6df#;
   pragma Export (C, u01171, "exponent_indicesS");
   u01172 : constant Version_32 := 16#b790503e#;
   pragma Export (C, u01172, "hessian_convolution_circuitsB");
   u01173 : constant Version_32 := 16#496021ef#;
   pragma Export (C, u01173, "hessian_convolution_circuitsS");
   u01174 : constant Version_32 := 16#3f4acab7#;
   pragma Export (C, u01174, "hexadobl_complex_numbers_polarB");
   u01175 : constant Version_32 := 16#70a730f1#;
   pragma Export (C, u01175, "hexadobl_complex_numbers_polarS");
   u01176 : constant Version_32 := 16#6e6cb6bc#;
   pragma Export (C, u01176, "jacobian_convolution_circuitsB");
   u01177 : constant Version_32 := 16#228a5c9b#;
   pragma Export (C, u01177, "jacobian_convolution_circuitsS");
   u01178 : constant Version_32 := 16#84dd5197#;
   pragma Export (C, u01178, "multitaskingB");
   u01179 : constant Version_32 := 16#0a4a7e75#;
   pragma Export (C, u01179, "multitaskingS");
   u01180 : constant Version_32 := 16#75fa730e#;
   pragma Export (C, u01180, "multitasking_continuationB");
   u01181 : constant Version_32 := 16#da989511#;
   pragma Export (C, u01181, "multitasking_continuationS");
   u01182 : constant Version_32 := 16#e51993d5#;
   pragma Export (C, u01182, "multitasking_membership_testsB");
   u01183 : constant Version_32 := 16#ce286714#;
   pragma Export (C, u01183, "multitasking_membership_testsS");
   u01184 : constant Version_32 := 16#7bc2db60#;
   pragma Export (C, u01184, "multitasking_polyhedral_trackersB");
   u01185 : constant Version_32 := 16#41525f3e#;
   pragma Export (C, u01185, "multitasking_polyhedral_trackersS");
   u01186 : constant Version_32 := 16#427caad9#;
   pragma Export (C, u01186, "mixed_cells_queueB");
   u01187 : constant Version_32 := 16#d365f9f2#;
   pragma Export (C, u01187, "mixed_cells_queueS");
   u01188 : constant Version_32 := 16#15af5df4#;
   pragma Export (C, u01188, "multitasking_root_refinersB");
   u01189 : constant Version_32 := 16#7c2f9cef#;
   pragma Export (C, u01189, "multitasking_root_refinersS");
   u01190 : constant Version_32 := 16#d498f483#;
   pragma Export (C, u01190, "multitasking_volume_computationB");
   u01191 : constant Version_32 := 16#d9bf43d7#;
   pragma Export (C, u01191, "multitasking_volume_computationS");
   u01192 : constant Version_32 := 16#6361a288#;
   pragma Export (C, u01192, "multivariate_factorizationB");
   u01193 : constant Version_32 := 16#c540b212#;
   pragma Export (C, u01193, "multivariate_factorizationS");
   u01194 : constant Version_32 := 16#5078620c#;
   pragma Export (C, u01194, "certify_factor_with_traceB");
   u01195 : constant Version_32 := 16#73880d53#;
   pragma Export (C, u01195, "certify_factor_with_traceS");
   u01196 : constant Version_32 := 16#981b3ae5#;
   pragma Export (C, u01196, "factored_witness_vectorsB");
   u01197 : constant Version_32 := 16#ea3c13a9#;
   pragma Export (C, u01197, "factored_witness_vectorsS");
   u01198 : constant Version_32 := 16#088adf39#;
   pragma Export (C, u01198, "monodromy_polynomial_breakupB");
   u01199 : constant Version_32 := 16#2fc1df71#;
   pragma Export (C, u01199, "monodromy_polynomial_breakupS");
   u01200 : constant Version_32 := 16#c0d4e74b#;
   pragma Export (C, u01200, "dobldobl_complex_veclistsB");
   u01201 : constant Version_32 := 16#f8ccf629#;
   pragma Export (C, u01201, "dobldobl_complex_veclistsS");
   u01202 : constant Version_32 := 16#77ded293#;
   pragma Export (C, u01202, "multprec_breakup_componentsB");
   u01203 : constant Version_32 := 16#890dccb1#;
   pragma Export (C, u01203, "multprec_breakup_componentsS");
   u01204 : constant Version_32 := 16#01a7d958#;
   pragma Export (C, u01204, "multprec_central_projectionsB");
   u01205 : constant Version_32 := 16#e6d35972#;
   pragma Export (C, u01205, "multprec_central_projectionsS");
   u01206 : constant Version_32 := 16#7c53bba8#;
   pragma Export (C, u01206, "multprec_complex_laur_stringsB");
   u01207 : constant Version_32 := 16#df5d204b#;
   pragma Export (C, u01207, "multprec_complex_laur_stringsS");
   u01208 : constant Version_32 := 16#a570232d#;
   pragma Export (C, u01208, "multprec_complex_laur_systemsB");
   u01209 : constant Version_32 := 16#e065e0b7#;
   pragma Export (C, u01209, "multprec_complex_laur_systemsS");
   u01210 : constant Version_32 := 16#c3ddea77#;
   pragma Export (C, u01210, "multprec_complex_laur_systems_ioB");
   u01211 : constant Version_32 := 16#fd6b2d0c#;
   pragma Export (C, u01211, "multprec_complex_laur_systems_ioS");
   u01212 : constant Version_32 := 16#dedfb940#;
   pragma Export (C, u01212, "multprec_complex_laurentialsB");
   u01213 : constant Version_32 := 16#6801a08d#;
   pragma Export (C, u01213, "multprec_complex_laurentialsS");
   u01214 : constant Version_32 := 16#68e0d0cf#;
   pragma Export (C, u01214, "multprec_complex_laurentials_ioB");
   u01215 : constant Version_32 := 16#1f3e88db#;
   pragma Export (C, u01215, "multprec_complex_laurentials_ioS");
   u01216 : constant Version_32 := 16#ed92d39d#;
   pragma Export (C, u01216, "multprec_complex_matricesB");
   u01217 : constant Version_32 := 16#6f461691#;
   pragma Export (C, u01217, "multprec_complex_matricesS");
   u01218 : constant Version_32 := 16#e8405338#;
   pragma Export (C, u01218, "multprec_complex_norms_equalsB");
   u01219 : constant Version_32 := 16#bbe9f9c5#;
   pragma Export (C, u01219, "multprec_complex_norms_equalsS");
   u01220 : constant Version_32 := 16#6077e5ee#;
   pragma Export (C, u01220, "multprec_complex_number_toolsB");
   u01221 : constant Version_32 := 16#71686316#;
   pragma Export (C, u01221, "multprec_complex_number_toolsS");
   u01222 : constant Version_32 := 16#ff042e10#;
   pragma Export (C, u01222, "multprec_complex_numbersB");
   u01223 : constant Version_32 := 16#14ccb20f#;
   pragma Export (C, u01223, "multprec_complex_numbersS");
   u01224 : constant Version_32 := 16#496f3f43#;
   pragma Export (C, u01224, "multprec_complex_numbers_ioB");
   u01225 : constant Version_32 := 16#3c298a1f#;
   pragma Export (C, u01225, "multprec_complex_numbers_ioS");
   u01226 : constant Version_32 := 16#be2675a6#;
   pragma Export (C, u01226, "multprec_complex_poly_functionsB");
   u01227 : constant Version_32 := 16#78eb6549#;
   pragma Export (C, u01227, "multprec_complex_poly_functionsS");
   u01228 : constant Version_32 := 16#b44ec394#;
   pragma Export (C, u01228, "multprec_complex_poly_stringsB");
   u01229 : constant Version_32 := 16#0de3a172#;
   pragma Export (C, u01229, "multprec_complex_poly_stringsS");
   u01230 : constant Version_32 := 16#95e15cd1#;
   pragma Export (C, u01230, "multprec_complex_poly_sysfunB");
   u01231 : constant Version_32 := 16#99dfe1c2#;
   pragma Export (C, u01231, "multprec_complex_poly_sysfunS");
   u01232 : constant Version_32 := 16#ff1af8f0#;
   pragma Export (C, u01232, "multprec_complex_poly_systemsB");
   u01233 : constant Version_32 := 16#686292cd#;
   pragma Export (C, u01233, "multprec_complex_poly_systemsS");
   u01234 : constant Version_32 := 16#1c2876ea#;
   pragma Export (C, u01234, "multprec_complex_poly_systems_ioB");
   u01235 : constant Version_32 := 16#918d8429#;
   pragma Export (C, u01235, "multprec_complex_poly_systems_ioS");
   u01236 : constant Version_32 := 16#147a774b#;
   pragma Export (C, u01236, "multprec_complex_polynomialsB");
   u01237 : constant Version_32 := 16#2b110522#;
   pragma Export (C, u01237, "multprec_complex_polynomialsS");
   u01238 : constant Version_32 := 16#262b4b95#;
   pragma Export (C, u01238, "multprec_complex_polynomials_ioB");
   u01239 : constant Version_32 := 16#31958125#;
   pragma Export (C, u01239, "multprec_complex_polynomials_ioS");
   u01240 : constant Version_32 := 16#224e43c5#;
   pragma Export (C, u01240, "multprec_complex_ringS");
   u01241 : constant Version_32 := 16#92bdb1d7#;
   pragma Export (C, u01241, "multprec_complex_solutionsB");
   u01242 : constant Version_32 := 16#15b56dd0#;
   pragma Export (C, u01242, "multprec_complex_solutionsS");
   u01243 : constant Version_32 := 16#83c2622a#;
   pragma Export (C, u01243, "multprec_complex_solutions_ioB");
   u01244 : constant Version_32 := 16#09db4973#;
   pragma Export (C, u01244, "multprec_complex_solutions_ioS");
   u01245 : constant Version_32 := 16#a1a96a7e#;
   pragma Export (C, u01245, "multprec_complex_term_listsB");
   u01246 : constant Version_32 := 16#5a945c6d#;
   pragma Export (C, u01246, "multprec_complex_term_listsS");
   u01247 : constant Version_32 := 16#4ff326b2#;
   pragma Export (C, u01247, "multprec_complex_vector_toolsB");
   u01248 : constant Version_32 := 16#79581c0f#;
   pragma Export (C, u01248, "multprec_complex_vector_toolsS");
   u01249 : constant Version_32 := 16#3b5cf575#;
   pragma Export (C, u01249, "multprec_complex_vectorsB");
   u01250 : constant Version_32 := 16#85414552#;
   pragma Export (C, u01250, "multprec_complex_vectorsS");
   u01251 : constant Version_32 := 16#5ea44993#;
   pragma Export (C, u01251, "multprec_complex_vectors_ioB");
   u01252 : constant Version_32 := 16#34009e21#;
   pragma Export (C, u01252, "multprec_complex_vectors_ioS");
   u01253 : constant Version_32 := 16#6d93a135#;
   pragma Export (C, u01253, "multprec_complex_ring_ioS");
   u01254 : constant Version_32 := 16#b42f0858#;
   pragma Export (C, u01254, "multprec_complex_vecvecsB");
   u01255 : constant Version_32 := 16#2f660142#;
   pragma Export (C, u01255, "multprec_complex_vecvecsS");
   u01256 : constant Version_32 := 16#3134e014#;
   pragma Export (C, u01256, "multprec_decadobl_convertorsB");
   u01257 : constant Version_32 := 16#905968b4#;
   pragma Export (C, u01257, "multprec_decadobl_convertorsS");
   u01258 : constant Version_32 := 16#82511f18#;
   pragma Export (C, u01258, "multprec_deflate_singularitiesB");
   u01259 : constant Version_32 := 16#e85c7108#;
   pragma Export (C, u01259, "multprec_deflate_singularitiesS");
   u01260 : constant Version_32 := 16#a61c1b69#;
   pragma Export (C, u01260, "multprec_complex_jaco_matricesB");
   u01261 : constant Version_32 := 16#3aba1042#;
   pragma Export (C, u01261, "multprec_complex_jaco_matricesS");
   u01262 : constant Version_32 := 16#f5166964#;
   pragma Export (C, u01262, "multprec_complex_qr_least_squaresB");
   u01263 : constant Version_32 := 16#30aafab3#;
   pragma Export (C, u01263, "multprec_complex_qr_least_squaresS");
   u01264 : constant Version_32 := 16#081f1e0d#;
   pragma Export (C, u01264, "multprec_deflation_methodsB");
   u01265 : constant Version_32 := 16#e74fc72f#;
   pragma Export (C, u01265, "multprec_deflation_methodsS");
   u01266 : constant Version_32 := 16#7849f51e#;
   pragma Export (C, u01266, "multprec_complex_newton_stepsB");
   u01267 : constant Version_32 := 16#c8d4e933#;
   pragma Export (C, u01267, "multprec_complex_newton_stepsS");
   u01268 : constant Version_32 := 16#a6fe2f09#;
   pragma Export (C, u01268, "multprec_complex_singular_valuesB");
   u01269 : constant Version_32 := 16#0bdc02bb#;
   pragma Export (C, u01269, "multprec_complex_singular_valuesS");
   u01270 : constant Version_32 := 16#bc151ed8#;
   pragma Export (C, u01270, "multprec_complex_vecmatsB");
   u01271 : constant Version_32 := 16#c3637b00#;
   pragma Export (C, u01271, "multprec_complex_vecmatsS");
   u01272 : constant Version_32 := 16#862dd0ea#;
   pragma Export (C, u01272, "multprec_deflation_treesB");
   u01273 : constant Version_32 := 16#3d9cd426#;
   pragma Export (C, u01273, "multprec_deflation_treesS");
   u01274 : constant Version_32 := 16#512d3806#;
   pragma Export (C, u01274, "multprec_deflation_trees_ioB");
   u01275 : constant Version_32 := 16#07b53b9d#;
   pragma Export (C, u01275, "multprec_deflation_trees_ioS");
   u01276 : constant Version_32 := 16#137a7329#;
   pragma Export (C, u01276, "multprec_divided_differencesB");
   u01277 : constant Version_32 := 16#9a74f6a4#;
   pragma Export (C, u01277, "multprec_divided_differencesS");
   u01278 : constant Version_32 := 16#867988f9#;
   pragma Export (C, u01278, "multprec_dobldobl_convertorsB");
   u01279 : constant Version_32 := 16#560f495e#;
   pragma Export (C, u01279, "multprec_dobldobl_convertorsS");
   u01280 : constant Version_32 := 16#f04c98a5#;
   pragma Export (C, u01280, "multprec_durand_kernerB");
   u01281 : constant Version_32 := 16#5b8c605e#;
   pragma Export (C, u01281, "multprec_durand_kernerS");
   u01282 : constant Version_32 := 16#656876ba#;
   pragma Export (C, u01282, "multprec_embed_polynomialsB");
   u01283 : constant Version_32 := 16#a6762fff#;
   pragma Export (C, u01283, "multprec_embed_polynomialsS");
   u01284 : constant Version_32 := 16#d36b0089#;
   pragma Export (C, u01284, "multprec_evaluate_deflationB");
   u01285 : constant Version_32 := 16#fce76493#;
   pragma Export (C, u01285, "multprec_evaluate_deflationS");
   u01286 : constant Version_32 := 16#89714bfc#;
   pragma Export (C, u01286, "multprec_deflation_matricesB");
   u01287 : constant Version_32 := 16#5b3345fb#;
   pragma Export (C, u01287, "multprec_deflation_matricesS");
   u01288 : constant Version_32 := 16#ded4737d#;
   pragma Export (C, u01288, "multprec_evaluate_deflation_ioB");
   u01289 : constant Version_32 := 16#b7d8048b#;
   pragma Export (C, u01289, "multprec_evaluate_deflation_ioS");
   u01290 : constant Version_32 := 16#a160f7e8#;
   pragma Export (C, u01290, "multprec_floating_constantsB");
   u01291 : constant Version_32 := 16#8a616be8#;
   pragma Export (C, u01291, "multprec_floating_constantsS");
   u01292 : constant Version_32 := 16#120c027b#;
   pragma Export (C, u01292, "multprec_floating_matricesB");
   u01293 : constant Version_32 := 16#62fccec2#;
   pragma Export (C, u01293, "multprec_floating_matricesS");
   u01294 : constant Version_32 := 16#83368ee6#;
   pragma Export (C, u01294, "multprec_floating_numbersB");
   u01295 : constant Version_32 := 16#ccc0891a#;
   pragma Export (C, u01295, "multprec_floating_numbersS");
   u01296 : constant Version_32 := 16#c42ed68d#;
   pragma Export (C, u01296, "multprec_floating_numbers_ioB");
   u01297 : constant Version_32 := 16#c5786e4b#;
   pragma Export (C, u01297, "multprec_floating_numbers_ioS");
   u01298 : constant Version_32 := 16#d205da56#;
   pragma Export (C, u01298, "multprec_floating_ringS");
   u01299 : constant Version_32 := 16#36b44f3a#;
   pragma Export (C, u01299, "multprec_floating_ring__ffieldS");
   u01300 : constant Version_32 := 16#9fbd00e9#;
   pragma Export (C, u01300, "multprec_floating_vectorsB");
   u01301 : constant Version_32 := 16#77654ce7#;
   pragma Export (C, u01301, "multprec_floating_vectorsS");
   u01302 : constant Version_32 := 16#466e0657#;
   pragma Export (C, u01302, "multprec_hexadobl_convertorsB");
   u01303 : constant Version_32 := 16#3f683807#;
   pragma Export (C, u01303, "multprec_hexadobl_convertorsS");
   u01304 : constant Version_32 := 16#cfe84f0e#;
   pragma Export (C, u01304, "multprec_homotopyB");
   u01305 : constant Version_32 := 16#524d8b4d#;
   pragma Export (C, u01305, "multprec_homotopyS");
   u01306 : constant Version_32 := 16#b1aa112d#;
   pragma Export (C, u01306, "multprec_incfix_continuationB");
   u01307 : constant Version_32 := 16#9cd15c39#;
   pragma Export (C, u01307, "multprec_incfix_continuationS");
   u01308 : constant Version_32 := 16#7cfa0b13#;
   pragma Export (C, u01308, "multprec_continuation_dataB");
   u01309 : constant Version_32 := 16#683e31df#;
   pragma Export (C, u01309, "multprec_continuation_dataS");
   u01310 : constant Version_32 := 16#d022cd74#;
   pragma Export (C, u01310, "multprec_integer_linear_solversB");
   u01311 : constant Version_32 := 16#bdd30554#;
   pragma Export (C, u01311, "multprec_integer_linear_solversS");
   u01312 : constant Version_32 := 16#e33b6ba7#;
   pragma Export (C, u01312, "multprec_common_divisorsB");
   u01313 : constant Version_32 := 16#c01f7ea4#;
   pragma Export (C, u01313, "multprec_common_divisorsS");
   u01314 : constant Version_32 := 16#8272df49#;
   pragma Export (C, u01314, "multprec_integer_matricesB");
   u01315 : constant Version_32 := 16#7e6f72cb#;
   pragma Export (C, u01315, "multprec_integer_matricesS");
   u01316 : constant Version_32 := 16#0db0ba38#;
   pragma Export (C, u01316, "multprec_integer_matrices_ioB");
   u01317 : constant Version_32 := 16#303dbf77#;
   pragma Export (C, u01317, "multprec_integer_matrices_ioS");
   u01318 : constant Version_32 := 16#f469faf6#;
   pragma Export (C, u01318, "multprec_integer_numbersB");
   u01319 : constant Version_32 := 16#ea235684#;
   pragma Export (C, u01319, "multprec_integer_numbersS");
   u01320 : constant Version_32 := 16#4da9e087#;
   pragma Export (C, u01320, "multprec_integer_numbers_ioB");
   u01321 : constant Version_32 := 16#031ae550#;
   pragma Export (C, u01321, "multprec_integer_numbers_ioS");
   u01322 : constant Version_32 := 16#0fb48f59#;
   pragma Export (C, u01322, "multprec_integer_ringS");
   u01323 : constant Version_32 := 16#5299e0d0#;
   pragma Export (C, u01323, "multprec_integer_ring_ioS");
   u01324 : constant Version_32 := 16#a7a453c3#;
   pragma Export (C, u01324, "multprec_integer_vectorsB");
   u01325 : constant Version_32 := 16#fb882ddc#;
   pragma Export (C, u01325, "multprec_integer_vectorsS");
   u01326 : constant Version_32 := 16#306c038c#;
   pragma Export (C, u01326, "multprec_irreducible_decompB");
   u01327 : constant Version_32 := 16#9d295b47#;
   pragma Export (C, u01327, "multprec_irreducible_decompS");
   u01328 : constant Version_32 := 16#725be7ac#;
   pragma Export (C, u01328, "multprec_irreducible_decomp_ioB");
   u01329 : constant Version_32 := 16#9491ed49#;
   pragma Export (C, u01329, "multprec_irreducible_decomp_ioS");
   u01330 : constant Version_32 := 16#d6ea41b6#;
   pragma Export (C, u01330, "multprec_complex_vecvecs_ioB");
   u01331 : constant Version_32 := 16#13a4e7d2#;
   pragma Export (C, u01331, "multprec_complex_vecvecs_ioS");
   u01332 : constant Version_32 := 16#c282b284#;
   pragma Export (C, u01332, "multprec_jacobian_treesB");
   u01333 : constant Version_32 := 16#d52d2c59#;
   pragma Export (C, u01333, "multprec_jacobian_treesS");
   u01334 : constant Version_32 := 16#514b7844#;
   pragma Export (C, u01334, "multprec_linear_projectionsB");
   u01335 : constant Version_32 := 16#68646f63#;
   pragma Export (C, u01335, "multprec_linear_projectionsS");
   u01336 : constant Version_32 := 16#3a7ebd1a#;
   pragma Export (C, u01336, "multprec_maple_solutions_ioB");
   u01337 : constant Version_32 := 16#c61920cf#;
   pragma Export (C, u01337, "multprec_maple_solutions_ioS");
   u01338 : constant Version_32 := 16#833b6042#;
   pragma Export (C, u01338, "lists_of_symbolsB");
   u01339 : constant Version_32 := 16#92e121c3#;
   pragma Export (C, u01339, "lists_of_symbolsS");
   u01340 : constant Version_32 := 16#2ced37e2#;
   pragma Export (C, u01340, "multprec_mathematical_functionsB");
   u01341 : constant Version_32 := 16#72631715#;
   pragma Export (C, u01341, "multprec_mathematical_functionsS");
   u01342 : constant Version_32 := 16#21de20d4#;
   pragma Export (C, u01342, "multprec_membership_testsB");
   u01343 : constant Version_32 := 16#5bfd0100#;
   pragma Export (C, u01343, "multprec_membership_testsS");
   u01344 : constant Version_32 := 16#cb8b30df#;
   pragma Export (C, u01344, "multprec_natural_coefficientsB");
   u01345 : constant Version_32 := 16#d8887488#;
   pragma Export (C, u01345, "multprec_natural_coefficientsS");
   u01346 : constant Version_32 := 16#a709c8e0#;
   pragma Export (C, u01346, "multprec_natural_numbersB");
   u01347 : constant Version_32 := 16#a50c182b#;
   pragma Export (C, u01347, "multprec_natural_numbersS");
   u01348 : constant Version_32 := 16#d011e388#;
   pragma Export (C, u01348, "multprec_natural_numbers_ioB");
   u01349 : constant Version_32 := 16#9c7c737d#;
   pragma Export (C, u01349, "multprec_natural_numbers_ioS");
   u01350 : constant Version_32 := 16#94997bf1#;
   pragma Export (C, u01350, "multprec_numerical_rankB");
   u01351 : constant Version_32 := 16#0d6bc6fc#;
   pragma Export (C, u01351, "multprec_numerical_rankS");
   u01352 : constant Version_32 := 16#13788527#;
   pragma Export (C, u01352, "multprec_parse_numbersB");
   u01353 : constant Version_32 := 16#690e2470#;
   pragma Export (C, u01353, "multprec_parse_numbersS");
   u01354 : constant Version_32 := 16#8f56d32c#;
   pragma Export (C, u01354, "multprec_path_trackersB");
   u01355 : constant Version_32 := 16#16b8efe0#;
   pragma Export (C, u01355, "multprec_path_trackersS");
   u01356 : constant Version_32 := 16#f7aaf960#;
   pragma Export (C, u01356, "multprec_correctorsB");
   u01357 : constant Version_32 := 16#eeccc805#;
   pragma Export (C, u01357, "multprec_correctorsS");
   u01358 : constant Version_32 := 16#9c49d375#;
   pragma Export (C, u01358, "multprec_complex_linear_solversB");
   u01359 : constant Version_32 := 16#549029d2#;
   pragma Export (C, u01359, "multprec_complex_linear_solversS");
   u01360 : constant Version_32 := 16#4a1d3bfc#;
   pragma Export (C, u01360, "multprec_data_on_pathB");
   u01361 : constant Version_32 := 16#a5899317#;
   pragma Export (C, u01361, "multprec_data_on_pathS");
   u01362 : constant Version_32 := 16#a63450f3#;
   pragma Export (C, u01362, "multprec_dispatch_predictorsB");
   u01363 : constant Version_32 := 16#917b9ed4#;
   pragma Export (C, u01363, "multprec_dispatch_predictorsS");
   u01364 : constant Version_32 := 16#72ce816e#;
   pragma Export (C, u01364, "multprec_floating_vectors_ioB");
   u01365 : constant Version_32 := 16#f3d4844b#;
   pragma Export (C, u01365, "multprec_floating_vectors_ioS");
   u01366 : constant Version_32 := 16#2bd6fbf9#;
   pragma Export (C, u01366, "multprec_floating_ring_ioS");
   u01367 : constant Version_32 := 16#4a3cb42f#;
   pragma Export (C, u01367, "multprec_floating_vecvecsB");
   u01368 : constant Version_32 := 16#2351b480#;
   pragma Export (C, u01368, "multprec_floating_vecvecsS");
   u01369 : constant Version_32 := 16#9f8227cc#;
   pragma Export (C, u01369, "multprec_polynomial_interpolatorsB");
   u01370 : constant Version_32 := 16#ac3b84bc#;
   pragma Export (C, u01370, "multprec_polynomial_interpolatorsS");
   u01371 : constant Version_32 := 16#92fa2811#;
   pragma Export (C, u01371, "multprec_predictorsB");
   u01372 : constant Version_32 := 16#755a71d8#;
   pragma Export (C, u01372, "multprec_predictorsS");
   u01373 : constant Version_32 := 16#744d2cb1#;
   pragma Export (C, u01373, "multprec_extrapolatorsB");
   u01374 : constant Version_32 := 16#00a7d0ae#;
   pragma Export (C, u01374, "multprec_extrapolatorsS");
   u01375 : constant Version_32 := 16#402553bf#;
   pragma Export (C, u01375, "multprec_quaddobl_convertorsB");
   u01376 : constant Version_32 := 16#e0e5cb7d#;
   pragma Export (C, u01376, "multprec_quaddobl_convertorsS");
   u01377 : constant Version_32 := 16#acfa372a#;
   pragma Export (C, u01377, "multprec_random_matricesB");
   u01378 : constant Version_32 := 16#7864727f#;
   pragma Export (C, u01378, "multprec_random_matricesS");
   u01379 : constant Version_32 := 16#65e3707f#;
   pragma Export (C, u01379, "multprec_floating_qr_least_squaresB");
   u01380 : constant Version_32 := 16#28f5ca64#;
   pragma Export (C, u01380, "multprec_floating_qr_least_squaresS");
   u01381 : constant Version_32 := 16#79c37c8f#;
   pragma Export (C, u01381, "multprec_integer64_matricesB");
   u01382 : constant Version_32 := 16#7f8e2643#;
   pragma Export (C, u01382, "multprec_integer64_matricesS");
   u01383 : constant Version_32 := 16#f6c39de7#;
   pragma Export (C, u01383, "multprec_integer64_ringS");
   u01384 : constant Version_32 := 16#b2641df2#;
   pragma Export (C, u01384, "multprec_integer64_numbersB");
   u01385 : constant Version_32 := 16#9747ea04#;
   pragma Export (C, u01385, "multprec_integer64_numbersS");
   u01386 : constant Version_32 := 16#757f6707#;
   pragma Export (C, u01386, "multprec_integer64_vectorsB");
   u01387 : constant Version_32 := 16#01d8da92#;
   pragma Export (C, u01387, "multprec_integer64_vectorsS");
   u01388 : constant Version_32 := 16#81ea73ef#;
   pragma Export (C, u01388, "multprec_natural64_coefficientsB");
   u01389 : constant Version_32 := 16#2b95c785#;
   pragma Export (C, u01389, "multprec_natural64_coefficientsS");
   u01390 : constant Version_32 := 16#dd890dab#;
   pragma Export (C, u01390, "multprec_natural64_numbersB");
   u01391 : constant Version_32 := 16#0994759f#;
   pragma Export (C, u01391, "multprec_natural64_numbersS");
   u01392 : constant Version_32 := 16#3c7d4e4d#;
   pragma Export (C, u01392, "multprec_random_numbersB");
   u01393 : constant Version_32 := 16#2ab653a5#;
   pragma Export (C, u01393, "multprec_random_numbersS");
   u01394 : constant Version_32 := 16#f3310008#;
   pragma Export (C, u01394, "multprec_floating64_numbersB");
   u01395 : constant Version_32 := 16#a44e339e#;
   pragma Export (C, u01395, "multprec_floating64_numbersS");
   u01396 : constant Version_32 := 16#422f5862#;
   pragma Export (C, u01396, "multprec_random_vectorsB");
   u01397 : constant Version_32 := 16#e63f040f#;
   pragma Export (C, u01397, "multprec_random_vectorsS");
   u01398 : constant Version_32 := 16#b14f1dbd#;
   pragma Export (C, u01398, "multprec_residual_evaluationsB");
   u01399 : constant Version_32 := 16#ef20bf0b#;
   pragma Export (C, u01399, "multprec_residual_evaluationsS");
   u01400 : constant Version_32 := 16#00694471#;
   pragma Export (C, u01400, "multprec_root_refinersB");
   u01401 : constant Version_32 := 16#a89094ca#;
   pragma Export (C, u01401, "multprec_root_refinersS");
   u01402 : constant Version_32 := 16#2f76b61a#;
   pragma Export (C, u01402, "multprec_complex_laur_jacomatsB");
   u01403 : constant Version_32 := 16#94389bc2#;
   pragma Export (C, u01403, "multprec_complex_laur_jacomatsS");
   u01404 : constant Version_32 := 16#f8a3f86a#;
   pragma Export (C, u01404, "multprec_complex_laur_functionsB");
   u01405 : constant Version_32 := 16#21938c41#;
   pragma Export (C, u01405, "multprec_complex_laur_functionsS");
   u01406 : constant Version_32 := 16#1577ed0c#;
   pragma Export (C, u01406, "multprec_complex_laur_sysfunB");
   u01407 : constant Version_32 := 16#29d5d555#;
   pragma Export (C, u01407, "multprec_complex_laur_sysfunS");
   u01408 : constant Version_32 := 16#e1ce4bd9#;
   pragma Export (C, u01408, "multprec_complex_ring__ffieldS");
   u01409 : constant Version_32 := 16#9151eab0#;
   pragma Export (C, u01409, "multprec_condition_tablesB");
   u01410 : constant Version_32 := 16#8be7053e#;
   pragma Export (C, u01410, "multprec_condition_tablesS");
   u01411 : constant Version_32 := 16#925a2d03#;
   pragma Export (C, u01411, "multprec_solution_diagnosticsB");
   u01412 : constant Version_32 := 16#be0df8a7#;
   pragma Export (C, u01412, "multprec_solution_diagnosticsS");
   u01413 : constant Version_32 := 16#fb618dd1#;
   pragma Export (C, u01413, "multprec_stacked_sample_gridsB");
   u01414 : constant Version_32 := 16#78aa628d#;
   pragma Export (C, u01414, "multprec_stacked_sample_gridsS");
   u01415 : constant Version_32 := 16#461a74e3#;
   pragma Export (C, u01415, "multprec_floating_matrices_ioB");
   u01416 : constant Version_32 := 16#b16c3a89#;
   pragma Export (C, u01416, "multprec_floating_matrices_ioS");
   u01417 : constant Version_32 := 16#2ab084ba#;
   pragma Export (C, u01417, "multprec_subspace_restrictionsB");
   u01418 : constant Version_32 := 16#5d6ceee6#;
   pragma Export (C, u01418, "multprec_subspace_restrictionsS");
   u01419 : constant Version_32 := 16#85784c1f#;
   pragma Export (C, u01419, "multprec_complex_matrices_ioB");
   u01420 : constant Version_32 := 16#662e0104#;
   pragma Export (C, u01420, "multprec_complex_matrices_ioS");
   u01421 : constant Version_32 := 16#4019fb99#;
   pragma Export (C, u01421, "multprec_linear_spacesB");
   u01422 : constant Version_32 := 16#f2cc7e41#;
   pragma Export (C, u01422, "multprec_linear_spacesS");
   u01423 : constant Version_32 := 16#45f1833e#;
   pragma Export (C, u01423, "multprec_system_and_solutions_ioB");
   u01424 : constant Version_32 := 16#74509b09#;
   pragma Export (C, u01424, "multprec_system_and_solutions_ioS");
   u01425 : constant Version_32 := 16#c6f296fe#;
   pragma Export (C, u01425, "multprec_to_standard_convertorsB");
   u01426 : constant Version_32 := 16#e4643f04#;
   pragma Export (C, u01426, "multprec_to_standard_convertorsS");
   u01427 : constant Version_32 := 16#7ec9e175#;
   pragma Export (C, u01427, "multprec_trace_interpolatorsB");
   u01428 : constant Version_32 := 16#857cb504#;
   pragma Export (C, u01428, "multprec_trace_interpolatorsS");
   u01429 : constant Version_32 := 16#7e5bd6ad#;
   pragma Export (C, u01429, "hybrid_durand_kernerB");
   u01430 : constant Version_32 := 16#3f1ebfcf#;
   pragma Export (C, u01430, "hybrid_durand_kernerS");
   u01431 : constant Version_32 := 16#a521cc4a#;
   pragma Export (C, u01431, "multprec_complex_nesvecsB");
   u01432 : constant Version_32 := 16#1afda377#;
   pragma Export (C, u01432, "multprec_complex_nesvecsS");
   u01433 : constant Version_32 := 16#2bdc2d79#;
   pragma Export (C, u01433, "multprec_complex_nesvecs_ioB");
   u01434 : constant Version_32 := 16#879df7ae#;
   pragma Export (C, u01434, "multprec_complex_nesvecs_ioS");
   u01435 : constant Version_32 := 16#a099b34f#;
   pragma Export (C, u01435, "multprec_nvariate_interpolatorsB");
   u01436 : constant Version_32 := 16#e32f00eb#;
   pragma Export (C, u01436, "multprec_nvariate_interpolatorsS");
   u01437 : constant Version_32 := 16#6fa1b17e#;
   pragma Export (C, u01437, "multprec_power_tracesB");
   u01438 : constant Version_32 := 16#0cdc1373#;
   pragma Export (C, u01438, "multprec_power_tracesS");
   u01439 : constant Version_32 := 16#7748df46#;
   pragma Export (C, u01439, "multprec_univariate_interpolatorsB");
   u01440 : constant Version_32 := 16#7fa89f77#;
   pragma Export (C, u01440, "multprec_univariate_interpolatorsS");
   u01441 : constant Version_32 := 16#de619da6#;
   pragma Export (C, u01441, "multprec_write_numbersB");
   u01442 : constant Version_32 := 16#3eff5a52#;
   pragma Export (C, u01442, "multprec_write_numbersS");
   u01443 : constant Version_32 := 16#5f5f0f7e#;
   pragma Export (C, u01443, "newton_fabry_on_homotopyB");
   u01444 : constant Version_32 := 16#f36c92ef#;
   pragma Export (C, u01444, "newton_fabry_on_homotopyS");
   u01445 : constant Version_32 := 16#dcaba250#;
   pragma Export (C, u01445, "decadobl_fabry_on_homotopyB");
   u01446 : constant Version_32 := 16#8c17f2a9#;
   pragma Export (C, u01446, "decadobl_fabry_on_homotopyS");
   u01447 : constant Version_32 := 16#deb1b83d#;
   pragma Export (C, u01447, "decadobl_complex_vecvecs_ioB");
   u01448 : constant Version_32 := 16#cd74ec0e#;
   pragma Export (C, u01448, "decadobl_complex_vecvecs_ioS");
   u01449 : constant Version_32 := 16#6af9c815#;
   pragma Export (C, u01449, "decadobl_complex_ring_ioS");
   u01450 : constant Version_32 := 16#f7cef34b#;
   pragma Export (C, u01450, "decadobl_complex_vectors_ioB");
   u01451 : constant Version_32 := 16#b62ba662#;
   pragma Export (C, u01451, "decadobl_complex_vectors_ioS");
   u01452 : constant Version_32 := 16#b951a08e#;
   pragma Export (C, u01452, "decadobl_homotopy_convolutions_ioB");
   u01453 : constant Version_32 := 16#6d10dac4#;
   pragma Export (C, u01453, "decadobl_homotopy_convolutions_ioS");
   u01454 : constant Version_32 := 16#8737ce3d#;
   pragma Export (C, u01454, "complex_series_and_polynomialsB");
   u01455 : constant Version_32 := 16#d10a9378#;
   pragma Export (C, u01455, "complex_series_and_polynomialsS");
   u01456 : constant Version_32 := 16#0ad7763d#;
   pragma Export (C, u01456, "decadobl_complex_series_functionsB");
   u01457 : constant Version_32 := 16#9353eb4f#;
   pragma Export (C, u01457, "decadobl_complex_series_functionsS");
   u01458 : constant Version_32 := 16#da7d8387#;
   pragma Export (C, u01458, "decadobl_complex_series_ioB");
   u01459 : constant Version_32 := 16#9a02c1cd#;
   pragma Export (C, u01459, "decadobl_complex_series_ioS");
   u01460 : constant Version_32 := 16#c75ece0b#;
   pragma Export (C, u01460, "decadobl_complex_series_matricesB");
   u01461 : constant Version_32 := 16#28af4979#;
   pragma Export (C, u01461, "decadobl_complex_series_matricesS");
   u01462 : constant Version_32 := 16#c61eee09#;
   pragma Export (C, u01462, "decadobl_complex_series_vecvecsB");
   u01463 : constant Version_32 := 16#3072a56d#;
   pragma Export (C, u01463, "decadobl_complex_series_vecvecsS");
   u01464 : constant Version_32 := 16#0af3709b#;
   pragma Export (C, u01464, "decadobl_cseries_jaco_matricesB");
   u01465 : constant Version_32 := 16#581ac437#;
   pragma Export (C, u01465, "decadobl_cseries_jaco_matricesS");
   u01466 : constant Version_32 := 16#d3b05e50#;
   pragma Export (C, u01466, "decadobl_cseries_poly_functionsB");
   u01467 : constant Version_32 := 16#8b16872e#;
   pragma Export (C, u01467, "decadobl_cseries_poly_functionsS");
   u01468 : constant Version_32 := 16#4683927a#;
   pragma Export (C, u01468, "decadobl_cseries_poly_sysfunB");
   u01469 : constant Version_32 := 16#7d5c43d3#;
   pragma Export (C, u01469, "decadobl_cseries_poly_sysfunS");
   u01470 : constant Version_32 := 16#693b6ca0#;
   pragma Export (C, u01470, "decadobl_newton_convolution_stepsB");
   u01471 : constant Version_32 := 16#5247390a#;
   pragma Export (C, u01471, "decadobl_newton_convolution_stepsS");
   u01472 : constant Version_32 := 16#679fc09b#;
   pragma Export (C, u01472, "decadobl_newton_convolutionsB");
   u01473 : constant Version_32 := 16#a1cfdf51#;
   pragma Export (C, u01473, "decadobl_newton_convolutionsS");
   u01474 : constant Version_32 := 16#9ff33ea6#;
   pragma Export (C, u01474, "decadobl_series_matrix_solversB");
   u01475 : constant Version_32 := 16#20ac814e#;
   pragma Export (C, u01475, "decadobl_series_matrix_solversS");
   u01476 : constant Version_32 := 16#abf25198#;
   pragma Export (C, u01476, "decadobl_complex_linear_solversB");
   u01477 : constant Version_32 := 16#d622b059#;
   pragma Export (C, u01477, "decadobl_complex_linear_solversS");
   u01478 : constant Version_32 := 16#e8572e19#;
   pragma Export (C, u01478, "decadobl_complex_matrix_seriesB");
   u01479 : constant Version_32 := 16#4454b664#;
   pragma Export (C, u01479, "decadobl_complex_matrix_seriesS");
   u01480 : constant Version_32 := 16#d5d247ed#;
   pragma Export (C, u01480, "decadobl_complex_qr_least_squaresB");
   u01481 : constant Version_32 := 16#5ff55852#;
   pragma Export (C, u01481, "decadobl_complex_qr_least_squaresS");
   u01482 : constant Version_32 := 16#1dd36235#;
   pragma Export (C, u01482, "decadobl_complex_singular_valuesB");
   u01483 : constant Version_32 := 16#96dabd3e#;
   pragma Export (C, u01483, "decadobl_complex_singular_valuesS");
   u01484 : constant Version_32 := 16#c9b3d3cb#;
   pragma Export (C, u01484, "decadobl_complex_vecmatsB");
   u01485 : constant Version_32 := 16#4a45a41f#;
   pragma Export (C, u01485, "decadobl_complex_vecmatsS");
   u01486 : constant Version_32 := 16#96adb10c#;
   pragma Export (C, u01486, "decadobl_complex_vector_seriesB");
   u01487 : constant Version_32 := 16#0b98397b#;
   pragma Export (C, u01487, "decadobl_complex_vector_seriesS");
   u01488 : constant Version_32 := 16#c65ffd99#;
   pragma Export (C, u01488, "decadobl_echelon_formsB");
   u01489 : constant Version_32 := 16#f5eba9ea#;
   pragma Export (C, u01489, "decadobl_echelon_formsS");
   u01490 : constant Version_32 := 16#390deffd#;
   pragma Export (C, u01490, "decadobl_interpolating_cseriesB");
   u01491 : constant Version_32 := 16#de2d0e6b#;
   pragma Export (C, u01491, "decadobl_interpolating_cseriesS");
   u01492 : constant Version_32 := 16#ea744116#;
   pragma Export (C, u01492, "deca_double_vectorsB");
   u01493 : constant Version_32 := 16#c98fc1e2#;
   pragma Export (C, u01493, "deca_double_vectorsS");
   u01494 : constant Version_32 := 16#a2be7360#;
   pragma Export (C, u01494, "deca_double_vectors_ioB");
   u01495 : constant Version_32 := 16#aef1ff6c#;
   pragma Export (C, u01495, "deca_double_vectors_ioS");
   u01496 : constant Version_32 := 16#8b12a328#;
   pragma Export (C, u01496, "deca_double_ring_ioS");
   u01497 : constant Version_32 := 16#094c303e#;
   pragma Export (C, u01497, "decadobl_complex_matrices_ioB");
   u01498 : constant Version_32 := 16#6b94524d#;
   pragma Export (C, u01498, "decadobl_complex_matrices_ioS");
   u01499 : constant Version_32 := 16#21403e29#;
   pragma Export (C, u01499, "decadobl_complex_vector_normsB");
   u01500 : constant Version_32 := 16#d8cd9531#;
   pragma Export (C, u01500, "decadobl_complex_vector_normsS");
   u01501 : constant Version_32 := 16#56dbf10c#;
   pragma Export (C, u01501, "decadobl_random_vectorsB");
   u01502 : constant Version_32 := 16#0cf7cc2d#;
   pragma Export (C, u01502, "decadobl_random_vectorsS");
   u01503 : constant Version_32 := 16#b0b7f572#;
   pragma Export (C, u01503, "decadobl_speelpenning_convolutionsB");
   u01504 : constant Version_32 := 16#2800102d#;
   pragma Export (C, u01504, "decadobl_speelpenning_convolutionsS");
   u01505 : constant Version_32 := 16#c61b3020#;
   pragma Export (C, u01505, "dobldobl_fabry_on_homotopyB");
   u01506 : constant Version_32 := 16#c5773e05#;
   pragma Export (C, u01506, "dobldobl_fabry_on_homotopyS");
   u01507 : constant Version_32 := 16#c5ec183d#;
   pragma Export (C, u01507, "dobldobl_homotopy_convolutions_ioB");
   u01508 : constant Version_32 := 16#990ad176#;
   pragma Export (C, u01508, "dobldobl_homotopy_convolutions_ioS");
   u01509 : constant Version_32 := 16#787c3949#;
   pragma Export (C, u01509, "fabry_on_homotopy_helpersB");
   u01510 : constant Version_32 := 16#0dcf090f#;
   pragma Export (C, u01510, "fabry_on_homotopy_helpersS");
   u01511 : constant Version_32 := 16#2b684a9e#;
   pragma Export (C, u01511, "hexadobl_complex_series_functionsB");
   u01512 : constant Version_32 := 16#d83dc02b#;
   pragma Export (C, u01512, "hexadobl_complex_series_functionsS");
   u01513 : constant Version_32 := 16#2a82ffba#;
   pragma Export (C, u01513, "hexadobl_complex_series_ioB");
   u01514 : constant Version_32 := 16#bf6fa490#;
   pragma Export (C, u01514, "hexadobl_complex_series_ioS");
   u01515 : constant Version_32 := 16#3427b8f6#;
   pragma Export (C, u01515, "hexadobl_complex_series_matricesB");
   u01516 : constant Version_32 := 16#112c5ffe#;
   pragma Export (C, u01516, "hexadobl_complex_series_matricesS");
   u01517 : constant Version_32 := 16#0c3310ef#;
   pragma Export (C, u01517, "hexadobl_complex_series_vecvecsB");
   u01518 : constant Version_32 := 16#30a53bf1#;
   pragma Export (C, u01518, "hexadobl_complex_series_vecvecsS");
   u01519 : constant Version_32 := 16#54d6bd2d#;
   pragma Export (C, u01519, "hexadobl_complex_vectors_ioB");
   u01520 : constant Version_32 := 16#a4049fad#;
   pragma Export (C, u01520, "hexadobl_complex_vectors_ioS");
   u01521 : constant Version_32 := 16#64d81cd1#;
   pragma Export (C, u01521, "hexadobl_complex_ring_ioS");
   u01522 : constant Version_32 := 16#441de6a0#;
   pragma Export (C, u01522, "hexadobl_cseries_jaco_matricesB");
   u01523 : constant Version_32 := 16#0d121634#;
   pragma Export (C, u01523, "hexadobl_cseries_jaco_matricesS");
   u01524 : constant Version_32 := 16#0dee3a60#;
   pragma Export (C, u01524, "hexadobl_cseries_poly_functionsB");
   u01525 : constant Version_32 := 16#b0e9563f#;
   pragma Export (C, u01525, "hexadobl_cseries_poly_functionsS");
   u01526 : constant Version_32 := 16#af110916#;
   pragma Export (C, u01526, "hexadobl_cseries_poly_sysfunB");
   u01527 : constant Version_32 := 16#95c37116#;
   pragma Export (C, u01527, "hexadobl_cseries_poly_sysfunS");
   u01528 : constant Version_32 := 16#d724d398#;
   pragma Export (C, u01528, "hexadobl_fabry_on_homotopyB");
   u01529 : constant Version_32 := 16#c59fee40#;
   pragma Export (C, u01529, "hexadobl_fabry_on_homotopyS");
   u01530 : constant Version_32 := 16#fcca4380#;
   pragma Export (C, u01530, "hexadobl_complex_vecvecs_ioB");
   u01531 : constant Version_32 := 16#83a467d9#;
   pragma Export (C, u01531, "hexadobl_complex_vecvecs_ioS");
   u01532 : constant Version_32 := 16#c16f3767#;
   pragma Export (C, u01532, "hexadobl_homotopy_convolutions_ioB");
   u01533 : constant Version_32 := 16#5980e3bd#;
   pragma Export (C, u01533, "hexadobl_homotopy_convolutions_ioS");
   u01534 : constant Version_32 := 16#c5f8205c#;
   pragma Export (C, u01534, "hexadobl_newton_convolution_stepsB");
   u01535 : constant Version_32 := 16#73752d91#;
   pragma Export (C, u01535, "hexadobl_newton_convolution_stepsS");
   u01536 : constant Version_32 := 16#fe46b487#;
   pragma Export (C, u01536, "hexadobl_newton_convolutionsB");
   u01537 : constant Version_32 := 16#659802ff#;
   pragma Export (C, u01537, "hexadobl_newton_convolutionsS");
   u01538 : constant Version_32 := 16#05515df5#;
   pragma Export (C, u01538, "hexadobl_series_matrix_solversB");
   u01539 : constant Version_32 := 16#b3d2999b#;
   pragma Export (C, u01539, "hexadobl_series_matrix_solversS");
   u01540 : constant Version_32 := 16#87e1fa83#;
   pragma Export (C, u01540, "hexadobl_complex_linear_solversB");
   u01541 : constant Version_32 := 16#5a70dc81#;
   pragma Export (C, u01541, "hexadobl_complex_linear_solversS");
   u01542 : constant Version_32 := 16#ea58c080#;
   pragma Export (C, u01542, "hexadobl_complex_matrix_seriesB");
   u01543 : constant Version_32 := 16#b19e3430#;
   pragma Export (C, u01543, "hexadobl_complex_matrix_seriesS");
   u01544 : constant Version_32 := 16#cc5e0f7c#;
   pragma Export (C, u01544, "hexadobl_complex_qr_least_squaresB");
   u01545 : constant Version_32 := 16#b5abe46b#;
   pragma Export (C, u01545, "hexadobl_complex_qr_least_squaresS");
   u01546 : constant Version_32 := 16#ed1c3229#;
   pragma Export (C, u01546, "hexadobl_complex_singular_valuesB");
   u01547 : constant Version_32 := 16#d11d612c#;
   pragma Export (C, u01547, "hexadobl_complex_singular_valuesS");
   u01548 : constant Version_32 := 16#2e71ed50#;
   pragma Export (C, u01548, "hexadobl_complex_vecmatsB");
   u01549 : constant Version_32 := 16#c5f7baeb#;
   pragma Export (C, u01549, "hexadobl_complex_vecmatsS");
   u01550 : constant Version_32 := 16#6e354633#;
   pragma Export (C, u01550, "hexadobl_complex_vector_seriesB");
   u01551 : constant Version_32 := 16#346070a3#;
   pragma Export (C, u01551, "hexadobl_complex_vector_seriesS");
   u01552 : constant Version_32 := 16#511d68a8#;
   pragma Export (C, u01552, "hexadobl_echelon_formsB");
   u01553 : constant Version_32 := 16#e9715f0b#;
   pragma Export (C, u01553, "hexadobl_echelon_formsS");
   u01554 : constant Version_32 := 16#bd15a18f#;
   pragma Export (C, u01554, "hexadobl_interpolating_cseriesB");
   u01555 : constant Version_32 := 16#1a693642#;
   pragma Export (C, u01555, "hexadobl_interpolating_cseriesS");
   u01556 : constant Version_32 := 16#07daa31b#;
   pragma Export (C, u01556, "hexa_double_vectorsB");
   u01557 : constant Version_32 := 16#20dec6b8#;
   pragma Export (C, u01557, "hexa_double_vectorsS");
   u01558 : constant Version_32 := 16#3792032e#;
   pragma Export (C, u01558, "hexa_double_vectors_ioB");
   u01559 : constant Version_32 := 16#2ea22d85#;
   pragma Export (C, u01559, "hexa_double_vectors_ioS");
   u01560 : constant Version_32 := 16#65a23a61#;
   pragma Export (C, u01560, "hexa_double_ring_ioS");
   u01561 : constant Version_32 := 16#8adda30e#;
   pragma Export (C, u01561, "hexadobl_complex_matrices_ioB");
   u01562 : constant Version_32 := 16#e6f79659#;
   pragma Export (C, u01562, "hexadobl_complex_matrices_ioS");
   u01563 : constant Version_32 := 16#bf1164e9#;
   pragma Export (C, u01563, "hexadobl_complex_vector_normsB");
   u01564 : constant Version_32 := 16#ee6b0d01#;
   pragma Export (C, u01564, "hexadobl_complex_vector_normsS");
   u01565 : constant Version_32 := 16#1023bf53#;
   pragma Export (C, u01565, "hexadobl_random_vectorsB");
   u01566 : constant Version_32 := 16#9258ba9c#;
   pragma Export (C, u01566, "hexadobl_random_vectorsS");
   u01567 : constant Version_32 := 16#9a0a431c#;
   pragma Export (C, u01567, "hexadobl_speelpenning_convolutionsB");
   u01568 : constant Version_32 := 16#f38bf112#;
   pragma Export (C, u01568, "hexadobl_speelpenning_convolutionsS");
   u01569 : constant Version_32 := 16#ad8b3bae#;
   pragma Export (C, u01569, "multitasked_power_newtonB");
   u01570 : constant Version_32 := 16#67445caa#;
   pragma Export (C, u01570, "multitasked_power_newtonS");
   u01571 : constant Version_32 := 16#6cdb7272#;
   pragma Export (C, u01571, "multitasked_newton_convolutionsB");
   u01572 : constant Version_32 := 16#596b994e#;
   pragma Export (C, u01572, "multitasked_newton_convolutionsS");
   u01573 : constant Version_32 := 16#a25caf68#;
   pragma Export (C, u01573, "multitasked_algodiff_convolutionsB");
   u01574 : constant Version_32 := 16#f29ae1fe#;
   pragma Export (C, u01574, "multitasked_algodiff_convolutionsS");
   u01575 : constant Version_32 := 16#2164c375#;
   pragma Export (C, u01575, "dobldobl_coefficient_convolutionsB");
   u01576 : constant Version_32 := 16#d41c3802#;
   pragma Export (C, u01576, "dobldobl_coefficient_convolutionsS");
   u01577 : constant Version_32 := 16#fe66a354#;
   pragma Export (C, u01577, "dobldobl_vector_splittersB");
   u01578 : constant Version_32 := 16#5297aa30#;
   pragma Export (C, u01578, "dobldobl_vector_splittersS");
   u01579 : constant Version_32 := 16#c2456677#;
   pragma Export (C, u01579, "multitasked_series_linearizationB");
   u01580 : constant Version_32 := 16#163ac1f3#;
   pragma Export (C, u01580, "multitasked_series_linearizationS");
   u01581 : constant Version_32 := 16#003f0ee4#;
   pragma Export (C, u01581, "normal_cone_intersectionsB");
   u01582 : constant Version_32 := 16#9cf0127d#;
   pragma Export (C, u01582, "normal_cone_intersectionsS");
   u01583 : constant Version_32 := 16#3dcde4b5#;
   pragma Export (C, u01583, "numbers_ioB");
   u01584 : constant Version_32 := 16#e7f8781e#;
   pragma Export (C, u01584, "numbers_ioS");
   u01585 : constant Version_32 := 16#936954b7#;
   pragma Export (C, u01585, "numeric_minor_equationsB");
   u01586 : constant Version_32 := 16#275a84a9#;
   pragma Export (C, u01586, "numeric_minor_equationsS");
   u01587 : constant Version_32 := 16#57275072#;
   pragma Export (C, u01587, "numeric_schubert_conditionsB");
   u01588 : constant Version_32 := 16#1bc732c1#;
   pragma Export (C, u01588, "numeric_schubert_conditionsS");
   u01589 : constant Version_32 := 16#e51ce870#;
   pragma Export (C, u01589, "bracket_polynomial_convertorsB");
   u01590 : constant Version_32 := 16#f66461b9#;
   pragma Export (C, u01590, "bracket_polynomial_convertorsS");
   u01591 : constant Version_32 := 16#9f56be6e#;
   pragma Export (C, u01591, "dobldobl_bracket_polynomialsB");
   u01592 : constant Version_32 := 16#da3acd92#;
   pragma Export (C, u01592, "dobldobl_bracket_polynomialsS");
   u01593 : constant Version_32 := 16#be493008#;
   pragma Export (C, u01593, "dobldobl_bracket_systemsB");
   u01594 : constant Version_32 := 16#d5094b28#;
   pragma Export (C, u01594, "dobldobl_bracket_systemsS");
   u01595 : constant Version_32 := 16#1be01324#;
   pragma Export (C, u01595, "generic_bracket_polynomialsB");
   u01596 : constant Version_32 := 16#1fe2f9c5#;
   pragma Export (C, u01596, "generic_bracket_polynomialsS");
   u01597 : constant Version_32 := 16#a3151201#;
   pragma Export (C, u01597, "octo_double_numbersB");
   u01598 : constant Version_32 := 16#4804c1fa#;
   pragma Export (C, u01598, "octo_double_numbersS");
   u01599 : constant Version_32 := 16#409a06f8#;
   pragma Export (C, u01599, "octo_double_numbers_ioB");
   u01600 : constant Version_32 := 16#929a7116#;
   pragma Export (C, u01600, "octo_double_numbers_ioS");
   u01601 : constant Version_32 := 16#8ebd8b60#;
   pragma Export (C, u01601, "octodobl_coefficient_homotopyB");
   u01602 : constant Version_32 := 16#7f76d3ad#;
   pragma Export (C, u01602, "octodobl_coefficient_homotopyS");
   u01603 : constant Version_32 := 16#622e5c15#;
   pragma Export (C, u01603, "octodobl_complex_jaco_matricesB");
   u01604 : constant Version_32 := 16#3de1ddd0#;
   pragma Export (C, u01604, "octodobl_complex_jaco_matricesS");
   u01605 : constant Version_32 := 16#d4eb7045#;
   pragma Export (C, u01605, "octodobl_complex_linear_solversB");
   u01606 : constant Version_32 := 16#f9ccbde1#;
   pragma Export (C, u01606, "octodobl_complex_linear_solversS");
   u01607 : constant Version_32 := 16#52e2be35#;
   pragma Export (C, u01607, "octodobl_complex_matricesB");
   u01608 : constant Version_32 := 16#1ac81f4a#;
   pragma Export (C, u01608, "octodobl_complex_matricesS");
   u01609 : constant Version_32 := 16#050d17ae#;
   pragma Export (C, u01609, "octodobl_complex_numbersB");
   u01610 : constant Version_32 := 16#d00f3735#;
   pragma Export (C, u01610, "octodobl_complex_numbersS");
   u01611 : constant Version_32 := 16#44482b70#;
   pragma Export (C, u01611, "octo_double_ringS");
   u01612 : constant Version_32 := 16#9e330298#;
   pragma Export (C, u01612, "octo_double_ring__ffieldS");
   u01613 : constant Version_32 := 16#44444acf#;
   pragma Export (C, u01613, "octodobl_complex_numbers_ioB");
   u01614 : constant Version_32 := 16#0de07089#;
   pragma Export (C, u01614, "octodobl_complex_numbers_ioS");
   u01615 : constant Version_32 := 16#54a7e4da#;
   pragma Export (C, u01615, "octodobl_complex_numbers_polarB");
   u01616 : constant Version_32 := 16#63313cfb#;
   pragma Export (C, u01616, "octodobl_complex_numbers_polarS");
   u01617 : constant Version_32 := 16#57dabe75#;
   pragma Export (C, u01617, "octo_double_constantsS");
   u01618 : constant Version_32 := 16#c53fc9ab#;
   pragma Export (C, u01618, "octodobl_complex_poly_functionsB");
   u01619 : constant Version_32 := 16#da951f37#;
   pragma Export (C, u01619, "octodobl_complex_poly_functionsS");
   u01620 : constant Version_32 := 16#de704abc#;
   pragma Export (C, u01620, "octodobl_complex_poly_sysfunB");
   u01621 : constant Version_32 := 16#e5c60684#;
   pragma Export (C, u01621, "octodobl_complex_poly_sysfunS");
   u01622 : constant Version_32 := 16#4c33eaea#;
   pragma Export (C, u01622, "octodobl_complex_poly_systemsB");
   u01623 : constant Version_32 := 16#e40c48db#;
   pragma Export (C, u01623, "octodobl_complex_poly_systemsS");
   u01624 : constant Version_32 := 16#07533eda#;
   pragma Export (C, u01624, "octodobl_complex_poly_systems_ioB");
   u01625 : constant Version_32 := 16#11656893#;
   pragma Export (C, u01625, "octodobl_complex_poly_systems_ioS");
   u01626 : constant Version_32 := 16#07e3d54b#;
   pragma Export (C, u01626, "octodobl_complex_polynomialsB");
   u01627 : constant Version_32 := 16#1456cd2e#;
   pragma Export (C, u01627, "octodobl_complex_polynomialsS");
   u01628 : constant Version_32 := 16#9c68b171#;
   pragma Export (C, u01628, "octodobl_complex_polynomials_ioB");
   u01629 : constant Version_32 := 16#c6ef4a5f#;
   pragma Export (C, u01629, "octodobl_complex_polynomials_ioS");
   u01630 : constant Version_32 := 16#69915c7b#;
   pragma Export (C, u01630, "octodobl_complex_qr_least_squaresB");
   u01631 : constant Version_32 := 16#3ba4b6b3#;
   pragma Export (C, u01631, "octodobl_complex_qr_least_squaresS");
   u01632 : constant Version_32 := 16#f4991077#;
   pragma Export (C, u01632, "octodobl_complex_ringS");
   u01633 : constant Version_32 := 16#130f2b66#;
   pragma Export (C, u01633, "octodobl_complex_seriesB");
   u01634 : constant Version_32 := 16#af1ad944#;
   pragma Export (C, u01634, "octodobl_complex_seriesS");
   u01635 : constant Version_32 := 16#7125efc7#;
   pragma Export (C, u01635, "octodobl_complex_series_functionsB");
   u01636 : constant Version_32 := 16#24e35a81#;
   pragma Export (C, u01636, "octodobl_complex_series_functionsS");
   u01637 : constant Version_32 := 16#68c15927#;
   pragma Export (C, u01637, "octodobl_complex_series_ioB");
   u01638 : constant Version_32 := 16#7790449e#;
   pragma Export (C, u01638, "octodobl_complex_series_ioS");
   u01639 : constant Version_32 := 16#55a7e3f6#;
   pragma Export (C, u01639, "octodobl_complex_series_matricesB");
   u01640 : constant Version_32 := 16#90e5c20f#;
   pragma Export (C, u01640, "octodobl_complex_series_matricesS");
   u01641 : constant Version_32 := 16#f88fb69f#;
   pragma Export (C, u01641, "octodobl_complex_series_ringS");
   u01642 : constant Version_32 := 16#4a00e1ac#;
   pragma Export (C, u01642, "octodobl_complex_series_vectorsB");
   u01643 : constant Version_32 := 16#c2d7a1a7#;
   pragma Export (C, u01643, "octodobl_complex_series_vectorsS");
   u01644 : constant Version_32 := 16#c4dcf209#;
   pragma Export (C, u01644, "octodobl_complex_series_vecvecsB");
   u01645 : constant Version_32 := 16#18031fe6#;
   pragma Export (C, u01645, "octodobl_complex_series_vecvecsS");
   u01646 : constant Version_32 := 16#64f72d0a#;
   pragma Export (C, u01646, "octodobl_complex_singular_valuesB");
   u01647 : constant Version_32 := 16#1c590491#;
   pragma Export (C, u01647, "octodobl_complex_singular_valuesS");
   u01648 : constant Version_32 := 16#98bbdbe9#;
   pragma Export (C, u01648, "octodobl_complex_solutionsB");
   u01649 : constant Version_32 := 16#5460c333#;
   pragma Export (C, u01649, "octodobl_complex_solutionsS");
   u01650 : constant Version_32 := 16#2a77db92#;
   pragma Export (C, u01650, "multprec_octodobl_convertorsB");
   u01651 : constant Version_32 := 16#a3e96c43#;
   pragma Export (C, u01651, "multprec_octodobl_convertorsS");
   u01652 : constant Version_32 := 16#4fe36a00#;
   pragma Export (C, u01652, "octodobl_complex_numbers_cvB");
   u01653 : constant Version_32 := 16#3fead0c9#;
   pragma Export (C, u01653, "octodobl_complex_numbers_cvS");
   u01654 : constant Version_32 := 16#cf96617b#;
   pragma Export (C, u01654, "octodobl_complex_vecmatsB");
   u01655 : constant Version_32 := 16#c56e0d78#;
   pragma Export (C, u01655, "octodobl_complex_vecmatsS");
   u01656 : constant Version_32 := 16#3cfd6eff#;
   pragma Export (C, u01656, "octodobl_complex_vector_normsB");
   u01657 : constant Version_32 := 16#84a4f1e0#;
   pragma Export (C, u01657, "octodobl_complex_vector_normsS");
   u01658 : constant Version_32 := 16#dd7cfb0a#;
   pragma Export (C, u01658, "octodobl_complex_vectorsB");
   u01659 : constant Version_32 := 16#4fbf2121#;
   pragma Export (C, u01659, "octodobl_complex_vectorsS");
   u01660 : constant Version_32 := 16#a257ffa5#;
   pragma Export (C, u01660, "octodobl_complex_vectors_cvB");
   u01661 : constant Version_32 := 16#e80ff980#;
   pragma Export (C, u01661, "octodobl_complex_vectors_cvS");
   u01662 : constant Version_32 := 16#4dbdb230#;
   pragma Export (C, u01662, "octodobl_complex_vectors_ioB");
   u01663 : constant Version_32 := 16#f862d08a#;
   pragma Export (C, u01663, "octodobl_complex_vectors_ioS");
   u01664 : constant Version_32 := 16#b3d6b366#;
   pragma Export (C, u01664, "octodobl_complex_ring_ioS");
   u01665 : constant Version_32 := 16#92f09117#;
   pragma Export (C, u01665, "octodobl_complex_vecvecsB");
   u01666 : constant Version_32 := 16#c347fc7e#;
   pragma Export (C, u01666, "octodobl_complex_vecvecsS");
   u01667 : constant Version_32 := 16#5195c90d#;
   pragma Export (C, u01667, "octodobl_cseries_jaco_matricesB");
   u01668 : constant Version_32 := 16#6c24027c#;
   pragma Export (C, u01668, "octodobl_cseries_jaco_matricesS");
   u01669 : constant Version_32 := 16#d22e9196#;
   pragma Export (C, u01669, "octodobl_cseries_poly_functionsB");
   u01670 : constant Version_32 := 16#eee9f761#;
   pragma Export (C, u01670, "octodobl_cseries_poly_functionsS");
   u01671 : constant Version_32 := 16#9b92cd20#;
   pragma Export (C, u01671, "octodobl_cseries_poly_sysfunB");
   u01672 : constant Version_32 := 16#80fd11f3#;
   pragma Export (C, u01672, "octodobl_cseries_poly_sysfunS");
   u01673 : constant Version_32 := 16#0ebaf149#;
   pragma Export (C, u01673, "octodobl_cseries_poly_systemsB");
   u01674 : constant Version_32 := 16#1294f9b5#;
   pragma Export (C, u01674, "octodobl_cseries_poly_systemsS");
   u01675 : constant Version_32 := 16#a9e6e5a6#;
   pragma Export (C, u01675, "octodobl_cseries_polynomialsB");
   u01676 : constant Version_32 := 16#a04767e3#;
   pragma Export (C, u01676, "octodobl_cseries_polynomialsS");
   u01677 : constant Version_32 := 16#4be87746#;
   pragma Export (C, u01677, "octodobl_fabry_on_homotopyB");
   u01678 : constant Version_32 := 16#a8fd048f#;
   pragma Export (C, u01678, "octodobl_fabry_on_homotopyS");
   u01679 : constant Version_32 := 16#9a722ac2#;
   pragma Export (C, u01679, "octodobl_complex_vecvecs_ioB");
   u01680 : constant Version_32 := 16#b5815b42#;
   pragma Export (C, u01680, "octodobl_complex_vecvecs_ioS");
   u01681 : constant Version_32 := 16#21185dcb#;
   pragma Export (C, u01681, "octodobl_homotopyB");
   u01682 : constant Version_32 := 16#cb8badf0#;
   pragma Export (C, u01682, "octodobl_homotopyS");
   u01683 : constant Version_32 := 16#eb19b254#;
   pragma Export (C, u01683, "octodobl_homotopy_convolutions_ioB");
   u01684 : constant Version_32 := 16#d058ca91#;
   pragma Export (C, u01684, "octodobl_homotopy_convolutions_ioS");
   u01685 : constant Version_32 := 16#4c879849#;
   pragma Export (C, u01685, "octodobl_mathematical_functionsB");
   u01686 : constant Version_32 := 16#e5013d40#;
   pragma Export (C, u01686, "octodobl_mathematical_functionsS");
   u01687 : constant Version_32 := 16#35e6d08d#;
   pragma Export (C, u01687, "octodobl_newton_convolution_stepsB");
   u01688 : constant Version_32 := 16#f30307b3#;
   pragma Export (C, u01688, "octodobl_newton_convolution_stepsS");
   u01689 : constant Version_32 := 16#89a39ebe#;
   pragma Export (C, u01689, "octodobl_newton_convolutionsB");
   u01690 : constant Version_32 := 16#98ebdb23#;
   pragma Export (C, u01690, "octodobl_newton_convolutionsS");
   u01691 : constant Version_32 := 16#38c52d97#;
   pragma Export (C, u01691, "octodobl_parameter_systemsB");
   u01692 : constant Version_32 := 16#b9f45020#;
   pragma Export (C, u01692, "octodobl_parameter_systemsS");
   u01693 : constant Version_32 := 16#68caae52#;
   pragma Export (C, u01693, "octodobl_complex_solutions_ioB");
   u01694 : constant Version_32 := 16#78eb1373#;
   pragma Export (C, u01694, "octodobl_complex_solutions_ioS");
   u01695 : constant Version_32 := 16#30847b9a#;
   pragma Export (C, u01695, "octodobl_polynomial_convertorsB");
   u01696 : constant Version_32 := 16#e546295e#;
   pragma Export (C, u01696, "octodobl_polynomial_convertorsS");
   u01697 : constant Version_32 := 16#a50ec8a0#;
   pragma Export (C, u01697, "octo_double_poly_systemsB");
   u01698 : constant Version_32 := 16#288b1668#;
   pragma Export (C, u01698, "octo_double_poly_systemsS");
   u01699 : constant Version_32 := 16#0780c646#;
   pragma Export (C, u01699, "octo_double_polynomialsB");
   u01700 : constant Version_32 := 16#31ecb1d7#;
   pragma Export (C, u01700, "octo_double_polynomialsS");
   u01701 : constant Version_32 := 16#2433b2a1#;
   pragma Export (C, u01701, "octodobl_complex_laur_systemsB");
   u01702 : constant Version_32 := 16#9c72a33d#;
   pragma Export (C, u01702, "octodobl_complex_laur_systemsS");
   u01703 : constant Version_32 := 16#0f55014a#;
   pragma Export (C, u01703, "octodobl_complex_laurentialsB");
   u01704 : constant Version_32 := 16#9555728b#;
   pragma Export (C, u01704, "octodobl_complex_laurentialsS");
   u01705 : constant Version_32 := 16#a06c2f4d#;
   pragma Export (C, u01705, "octodobl_random_numbersB");
   u01706 : constant Version_32 := 16#2e90a6f6#;
   pragma Export (C, u01706, "octodobl_random_numbersS");
   u01707 : constant Version_32 := 16#9f986cc0#;
   pragma Export (C, u01707, "octodobl_series_matrix_solversB");
   u01708 : constant Version_32 := 16#ddb1b4db#;
   pragma Export (C, u01708, "octodobl_series_matrix_solversS");
   u01709 : constant Version_32 := 16#b1a9d965#;
   pragma Export (C, u01709, "octodobl_complex_matrix_seriesB");
   u01710 : constant Version_32 := 16#4a4d454c#;
   pragma Export (C, u01710, "octodobl_complex_matrix_seriesS");
   u01711 : constant Version_32 := 16#a7d8055e#;
   pragma Export (C, u01711, "octodobl_complex_vector_seriesB");
   u01712 : constant Version_32 := 16#c7539d90#;
   pragma Export (C, u01712, "octodobl_complex_vector_seriesS");
   u01713 : constant Version_32 := 16#8dc2f6ef#;
   pragma Export (C, u01713, "octodobl_echelon_formsB");
   u01714 : constant Version_32 := 16#2cb71358#;
   pragma Export (C, u01714, "octodobl_echelon_formsS");
   u01715 : constant Version_32 := 16#9617bbdf#;
   pragma Export (C, u01715, "octodobl_interpolating_cseriesB");
   u01716 : constant Version_32 := 16#8246f5d5#;
   pragma Export (C, u01716, "octodobl_interpolating_cseriesS");
   u01717 : constant Version_32 := 16#cbed782c#;
   pragma Export (C, u01717, "octo_double_vectorsB");
   u01718 : constant Version_32 := 16#7cf7cdf3#;
   pragma Export (C, u01718, "octo_double_vectorsS");
   u01719 : constant Version_32 := 16#e5c0d102#;
   pragma Export (C, u01719, "octo_double_vectors_ioB");
   u01720 : constant Version_32 := 16#293173cb#;
   pragma Export (C, u01720, "octo_double_vectors_ioS");
   u01721 : constant Version_32 := 16#8c22a8b0#;
   pragma Export (C, u01721, "octo_double_ring_ioS");
   u01722 : constant Version_32 := 16#d777410f#;
   pragma Export (C, u01722, "octodobl_complex_matrices_ioB");
   u01723 : constant Version_32 := 16#542ad4b4#;
   pragma Export (C, u01723, "octodobl_complex_matrices_ioS");
   u01724 : constant Version_32 := 16#539dc086#;
   pragma Export (C, u01724, "octodobl_random_vectorsB");
   u01725 : constant Version_32 := 16#9758ee6c#;
   pragma Export (C, u01725, "octodobl_random_vectorsS");
   u01726 : constant Version_32 := 16#4d2fd92a#;
   pragma Export (C, u01726, "octodobl_speelpenning_convolutionsB");
   u01727 : constant Version_32 := 16#28ccc649#;
   pragma Export (C, u01727, "octodobl_speelpenning_convolutionsS");
   u01728 : constant Version_32 := 16#c14a57d3#;
   pragma Export (C, u01728, "octodobl_system_and_solutions_ioB");
   u01729 : constant Version_32 := 16#8c0ec805#;
   pragma Export (C, u01729, "octodobl_system_and_solutions_ioS");
   u01730 : constant Version_32 := 16#b204c039#;
   pragma Export (C, u01730, "octodobl_complex_laur_systems_ioB");
   u01731 : constant Version_32 := 16#fd55e4a6#;
   pragma Export (C, u01731, "octodobl_complex_laur_systems_ioS");
   u01732 : constant Version_32 := 16#99e9d090#;
   pragma Export (C, u01732, "octodobl_complex_laurentials_ioB");
   u01733 : constant Version_32 := 16#17c19b1c#;
   pragma Export (C, u01733, "octodobl_complex_laurentials_ioS");
   u01734 : constant Version_32 := 16#8196063b#;
   pragma Export (C, u01734, "one_level_lpB");
   u01735 : constant Version_32 := 16#fc3a8249#;
   pragma Export (C, u01735, "one_level_lpS");
   u01736 : constant Version_32 := 16#9294ee67#;
   pragma Export (C, u01736, "orbits_of_solutionsB");
   u01737 : constant Version_32 := 16#c59f7d58#;
   pragma Export (C, u01737, "orbits_of_solutionsS");
   u01738 : constant Version_32 := 16#784f70f2#;
   pragma Export (C, u01738, "osculating_planesB");
   u01739 : constant Version_32 := 16#6989dd51#;
   pragma Export (C, u01739, "osculating_planesS");
   u01740 : constant Version_32 := 16#db7e90f6#;
   pragma Export (C, u01740, "chebychev_polynomialsB");
   u01741 : constant Version_32 := 16#794aa62e#;
   pragma Export (C, u01741, "chebychev_polynomialsS");
   u01742 : constant Version_32 := 16#86b27fa0#;
   pragma Export (C, u01742, "parameter_homotopy_continuationB");
   u01743 : constant Version_32 := 16#322f4969#;
   pragma Export (C, u01743, "parameter_homotopy_continuationS");
   u01744 : constant Version_32 := 16#b226593e#;
   pragma Export (C, u01744, "complex_convex_continuationB");
   u01745 : constant Version_32 := 16#bf617644#;
   pragma Export (C, u01745, "complex_convex_continuationS");
   u01746 : constant Version_32 := 16#d59dac0e#;
   pragma Export (C, u01746, "dobldobl_parameter_solutionsB");
   u01747 : constant Version_32 := 16#cadf9dfe#;
   pragma Export (C, u01747, "dobldobl_parameter_solutionsS");
   u01748 : constant Version_32 := 16#a9eed124#;
   pragma Export (C, u01748, "dobldobl_quad_parametersB");
   u01749 : constant Version_32 := 16#d101551b#;
   pragma Export (C, u01749, "dobldobl_quad_parametersS");
   u01750 : constant Version_32 := 16#0a04f76a#;
   pragma Export (C, u01750, "dobldobl_quad_sweepersB");
   u01751 : constant Version_32 := 16#eebbc44c#;
   pragma Export (C, u01751, "dobldobl_quad_sweepersS");
   u01752 : constant Version_32 := 16#9aef0857#;
   pragma Export (C, u01752, "dobldobl_quad_turn_pointsB");
   u01753 : constant Version_32 := 16#4e99f9bf#;
   pragma Export (C, u01753, "dobldobl_quad_turn_pointsS");
   u01754 : constant Version_32 := 16#05f504fc#;
   pragma Export (C, u01754, "dobldobl_quad_turn_points_ioB");
   u01755 : constant Version_32 := 16#4ccac32f#;
   pragma Export (C, u01755, "dobldobl_quad_turn_points_ioS");
   u01756 : constant Version_32 := 16#f900f285#;
   pragma Export (C, u01756, "double_double_eigenvaluesB");
   u01757 : constant Version_32 := 16#7612ca2a#;
   pragma Export (C, u01757, "double_double_eigenvaluesS");
   u01758 : constant Version_32 := 16#3dddafe1#;
   pragma Export (C, u01758, "double_double_jaco_matricesB");
   u01759 : constant Version_32 := 16#61c9a7dc#;
   pragma Export (C, u01759, "double_double_jaco_matricesS");
   u01760 : constant Version_32 := 16#942c307e#;
   pragma Export (C, u01760, "double_double_poly_functionsB");
   u01761 : constant Version_32 := 16#06478fe6#;
   pragma Export (C, u01761, "double_double_poly_functionsS");
   u01762 : constant Version_32 := 16#d000b9aa#;
   pragma Export (C, u01762, "double_double_poly_sysfunB");
   u01763 : constant Version_32 := 16#bf4189d6#;
   pragma Export (C, u01763, "double_double_poly_sysfunS");
   u01764 : constant Version_32 := 16#754950be#;
   pragma Export (C, u01764, "double_double_poly_systems_ioB");
   u01765 : constant Version_32 := 16#2725595e#;
   pragma Export (C, u01765, "double_double_poly_systems_ioS");
   u01766 : constant Version_32 := 16#cd2a784a#;
   pragma Export (C, u01766, "double_double_two_normsB");
   u01767 : constant Version_32 := 16#c225ea30#;
   pragma Export (C, u01767, "double_double_two_normsS");
   u01768 : constant Version_32 := 16#c850508a#;
   pragma Export (C, u01768, "parse_polynomial_exceptionsS");
   u01769 : constant Version_32 := 16#48e76875#;
   pragma Export (C, u01769, "parse_strings_to_polynomialsB");
   u01770 : constant Version_32 := 16#1efac3e0#;
   pragma Export (C, u01770, "parse_strings_to_polynomialsS");
   u01771 : constant Version_32 := 16#668e5036#;
   pragma Export (C, u01771, "partitions_of_sets_of_unknownsB");
   u01772 : constant Version_32 := 16#cdc30aee#;
   pragma Export (C, u01772, "partitions_of_sets_of_unknownsS");
   u01773 : constant Version_32 := 16#453ca8a6#;
   pragma Export (C, u01773, "partitions_of_sets_of_unknowns_ioB");
   u01774 : constant Version_32 := 16#0bf93249#;
   pragma Export (C, u01774, "partitions_of_sets_of_unknowns_ioS");
   u01775 : constant Version_32 := 16#c8212a1a#;
   pragma Export (C, u01775, "path_counts_tableB");
   u01776 : constant Version_32 := 16#b8ae808d#;
   pragma Export (C, u01776, "path_counts_tableS");
   u01777 : constant Version_32 := 16#fc9e5ea1#;
   pragma Export (C, u01777, "penta_double_numbersB");
   u01778 : constant Version_32 := 16#facdb729#;
   pragma Export (C, u01778, "penta_double_numbersS");
   u01779 : constant Version_32 := 16#c158b379#;
   pragma Export (C, u01779, "penta_double_numbers_ioB");
   u01780 : constant Version_32 := 16#30d72567#;
   pragma Export (C, u01780, "penta_double_numbers_ioS");
   u01781 : constant Version_32 := 16#aa0cc26a#;
   pragma Export (C, u01781, "pentdobl_coefficient_homotopyB");
   u01782 : constant Version_32 := 16#fa0dc55d#;
   pragma Export (C, u01782, "pentdobl_coefficient_homotopyS");
   u01783 : constant Version_32 := 16#36c5e459#;
   pragma Export (C, u01783, "pentdobl_complex_jaco_matricesB");
   u01784 : constant Version_32 := 16#84a2c341#;
   pragma Export (C, u01784, "pentdobl_complex_jaco_matricesS");
   u01785 : constant Version_32 := 16#cbd4884a#;
   pragma Export (C, u01785, "pentdobl_complex_linear_solversB");
   u01786 : constant Version_32 := 16#3081f711#;
   pragma Export (C, u01786, "pentdobl_complex_linear_solversS");
   u01787 : constant Version_32 := 16#dd59e9a1#;
   pragma Export (C, u01787, "pentdobl_complex_matricesB");
   u01788 : constant Version_32 := 16#3e1de156#;
   pragma Export (C, u01788, "pentdobl_complex_matricesS");
   u01789 : constant Version_32 := 16#b4bf41fd#;
   pragma Export (C, u01789, "pentdobl_complex_numbersB");
   u01790 : constant Version_32 := 16#0fdaa8bb#;
   pragma Export (C, u01790, "pentdobl_complex_numbersS");
   u01791 : constant Version_32 := 16#79a221e9#;
   pragma Export (C, u01791, "penta_double_ringS");
   u01792 : constant Version_32 := 16#cdbec1dc#;
   pragma Export (C, u01792, "penta_double_ring__ffieldS");
   u01793 : constant Version_32 := 16#58ba88d6#;
   pragma Export (C, u01793, "pentdobl_complex_numbers_ioB");
   u01794 : constant Version_32 := 16#f9167a49#;
   pragma Export (C, u01794, "pentdobl_complex_numbers_ioS");
   u01795 : constant Version_32 := 16#f1455556#;
   pragma Export (C, u01795, "pentdobl_complex_numbers_polarB");
   u01796 : constant Version_32 := 16#41c25d2b#;
   pragma Export (C, u01796, "pentdobl_complex_numbers_polarS");
   u01797 : constant Version_32 := 16#756ba147#;
   pragma Export (C, u01797, "penta_double_constantsS");
   u01798 : constant Version_32 := 16#44beb795#;
   pragma Export (C, u01798, "pentdobl_complex_poly_functionsB");
   u01799 : constant Version_32 := 16#2f7184ba#;
   pragma Export (C, u01799, "pentdobl_complex_poly_functionsS");
   u01800 : constant Version_32 := 16#90c1fcd4#;
   pragma Export (C, u01800, "pentdobl_complex_poly_sysfunB");
   u01801 : constant Version_32 := 16#87d5f7cd#;
   pragma Export (C, u01801, "pentdobl_complex_poly_sysfunS");
   u01802 : constant Version_32 := 16#a94fcefd#;
   pragma Export (C, u01802, "pentdobl_complex_poly_systemsB");
   u01803 : constant Version_32 := 16#8dc3d370#;
   pragma Export (C, u01803, "pentdobl_complex_poly_systemsS");
   u01804 : constant Version_32 := 16#164abaf4#;
   pragma Export (C, u01804, "pentdobl_complex_poly_systems_ioB");
   u01805 : constant Version_32 := 16#3d7f01b4#;
   pragma Export (C, u01805, "pentdobl_complex_poly_systems_ioS");
   u01806 : constant Version_32 := 16#d8e89970#;
   pragma Export (C, u01806, "pentdobl_complex_polynomialsB");
   u01807 : constant Version_32 := 16#98e57292#;
   pragma Export (C, u01807, "pentdobl_complex_polynomialsS");
   u01808 : constant Version_32 := 16#fd5a1a0d#;
   pragma Export (C, u01808, "pentdobl_complex_polynomials_ioB");
   u01809 : constant Version_32 := 16#b4bc43d4#;
   pragma Export (C, u01809, "pentdobl_complex_polynomials_ioS");
   u01810 : constant Version_32 := 16#71d34c60#;
   pragma Export (C, u01810, "pentdobl_complex_qr_least_squaresB");
   u01811 : constant Version_32 := 16#aecec5b6#;
   pragma Export (C, u01811, "pentdobl_complex_qr_least_squaresS");
   u01812 : constant Version_32 := 16#1693b5a3#;
   pragma Export (C, u01812, "pentdobl_complex_ringS");
   u01813 : constant Version_32 := 16#6a5d1c74#;
   pragma Export (C, u01813, "pentdobl_complex_seriesB");
   u01814 : constant Version_32 := 16#cc94118d#;
   pragma Export (C, u01814, "pentdobl_complex_seriesS");
   u01815 : constant Version_32 := 16#606fc359#;
   pragma Export (C, u01815, "pentdobl_complex_series_functionsB");
   u01816 : constant Version_32 := 16#01d03c0a#;
   pragma Export (C, u01816, "pentdobl_complex_series_functionsS");
   u01817 : constant Version_32 := 16#fc250f50#;
   pragma Export (C, u01817, "pentdobl_complex_series_ioB");
   u01818 : constant Version_32 := 16#4ffdd2f1#;
   pragma Export (C, u01818, "pentdobl_complex_series_ioS");
   u01819 : constant Version_32 := 16#436b5491#;
   pragma Export (C, u01819, "pentdobl_complex_series_matricesB");
   u01820 : constant Version_32 := 16#8513022d#;
   pragma Export (C, u01820, "pentdobl_complex_series_matricesS");
   u01821 : constant Version_32 := 16#03f2c681#;
   pragma Export (C, u01821, "pentdobl_complex_series_ringS");
   u01822 : constant Version_32 := 16#cb15d1e5#;
   pragma Export (C, u01822, "pentdobl_complex_series_vectorsB");
   u01823 : constant Version_32 := 16#c1edd6e2#;
   pragma Export (C, u01823, "pentdobl_complex_series_vectorsS");
   u01824 : constant Version_32 := 16#a0df08c7#;
   pragma Export (C, u01824, "pentdobl_complex_series_vecvecsB");
   u01825 : constant Version_32 := 16#7f3a926d#;
   pragma Export (C, u01825, "pentdobl_complex_series_vecvecsS");
   u01826 : constant Version_32 := 16#f28a5e78#;
   pragma Export (C, u01826, "pentdobl_complex_singular_valuesB");
   u01827 : constant Version_32 := 16#4dce781a#;
   pragma Export (C, u01827, "pentdobl_complex_singular_valuesS");
   u01828 : constant Version_32 := 16#1d48bbeb#;
   pragma Export (C, u01828, "pentdobl_complex_solutionsB");
   u01829 : constant Version_32 := 16#5811ee9b#;
   pragma Export (C, u01829, "pentdobl_complex_solutionsS");
   u01830 : constant Version_32 := 16#3a229a3c#;
   pragma Export (C, u01830, "multprec_pentdobl_convertorsB");
   u01831 : constant Version_32 := 16#6a52019b#;
   pragma Export (C, u01831, "multprec_pentdobl_convertorsS");
   u01832 : constant Version_32 := 16#0d04836f#;
   pragma Export (C, u01832, "pentdobl_complex_numbers_cvB");
   u01833 : constant Version_32 := 16#89362f62#;
   pragma Export (C, u01833, "pentdobl_complex_numbers_cvS");
   u01834 : constant Version_32 := 16#940d409f#;
   pragma Export (C, u01834, "pentdobl_complex_vecmatsB");
   u01835 : constant Version_32 := 16#ba20d280#;
   pragma Export (C, u01835, "pentdobl_complex_vecmatsS");
   u01836 : constant Version_32 := 16#7ecb757e#;
   pragma Export (C, u01836, "pentdobl_complex_vector_normsB");
   u01837 : constant Version_32 := 16#7bd7a934#;
   pragma Export (C, u01837, "pentdobl_complex_vector_normsS");
   u01838 : constant Version_32 := 16#25aaa105#;
   pragma Export (C, u01838, "pentdobl_complex_vectorsB");
   u01839 : constant Version_32 := 16#e4d188a9#;
   pragma Export (C, u01839, "pentdobl_complex_vectorsS");
   u01840 : constant Version_32 := 16#ab50baac#;
   pragma Export (C, u01840, "pentdobl_complex_vectors_cvB");
   u01841 : constant Version_32 := 16#fa916514#;
   pragma Export (C, u01841, "pentdobl_complex_vectors_cvS");
   u01842 : constant Version_32 := 16#31909d4f#;
   pragma Export (C, u01842, "pentdobl_complex_vectors_ioB");
   u01843 : constant Version_32 := 16#fbb8ab7e#;
   pragma Export (C, u01843, "pentdobl_complex_vectors_ioS");
   u01844 : constant Version_32 := 16#220b12f6#;
   pragma Export (C, u01844, "pentdobl_complex_ring_ioS");
   u01845 : constant Version_32 := 16#aeca69ac#;
   pragma Export (C, u01845, "pentdobl_complex_vecvecsB");
   u01846 : constant Version_32 := 16#5413ad4d#;
   pragma Export (C, u01846, "pentdobl_complex_vecvecsS");
   u01847 : constant Version_32 := 16#bd8a80ca#;
   pragma Export (C, u01847, "pentdobl_cseries_jaco_matricesB");
   u01848 : constant Version_32 := 16#f3587d44#;
   pragma Export (C, u01848, "pentdobl_cseries_jaco_matricesS");
   u01849 : constant Version_32 := 16#16e5acb5#;
   pragma Export (C, u01849, "pentdobl_cseries_poly_functionsB");
   u01850 : constant Version_32 := 16#8f6de0cc#;
   pragma Export (C, u01850, "pentdobl_cseries_poly_functionsS");
   u01851 : constant Version_32 := 16#564fd597#;
   pragma Export (C, u01851, "pentdobl_cseries_poly_sysfunB");
   u01852 : constant Version_32 := 16#e552906b#;
   pragma Export (C, u01852, "pentdobl_cseries_poly_sysfunS");
   u01853 : constant Version_32 := 16#a34f8505#;
   pragma Export (C, u01853, "pentdobl_cseries_poly_systemsB");
   u01854 : constant Version_32 := 16#9b3b973e#;
   pragma Export (C, u01854, "pentdobl_cseries_poly_systemsS");
   u01855 : constant Version_32 := 16#0f93b86d#;
   pragma Export (C, u01855, "pentdobl_cseries_polynomialsB");
   u01856 : constant Version_32 := 16#841d7d24#;
   pragma Export (C, u01856, "pentdobl_cseries_polynomialsS");
   u01857 : constant Version_32 := 16#80e806a7#;
   pragma Export (C, u01857, "pentdobl_fabry_on_homotopyB");
   u01858 : constant Version_32 := 16#e2b23235#;
   pragma Export (C, u01858, "pentdobl_fabry_on_homotopyS");
   u01859 : constant Version_32 := 16#6edc8a6b#;
   pragma Export (C, u01859, "pentdobl_complex_vecvecs_ioB");
   u01860 : constant Version_32 := 16#7ecf78a4#;
   pragma Export (C, u01860, "pentdobl_complex_vecvecs_ioS");
   u01861 : constant Version_32 := 16#75680fc8#;
   pragma Export (C, u01861, "pentdobl_homotopyB");
   u01862 : constant Version_32 := 16#7b0a5170#;
   pragma Export (C, u01862, "pentdobl_homotopyS");
   u01863 : constant Version_32 := 16#e3fa3d80#;
   pragma Export (C, u01863, "pentdobl_homotopy_convolutions_ioB");
   u01864 : constant Version_32 := 16#6b566fef#;
   pragma Export (C, u01864, "pentdobl_homotopy_convolutions_ioS");
   u01865 : constant Version_32 := 16#3844ddac#;
   pragma Export (C, u01865, "pentdobl_mathematical_functionsB");
   u01866 : constant Version_32 := 16#75c2172e#;
   pragma Export (C, u01866, "pentdobl_mathematical_functionsS");
   u01867 : constant Version_32 := 16#4f23cef6#;
   pragma Export (C, u01867, "pentdobl_newton_convolution_stepsB");
   u01868 : constant Version_32 := 16#df61e13a#;
   pragma Export (C, u01868, "pentdobl_newton_convolution_stepsS");
   u01869 : constant Version_32 := 16#8c22809f#;
   pragma Export (C, u01869, "pentdobl_newton_convolutionsB");
   u01870 : constant Version_32 := 16#274046d5#;
   pragma Export (C, u01870, "pentdobl_newton_convolutionsS");
   u01871 : constant Version_32 := 16#88bae3cf#;
   pragma Export (C, u01871, "pentdobl_parameter_systemsB");
   u01872 : constant Version_32 := 16#d7269d99#;
   pragma Export (C, u01872, "pentdobl_parameter_systemsS");
   u01873 : constant Version_32 := 16#2dddf237#;
   pragma Export (C, u01873, "pentdobl_complex_solutions_ioB");
   u01874 : constant Version_32 := 16#0c3574f7#;
   pragma Export (C, u01874, "pentdobl_complex_solutions_ioS");
   u01875 : constant Version_32 := 16#452c5d9c#;
   pragma Export (C, u01875, "pentdobl_polynomial_convertorsB");
   u01876 : constant Version_32 := 16#ebcf6bc2#;
   pragma Export (C, u01876, "pentdobl_polynomial_convertorsS");
   u01877 : constant Version_32 := 16#879a9555#;
   pragma Export (C, u01877, "penta_double_poly_systemsB");
   u01878 : constant Version_32 := 16#546ea281#;
   pragma Export (C, u01878, "penta_double_poly_systemsS");
   u01879 : constant Version_32 := 16#d6d25310#;
   pragma Export (C, u01879, "penta_double_polynomialsB");
   u01880 : constant Version_32 := 16#6f9d58cb#;
   pragma Export (C, u01880, "penta_double_polynomialsS");
   u01881 : constant Version_32 := 16#3012a0d0#;
   pragma Export (C, u01881, "pentdobl_complex_laur_systemsB");
   u01882 : constant Version_32 := 16#6612cd86#;
   pragma Export (C, u01882, "pentdobl_complex_laur_systemsS");
   u01883 : constant Version_32 := 16#b2ac8e07#;
   pragma Export (C, u01883, "pentdobl_complex_laurentialsB");
   u01884 : constant Version_32 := 16#7b140e41#;
   pragma Export (C, u01884, "pentdobl_complex_laurentialsS");
   u01885 : constant Version_32 := 16#cea45dd7#;
   pragma Export (C, u01885, "pentdobl_random_numbersB");
   u01886 : constant Version_32 := 16#fae35503#;
   pragma Export (C, u01886, "pentdobl_random_numbersS");
   u01887 : constant Version_32 := 16#4b22d51d#;
   pragma Export (C, u01887, "pentdobl_series_matrix_solversB");
   u01888 : constant Version_32 := 16#67203e74#;
   pragma Export (C, u01888, "pentdobl_series_matrix_solversS");
   u01889 : constant Version_32 := 16#9a940e89#;
   pragma Export (C, u01889, "pentdobl_complex_matrix_seriesB");
   u01890 : constant Version_32 := 16#fdf8608d#;
   pragma Export (C, u01890, "pentdobl_complex_matrix_seriesS");
   u01891 : constant Version_32 := 16#8e0229cd#;
   pragma Export (C, u01891, "pentdobl_complex_vector_seriesB");
   u01892 : constant Version_32 := 16#c1611f27#;
   pragma Export (C, u01892, "pentdobl_complex_vector_seriesS");
   u01893 : constant Version_32 := 16#4d9b85af#;
   pragma Export (C, u01893, "pentdobl_echelon_formsB");
   u01894 : constant Version_32 := 16#ca2d0c13#;
   pragma Export (C, u01894, "pentdobl_echelon_formsS");
   u01895 : constant Version_32 := 16#3f76b219#;
   pragma Export (C, u01895, "pentdobl_interpolating_cseriesB");
   u01896 : constant Version_32 := 16#e9d52c0d#;
   pragma Export (C, u01896, "pentdobl_interpolating_cseriesS");
   u01897 : constant Version_32 := 16#7b05173f#;
   pragma Export (C, u01897, "penta_double_vectorsB");
   u01898 : constant Version_32 := 16#433cdeaa#;
   pragma Export (C, u01898, "penta_double_vectorsS");
   u01899 : constant Version_32 := 16#27460517#;
   pragma Export (C, u01899, "penta_double_vectors_ioB");
   u01900 : constant Version_32 := 16#b805137c#;
   pragma Export (C, u01900, "penta_double_vectors_ioS");
   u01901 : constant Version_32 := 16#f0df2de9#;
   pragma Export (C, u01901, "penta_double_ring_ioS");
   u01902 : constant Version_32 := 16#c8a69571#;
   pragma Export (C, u01902, "pentdobl_complex_matrices_ioB");
   u01903 : constant Version_32 := 16#bbb703d5#;
   pragma Export (C, u01903, "pentdobl_complex_matrices_ioS");
   u01904 : constant Version_32 := 16#1bbf1636#;
   pragma Export (C, u01904, "pentdobl_random_vectorsB");
   u01905 : constant Version_32 := 16#e62511d9#;
   pragma Export (C, u01905, "pentdobl_random_vectorsS");
   u01906 : constant Version_32 := 16#b05385c4#;
   pragma Export (C, u01906, "pentdobl_speelpenning_convolutionsB");
   u01907 : constant Version_32 := 16#96c4bde4#;
   pragma Export (C, u01907, "pentdobl_speelpenning_convolutionsS");
   u01908 : constant Version_32 := 16#70ff3aa9#;
   pragma Export (C, u01908, "pentdobl_system_and_solutions_ioB");
   u01909 : constant Version_32 := 16#fcad9db4#;
   pragma Export (C, u01909, "pentdobl_system_and_solutions_ioS");
   u01910 : constant Version_32 := 16#ef1151dc#;
   pragma Export (C, u01910, "pentdobl_complex_laur_systems_ioB");
   u01911 : constant Version_32 := 16#8a4a472a#;
   pragma Export (C, u01911, "pentdobl_complex_laur_systems_ioS");
   u01912 : constant Version_32 := 16#a9382569#;
   pragma Export (C, u01912, "pentdobl_complex_laurentials_ioB");
   u01913 : constant Version_32 := 16#3a328c97#;
   pragma Export (C, u01913, "pentdobl_complex_laurentials_ioS");
   u01914 : constant Version_32 := 16#71590137#;
   pragma Export (C, u01914, "permutationsB");
   u01915 : constant Version_32 := 16#c7371ce2#;
   pragma Export (C, u01915, "permutationsS");
   u01916 : constant Version_32 := 16#01a0a638#;
   pragma Export (C, u01916, "permutations_of_facesB");
   u01917 : constant Version_32 := 16#2ac5ae0e#;
   pragma Export (C, u01917, "permutations_of_facesS");
   u01918 : constant Version_32 := 16#65125c8d#;
   pragma Export (C, u01918, "permute_operationsB");
   u01919 : constant Version_32 := 16#7fc75d2c#;
   pragma Export (C, u01919, "permute_operationsS");
   u01920 : constant Version_32 := 16#de9a1e99#;
   pragma Export (C, u01920, "phcpack_operationsB");
   u01921 : constant Version_32 := 16#14596450#;
   pragma Export (C, u01921, "phcpack_operationsS");
   u01922 : constant Version_32 := 16#4c7ce1c3#;
   pragma Export (C, u01922, "numerical_tropisms_containerB");
   u01923 : constant Version_32 := 16#1a7ec09e#;
   pragma Export (C, u01923, "numerical_tropisms_containerS");
   u01924 : constant Version_32 := 16#4c121adb#;
   pragma Export (C, u01924, "pieri_continuationB");
   u01925 : constant Version_32 := 16#aa7e4f07#;
   pragma Export (C, u01925, "pieri_continuationS");
   u01926 : constant Version_32 := 16#f48459d7#;
   pragma Export (C, u01926, "pieri_homotopiesB");
   u01927 : constant Version_32 := 16#8605a9dc#;
   pragma Export (C, u01927, "pieri_homotopiesS");
   u01928 : constant Version_32 := 16#c055c36d#;
   pragma Export (C, u01928, "pieri_solverB");
   u01929 : constant Version_32 := 16#66e67b66#;
   pragma Export (C, u01929, "pieri_solverS");
   u01930 : constant Version_32 := 16#87263a31#;
   pragma Export (C, u01930, "c_to_ada_arraysB");
   u01931 : constant Version_32 := 16#6bd23ccb#;
   pragma Export (C, u01931, "c_to_ada_arraysS");
   u01932 : constant Version_32 := 16#31d19735#;
   pragma Export (C, u01932, "complex_polynomial_matricesB");
   u01933 : constant Version_32 := 16#eb832630#;
   pragma Export (C, u01933, "complex_polynomial_matricesS");
   u01934 : constant Version_32 := 16#eba6fa42#;
   pragma Export (C, u01934, "complex_polynomial_matrices_ioB");
   u01935 : constant Version_32 := 16#3c06c637#;
   pragma Export (C, u01935, "complex_polynomial_matrices_ioS");
   u01936 : constant Version_32 := 16#7d4b5e44#;
   pragma Export (C, u01936, "pipelined_labeled_cellsB");
   u01937 : constant Version_32 := 16#ce173f1c#;
   pragma Export (C, u01937, "pipelined_labeled_cellsS");
   u01938 : constant Version_32 := 16#56646774#;
   pragma Export (C, u01938, "mixed_labels_queueB");
   u01939 : constant Version_32 := 16#af523e4d#;
   pragma Export (C, u01939, "mixed_labels_queueS");
   u01940 : constant Version_32 := 16#016d045c#;
   pragma Export (C, u01940, "pipelined_polyhedral_driversB");
   u01941 : constant Version_32 := 16#86d6a61c#;
   pragma Export (C, u01941, "pipelined_polyhedral_driversS");
   u01942 : constant Version_32 := 16#535554a7#;
   pragma Export (C, u01942, "pipelined_polyhedral_homotopiesB");
   u01943 : constant Version_32 := 16#d8d6e9c8#;
   pragma Export (C, u01943, "pipelined_polyhedral_homotopiesS");
   u01944 : constant Version_32 := 16#eb8d66e6#;
   pragma Export (C, u01944, "pipelined_cell_indicesB");
   u01945 : constant Version_32 := 16#cac11b4e#;
   pragma Export (C, u01945, "pipelined_cell_indicesS");
   u01946 : constant Version_32 := 16#693e7734#;
   pragma Export (C, u01946, "pipelined_cell_trackersB");
   u01947 : constant Version_32 := 16#d0772966#;
   pragma Export (C, u01947, "pipelined_cell_trackersS");
   u01948 : constant Version_32 := 16#0b9b8beb#;
   pragma Export (C, u01948, "pipelined_polyhedral_trackersB");
   u01949 : constant Version_32 := 16#2ce678b4#;
   pragma Export (C, u01949, "pipelined_polyhedral_trackersS");
   u01950 : constant Version_32 := 16#4e54dad3#;
   pragma Export (C, u01950, "pivot_selectionB");
   u01951 : constant Version_32 := 16#705ed521#;
   pragma Export (C, u01951, "pivot_selectionS");
   u01952 : constant Version_32 := 16#15aadfe7#;
   pragma Export (C, u01952, "plane_representationsB");
   u01953 : constant Version_32 := 16#82fb7497#;
   pragma Export (C, u01953, "plane_representationsS");
   u01954 : constant Version_32 := 16#23c9bfd6#;
   pragma Export (C, u01954, "planes_and_polynomialsB");
   u01955 : constant Version_32 := 16#c45388c6#;
   pragma Export (C, u01955, "planes_and_polynomialsS");
   u01956 : constant Version_32 := 16#a8b3b316#;
   pragma Export (C, u01956, "polyhedral_coefficient_homotopiesB");
   u01957 : constant Version_32 := 16#9a11ec79#;
   pragma Export (C, u01957, "polyhedral_coefficient_homotopiesS");
   u01958 : constant Version_32 := 16#a56b3125#;
   pragma Export (C, u01958, "polyhedral_coefficient_parametersB");
   u01959 : constant Version_32 := 16#97a7dd07#;
   pragma Export (C, u01959, "polyhedral_coefficient_parametersS");
   u01960 : constant Version_32 := 16#bedee9ae#;
   pragma Export (C, u01960, "polyhedral_coefficient_trackersB");
   u01961 : constant Version_32 := 16#a28a77c8#;
   pragma Export (C, u01961, "polyhedral_coefficient_trackersS");
   u01962 : constant Version_32 := 16#325e39a8#;
   pragma Export (C, u01962, "polyhedral_coefficient_correctorsB");
   u01963 : constant Version_32 := 16#d65b3891#;
   pragma Export (C, u01963, "polyhedral_coefficient_correctorsS");
   u01964 : constant Version_32 := 16#ad390f37#;
   pragma Export (C, u01964, "polyhedral_coefficient_predictorsB");
   u01965 : constant Version_32 := 16#0dd020ea#;
   pragma Export (C, u01965, "polyhedral_coefficient_predictorsS");
   u01966 : constant Version_32 := 16#ce865699#;
   pragma Export (C, u01966, "polyhedral_start_systemsB");
   u01967 : constant Version_32 := 16#730001fc#;
   pragma Export (C, u01967, "polyhedral_start_systemsS");
   u01968 : constant Version_32 := 16#0347267e#;
   pragma Export (C, u01968, "dobldobl_tableau_formatsB");
   u01969 : constant Version_32 := 16#610d6971#;
   pragma Export (C, u01969, "dobldobl_tableau_formatsS");
   u01970 : constant Version_32 := 16#c28f0e15#;
   pragma Export (C, u01970, "polynomial_homotopy_continuationB");
   u01971 : constant Version_32 := 16#a0cec6c3#;
   pragma Export (C, u01971, "polynomial_homotopy_continuationS");
   u01972 : constant Version_32 := 16#73bd2ab1#;
   pragma Export (C, u01972, "driver_for_root_refiningB");
   u01973 : constant Version_32 := 16#6b86617a#;
   pragma Export (C, u01973, "driver_for_root_refiningS");
   u01974 : constant Version_32 := 16#37cf4811#;
   pragma Export (C, u01974, "predictor_corrector_trackersB");
   u01975 : constant Version_32 := 16#15238487#;
   pragma Export (C, u01975, "predictor_corrector_trackersS");
   u01976 : constant Version_32 := 16#4cdebbef#;
   pragma Export (C, u01976, "predictor_corrector_loopsB");
   u01977 : constant Version_32 := 16#49155c6b#;
   pragma Export (C, u01977, "predictor_corrector_loopsS");
   u01978 : constant Version_32 := 16#8c99136e#;
   pragma Export (C, u01978, "hyperplane_convolution_scalingB");
   u01979 : constant Version_32 := 16#0bc2f400#;
   pragma Export (C, u01979, "hyperplane_convolution_scalingS");
   u01980 : constant Version_32 := 16#f68d20bc#;
   pragma Export (C, u01980, "prepare_for_mvB");
   u01981 : constant Version_32 := 16#7ca6be85#;
   pragma Export (C, u01981, "prepare_for_mvS");
   u01982 : constant Version_32 := 16#14eec5a6#;
   pragma Export (C, u01982, "process_ioB");
   u01983 : constant Version_32 := 16#fdf3895b#;
   pragma Export (C, u01983, "process_ioS");
   u01984 : constant Version_32 := 16#a0a0014f#;
   pragma Export (C, u01984, "projection_operatorsB");
   u01985 : constant Version_32 := 16#aafef1b4#;
   pragma Export (C, u01985, "projection_operatorsS");
   u01986 : constant Version_32 := 16#781a79ab#;
   pragma Export (C, u01986, "projective_transformationsB");
   u01987 : constant Version_32 := 16#85ff0410#;
   pragma Export (C, u01987, "projective_transformationsS");
   u01988 : constant Version_32 := 16#6133b550#;
   pragma Export (C, u01988, "prompt_for_solutionsB");
   u01989 : constant Version_32 := 16#4ed673aa#;
   pragma Export (C, u01989, "prompt_for_solutionsS");
   u01990 : constant Version_32 := 16#a253d726#;
   pragma Export (C, u01990, "prompt_for_systemsB");
   u01991 : constant Version_32 := 16#7bf474bd#;
   pragma Export (C, u01991, "prompt_for_systemsS");
   u01992 : constant Version_32 := 16#ae451c9d#;
   pragma Export (C, u01992, "pruning_statisticsB");
   u01993 : constant Version_32 := 16#acd484f4#;
   pragma Export (C, u01993, "pruning_statisticsS");
   u01994 : constant Version_32 := 16#c6e1382a#;
   pragma Export (C, u01994, "quad_double_constantsS");
   u01995 : constant Version_32 := 16#e6a64841#;
   pragma Export (C, u01995, "quad_double_jaco_matricesB");
   u01996 : constant Version_32 := 16#fdc7bd9c#;
   pragma Export (C, u01996, "quad_double_jaco_matricesS");
   u01997 : constant Version_32 := 16#a78b8dcc#;
   pragma Export (C, u01997, "quad_double_linear_solversB");
   u01998 : constant Version_32 := 16#99528699#;
   pragma Export (C, u01998, "quad_double_linear_solversS");
   u01999 : constant Version_32 := 16#efda1b93#;
   pragma Export (C, u01999, "quad_double_matricesB");
   u02000 : constant Version_32 := 16#9e986fa6#;
   pragma Export (C, u02000, "quad_double_matricesS");
   u02001 : constant Version_32 := 16#3f6ee7f4#;
   pragma Export (C, u02001, "quad_double_numbersB");
   u02002 : constant Version_32 := 16#73eef75e#;
   pragma Export (C, u02002, "quad_double_numbersS");
   u02003 : constant Version_32 := 16#dc157342#;
   pragma Export (C, u02003, "quad_double_numbers_ioB");
   u02004 : constant Version_32 := 16#bf02e19b#;
   pragma Export (C, u02004, "quad_double_numbers_ioS");
   u02005 : constant Version_32 := 16#d36789b7#;
   pragma Export (C, u02005, "quad_double_poly_functionsB");
   u02006 : constant Version_32 := 16#65f50459#;
   pragma Export (C, u02006, "quad_double_poly_functionsS");
   u02007 : constant Version_32 := 16#74185b54#;
   pragma Export (C, u02007, "quad_double_poly_sysfunB");
   u02008 : constant Version_32 := 16#1c50d73a#;
   pragma Export (C, u02008, "quad_double_poly_sysfunS");
   u02009 : constant Version_32 := 16#68e27e3a#;
   pragma Export (C, u02009, "quad_double_poly_systemsB");
   u02010 : constant Version_32 := 16#cf295147#;
   pragma Export (C, u02010, "quad_double_poly_systemsS");
   u02011 : constant Version_32 := 16#97b35b73#;
   pragma Export (C, u02011, "quad_double_polynomialsB");
   u02012 : constant Version_32 := 16#1ba24062#;
   pragma Export (C, u02012, "quad_double_polynomialsS");
   u02013 : constant Version_32 := 16#d8da2244#;
   pragma Export (C, u02013, "quad_double_renormalizationsB");
   u02014 : constant Version_32 := 16#cf9b062a#;
   pragma Export (C, u02014, "quad_double_renormalizationsS");
   u02015 : constant Version_32 := 16#bae5ca43#;
   pragma Export (C, u02015, "quad_double_ringS");
   u02016 : constant Version_32 := 16#9d362e2d#;
   pragma Export (C, u02016, "quad_double_ring__ffieldS");
   u02017 : constant Version_32 := 16#7bb02d34#;
   pragma Export (C, u02017, "quad_double_vectorsB");
   u02018 : constant Version_32 := 16#76d7f46b#;
   pragma Export (C, u02018, "quad_double_vectorsS");
   u02019 : constant Version_32 := 16#85914a32#;
   pragma Export (C, u02019, "quad_double_vectors_ioB");
   u02020 : constant Version_32 := 16#77f12767#;
   pragma Export (C, u02020, "quad_double_vectors_ioS");
   u02021 : constant Version_32 := 16#d1db438a#;
   pragma Export (C, u02021, "quad_double_ring_ioS");
   u02022 : constant Version_32 := 16#5abfdeff#;
   pragma Export (C, u02022, "quad_double_vecvecsB");
   u02023 : constant Version_32 := 16#326066dc#;
   pragma Export (C, u02023, "quad_double_vecvecsS");
   u02024 : constant Version_32 := 16#8a1ead80#;
   pragma Export (C, u02024, "quaddobl_binomial_solversB");
   u02025 : constant Version_32 := 16#700f9bd4#;
   pragma Export (C, u02025, "quaddobl_binomial_solversS");
   u02026 : constant Version_32 := 16#976bcd33#;
   pragma Export (C, u02026, "quaddobl_binomial_systemsB");
   u02027 : constant Version_32 := 16#abbc66ce#;
   pragma Export (C, u02027, "quaddobl_binomial_systemsS");
   u02028 : constant Version_32 := 16#8508e5d1#;
   pragma Export (C, u02028, "quaddobl_blackbox_continuationsB");
   u02029 : constant Version_32 := 16#24e86142#;
   pragma Export (C, u02029, "quaddobl_blackbox_continuationsS");
   u02030 : constant Version_32 := 16#0892efaf#;
   pragma Export (C, u02030, "quaddobl_blackbox_refinersB");
   u02031 : constant Version_32 := 16#b98c2bda#;
   pragma Export (C, u02031, "quaddobl_blackbox_refinersS");
   u02032 : constant Version_32 := 16#30f325e1#;
   pragma Export (C, u02032, "quaddobl_blackbox_solversB");
   u02033 : constant Version_32 := 16#02bd5d94#;
   pragma Export (C, u02033, "quaddobl_blackbox_solversS");
   u02034 : constant Version_32 := 16#16eca992#;
   pragma Export (C, u02034, "quaddobl_bracket_polynomialsB");
   u02035 : constant Version_32 := 16#27b76c2c#;
   pragma Export (C, u02035, "quaddobl_bracket_polynomialsS");
   u02036 : constant Version_32 := 16#779e907a#;
   pragma Export (C, u02036, "quaddobl_bracket_systemsB");
   u02037 : constant Version_32 := 16#700bb255#;
   pragma Export (C, u02037, "quaddobl_bracket_systemsS");
   u02038 : constant Version_32 := 16#6e24dc8a#;
   pragma Export (C, u02038, "quaddobl_coefficient_convolutionsB");
   u02039 : constant Version_32 := 16#1ad3db36#;
   pragma Export (C, u02039, "quaddobl_coefficient_convolutionsS");
   u02040 : constant Version_32 := 16#f3efaa18#;
   pragma Export (C, u02040, "quaddobl_coefficient_homotopyB");
   u02041 : constant Version_32 := 16#49493bdd#;
   pragma Export (C, u02041, "quaddobl_coefficient_homotopyS");
   u02042 : constant Version_32 := 16#267c8908#;
   pragma Export (C, u02042, "quaddobl_complex_exponentiationB");
   u02043 : constant Version_32 := 16#260bbbd2#;
   pragma Export (C, u02043, "quaddobl_complex_exponentiationS");
   u02044 : constant Version_32 := 16#aad21012#;
   pragma Export (C, u02044, "quaddobl_complex_jaco_matricesB");
   u02045 : constant Version_32 := 16#1ceb2a1f#;
   pragma Export (C, u02045, "quaddobl_complex_jaco_matricesS");
   u02046 : constant Version_32 := 16#d2fb7c00#;
   pragma Export (C, u02046, "quaddobl_complex_laur_functionsB");
   u02047 : constant Version_32 := 16#e84e4f3d#;
   pragma Export (C, u02047, "quaddobl_complex_laur_functionsS");
   u02048 : constant Version_32 := 16#9838ef7b#;
   pragma Export (C, u02048, "quaddobl_complex_laur_jacomatsB");
   u02049 : constant Version_32 := 16#b3640fb0#;
   pragma Export (C, u02049, "quaddobl_complex_laur_jacomatsS");
   u02050 : constant Version_32 := 16#4f819bf6#;
   pragma Export (C, u02050, "quaddobl_complex_laur_stringsB");
   u02051 : constant Version_32 := 16#8c4c5210#;
   pragma Export (C, u02051, "quaddobl_complex_laur_stringsS");
   u02052 : constant Version_32 := 16#476c72d8#;
   pragma Export (C, u02052, "quaddobl_complex_laur_sysfunB");
   u02053 : constant Version_32 := 16#dc002bd1#;
   pragma Export (C, u02053, "quaddobl_complex_laur_sysfunS");
   u02054 : constant Version_32 := 16#eabba5a7#;
   pragma Export (C, u02054, "quaddobl_complex_laur_systemsB");
   u02055 : constant Version_32 := 16#467975e7#;
   pragma Export (C, u02055, "quaddobl_complex_laur_systemsS");
   u02056 : constant Version_32 := 16#b2b62f84#;
   pragma Export (C, u02056, "quaddobl_complex_laur_systems_ioB");
   u02057 : constant Version_32 := 16#40762e31#;
   pragma Export (C, u02057, "quaddobl_complex_laur_systems_ioS");
   u02058 : constant Version_32 := 16#8da09e8e#;
   pragma Export (C, u02058, "quaddobl_complex_laurentialsB");
   u02059 : constant Version_32 := 16#81d6b357#;
   pragma Export (C, u02059, "quaddobl_complex_laurentialsS");
   u02060 : constant Version_32 := 16#63eafc6f#;
   pragma Export (C, u02060, "quaddobl_complex_laurentials_ioB");
   u02061 : constant Version_32 := 16#a80b41f3#;
   pragma Export (C, u02061, "quaddobl_complex_laurentials_ioS");
   u02062 : constant Version_32 := 16#2e44b194#;
   pragma Export (C, u02062, "quaddobl_complex_linear_solversB");
   u02063 : constant Version_32 := 16#c5a6b04f#;
   pragma Export (C, u02063, "quaddobl_complex_linear_solversS");
   u02064 : constant Version_32 := 16#8855e00a#;
   pragma Export (C, u02064, "quaddobl_complex_matricesB");
   u02065 : constant Version_32 := 16#21ce4c35#;
   pragma Export (C, u02065, "quaddobl_complex_matricesS");
   u02066 : constant Version_32 := 16#d4ca9bc4#;
   pragma Export (C, u02066, "quaddobl_complex_matrices_ioB");
   u02067 : constant Version_32 := 16#a17df4b0#;
   pragma Export (C, u02067, "quaddobl_complex_matrices_ioS");
   u02068 : constant Version_32 := 16#e4febe7e#;
   pragma Export (C, u02068, "quaddobl_complex_numbersB");
   u02069 : constant Version_32 := 16#cc545363#;
   pragma Export (C, u02069, "quaddobl_complex_numbersS");
   u02070 : constant Version_32 := 16#f549cd34#;
   pragma Export (C, u02070, "quaddobl_complex_numbers_cvB");
   u02071 : constant Version_32 := 16#a2aa433f#;
   pragma Export (C, u02071, "quaddobl_complex_numbers_cvS");
   u02072 : constant Version_32 := 16#fb0c8835#;
   pragma Export (C, u02072, "quaddobl_complex_numbers_ioB");
   u02073 : constant Version_32 := 16#b68e5225#;
   pragma Export (C, u02073, "quaddobl_complex_numbers_ioS");
   u02074 : constant Version_32 := 16#42eb7a81#;
   pragma Export (C, u02074, "quaddobl_complex_numbers_polarB");
   u02075 : constant Version_32 := 16#271703d7#;
   pragma Export (C, u02075, "quaddobl_complex_numbers_polarS");
   u02076 : constant Version_32 := 16#0ffc73e2#;
   pragma Export (C, u02076, "quaddobl_complex_poly_functionsB");
   u02077 : constant Version_32 := 16#899a2f1f#;
   pragma Export (C, u02077, "quaddobl_complex_poly_functionsS");
   u02078 : constant Version_32 := 16#5647f8e0#;
   pragma Export (C, u02078, "quaddobl_complex_poly_matricesB");
   u02079 : constant Version_32 := 16#f5645643#;
   pragma Export (C, u02079, "quaddobl_complex_poly_matricesS");
   u02080 : constant Version_32 := 16#b9d3cbca#;
   pragma Export (C, u02080, "quaddobl_complex_poly_matrices_ioB");
   u02081 : constant Version_32 := 16#647a2818#;
   pragma Export (C, u02081, "quaddobl_complex_poly_matrices_ioS");
   u02082 : constant Version_32 := 16#67c1fc01#;
   pragma Export (C, u02082, "quaddobl_complex_poly_ringS");
   u02083 : constant Version_32 := 16#7bcc91d4#;
   pragma Export (C, u02083, "quaddobl_complex_poly_ring_ioS");
   u02084 : constant Version_32 := 16#7eb42053#;
   pragma Export (C, u02084, "quaddobl_complex_poly_stringsB");
   u02085 : constant Version_32 := 16#f944e1b9#;
   pragma Export (C, u02085, "quaddobl_complex_poly_stringsS");
   u02086 : constant Version_32 := 16#ddec787b#;
   pragma Export (C, u02086, "quaddobl_complex_poly_sysfunB");
   u02087 : constant Version_32 := 16#d687e373#;
   pragma Export (C, u02087, "quaddobl_complex_poly_sysfunS");
   u02088 : constant Version_32 := 16#28e6b01b#;
   pragma Export (C, u02088, "quaddobl_complex_poly_systemsB");
   u02089 : constant Version_32 := 16#6ed2cb13#;
   pragma Export (C, u02089, "quaddobl_complex_poly_systemsS");
   u02090 : constant Version_32 := 16#15d7f30f#;
   pragma Export (C, u02090, "quaddobl_complex_poly_systems_ioB");
   u02091 : constant Version_32 := 16#effd12e9#;
   pragma Export (C, u02091, "quaddobl_complex_poly_systems_ioS");
   u02092 : constant Version_32 := 16#dfbe5d64#;
   pragma Export (C, u02092, "quaddobl_complex_poly_vectorsB");
   u02093 : constant Version_32 := 16#a4b62efd#;
   pragma Export (C, u02093, "quaddobl_complex_poly_vectorsS");
   u02094 : constant Version_32 := 16#7f9e526a#;
   pragma Export (C, u02094, "quaddobl_complex_polynomialsB");
   u02095 : constant Version_32 := 16#fa5d1417#;
   pragma Export (C, u02095, "quaddobl_complex_polynomialsS");
   u02096 : constant Version_32 := 16#b1f49c17#;
   pragma Export (C, u02096, "quaddobl_complex_polynomials_ioB");
   u02097 : constant Version_32 := 16#47e8490f#;
   pragma Export (C, u02097, "quaddobl_complex_polynomials_ioS");
   u02098 : constant Version_32 := 16#43de1ce1#;
   pragma Export (C, u02098, "quaddobl_complex_qr_least_squaresB");
   u02099 : constant Version_32 := 16#3e2833ea#;
   pragma Export (C, u02099, "quaddobl_complex_qr_least_squaresS");
   u02100 : constant Version_32 := 16#831ce7bf#;
   pragma Export (C, u02100, "quaddobl_complex_ringS");
   u02101 : constant Version_32 := 16#6181d25c#;
   pragma Export (C, u02101, "quaddobl_complex_ring__ffieldS");
   u02102 : constant Version_32 := 16#24a791aa#;
   pragma Export (C, u02102, "quaddobl_complex_ring_ioS");
   u02103 : constant Version_32 := 16#f4dbe9a2#;
   pragma Export (C, u02103, "quaddobl_complex_seriesB");
   u02104 : constant Version_32 := 16#488cbf10#;
   pragma Export (C, u02104, "quaddobl_complex_seriesS");
   u02105 : constant Version_32 := 16#7d9c3a8d#;
   pragma Export (C, u02105, "quaddobl_complex_series_functionsB");
   u02106 : constant Version_32 := 16#584cffe6#;
   pragma Export (C, u02106, "quaddobl_complex_series_functionsS");
   u02107 : constant Version_32 := 16#f09ba5d0#;
   pragma Export (C, u02107, "quaddobl_complex_series_ioB");
   u02108 : constant Version_32 := 16#90be420e#;
   pragma Export (C, u02108, "quaddobl_complex_series_ioS");
   u02109 : constant Version_32 := 16#7556bb24#;
   pragma Export (C, u02109, "quaddobl_complex_series_matricesB");
   u02110 : constant Version_32 := 16#266684d9#;
   pragma Export (C, u02110, "quaddobl_complex_series_matricesS");
   u02111 : constant Version_32 := 16#e20c90e3#;
   pragma Export (C, u02111, "quaddobl_complex_series_ringS");
   u02112 : constant Version_32 := 16#21251b10#;
   pragma Export (C, u02112, "quaddobl_complex_series_vectorsB");
   u02113 : constant Version_32 := 16#54a5bfa3#;
   pragma Export (C, u02113, "quaddobl_complex_series_vectorsS");
   u02114 : constant Version_32 := 16#0e669c97#;
   pragma Export (C, u02114, "quaddobl_complex_series_vectors_ioB");
   u02115 : constant Version_32 := 16#139bf7c1#;
   pragma Export (C, u02115, "quaddobl_complex_series_vectors_ioS");
   u02116 : constant Version_32 := 16#13868a98#;
   pragma Export (C, u02116, "quaddobl_complex_series_ring_ioS");
   u02117 : constant Version_32 := 16#03833e7a#;
   pragma Export (C, u02117, "quaddobl_complex_series_vecvecsB");
   u02118 : constant Version_32 := 16#492ecd91#;
   pragma Export (C, u02118, "quaddobl_complex_series_vecvecsS");
   u02119 : constant Version_32 := 16#c395de12#;
   pragma Export (C, u02119, "quaddobl_complex_singular_valuesB");
   u02120 : constant Version_32 := 16#4b4b0414#;
   pragma Export (C, u02120, "quaddobl_complex_singular_valuesS");
   u02121 : constant Version_32 := 16#6e0cd23a#;
   pragma Export (C, u02121, "quaddobl_complex_solutionsB");
   u02122 : constant Version_32 := 16#10f41477#;
   pragma Export (C, u02122, "quaddobl_complex_solutionsS");
   u02123 : constant Version_32 := 16#7f6046fd#;
   pragma Export (C, u02123, "quaddobl_complex_solutions_ioB");
   u02124 : constant Version_32 := 16#f9516e05#;
   pragma Export (C, u02124, "quaddobl_complex_solutions_ioS");
   u02125 : constant Version_32 := 16#8d48daec#;
   pragma Export (C, u02125, "quaddobl_complex_term_listsB");
   u02126 : constant Version_32 := 16#a739fdca#;
   pragma Export (C, u02126, "quaddobl_complex_term_listsS");
   u02127 : constant Version_32 := 16#19840194#;
   pragma Export (C, u02127, "quaddobl_complex_to_real_polyB");
   u02128 : constant Version_32 := 16#b4616a4a#;
   pragma Export (C, u02128, "quaddobl_complex_to_real_polyS");
   u02129 : constant Version_32 := 16#eb3ea298#;
   pragma Export (C, u02129, "quaddobl_complex_veclistsB");
   u02130 : constant Version_32 := 16#3039265c#;
   pragma Export (C, u02130, "quaddobl_complex_veclistsS");
   u02131 : constant Version_32 := 16#3a6aa9c0#;
   pragma Export (C, u02131, "quaddobl_complex_vecmatsB");
   u02132 : constant Version_32 := 16#0b9496bc#;
   pragma Export (C, u02132, "quaddobl_complex_vecmatsS");
   u02133 : constant Version_32 := 16#6d169622#;
   pragma Export (C, u02133, "quaddobl_complex_vector_normsB");
   u02134 : constant Version_32 := 16#6796ead6#;
   pragma Export (C, u02134, "quaddobl_complex_vector_normsS");
   u02135 : constant Version_32 := 16#aabba852#;
   pragma Export (C, u02135, "quaddobl_complex_vectorsB");
   u02136 : constant Version_32 := 16#ae0e2c61#;
   pragma Export (C, u02136, "quaddobl_complex_vectorsS");
   u02137 : constant Version_32 := 16#27cd2393#;
   pragma Export (C, u02137, "quaddobl_complex_vectors_cvB");
   u02138 : constant Version_32 := 16#e989a896#;
   pragma Export (C, u02138, "quaddobl_complex_vectors_cvS");
   u02139 : constant Version_32 := 16#8c837a5d#;
   pragma Export (C, u02139, "quaddobl_complex_vectors_ioB");
   u02140 : constant Version_32 := 16#1501bc17#;
   pragma Export (C, u02140, "quaddobl_complex_vectors_ioS");
   u02141 : constant Version_32 := 16#95f72cfe#;
   pragma Export (C, u02141, "quaddobl_complex_vecvecsB");
   u02142 : constant Version_32 := 16#25f14cd7#;
   pragma Export (C, u02142, "quaddobl_complex_vecvecsS");
   u02143 : constant Version_32 := 16#391ed29d#;
   pragma Export (C, u02143, "quaddobl_complex_vecvecs_ioB");
   u02144 : constant Version_32 := 16#fc897269#;
   pragma Export (C, u02144, "quaddobl_complex_vecvecs_ioS");
   u02145 : constant Version_32 := 16#ca06751f#;
   pragma Export (C, u02145, "quaddobl_condition_reportB");
   u02146 : constant Version_32 := 16#6f046777#;
   pragma Export (C, u02146, "quaddobl_condition_reportS");
   u02147 : constant Version_32 := 16#de623e54#;
   pragma Export (C, u02147, "quaddobl_condition_tablesB");
   u02148 : constant Version_32 := 16#0860c591#;
   pragma Export (C, u02148, "quaddobl_condition_tablesS");
   u02149 : constant Version_32 := 16#52ba7348#;
   pragma Export (C, u02149, "quaddobl_continuation_dataB");
   u02150 : constant Version_32 := 16#44428f96#;
   pragma Export (C, u02150, "quaddobl_continuation_dataS");
   u02151 : constant Version_32 := 16#8a38428d#;
   pragma Export (C, u02151, "quaddobl_continuation_data_ioB");
   u02152 : constant Version_32 := 16#7a704636#;
   pragma Export (C, u02152, "quaddobl_continuation_data_ioS");
   u02153 : constant Version_32 := 16#1a87971e#;
   pragma Export (C, u02153, "quaddobl_cseries_jaco_matricesB");
   u02154 : constant Version_32 := 16#5d24607d#;
   pragma Export (C, u02154, "quaddobl_cseries_jaco_matricesS");
   u02155 : constant Version_32 := 16#dba05789#;
   pragma Export (C, u02155, "quaddobl_cseries_poly_functionsB");
   u02156 : constant Version_32 := 16#b6dc0351#;
   pragma Export (C, u02156, "quaddobl_cseries_poly_functionsS");
   u02157 : constant Version_32 := 16#b07adca4#;
   pragma Export (C, u02157, "quaddobl_cseries_poly_sysfunB");
   u02158 : constant Version_32 := 16#da1e7533#;
   pragma Export (C, u02158, "quaddobl_cseries_poly_sysfunS");
   u02159 : constant Version_32 := 16#e0dbbc4e#;
   pragma Export (C, u02159, "quaddobl_cseries_poly_systemsB");
   u02160 : constant Version_32 := 16#c66b7c21#;
   pragma Export (C, u02160, "quaddobl_cseries_poly_systemsS");
   u02161 : constant Version_32 := 16#6e2fc98d#;
   pragma Export (C, u02161, "quaddobl_cseries_polynomialsB");
   u02162 : constant Version_32 := 16#9ad9af70#;
   pragma Export (C, u02162, "quaddobl_cseries_polynomialsS");
   u02163 : constant Version_32 := 16#d4751da8#;
   pragma Export (C, u02163, "quaddobl_cseries_vector_functionsB");
   u02164 : constant Version_32 := 16#d2292e11#;
   pragma Export (C, u02164, "quaddobl_cseries_vector_functionsS");
   u02165 : constant Version_32 := 16#22ce99a6#;
   pragma Export (C, u02165, "quaddobl_deflate_singularitiesB");
   u02166 : constant Version_32 := 16#982ecd8f#;
   pragma Export (C, u02166, "quaddobl_deflate_singularitiesS");
   u02167 : constant Version_32 := 16#2a57f35b#;
   pragma Export (C, u02167, "quaddobl_deflation_methodsB");
   u02168 : constant Version_32 := 16#bfacc3f3#;
   pragma Export (C, u02168, "quaddobl_deflation_methodsS");
   u02169 : constant Version_32 := 16#a6a85859#;
   pragma Export (C, u02169, "quaddobl_complex_newton_stepsB");
   u02170 : constant Version_32 := 16#7f2ffc2a#;
   pragma Export (C, u02170, "quaddobl_complex_newton_stepsS");
   u02171 : constant Version_32 := 16#af6190ec#;
   pragma Export (C, u02171, "quaddobl_deflation_treesB");
   u02172 : constant Version_32 := 16#ab1a9dd3#;
   pragma Export (C, u02172, "quaddobl_deflation_treesS");
   u02173 : constant Version_32 := 16#4d8afcd9#;
   pragma Export (C, u02173, "quaddobl_deflation_trees_ioB");
   u02174 : constant Version_32 := 16#716104aa#;
   pragma Export (C, u02174, "quaddobl_deflation_trees_ioS");
   u02175 : constant Version_32 := 16#d033d699#;
   pragma Export (C, u02175, "quaddobl_diagonal_polynomialsB");
   u02176 : constant Version_32 := 16#256d4c7f#;
   pragma Export (C, u02176, "quaddobl_diagonal_polynomialsS");
   u02177 : constant Version_32 := 16#0a93c642#;
   pragma Export (C, u02177, "quaddobl_diagonal_solutionsB");
   u02178 : constant Version_32 := 16#b4a4c2fe#;
   pragma Export (C, u02178, "quaddobl_diagonal_solutionsS");
   u02179 : constant Version_32 := 16#dc0e0bff#;
   pragma Export (C, u02179, "quaddobl_divided_differencesB");
   u02180 : constant Version_32 := 16#4063a46c#;
   pragma Export (C, u02180, "quaddobl_divided_differencesS");
   u02181 : constant Version_32 := 16#e270873e#;
   pragma Export (C, u02181, "quaddobl_durand_kernerB");
   u02182 : constant Version_32 := 16#b7e603e1#;
   pragma Export (C, u02182, "quaddobl_durand_kernerS");
   u02183 : constant Version_32 := 16#90878d1f#;
   pragma Export (C, u02183, "quaddobl_embed_polynomialsB");
   u02184 : constant Version_32 := 16#b9e66157#;
   pragma Export (C, u02184, "quaddobl_embed_polynomialsS");
   u02185 : constant Version_32 := 16#bd6928bf#;
   pragma Export (C, u02185, "quaddobl_evaluate_deflationB");
   u02186 : constant Version_32 := 16#0c33deb7#;
   pragma Export (C, u02186, "quaddobl_evaluate_deflationS");
   u02187 : constant Version_32 := 16#55344a45#;
   pragma Export (C, u02187, "quaddobl_deflation_matricesB");
   u02188 : constant Version_32 := 16#a4112704#;
   pragma Export (C, u02188, "quaddobl_deflation_matricesS");
   u02189 : constant Version_32 := 16#eb372a38#;
   pragma Export (C, u02189, "quaddobl_evaluate_deflation_ioB");
   u02190 : constant Version_32 := 16#02bfacdf#;
   pragma Export (C, u02190, "quaddobl_evaluate_deflation_ioS");
   u02191 : constant Version_32 := 16#86ae2049#;
   pragma Export (C, u02191, "quaddobl_fabry_on_homotopyB");
   u02192 : constant Version_32 := 16#afcff8e4#;
   pragma Export (C, u02192, "quaddobl_fabry_on_homotopyS");
   u02193 : constant Version_32 := 16#af47c497#;
   pragma Export (C, u02193, "quaddobl_gridded_hypersurfacesB");
   u02194 : constant Version_32 := 16#a7f62e7d#;
   pragma Export (C, u02194, "quaddobl_gridded_hypersurfacesS");
   u02195 : constant Version_32 := 16#e7f616ce#;
   pragma Export (C, u02195, "quaddobl_homotopyB");
   u02196 : constant Version_32 := 16#84dfcd15#;
   pragma Export (C, u02196, "quaddobl_homotopyS");
   u02197 : constant Version_32 := 16#d97f23a0#;
   pragma Export (C, u02197, "quaddobl_homotopy_convolutions_ioB");
   u02198 : constant Version_32 := 16#6128a3be#;
   pragma Export (C, u02198, "quaddobl_homotopy_convolutions_ioS");
   u02199 : constant Version_32 := 16#370fe2b8#;
   pragma Export (C, u02199, "quaddobl_hypersurface_witsetsB");
   u02200 : constant Version_32 := 16#3c57a6a3#;
   pragma Export (C, u02200, "quaddobl_hypersurface_witsetsS");
   u02201 : constant Version_32 := 16#1028b047#;
   pragma Export (C, u02201, "quaddobl_incfix_continuationB");
   u02202 : constant Version_32 := 16#e321b7da#;
   pragma Export (C, u02202, "quaddobl_incfix_continuationS");
   u02203 : constant Version_32 := 16#0efed0fb#;
   pragma Export (C, u02203, "quaddobl_intrinsic_continuationB");
   u02204 : constant Version_32 := 16#59763042#;
   pragma Export (C, u02204, "quaddobl_intrinsic_continuationS");
   u02205 : constant Version_32 := 16#bba84a92#;
   pragma Export (C, u02205, "quaddobl_intrinsic_newtonB");
   u02206 : constant Version_32 := 16#bd7ab874#;
   pragma Export (C, u02206, "quaddobl_intrinsic_newtonS");
   u02207 : constant Version_32 := 16#74bb7d8b#;
   pragma Export (C, u02207, "quaddobl_intrinsic_solutionsB");
   u02208 : constant Version_32 := 16#c636f4e9#;
   pragma Export (C, u02208, "quaddobl_intrinsic_solutionsS");
   u02209 : constant Version_32 := 16#55797edf#;
   pragma Export (C, u02209, "quaddobl_intrinsic_trackersB");
   u02210 : constant Version_32 := 16#ee7f8cdb#;
   pragma Export (C, u02210, "quaddobl_intrinsic_trackersS");
   u02211 : constant Version_32 := 16#97bb319e#;
   pragma Export (C, u02211, "quaddobl_jacobian_treesB");
   u02212 : constant Version_32 := 16#c1b46e43#;
   pragma Export (C, u02212, "quaddobl_jacobian_treesS");
   u02213 : constant Version_32 := 16#8667a797#;
   pragma Export (C, u02213, "quaddobl_laur_poly_convertorsB");
   u02214 : constant Version_32 := 16#56ef99aa#;
   pragma Export (C, u02214, "quaddobl_laur_poly_convertorsS");
   u02215 : constant Version_32 := 16#9e3cb515#;
   pragma Export (C, u02215, "quaddobl_laurent_homotopyB");
   u02216 : constant Version_32 := 16#35602922#;
   pragma Export (C, u02216, "quaddobl_laurent_homotopyS");
   u02217 : constant Version_32 := 16#2847c3b0#;
   pragma Export (C, u02217, "quaddobl_linear_poly_solversB");
   u02218 : constant Version_32 := 16#d8c2af77#;
   pragma Export (C, u02218, "quaddobl_linear_poly_solversS");
   u02219 : constant Version_32 := 16#22f2a568#;
   pragma Export (C, u02219, "quaddobl_linear_product_systemB");
   u02220 : constant Version_32 := 16#b47689fc#;
   pragma Export (C, u02220, "quaddobl_linear_product_systemS");
   u02221 : constant Version_32 := 16#fbebcce4#;
   pragma Export (C, u02221, "quaddobl_complex_row_reductionB");
   u02222 : constant Version_32 := 16#3a3b23f8#;
   pragma Export (C, u02222, "quaddobl_complex_row_reductionS");
   u02223 : constant Version_32 := 16#af378154#;
   pragma Export (C, u02223, "quaddobl_lined_hypersurfacesB");
   u02224 : constant Version_32 := 16#875cdfe7#;
   pragma Export (C, u02224, "quaddobl_lined_hypersurfacesS");
   u02225 : constant Version_32 := 16#bf196306#;
   pragma Export (C, u02225, "quaddobl_mathematical_functionsB");
   u02226 : constant Version_32 := 16#ecb5002a#;
   pragma Export (C, u02226, "quaddobl_mathematical_functionsS");
   u02227 : constant Version_32 := 16#ffc28d44#;
   pragma Export (C, u02227, "quaddobl_matrix_inversionB");
   u02228 : constant Version_32 := 16#be831ba0#;
   pragma Export (C, u02228, "quaddobl_matrix_inversionS");
   u02229 : constant Version_32 := 16#5a9601dd#;
   pragma Export (C, u02229, "quaddobl_mixed_residualsB");
   u02230 : constant Version_32 := 16#c06d3078#;
   pragma Export (C, u02230, "quaddobl_mixed_residualsS");
   u02231 : constant Version_32 := 16#54e20dd8#;
   pragma Export (C, u02231, "quaddobl_monomial_mapsB");
   u02232 : constant Version_32 := 16#7197dc4f#;
   pragma Export (C, u02232, "quaddobl_monomial_mapsS");
   u02233 : constant Version_32 := 16#d12aa8f9#;
   pragma Export (C, u02233, "quaddobl_moving_planesB");
   u02234 : constant Version_32 := 16#6884b82c#;
   pragma Export (C, u02234, "quaddobl_moving_planesS");
   u02235 : constant Version_32 := 16#31bca4bd#;
   pragma Export (C, u02235, "quaddobl_multiple_solutionsB");
   u02236 : constant Version_32 := 16#e8dab500#;
   pragma Export (C, u02236, "quaddobl_multiple_solutionsS");
   u02237 : constant Version_32 := 16#4f967fb8#;
   pragma Export (C, u02237, "quaddobl_multiplicity_structureB");
   u02238 : constant Version_32 := 16#5fb3a220#;
   pragma Export (C, u02238, "quaddobl_multiplicity_structureS");
   u02239 : constant Version_32 := 16#5ead911e#;
   pragma Export (C, u02239, "quaddobl_newton_convolution_stepsB");
   u02240 : constant Version_32 := 16#af77e4a2#;
   pragma Export (C, u02240, "quaddobl_newton_convolution_stepsS");
   u02241 : constant Version_32 := 16#4c71ca58#;
   pragma Export (C, u02241, "quaddobl_newton_convolutionsB");
   u02242 : constant Version_32 := 16#026a8072#;
   pragma Export (C, u02242, "quaddobl_newton_convolutionsS");
   u02243 : constant Version_32 := 16#448d5ac6#;
   pragma Export (C, u02243, "quaddobl_nullity_matricesB");
   u02244 : constant Version_32 := 16#c8077cb1#;
   pragma Export (C, u02244, "quaddobl_nullity_matricesS");
   u02245 : constant Version_32 := 16#363e8953#;
   pragma Export (C, u02245, "quaddobl_nullity_polynomialsB");
   u02246 : constant Version_32 := 16#51493848#;
   pragma Export (C, u02246, "quaddobl_nullity_polynomialsS");
   u02247 : constant Version_32 := 16#52d0bbc7#;
   pragma Export (C, u02247, "quaddobl_numerical_rankB");
   u02248 : constant Version_32 := 16#8682007b#;
   pragma Export (C, u02248, "quaddobl_numerical_rankS");
   u02249 : constant Version_32 := 16#d5aefc1c#;
   pragma Export (C, u02249, "quaddobl_pade_approximantsB");
   u02250 : constant Version_32 := 16#d8ea42b5#;
   pragma Export (C, u02250, "quaddobl_pade_approximantsS");
   u02251 : constant Version_32 := 16#b1af6dfa#;
   pragma Export (C, u02251, "quaddobl_parameter_solutionsB");
   u02252 : constant Version_32 := 16#d35ed6a9#;
   pragma Export (C, u02252, "quaddobl_parameter_solutionsS");
   u02253 : constant Version_32 := 16#6d03333d#;
   pragma Export (C, u02253, "quaddobl_parameter_systemsB");
   u02254 : constant Version_32 := 16#52ca6208#;
   pragma Export (C, u02254, "quaddobl_parameter_systemsS");
   u02255 : constant Version_32 := 16#7e708ad7#;
   pragma Export (C, u02255, "quaddobl_path_trackersB");
   u02256 : constant Version_32 := 16#1f6966c4#;
   pragma Export (C, u02256, "quaddobl_path_trackersS");
   u02257 : constant Version_32 := 16#7687f4be#;
   pragma Export (C, u02257, "directions_of_quaddobl_pathsB");
   u02258 : constant Version_32 := 16#95ba7fe9#;
   pragma Export (C, u02258, "directions_of_quaddobl_pathsS");
   u02259 : constant Version_32 := 16#273b9997#;
   pragma Export (C, u02259, "quad_double_matrices_ioB");
   u02260 : constant Version_32 := 16#5ee1a665#;
   pragma Export (C, u02260, "quad_double_matrices_ioS");
   u02261 : constant Version_32 := 16#d791a2e3#;
   pragma Export (C, u02261, "quad_double_vector_normsB");
   u02262 : constant Version_32 := 16#ab06c52c#;
   pragma Export (C, u02262, "quad_double_vector_normsS");
   u02263 : constant Version_32 := 16#658c7a4a#;
   pragma Export (C, u02263, "quaddobl_complex_equality_testsB");
   u02264 : constant Version_32 := 16#1b080ad7#;
   pragma Export (C, u02264, "quaddobl_complex_equality_testsS");
   u02265 : constant Version_32 := 16#2f885cbc#;
   pragma Export (C, u02265, "quaddobl_correctorsB");
   u02266 : constant Version_32 := 16#f0194953#;
   pragma Export (C, u02266, "quaddobl_correctorsS");
   u02267 : constant Version_32 := 16#40b584b1#;
   pragma Export (C, u02267, "quaddobl_data_on_pathB");
   u02268 : constant Version_32 := 16#1735a778#;
   pragma Export (C, u02268, "quaddobl_data_on_pathS");
   u02269 : constant Version_32 := 16#95e154dc#;
   pragma Export (C, u02269, "quaddobl_dispatch_predictorsB");
   u02270 : constant Version_32 := 16#f8d6aaff#;
   pragma Export (C, u02270, "quaddobl_dispatch_predictorsS");
   u02271 : constant Version_32 := 16#73740a43#;
   pragma Export (C, u02271, "quaddobl_orthogonal_correctorsB");
   u02272 : constant Version_32 := 16#ec6e30a3#;
   pragma Export (C, u02272, "quaddobl_orthogonal_correctorsS");
   u02273 : constant Version_32 := 16#a80059df#;
   pragma Export (C, u02273, "quaddobl_plane_representationsB");
   u02274 : constant Version_32 := 16#f6fe12f2#;
   pragma Export (C, u02274, "quaddobl_plane_representationsS");
   u02275 : constant Version_32 := 16#beee08b2#;
   pragma Export (C, u02275, "quaddobl_point_coordinatesB");
   u02276 : constant Version_32 := 16#986cf26d#;
   pragma Export (C, u02276, "quaddobl_point_coordinatesS");
   u02277 : constant Version_32 := 16#142498bc#;
   pragma Export (C, u02277, "quaddobl_point_listsB");
   u02278 : constant Version_32 := 16#94f95eef#;
   pragma Export (C, u02278, "quaddobl_point_listsS");
   u02279 : constant Version_32 := 16#50a7c288#;
   pragma Export (C, u02279, "quaddobl_poly_laur_convertorsB");
   u02280 : constant Version_32 := 16#3f10650c#;
   pragma Export (C, u02280, "quaddobl_poly_laur_convertorsS");
   u02281 : constant Version_32 := 16#c7679ec3#;
   pragma Export (C, u02281, "quaddobl_polyhedral_continuationB");
   u02282 : constant Version_32 := 16#afd34097#;
   pragma Export (C, u02282, "quaddobl_polyhedral_continuationS");
   u02283 : constant Version_32 := 16#a247604b#;
   pragma Export (C, u02283, "quaddobl_polynomial_convertorsB");
   u02284 : constant Version_32 := 16#9194bcd1#;
   pragma Export (C, u02284, "quaddobl_polynomial_convertorsS");
   u02285 : constant Version_32 := 16#8a85c1b7#;
   pragma Export (C, u02285, "quaddobl_predictor_convolutionsB");
   u02286 : constant Version_32 := 16#2722184d#;
   pragma Export (C, u02286, "quaddobl_predictor_convolutionsS");
   u02287 : constant Version_32 := 16#1346d989#;
   pragma Export (C, u02287, "quaddobl_predictorsB");
   u02288 : constant Version_32 := 16#cd208add#;
   pragma Export (C, u02288, "quaddobl_predictorsS");
   u02289 : constant Version_32 := 16#79dcdeac#;
   pragma Export (C, u02289, "quaddobl_extrapolatorsB");
   u02290 : constant Version_32 := 16#151a4ed4#;
   pragma Export (C, u02290, "quaddobl_extrapolatorsS");
   u02291 : constant Version_32 := 16#22b833a0#;
   pragma Export (C, u02291, "quaddobl_quad_parametersB");
   u02292 : constant Version_32 := 16#e32b059a#;
   pragma Export (C, u02292, "quaddobl_quad_parametersS");
   u02293 : constant Version_32 := 16#0aa423e2#;
   pragma Export (C, u02293, "quaddobl_quad_sweepersB");
   u02294 : constant Version_32 := 16#ac027204#;
   pragma Export (C, u02294, "quaddobl_quad_sweepersS");
   u02295 : constant Version_32 := 16#0a0bf21f#;
   pragma Export (C, u02295, "quad_double_poly_systems_ioB");
   u02296 : constant Version_32 := 16#4067852d#;
   pragma Export (C, u02296, "quad_double_poly_systems_ioS");
   u02297 : constant Version_32 := 16#838f785c#;
   pragma Export (C, u02297, "quaddobl_quad_treesB");
   u02298 : constant Version_32 := 16#f4f3fc13#;
   pragma Export (C, u02298, "quaddobl_quad_treesS");
   u02299 : constant Version_32 := 16#f3e1fc9d#;
   pragma Export (C, u02299, "quaddobl_quad_turn_pointsB");
   u02300 : constant Version_32 := 16#b652947d#;
   pragma Export (C, u02300, "quaddobl_quad_turn_pointsS");
   u02301 : constant Version_32 := 16#614234d1#;
   pragma Export (C, u02301, "quad_double_eigenvaluesB");
   u02302 : constant Version_32 := 16#3dd6509b#;
   pragma Export (C, u02302, "quad_double_eigenvaluesS");
   u02303 : constant Version_32 := 16#7f841314#;
   pragma Export (C, u02303, "quad_double_two_normsB");
   u02304 : constant Version_32 := 16#586bc3c8#;
   pragma Export (C, u02304, "quad_double_two_normsS");
   u02305 : constant Version_32 := 16#d8defe6a#;
   pragma Export (C, u02305, "quaddobl_quad_turn_points_ioB");
   u02306 : constant Version_32 := 16#cc0526c9#;
   pragma Export (C, u02306, "quaddobl_quad_turn_points_ioS");
   u02307 : constant Version_32 := 16#5a8e6b47#;
   pragma Export (C, u02307, "quaddobl_radial_solversB");
   u02308 : constant Version_32 := 16#eaffee28#;
   pragma Export (C, u02308, "quaddobl_radial_solversS");
   u02309 : constant Version_32 := 16#6d83e09c#;
   pragma Export (C, u02309, "quaddobl_random_matricesB");
   u02310 : constant Version_32 := 16#1e13e0ba#;
   pragma Export (C, u02310, "quaddobl_random_matricesS");
   u02311 : constant Version_32 := 16#a4d8a2ea#;
   pragma Export (C, u02311, "quad_double_qr_least_squaresB");
   u02312 : constant Version_32 := 16#dc251624#;
   pragma Export (C, u02312, "quad_double_qr_least_squaresS");
   u02313 : constant Version_32 := 16#23f3c392#;
   pragma Export (C, u02313, "quaddobl_random_numbersB");
   u02314 : constant Version_32 := 16#839c8dc0#;
   pragma Export (C, u02314, "quaddobl_random_numbersS");
   u02315 : constant Version_32 := 16#31fba770#;
   pragma Export (C, u02315, "quaddobl_random_vectorsB");
   u02316 : constant Version_32 := 16#ed417569#;
   pragma Export (C, u02316, "quaddobl_random_vectorsS");
   u02317 : constant Version_32 := 16#215bbeef#;
   pragma Export (C, u02317, "quaddobl_rational_approximationsB");
   u02318 : constant Version_32 := 16#b7e09367#;
   pragma Export (C, u02318, "quaddobl_rational_approximationsS");
   u02319 : constant Version_32 := 16#157acb77#;
   pragma Export (C, u02319, "quaddobl_rectangular_sample_gridsB");
   u02320 : constant Version_32 := 16#a1b1f776#;
   pragma Export (C, u02320, "quaddobl_rectangular_sample_gridsS");
   u02321 : constant Version_32 := 16#a6a4dcaf#;
   pragma Export (C, u02321, "quaddobl_rescaling_coordinatesB");
   u02322 : constant Version_32 := 16#797a8968#;
   pragma Export (C, u02322, "quaddobl_rescaling_coordinatesS");
   u02323 : constant Version_32 := 16#98d55cab#;
   pragma Export (C, u02323, "quaddobl_root_refinersB");
   u02324 : constant Version_32 := 16#7fd76259#;
   pragma Export (C, u02324, "quaddobl_root_refinersS");
   u02325 : constant Version_32 := 16#bab620a9#;
   pragma Export (C, u02325, "quaddobl_jacobian_circuitsB");
   u02326 : constant Version_32 := 16#3ee02ff0#;
   pragma Export (C, u02326, "quaddobl_jacobian_circuitsS");
   u02327 : constant Version_32 := 16#c468831c#;
   pragma Export (C, u02327, "quaddobl_jacobian_evaluationsB");
   u02328 : constant Version_32 := 16#bfb46237#;
   pragma Export (C, u02328, "quaddobl_jacobian_evaluationsS");
   u02329 : constant Version_32 := 16#df0c25a1#;
   pragma Export (C, u02329, "quaddobl_gradient_evaluationsB");
   u02330 : constant Version_32 := 16#652255d6#;
   pragma Export (C, u02330, "quaddobl_gradient_evaluationsS");
   u02331 : constant Version_32 := 16#23945919#;
   pragma Export (C, u02331, "quaddobl_monomial_evaluationsB");
   u02332 : constant Version_32 := 16#9c10fdf5#;
   pragma Export (C, u02332, "quaddobl_monomial_evaluationsS");
   u02333 : constant Version_32 := 16#a1579693#;
   pragma Export (C, u02333, "quaddobl_polynomial_flattenersB");
   u02334 : constant Version_32 := 16#7c87236a#;
   pragma Export (C, u02334, "quaddobl_polynomial_flattenersS");
   u02335 : constant Version_32 := 16#9d90b96c#;
   pragma Export (C, u02335, "quaddobl_sample_gridsB");
   u02336 : constant Version_32 := 16#b0c7945f#;
   pragma Export (C, u02336, "quaddobl_sample_gridsS");
   u02337 : constant Version_32 := 16#87d6194c#;
   pragma Export (C, u02337, "quaddobl_sample_listsB");
   u02338 : constant Version_32 := 16#20b08fd0#;
   pragma Export (C, u02338, "quaddobl_sample_listsS");
   u02339 : constant Version_32 := 16#a0cd5fbd#;
   pragma Export (C, u02339, "quaddobl_sample_pointsB");
   u02340 : constant Version_32 := 16#d33b3ef2#;
   pragma Export (C, u02340, "quaddobl_sample_pointsS");
   u02341 : constant Version_32 := 16#4b8e63ce#;
   pragma Export (C, u02341, "quaddobl_sampling_laurent_machineB");
   u02342 : constant Version_32 := 16#fb8aacf6#;
   pragma Export (C, u02342, "quaddobl_sampling_laurent_machineS");
   u02343 : constant Version_32 := 16#f27185b9#;
   pragma Export (C, u02343, "quaddobl_sampling_machineB");
   u02344 : constant Version_32 := 16#91ed98bb#;
   pragma Export (C, u02344, "quaddobl_sampling_machineS");
   u02345 : constant Version_32 := 16#9e4a9c31#;
   pragma Export (C, u02345, "quaddobl_scalingB");
   u02346 : constant Version_32 := 16#3e33f946#;
   pragma Export (C, u02346, "quaddobl_scalingS");
   u02347 : constant Version_32 := 16#7f75ac4d#;
   pragma Export (C, u02347, "quaddobl_select_solutionsB");
   u02348 : constant Version_32 := 16#a3143f46#;
   pragma Export (C, u02348, "quaddobl_select_solutionsS");
   u02349 : constant Version_32 := 16#5761fcb5#;
   pragma Export (C, u02349, "quaddobl_series_matrix_solversB");
   u02350 : constant Version_32 := 16#cd82ff66#;
   pragma Export (C, u02350, "quaddobl_series_matrix_solversS");
   u02351 : constant Version_32 := 16#e70ddd95#;
   pragma Export (C, u02351, "quaddobl_complex_matrix_seriesB");
   u02352 : constant Version_32 := 16#6822b6d6#;
   pragma Export (C, u02352, "quaddobl_complex_matrix_seriesS");
   u02353 : constant Version_32 := 16#b8843ded#;
   pragma Export (C, u02353, "quaddobl_complex_vector_seriesB");
   u02354 : constant Version_32 := 16#8c177623#;
   pragma Export (C, u02354, "quaddobl_complex_vector_seriesS");
   u02355 : constant Version_32 := 16#8282218c#;
   pragma Export (C, u02355, "quaddobl_echelon_formsB");
   u02356 : constant Version_32 := 16#2fcc3042#;
   pragma Export (C, u02356, "quaddobl_echelon_formsS");
   u02357 : constant Version_32 := 16#daa5eaf2#;
   pragma Export (C, u02357, "quaddobl_interpolating_cseriesB");
   u02358 : constant Version_32 := 16#29551153#;
   pragma Export (C, u02358, "quaddobl_interpolating_cseriesS");
   u02359 : constant Version_32 := 16#88b8cacc#;
   pragma Export (C, u02359, "quaddobl_seriespade_trackerB");
   u02360 : constant Version_32 := 16#0d56f2e8#;
   pragma Export (C, u02360, "quaddobl_seriespade_trackerS");
   u02361 : constant Version_32 := 16#5c958965#;
   pragma Export (C, u02361, "quaddobl_complex_hessiansB");
   u02362 : constant Version_32 := 16#32306ba5#;
   pragma Export (C, u02362, "quaddobl_complex_hessiansS");
   u02363 : constant Version_32 := 16#b65ef4cb#;
   pragma Export (C, u02363, "quaddobl_pade_approximants_ioB");
   u02364 : constant Version_32 := 16#a362e7df#;
   pragma Export (C, u02364, "quaddobl_pade_approximants_ioS");
   u02365 : constant Version_32 := 16#4e591706#;
   pragma Export (C, u02365, "quaddobl_pade_trackersB");
   u02366 : constant Version_32 := 16#04fd3415#;
   pragma Export (C, u02366, "quaddobl_pade_trackersS");
   u02367 : constant Version_32 := 16#b0a3c365#;
   pragma Export (C, u02367, "quaddobl_simpomial_solversB");
   u02368 : constant Version_32 := 16#bad24302#;
   pragma Export (C, u02368, "quaddobl_simpomial_solversS");
   u02369 : constant Version_32 := 16#53412112#;
   pragma Export (C, u02369, "quaddobl_simplex_solversB");
   u02370 : constant Version_32 := 16#b2fbdf63#;
   pragma Export (C, u02370, "quaddobl_simplex_solversS");
   u02371 : constant Version_32 := 16#68cf5450#;
   pragma Export (C, u02371, "quaddobl_simplex_systemsB");
   u02372 : constant Version_32 := 16#0b8b4da6#;
   pragma Export (C, u02372, "quaddobl_simplex_systemsS");
   u02373 : constant Version_32 := 16#eb8d83d6#;
   pragma Export (C, u02373, "quaddobl_solution_diagnosticsB");
   u02374 : constant Version_32 := 16#6b53f585#;
   pragma Export (C, u02374, "quaddobl_solution_diagnosticsS");
   u02375 : constant Version_32 := 16#c88864e0#;
   pragma Export (C, u02375, "quaddobl_solution_filtersB");
   u02376 : constant Version_32 := 16#59458985#;
   pragma Export (C, u02376, "quaddobl_solution_filtersS");
   u02377 : constant Version_32 := 16#e76032a7#;
   pragma Export (C, u02377, "quaddobl_solution_manipulatorsB");
   u02378 : constant Version_32 := 16#ad670b67#;
   pragma Export (C, u02378, "quaddobl_solution_manipulatorsS");
   u02379 : constant Version_32 := 16#acf93616#;
   pragma Export (C, u02379, "quaddobl_solution_posetsB");
   u02380 : constant Version_32 := 16#53fc1f74#;
   pragma Export (C, u02380, "quaddobl_solution_posetsS");
   u02381 : constant Version_32 := 16#3318fd17#;
   pragma Export (C, u02381, "quaddobl_solution_splittersB");
   u02382 : constant Version_32 := 16#92131dd0#;
   pragma Export (C, u02382, "quaddobl_solution_splittersS");
   u02383 : constant Version_32 := 16#5a735281#;
   pragma Export (C, u02383, "quaddobl_solutions_queueB");
   u02384 : constant Version_32 := 16#1b08210a#;
   pragma Export (C, u02384, "quaddobl_solutions_queueS");
   u02385 : constant Version_32 := 16#f1767277#;
   pragma Export (C, u02385, "quaddobl_speelpenning_convolutionsB");
   u02386 : constant Version_32 := 16#5d684b39#;
   pragma Export (C, u02386, "quaddobl_speelpenning_convolutionsS");
   u02387 : constant Version_32 := 16#6b6c43b1#;
   pragma Export (C, u02387, "quaddobl_speelpenning_productsB");
   u02388 : constant Version_32 := 16#29a9f55d#;
   pragma Export (C, u02388, "quaddobl_speelpenning_productsS");
   u02389 : constant Version_32 := 16#4916fec5#;
   pragma Export (C, u02389, "quaddobl_stable_homotopiesB");
   u02390 : constant Version_32 := 16#9fff5878#;
   pragma Export (C, u02390, "quaddobl_stable_homotopiesS");
   u02391 : constant Version_32 := 16#0f7978dc#;
   pragma Export (C, u02391, "quaddobl_stacked_sample_gridsB");
   u02392 : constant Version_32 := 16#45f95bb6#;
   pragma Export (C, u02392, "quaddobl_stacked_sample_gridsS");
   u02393 : constant Version_32 := 16#a3ca4906#;
   pragma Export (C, u02393, "quaddobl_system_and_solutions_ioB");
   u02394 : constant Version_32 := 16#3329328a#;
   pragma Export (C, u02394, "quaddobl_system_and_solutions_ioS");
   u02395 : constant Version_32 := 16#759e6c53#;
   pragma Export (C, u02395, "quaddobl_system_readersB");
   u02396 : constant Version_32 := 16#4d7c0482#;
   pragma Export (C, u02396, "quaddobl_system_readersS");
   u02397 : constant Version_32 := 16#47f6e1d6#;
   pragma Export (C, u02397, "quaddobl_tableau_formatsB");
   u02398 : constant Version_32 := 16#b8779bcd#;
   pragma Export (C, u02398, "quaddobl_tableau_formatsS");
   u02399 : constant Version_32 := 16#fe14b2c1#;
   pragma Export (C, u02399, "quaddobl_trace_interpolatorsB");
   u02400 : constant Version_32 := 16#a8fadbb1#;
   pragma Export (C, u02400, "quaddobl_trace_interpolatorsS");
   u02401 : constant Version_32 := 16#84f9e8ec#;
   pragma Export (C, u02401, "quaddobl_complex_nesvecsB");
   u02402 : constant Version_32 := 16#106aeee2#;
   pragma Export (C, u02402, "quaddobl_complex_nesvecsS");
   u02403 : constant Version_32 := 16#c428be52#;
   pragma Export (C, u02403, "quaddobl_complex_nesvecs_ioB");
   u02404 : constant Version_32 := 16#68b06215#;
   pragma Export (C, u02404, "quaddobl_complex_nesvecs_ioS");
   u02405 : constant Version_32 := 16#1ecb7a66#;
   pragma Export (C, u02405, "quaddobl_nvariate_interpolatorsB");
   u02406 : constant Version_32 := 16#42770422#;
   pragma Export (C, u02406, "quaddobl_nvariate_interpolatorsS");
   u02407 : constant Version_32 := 16#1015b61e#;
   pragma Export (C, u02407, "quaddobl_power_tracesB");
   u02408 : constant Version_32 := 16#2e650ff4#;
   pragma Export (C, u02408, "quaddobl_power_tracesS");
   u02409 : constant Version_32 := 16#7d2e2966#;
   pragma Export (C, u02409, "quaddobl_tracked_solutions_ioB");
   u02410 : constant Version_32 := 16#f5ed6712#;
   pragma Export (C, u02410, "quaddobl_tracked_solutions_ioS");
   u02411 : constant Version_32 := 16#43e3f235#;
   pragma Export (C, u02411, "quaddobl_univariate_interpolatorsB");
   u02412 : constant Version_32 := 16#f1e9af64#;
   pragma Export (C, u02412, "quaddobl_univariate_interpolatorsS");
   u02413 : constant Version_32 := 16#f57ffb85#;
   pragma Export (C, u02413, "quaddobl_vector_splittersB");
   u02414 : constant Version_32 := 16#ccf60ff6#;
   pragma Export (C, u02414, "quaddobl_vector_splittersS");
   u02415 : constant Version_32 := 16#a8e86e58#;
   pragma Export (C, u02415, "quaddobl_vlprs_algorithmB");
   u02416 : constant Version_32 := 16#87e9056d#;
   pragma Export (C, u02416, "quaddobl_vlprs_algorithmS");
   u02417 : constant Version_32 := 16#f25b1325#;
   pragma Export (C, u02417, "quaddobl_vlprs_tablesB");
   u02418 : constant Version_32 := 16#9f21d860#;
   pragma Export (C, u02418, "quaddobl_vlprs_tablesS");
   u02419 : constant Version_32 := 16#555ad945#;
   pragma Export (C, u02419, "random_coefficient_systemsB");
   u02420 : constant Version_32 := 16#411e44c0#;
   pragma Export (C, u02420, "random_coefficient_systemsS");
   u02421 : constant Version_32 := 16#ab6f0aa3#;
   pragma Export (C, u02421, "random_laurent_seriesB");
   u02422 : constant Version_32 := 16#c9d1d212#;
   pragma Export (C, u02422, "random_laurent_seriesS");
   u02423 : constant Version_32 := 16#625c6dba#;
   pragma Export (C, u02423, "random_product_start_systemsB");
   u02424 : constant Version_32 := 16#3f889d1a#;
   pragma Export (C, u02424, "random_product_start_systemsS");
   u02425 : constant Version_32 := 16#d8904999#;
   pragma Export (C, u02425, "recondition_swap_homotopiesB");
   u02426 : constant Version_32 := 16#b1b47008#;
   pragma Export (C, u02426, "recondition_swap_homotopiesS");
   u02427 : constant Version_32 := 16#85751b08#;
   pragma Export (C, u02427, "rectangular_sample_gridsB");
   u02428 : constant Version_32 := 16#9b46a6ca#;
   pragma Export (C, u02428, "rectangular_sample_gridsS");
   u02429 : constant Version_32 := 16#d2e55017#;
   pragma Export (C, u02429, "extended_random_numbersB");
   u02430 : constant Version_32 := 16#b5229fcc#;
   pragma Export (C, u02430, "extended_random_numbersS");
   u02431 : constant Version_32 := 16#3f73095d#;
   pragma Export (C, u02431, "multprec_complex_numbers_polarB");
   u02432 : constant Version_32 := 16#8392836e#;
   pragma Export (C, u02432, "multprec_complex_numbers_polarS");
   u02433 : constant Version_32 := 16#31628c1e#;
   pragma Export (C, u02433, "reduction_of_nonsquare_systemsB");
   u02434 : constant Version_32 := 16#85b59e50#;
   pragma Export (C, u02434, "reduction_of_nonsquare_systemsS");
   u02435 : constant Version_32 := 16#c884cbaa#;
   pragma Export (C, u02435, "reduction_of_polynomial_systemsB");
   u02436 : constant Version_32 := 16#e2e1ac78#;
   pragma Export (C, u02436, "reduction_of_polynomial_systemsS");
   u02437 : constant Version_32 := 16#357b0169#;
   pragma Export (C, u02437, "dobldobl_linear_reductionB");
   u02438 : constant Version_32 := 16#0aeabd7e#;
   pragma Export (C, u02438, "dobldobl_linear_reductionS");
   u02439 : constant Version_32 := 16#ed6d1670#;
   pragma Export (C, u02439, "quaddobl_linear_reductionB");
   u02440 : constant Version_32 := 16#8742c66f#;
   pragma Export (C, u02440, "quaddobl_linear_reductionS");
   u02441 : constant Version_32 := 16#6e7b2638#;
   pragma Export (C, u02441, "reduction_of_polynomialsB");
   u02442 : constant Version_32 := 16#f0cd1ad2#;
   pragma Export (C, u02442, "reduction_of_polynomialsS");
   u02443 : constant Version_32 := 16#93b8b572#;
   pragma Export (C, u02443, "regular_newton_puiseuxB");
   u02444 : constant Version_32 := 16#6510da2e#;
   pragma Export (C, u02444, "regular_newton_puiseuxS");
   u02445 : constant Version_32 := 16#c5cc3b0d#;
   pragma Export (C, u02445, "complex_series_and_polynomials_ioB");
   u02446 : constant Version_32 := 16#165b4739#;
   pragma Export (C, u02446, "complex_series_and_polynomials_ioS");
   u02447 : constant Version_32 := 16#8f3472bd#;
   pragma Export (C, u02447, "regular_solution_curves_seriesB");
   u02448 : constant Version_32 := 16#77bb82a8#;
   pragma Export (C, u02448, "regular_solution_curves_seriesS");
   u02449 : constant Version_32 := 16#b754c0d9#;
   pragma Export (C, u02449, "dobldobl_newton_matrix_seriesB");
   u02450 : constant Version_32 := 16#a3d0eb51#;
   pragma Export (C, u02450, "dobldobl_newton_matrix_seriesS");
   u02451 : constant Version_32 := 16#0de26c7b#;
   pragma Export (C, u02451, "dobldobl_cseries_vector_normsB");
   u02452 : constant Version_32 := 16#b9a85b73#;
   pragma Export (C, u02452, "dobldobl_cseries_vector_normsS");
   u02453 : constant Version_32 := 16#9eb7e6a7#;
   pragma Export (C, u02453, "dobldobl_complex_algebraic_seriesB");
   u02454 : constant Version_32 := 16#e79732b7#;
   pragma Export (C, u02454, "dobldobl_complex_algebraic_seriesS");
   u02455 : constant Version_32 := 16#15de1c19#;
   pragma Export (C, u02455, "dobldobl_complex_series_normsB");
   u02456 : constant Version_32 := 16#8ea60a88#;
   pragma Export (C, u02456, "dobldobl_complex_series_normsS");
   u02457 : constant Version_32 := 16#fefa87a6#;
   pragma Export (C, u02457, "quaddobl_newton_matrix_seriesB");
   u02458 : constant Version_32 := 16#e607ed33#;
   pragma Export (C, u02458, "quaddobl_newton_matrix_seriesS");
   u02459 : constant Version_32 := 16#1b300c7a#;
   pragma Export (C, u02459, "quaddobl_cseries_vector_normsB");
   u02460 : constant Version_32 := 16#79e34cfc#;
   pragma Export (C, u02460, "quaddobl_cseries_vector_normsS");
   u02461 : constant Version_32 := 16#08c2808b#;
   pragma Export (C, u02461, "quaddobl_complex_algebraic_seriesB");
   u02462 : constant Version_32 := 16#3e95f70b#;
   pragma Export (C, u02462, "quaddobl_complex_algebraic_seriesS");
   u02463 : constant Version_32 := 16#d41629c7#;
   pragma Export (C, u02463, "quaddobl_complex_series_normsB");
   u02464 : constant Version_32 := 16#5b640afd#;
   pragma Export (C, u02464, "quaddobl_complex_series_normsS");
   u02465 : constant Version_32 := 16#e385661d#;
   pragma Export (C, u02465, "relation_tableB");
   u02466 : constant Version_32 := 16#2fa88398#;
   pragma Export (C, u02466, "relation_tableS");
   u02467 : constant Version_32 := 16#c830e54e#;
   pragma Export (C, u02467, "remember_numeric_minorsB");
   u02468 : constant Version_32 := 16#19562cbd#;
   pragma Export (C, u02468, "remember_numeric_minorsS");
   u02469 : constant Version_32 := 16#3e58c50e#;
   pragma Export (C, u02469, "remember_symbolic_minorsB");
   u02470 : constant Version_32 := 16#6d389fe1#;
   pragma Export (C, u02470, "remember_symbolic_minorsS");
   u02471 : constant Version_32 := 16#24ded210#;
   pragma Export (C, u02471, "residual_convolution_circuitsB");
   u02472 : constant Version_32 := 16#ebfd176a#;
   pragma Export (C, u02472, "residual_convolution_circuitsS");
   u02473 : constant Version_32 := 16#b33d00d5#;
   pragma Export (C, u02473, "resolve_schubert_problemsB");
   u02474 : constant Version_32 := 16#39fa6f7c#;
   pragma Export (C, u02474, "resolve_schubert_problemsS");
   u02475 : constant Version_32 := 16#41a38ceb#;
   pragma Export (C, u02475, "flag_transformationsB");
   u02476 : constant Version_32 := 16#4190043b#;
   pragma Export (C, u02476, "flag_transformationsS");
   u02477 : constant Version_32 := 16#e09cbf4c#;
   pragma Export (C, u02477, "root_counters_outputB");
   u02478 : constant Version_32 := 16#4a3e0a98#;
   pragma Export (C, u02478, "root_counters_outputS");
   u02479 : constant Version_32 := 16#30673b3f#;
   pragma Export (C, u02479, "partitions_of_sets_stringsB");
   u02480 : constant Version_32 := 16#29fd0cbf#;
   pragma Export (C, u02480, "partitions_of_sets_stringsS");
   u02481 : constant Version_32 := 16#52d53025#;
   pragma Export (C, u02481, "root_refining_parametersB");
   u02482 : constant Version_32 := 16#f08471ae#;
   pragma Export (C, u02482, "root_refining_parametersS");
   u02483 : constant Version_32 := 16#ea02f6f7#;
   pragma Export (C, u02483, "run_power_series_methodsB");
   u02484 : constant Version_32 := 16#64ed5639#;
   pragma Export (C, u02484, "run_power_series_methodsS");
   u02485 : constant Version_32 := 16#3787989d#;
   pragma Export (C, u02485, "power_series_methodsB");
   u02486 : constant Version_32 := 16#9a9094da#;
   pragma Export (C, u02486, "power_series_methodsS");
   u02487 : constant Version_32 := 16#93f13f56#;
   pragma Export (C, u02487, "decadobl_newton_matrix_seriesB");
   u02488 : constant Version_32 := 16#c0060214#;
   pragma Export (C, u02488, "decadobl_newton_matrix_seriesS");
   u02489 : constant Version_32 := 16#dd5fddd7#;
   pragma Export (C, u02489, "decadobl_cseries_vector_normsB");
   u02490 : constant Version_32 := 16#ef6fd1a0#;
   pragma Export (C, u02490, "decadobl_cseries_vector_normsS");
   u02491 : constant Version_32 := 16#19b81125#;
   pragma Export (C, u02491, "decadobl_complex_algebraic_seriesB");
   u02492 : constant Version_32 := 16#9d462dd0#;
   pragma Export (C, u02492, "decadobl_complex_algebraic_seriesS");
   u02493 : constant Version_32 := 16#4b3de6ac#;
   pragma Export (C, u02493, "decadobl_complex_series_normsB");
   u02494 : constant Version_32 := 16#89973556#;
   pragma Export (C, u02494, "decadobl_complex_series_normsS");
   u02495 : constant Version_32 := 16#b910f857#;
   pragma Export (C, u02495, "octodobl_newton_matrix_seriesB");
   u02496 : constant Version_32 := 16#51037d27#;
   pragma Export (C, u02496, "octodobl_newton_matrix_seriesS");
   u02497 : constant Version_32 := 16#f7606b0e#;
   pragma Export (C, u02497, "octodobl_cseries_vector_normsB");
   u02498 : constant Version_32 := 16#996617d9#;
   pragma Export (C, u02498, "octodobl_cseries_vector_normsS");
   u02499 : constant Version_32 := 16#f3942964#;
   pragma Export (C, u02499, "octodobl_complex_algebraic_seriesB");
   u02500 : constant Version_32 := 16#ad5629e0#;
   pragma Export (C, u02500, "octodobl_complex_algebraic_seriesS");
   u02501 : constant Version_32 := 16#2b20fc07#;
   pragma Export (C, u02501, "octodobl_complex_series_normsB");
   u02502 : constant Version_32 := 16#a8aa62c0#;
   pragma Export (C, u02502, "octodobl_complex_series_normsS");
   u02503 : constant Version_32 := 16#b8c8f100#;
   pragma Export (C, u02503, "pentdobl_newton_matrix_seriesB");
   u02504 : constant Version_32 := 16#d53bf342#;
   pragma Export (C, u02504, "pentdobl_newton_matrix_seriesS");
   u02505 : constant Version_32 := 16#5515ebb4#;
   pragma Export (C, u02505, "pentdobl_cseries_vector_normsB");
   u02506 : constant Version_32 := 16#d8e116f4#;
   pragma Export (C, u02506, "pentdobl_cseries_vector_normsS");
   u02507 : constant Version_32 := 16#de0c27f3#;
   pragma Export (C, u02507, "pentdobl_complex_algebraic_seriesB");
   u02508 : constant Version_32 := 16#ca63712d#;
   pragma Export (C, u02508, "pentdobl_complex_algebraic_seriesS");
   u02509 : constant Version_32 := 16#84d27406#;
   pragma Export (C, u02509, "pentdobl_complex_series_normsB");
   u02510 : constant Version_32 := 16#a72a45af#;
   pragma Export (C, u02510, "pentdobl_complex_series_normsS");
   u02511 : constant Version_32 := 16#9668de75#;
   pragma Export (C, u02511, "running_cascadesB");
   u02512 : constant Version_32 := 16#0c56b241#;
   pragma Export (C, u02512, "running_cascadesS");
   u02513 : constant Version_32 := 16#48a82767#;
   pragma Export (C, u02513, "cascade_homotopy_filtersB");
   u02514 : constant Version_32 := 16#41d00df6#;
   pragma Export (C, u02514, "cascade_homotopy_filtersS");
   u02515 : constant Version_32 := 16#ea30800d#;
   pragma Export (C, u02515, "cascade_membership_filtersB");
   u02516 : constant Version_32 := 16#0bc3705a#;
   pragma Export (C, u02516, "cascade_membership_filtersS");
   u02517 : constant Version_32 := 16#8f5e90a4#;
   pragma Export (C, u02517, "homotopy_membership_filtersB");
   u02518 : constant Version_32 := 16#2ecfeb92#;
   pragma Export (C, u02518, "homotopy_membership_filtersS");
   u02519 : constant Version_32 := 16#30f428f8#;
   pragma Export (C, u02519, "monodromy_homotopiesB");
   u02520 : constant Version_32 := 16#46ea648b#;
   pragma Export (C, u02520, "monodromy_homotopiesS");
   u02521 : constant Version_32 := 16#dc6eae38#;
   pragma Export (C, u02521, "monodromy_homotopies_ioB");
   u02522 : constant Version_32 := 16#2fa14169#;
   pragma Export (C, u02522, "monodromy_homotopies_ioS");
   u02523 : constant Version_32 := 16#094e2f81#;
   pragma Export (C, u02523, "sagbi_homotopiesB");
   u02524 : constant Version_32 := 16#b31ac1cd#;
   pragma Export (C, u02524, "sagbi_homotopiesS");
   u02525 : constant Version_32 := 16#ad7abdc3#;
   pragma Export (C, u02525, "sample_point_gridsB");
   u02526 : constant Version_32 := 16#83b10875#;
   pragma Export (C, u02526, "sample_point_gridsS");
   u02527 : constant Version_32 := 16#e700b573#;
   pragma Export (C, u02527, "sample_point_listsB");
   u02528 : constant Version_32 := 16#b1e56473#;
   pragma Export (C, u02528, "sample_point_listsS");
   u02529 : constant Version_32 := 16#a9d4ccf5#;
   pragma Export (C, u02529, "sample_point_lists_ioB");
   u02530 : constant Version_32 := 16#1970902d#;
   pragma Export (C, u02530, "sample_point_lists_ioS");
   u02531 : constant Version_32 := 16#ab77580b#;
   pragma Export (C, u02531, "sample_pointsB");
   u02532 : constant Version_32 := 16#0a6206ec#;
   pragma Export (C, u02532, "sample_pointsS");
   u02533 : constant Version_32 := 16#80660797#;
   pragma Export (C, u02533, "sample_points_ioB");
   u02534 : constant Version_32 := 16#89112d42#;
   pragma Export (C, u02534, "sample_points_ioS");
   u02535 : constant Version_32 := 16#b1ea2c48#;
   pragma Export (C, u02535, "sampling_laurent_machineB");
   u02536 : constant Version_32 := 16#38b1f271#;
   pragma Export (C, u02536, "sampling_laurent_machineS");
   u02537 : constant Version_32 := 16#84fd892f#;
   pragma Export (C, u02537, "sampling_machineB");
   u02538 : constant Version_32 := 16#468378f4#;
   pragma Export (C, u02538, "sampling_machineS");
   u02539 : constant Version_32 := 16#cfcc9094#;
   pragma Export (C, u02539, "scaling_methodsB");
   u02540 : constant Version_32 := 16#7faed646#;
   pragma Export (C, u02540, "scaling_methodsS");
   u02541 : constant Version_32 := 16#3ce34a23#;
   pragma Export (C, u02541, "multprec_scalingB");
   u02542 : constant Version_32 := 16#8ea5d63a#;
   pragma Export (C, u02542, "multprec_scalingS");
   u02543 : constant Version_32 := 16#06506da7#;
   pragma Export (C, u02543, "semaphoreB");
   u02544 : constant Version_32 := 16#4d315e0d#;
   pragma Export (C, u02544, "semaphoreS");
   u02545 : constant Version_32 := 16#fc01b9e0#;
   pragma Export (C, u02545, "series_and_homotopiesB");
   u02546 : constant Version_32 := 16#1861705b#;
   pragma Export (C, u02546, "series_and_homotopiesS");
   u02547 : constant Version_32 := 16#dc9b35ab#;
   pragma Export (C, u02547, "series_and_predictorsB");
   u02548 : constant Version_32 := 16#117fa2dd#;
   pragma Export (C, u02548, "series_and_predictorsS");
   u02549 : constant Version_32 := 16#53df5a8c#;
   pragma Export (C, u02549, "series_and_solutionsB");
   u02550 : constant Version_32 := 16#9fef2c27#;
   pragma Export (C, u02550, "series_and_solutionsS");
   u02551 : constant Version_32 := 16#516b660d#;
   pragma Export (C, u02551, "series_and_trackersB");
   u02552 : constant Version_32 := 16#cb5ddc95#;
   pragma Export (C, u02552, "series_and_trackersS");
   u02553 : constant Version_32 := 16#dcab02c9#;
   pragma Export (C, u02553, "series_path_trackersB");
   u02554 : constant Version_32 := 16#478dcd81#;
   pragma Export (C, u02554, "series_path_trackersS");
   u02555 : constant Version_32 := 16#539f812f#;
   pragma Export (C, u02555, "drivers_to_series_trackersB");
   u02556 : constant Version_32 := 16#5265e6b1#;
   pragma Export (C, u02556, "drivers_to_series_trackersS");
   u02557 : constant Version_32 := 16#36c77ff6#;
   pragma Export (C, u02557, "affine_transformationsB");
   u02558 : constant Version_32 := 16#a4585a7a#;
   pragma Export (C, u02558, "affine_transformationsS");
   u02559 : constant Version_32 := 16#c233fa8f#;
   pragma Export (C, u02559, "set_structureB");
   u02560 : constant Version_32 := 16#f74dea9c#;
   pragma Export (C, u02560, "set_structureS");
   u02561 : constant Version_32 := 16#767775ba#;
   pragma Export (C, u02561, "set_structure_ioB");
   u02562 : constant Version_32 := 16#f18278a2#;
   pragma Export (C, u02562, "set_structure_ioS");
   u02563 : constant Version_32 := 16#21c3a1fc#;
   pragma Export (C, u02563, "set_structure_stringsB");
   u02564 : constant Version_32 := 16#79ebb1ea#;
   pragma Export (C, u02564, "set_structure_stringsS");
   u02565 : constant Version_32 := 16#8ffde315#;
   pragma Export (C, u02565, "set_structures_and_volumesB");
   u02566 : constant Version_32 := 16#90e4c1dc#;
   pragma Export (C, u02566, "set_structures_and_volumesS");
   u02567 : constant Version_32 := 16#246327ae#;
   pragma Export (C, u02567, "sets_of_unknownsB");
   u02568 : constant Version_32 := 16#4eaefcf5#;
   pragma Export (C, u02568, "sets_of_unknownsS");
   u02569 : constant Version_32 := 16#b66344db#;
   pragma Export (C, u02569, "sets_of_unknowns_ioB");
   u02570 : constant Version_32 := 16#1ceefcd4#;
   pragma Export (C, u02570, "sets_of_unknowns_ioS");
   u02571 : constant Version_32 := 16#c3979247#;
   pragma Export (C, u02571, "sets_of_unknowns_stringsB");
   u02572 : constant Version_32 := 16#8aa6e385#;
   pragma Export (C, u02572, "sets_of_unknowns_stringsS");
   u02573 : constant Version_32 := 16#05298448#;
   pragma Export (C, u02573, "setup_flag_homotopiesB");
   u02574 : constant Version_32 := 16#89965b80#;
   pragma Export (C, u02574, "setup_flag_homotopiesS");
   u02575 : constant Version_32 := 16#c0d08d3a#;
   pragma Export (C, u02575, "shift_coefficient_convolutionsB");
   u02576 : constant Version_32 := 16#b90f896a#;
   pragma Export (C, u02576, "shift_coefficient_convolutionsS");
   u02577 : constant Version_32 := 16#6e0060b5#;
   pragma Export (C, u02577, "shift_convolution_circuitsB");
   u02578 : constant Version_32 := 16#dc9cb273#;
   pragma Export (C, u02578, "shift_convolution_circuitsS");
   u02579 : constant Version_32 := 16#115f6e98#;
   pragma Export (C, u02579, "shuffle_polynomialsB");
   u02580 : constant Version_32 := 16#bd308195#;
   pragma Export (C, u02580, "shuffle_polynomialsS");
   u02581 : constant Version_32 := 16#5f792f4b#;
   pragma Export (C, u02581, "simplex_pivotingB");
   u02582 : constant Version_32 := 16#cc2ddaec#;
   pragma Export (C, u02582, "simplex_pivotingS");
   u02583 : constant Version_32 := 16#bcd14ca4#;
   pragma Export (C, u02583, "single_polyhedral_trackersB");
   u02584 : constant Version_32 := 16#8cf0f1f6#;
   pragma Export (C, u02584, "single_polyhedral_trackersS");
   u02585 : constant Version_32 := 16#c23f0da4#;
   pragma Export (C, u02585, "singular_values_of_hessiansB");
   u02586 : constant Version_32 := 16#4893389a#;
   pragma Export (C, u02586, "singular_values_of_hessiansS");
   u02587 : constant Version_32 := 16#909be376#;
   pragma Export (C, u02587, "solution_dropsB");
   u02588 : constant Version_32 := 16#e8fdd4cc#;
   pragma Export (C, u02588, "solution_dropsS");
   u02589 : constant Version_32 := 16#3340ce51#;
   pragma Export (C, u02589, "span_of_componentB");
   u02590 : constant Version_32 := 16#199ee406#;
   pragma Export (C, u02590, "span_of_componentS");
   u02591 : constant Version_32 := 16#1c4e541b#;
   pragma Export (C, u02591, "span_of_component_creatorsB");
   u02592 : constant Version_32 := 16#26084eb5#;
   pragma Export (C, u02592, "span_of_component_creatorsS");
   u02593 : constant Version_32 := 16#97fd3d05#;
   pragma Export (C, u02593, "span_of_component_ioB");
   u02594 : constant Version_32 := 16#df828002#;
   pragma Export (C, u02594, "span_of_component_ioS");
   u02595 : constant Version_32 := 16#473e5b57#;
   pragma Export (C, u02595, "span_of_supportsB");
   u02596 : constant Version_32 := 16#e82a5ae2#;
   pragma Export (C, u02596, "span_of_supportsS");
   u02597 : constant Version_32 := 16#4ee32cd1#;
   pragma Export (C, u02597, "specialization_of_planesB");
   u02598 : constant Version_32 := 16#7ccecca2#;
   pragma Export (C, u02598, "specialization_of_planesS");
   u02599 : constant Version_32 := 16#84ee8576#;
   pragma Export (C, u02599, "square_and_embed_systemsB");
   u02600 : constant Version_32 := 16#4084a454#;
   pragma Export (C, u02600, "square_and_embed_systemsS");
   u02601 : constant Version_32 := 16#00eeeb2d#;
   pragma Export (C, u02601, "stable_polyhedral_continuationB");
   u02602 : constant Version_32 := 16#40d3a11c#;
   pragma Export (C, u02602, "stable_polyhedral_continuationS");
   u02603 : constant Version_32 := 16#d6300ee4#;
   pragma Export (C, u02603, "standard64_common_divisorsB");
   u02604 : constant Version_32 := 16#d8e67a16#;
   pragma Export (C, u02604, "standard64_common_divisorsS");
   u02605 : constant Version_32 := 16#94deb218#;
   pragma Export (C, u02605, "greatest_common_divisorsB");
   u02606 : constant Version_32 := 16#68960144#;
   pragma Export (C, u02606, "greatest_common_divisorsS");
   u02607 : constant Version_32 := 16#d7f88576#;
   pragma Export (C, u02607, "abstract_ring__domainS");
   u02608 : constant Version_32 := 16#f26a3c8f#;
   pragma Export (C, u02608, "standard_binomial_factorsB");
   u02609 : constant Version_32 := 16#5fed84a8#;
   pragma Export (C, u02609, "standard_binomial_factorsS");
   u02610 : constant Version_32 := 16#9c936287#;
   pragma Export (C, u02610, "standard_binomial_factors_ioB");
   u02611 : constant Version_32 := 16#cb700a1d#;
   pragma Export (C, u02611, "standard_binomial_factors_ioS");
   u02612 : constant Version_32 := 16#84fea4c4#;
   pragma Export (C, u02612, "standard_binomial_solversB");
   u02613 : constant Version_32 := 16#23eb0580#;
   pragma Export (C, u02613, "standard_binomial_solversS");
   u02614 : constant Version_32 := 16#6a74f48d#;
   pragma Export (C, u02614, "standard_binomial_systemsB");
   u02615 : constant Version_32 := 16#b83441d8#;
   pragma Export (C, u02615, "standard_binomial_systemsS");
   u02616 : constant Version_32 := 16#09741512#;
   pragma Export (C, u02616, "standard_binomial_varietiesB");
   u02617 : constant Version_32 := 16#734a68b7#;
   pragma Export (C, u02617, "standard_binomial_varietiesS");
   u02618 : constant Version_32 := 16#70500c04#;
   pragma Export (C, u02618, "standard_binomial_varieties_ioB");
   u02619 : constant Version_32 := 16#11ced7b9#;
   pragma Export (C, u02619, "standard_binomial_varieties_ioS");
   u02620 : constant Version_32 := 16#5d01db33#;
   pragma Export (C, u02620, "standard_blackbox_continuationsB");
   u02621 : constant Version_32 := 16#4bdb98e1#;
   pragma Export (C, u02621, "standard_blackbox_continuationsS");
   u02622 : constant Version_32 := 16#cc96e0a8#;
   pragma Export (C, u02622, "standard_blackbox_refinersB");
   u02623 : constant Version_32 := 16#dee3a3b4#;
   pragma Export (C, u02623, "standard_blackbox_refinersS");
   u02624 : constant Version_32 := 16#8a4810ba#;
   pragma Export (C, u02624, "standard_blackbox_solversB");
   u02625 : constant Version_32 := 16#0f0c8380#;
   pragma Export (C, u02625, "standard_blackbox_solversS");
   u02626 : constant Version_32 := 16#ee5285d9#;
   pragma Export (C, u02626, "standard_bracket_polynomialsB");
   u02627 : constant Version_32 := 16#f4ce6f3b#;
   pragma Export (C, u02627, "standard_bracket_polynomialsS");
   u02628 : constant Version_32 := 16#ab0136df#;
   pragma Export (C, u02628, "standard_bracket_systemsB");
   u02629 : constant Version_32 := 16#7c6bb818#;
   pragma Export (C, u02629, "standard_bracket_systemsS");
   u02630 : constant Version_32 := 16#00ba907e#;
   pragma Export (C, u02630, "standard_breakup_componentsB");
   u02631 : constant Version_32 := 16#ac324a30#;
   pragma Export (C, u02631, "standard_breakup_componentsS");
   u02632 : constant Version_32 := 16#9b324040#;
   pragma Export (C, u02632, "standard_cascading_planesB");
   u02633 : constant Version_32 := 16#fe36979d#;
   pragma Export (C, u02633, "standard_cascading_planesS");
   u02634 : constant Version_32 := 16#21fbd70f#;
   pragma Export (C, u02634, "standard_central_projectionsB");
   u02635 : constant Version_32 := 16#24697508#;
   pragma Export (C, u02635, "standard_central_projectionsS");
   u02636 : constant Version_32 := 16#aae166a7#;
   pragma Export (C, u02636, "standard_circuit_makersB");
   u02637 : constant Version_32 := 16#06f621db#;
   pragma Export (C, u02637, "standard_circuit_makersS");
   u02638 : constant Version_32 := 16#4b1ab0a0#;
   pragma Export (C, u02638, "quaddobl_complex_circuitsB");
   u02639 : constant Version_32 := 16#ca9b33e1#;
   pragma Export (C, u02639, "quaddobl_complex_circuitsS");
   u02640 : constant Version_32 := 16#1e54f1c0#;
   pragma Export (C, u02640, "quaddobl_hessian_updatersB");
   u02641 : constant Version_32 := 16#0eb2ab49#;
   pragma Export (C, u02641, "quaddobl_hessian_updatersS");
   u02642 : constant Version_32 := 16#c90b4b34#;
   pragma Export (C, u02642, "standard_coefficient_circuitsB");
   u02643 : constant Version_32 := 16#a2f5ddda#;
   pragma Export (C, u02643, "standard_coefficient_circuitsS");
   u02644 : constant Version_32 := 16#c9cd4343#;
   pragma Export (C, u02644, "standard_coefficient_convolutionsB");
   u02645 : constant Version_32 := 16#28acfe34#;
   pragma Export (C, u02645, "standard_coefficient_convolutionsS");
   u02646 : constant Version_32 := 16#65944951#;
   pragma Export (C, u02646, "standard_coefficient_homotopyB");
   u02647 : constant Version_32 := 16#bc28f603#;
   pragma Export (C, u02647, "standard_coefficient_homotopyS");
   u02648 : constant Version_32 := 16#9b2f2a2b#;
   pragma Export (C, u02648, "standard_coefficient_storageB");
   u02649 : constant Version_32 := 16#795dcaec#;
   pragma Export (C, u02649, "standard_coefficient_storageS");
   u02650 : constant Version_32 := 16#4afd8fcb#;
   pragma Export (C, u02650, "standard_common_divisorsB");
   u02651 : constant Version_32 := 16#bd335184#;
   pragma Export (C, u02651, "standard_common_divisorsS");
   u02652 : constant Version_32 := 16#e43f29e6#;
   pragma Export (C, u02652, "standard_complex_circuitsB");
   u02653 : constant Version_32 := 16#12ca6fe1#;
   pragma Export (C, u02653, "standard_complex_circuitsS");
   u02654 : constant Version_32 := 16#5bc56e03#;
   pragma Export (C, u02654, "standard_complex_exponentiationB");
   u02655 : constant Version_32 := 16#8a08f7ad#;
   pragma Export (C, u02655, "standard_complex_exponentiationS");
   u02656 : constant Version_32 := 16#20800f66#;
   pragma Export (C, u02656, "standard_complex_hessiansB");
   u02657 : constant Version_32 := 16#4c6a2032#;
   pragma Export (C, u02657, "standard_complex_hessiansS");
   u02658 : constant Version_32 := 16#36a67fd1#;
   pragma Export (C, u02658, "standard_complex_jaco_matricesB");
   u02659 : constant Version_32 := 16#5b263b21#;
   pragma Export (C, u02659, "standard_complex_jaco_matricesS");
   u02660 : constant Version_32 := 16#b680d0a9#;
   pragma Export (C, u02660, "standard_complex_laur_functionsB");
   u02661 : constant Version_32 := 16#97637095#;
   pragma Export (C, u02661, "standard_complex_laur_functionsS");
   u02662 : constant Version_32 := 16#c8a210ce#;
   pragma Export (C, u02662, "standard_complex_laur_jacomatsB");
   u02663 : constant Version_32 := 16#9381a77d#;
   pragma Export (C, u02663, "standard_complex_laur_jacomatsS");
   u02664 : constant Version_32 := 16#fcfcd623#;
   pragma Export (C, u02664, "standard_complex_laur_randomizersB");
   u02665 : constant Version_32 := 16#af524cfc#;
   pragma Export (C, u02665, "standard_complex_laur_randomizersS");
   u02666 : constant Version_32 := 16#be01dc54#;
   pragma Export (C, u02666, "standard_complex_laur_stringsB");
   u02667 : constant Version_32 := 16#44bdbee3#;
   pragma Export (C, u02667, "standard_complex_laur_stringsS");
   u02668 : constant Version_32 := 16#7ae1e81b#;
   pragma Export (C, u02668, "standard_complex_laur_sysfunB");
   u02669 : constant Version_32 := 16#0c24e31e#;
   pragma Export (C, u02669, "standard_complex_laur_sysfunS");
   u02670 : constant Version_32 := 16#102fcc76#;
   pragma Export (C, u02670, "standard_complex_laur_systemsB");
   u02671 : constant Version_32 := 16#6f941f21#;
   pragma Export (C, u02671, "standard_complex_laur_systemsS");
   u02672 : constant Version_32 := 16#a4d8af77#;
   pragma Export (C, u02672, "standard_complex_laur_systems_ioB");
   u02673 : constant Version_32 := 16#6c553382#;
   pragma Export (C, u02673, "standard_complex_laur_systems_ioS");
   u02674 : constant Version_32 := 16#751eb2c5#;
   pragma Export (C, u02674, "standard_complex_laurentialsB");
   u02675 : constant Version_32 := 16#52afb040#;
   pragma Export (C, u02675, "standard_complex_laurentialsS");
   u02676 : constant Version_32 := 16#b3291aed#;
   pragma Export (C, u02676, "standard_complex_laurentials_ioB");
   u02677 : constant Version_32 := 16#23b1ef46#;
   pragma Export (C, u02677, "standard_complex_laurentials_ioS");
   u02678 : constant Version_32 := 16#0f19c7d8#;
   pragma Export (C, u02678, "line_breaksB");
   u02679 : constant Version_32 := 16#a6065486#;
   pragma Export (C, u02679, "line_breaksS");
   u02680 : constant Version_32 := 16#3421540b#;
   pragma Export (C, u02680, "standard_complex_laur_readersB");
   u02681 : constant Version_32 := 16#77ef6a44#;
   pragma Export (C, u02681, "standard_complex_laur_readersS");
   u02682 : constant Version_32 := 16#28dce51a#;
   pragma Export (C, u02682, "standard_complex_linear_solversB");
   u02683 : constant Version_32 := 16#f053aeea#;
   pragma Export (C, u02683, "standard_complex_linear_solversS");
   u02684 : constant Version_32 := 16#280e7fbd#;
   pragma Export (C, u02684, "standard_complex_matricesB");
   u02685 : constant Version_32 := 16#1d46a1b5#;
   pragma Export (C, u02685, "standard_complex_matricesS");
   u02686 : constant Version_32 := 16#907cac95#;
   pragma Export (C, u02686, "standard_complex_matrices_ioB");
   u02687 : constant Version_32 := 16#7dbb1b71#;
   pragma Export (C, u02687, "standard_complex_matrices_ioS");
   u02688 : constant Version_32 := 16#434117fa#;
   pragma Export (C, u02688, "standard_complex_norms_equalsB");
   u02689 : constant Version_32 := 16#70ec13a1#;
   pragma Export (C, u02689, "standard_complex_norms_equalsS");
   u02690 : constant Version_32 := 16#f51a44b9#;
   pragma Export (C, u02690, "standard_complex_numbersB");
   u02691 : constant Version_32 := 16#2f2a46b6#;
   pragma Export (C, u02691, "standard_complex_numbersS");
   u02692 : constant Version_32 := 16#beef076e#;
   pragma Export (C, u02692, "standard_complex_numbers_ioB");
   u02693 : constant Version_32 := 16#f52beee1#;
   pragma Export (C, u02693, "standard_complex_numbers_ioS");
   u02694 : constant Version_32 := 16#05ba6e7e#;
   pragma Export (C, u02694, "standard_complex_numbers_polarB");
   u02695 : constant Version_32 := 16#ad496a24#;
   pragma Export (C, u02695, "standard_complex_numbers_polarS");
   u02696 : constant Version_32 := 16#1c12548d#;
   pragma Export (C, u02696, "standard_complex_poly_functionsB");
   u02697 : constant Version_32 := 16#18c938e9#;
   pragma Export (C, u02697, "standard_complex_poly_functionsS");
   u02698 : constant Version_32 := 16#7d1ae4f6#;
   pragma Export (C, u02698, "standard_complex_poly_listsB");
   u02699 : constant Version_32 := 16#5354026b#;
   pragma Export (C, u02699, "standard_complex_poly_listsS");
   u02700 : constant Version_32 := 16#88f232bd#;
   pragma Export (C, u02700, "standard_complex_poly_matricesB");
   u02701 : constant Version_32 := 16#651252c7#;
   pragma Export (C, u02701, "standard_complex_poly_matricesS");
   u02702 : constant Version_32 := 16#2d66445e#;
   pragma Export (C, u02702, "standard_complex_poly_matrices_ioB");
   u02703 : constant Version_32 := 16#6e0f7c98#;
   pragma Export (C, u02703, "standard_complex_poly_matrices_ioS");
   u02704 : constant Version_32 := 16#61ed2f6b#;
   pragma Export (C, u02704, "standard_complex_poly_randomizersB");
   u02705 : constant Version_32 := 16#9434dcd5#;
   pragma Export (C, u02705, "standard_complex_poly_randomizersS");
   u02706 : constant Version_32 := 16#f784b5d6#;
   pragma Export (C, u02706, "standard_complex_poly_ringS");
   u02707 : constant Version_32 := 16#52828d0a#;
   pragma Export (C, u02707, "standard_complex_poly_ring_ioS");
   u02708 : constant Version_32 := 16#731b3ede#;
   pragma Export (C, u02708, "standard_complex_poly_stringsB");
   u02709 : constant Version_32 := 16#0622909b#;
   pragma Export (C, u02709, "standard_complex_poly_stringsS");
   u02710 : constant Version_32 := 16#6c0acf67#;
   pragma Export (C, u02710, "standard_complex_poly_sysfunB");
   u02711 : constant Version_32 := 16#ad650239#;
   pragma Export (C, u02711, "standard_complex_poly_sysfunS");
   u02712 : constant Version_32 := 16#1ba1f5ce#;
   pragma Export (C, u02712, "standard_complex_poly_systemsB");
   u02713 : constant Version_32 := 16#683ce334#;
   pragma Export (C, u02713, "standard_complex_poly_systemsS");
   u02714 : constant Version_32 := 16#66287c69#;
   pragma Export (C, u02714, "standard_complex_poly_systems_ioB");
   u02715 : constant Version_32 := 16#a687e086#;
   pragma Export (C, u02715, "standard_complex_poly_systems_ioS");
   u02716 : constant Version_32 := 16#1f5698c4#;
   pragma Export (C, u02716, "standard_complex_poly_vectorsB");
   u02717 : constant Version_32 := 16#ea75e024#;
   pragma Export (C, u02717, "standard_complex_poly_vectorsS");
   u02718 : constant Version_32 := 16#61f010c4#;
   pragma Export (C, u02718, "standard_complex_polynomialsB");
   u02719 : constant Version_32 := 16#cff479e5#;
   pragma Export (C, u02719, "standard_complex_polynomialsS");
   u02720 : constant Version_32 := 16#396f7063#;
   pragma Export (C, u02720, "standard_complex_polynomials_ioB");
   u02721 : constant Version_32 := 16#9a807691#;
   pragma Export (C, u02721, "standard_complex_polynomials_ioS");
   u02722 : constant Version_32 := 16#ee6ef244#;
   pragma Export (C, u02722, "standard_complex_prod_planesB");
   u02723 : constant Version_32 := 16#202718ac#;
   pragma Export (C, u02723, "standard_complex_prod_planesS");
   u02724 : constant Version_32 := 16#54f98d9b#;
   pragma Export (C, u02724, "standard_complex_prod_systemsB");
   u02725 : constant Version_32 := 16#95d0f9ef#;
   pragma Export (C, u02725, "standard_complex_prod_systemsS");
   u02726 : constant Version_32 := 16#0bda3243#;
   pragma Export (C, u02726, "standard_complex_prod_systems_ioB");
   u02727 : constant Version_32 := 16#a2f85304#;
   pragma Export (C, u02727, "standard_complex_prod_systems_ioS");
   u02728 : constant Version_32 := 16#bde91932#;
   pragma Export (C, u02728, "standard_complex_poly_lists_ioB");
   u02729 : constant Version_32 := 16#50b8b4c3#;
   pragma Export (C, u02729, "standard_complex_poly_lists_ioS");
   u02730 : constant Version_32 := 16#013ea646#;
   pragma Export (C, u02730, "standard_complex_qr_least_squaresB");
   u02731 : constant Version_32 := 16#1c6e7645#;
   pragma Export (C, u02731, "standard_complex_qr_least_squaresS");
   u02732 : constant Version_32 := 16#bb0eb28c#;
   pragma Export (C, u02732, "standard_complex_ringS");
   u02733 : constant Version_32 := 16#0d6f654e#;
   pragma Export (C, u02733, "standard_complex_ring__ffieldS");
   u02734 : constant Version_32 := 16#d02f6211#;
   pragma Export (C, u02734, "standard_complex_ring_ioS");
   u02735 : constant Version_32 := 16#0ccca880#;
   pragma Export (C, u02735, "standard_complex_seriesB");
   u02736 : constant Version_32 := 16#3f9df66a#;
   pragma Export (C, u02736, "standard_complex_seriesS");
   u02737 : constant Version_32 := 16#1d7f62f8#;
   pragma Export (C, u02737, "standard_complex_series_functionsB");
   u02738 : constant Version_32 := 16#f04633b2#;
   pragma Export (C, u02738, "standard_complex_series_functionsS");
   u02739 : constant Version_32 := 16#f5009aad#;
   pragma Export (C, u02739, "standard_complex_series_ioB");
   u02740 : constant Version_32 := 16#bf9e07d4#;
   pragma Export (C, u02740, "standard_complex_series_ioS");
   u02741 : constant Version_32 := 16#85ee6636#;
   pragma Export (C, u02741, "standard_complex_series_matricesB");
   u02742 : constant Version_32 := 16#b60b9a69#;
   pragma Export (C, u02742, "standard_complex_series_matricesS");
   u02743 : constant Version_32 := 16#6e5474fa#;
   pragma Export (C, u02743, "standard_complex_series_ringS");
   u02744 : constant Version_32 := 16#35bf7d89#;
   pragma Export (C, u02744, "standard_complex_series_vectorsB");
   u02745 : constant Version_32 := 16#34707c01#;
   pragma Export (C, u02745, "standard_complex_series_vectorsS");
   u02746 : constant Version_32 := 16#6fa2599c#;
   pragma Export (C, u02746, "standard_complex_series_vectors_ioB");
   u02747 : constant Version_32 := 16#c166da27#;
   pragma Export (C, u02747, "standard_complex_series_vectors_ioS");
   u02748 : constant Version_32 := 16#175da52f#;
   pragma Export (C, u02748, "standard_complex_series_ring_ioS");
   u02749 : constant Version_32 := 16#cb543b9c#;
   pragma Export (C, u02749, "standard_complex_series_vecvecsB");
   u02750 : constant Version_32 := 16#e12c0bd5#;
   pragma Export (C, u02750, "standard_complex_series_vecvecsS");
   u02751 : constant Version_32 := 16#735036bd#;
   pragma Export (C, u02751, "standard_complex_singular_valuesB");
   u02752 : constant Version_32 := 16#2e4be230#;
   pragma Export (C, u02752, "standard_complex_singular_valuesS");
   u02753 : constant Version_32 := 16#8dbbe26f#;
   pragma Export (C, u02753, "standard_complex_blas_helpersB");
   u02754 : constant Version_32 := 16#0a31868d#;
   pragma Export (C, u02754, "standard_complex_blas_helpersS");
   u02755 : constant Version_32 := 16#803e4e55#;
   pragma Export (C, u02755, "standard_complex_solutionsB");
   u02756 : constant Version_32 := 16#037c9a13#;
   pragma Export (C, u02756, "standard_complex_solutionsS");
   u02757 : constant Version_32 := 16#01838abd#;
   pragma Export (C, u02757, "standard_complex_solutions_ioB");
   u02758 : constant Version_32 := 16#47b1af57#;
   pragma Export (C, u02758, "standard_complex_solutions_ioS");
   u02759 : constant Version_32 := 16#17c3f7ce#;
   pragma Export (C, u02759, "standard_complex_substitutorsB");
   u02760 : constant Version_32 := 16#8e638c6f#;
   pragma Export (C, u02760, "standard_complex_substitutorsS");
   u02761 : constant Version_32 := 16#a13b822a#;
   pragma Export (C, u02761, "standard_complex_term_listsB");
   u02762 : constant Version_32 := 16#bee3c8fe#;
   pragma Export (C, u02762, "standard_complex_term_listsS");
   u02763 : constant Version_32 := 16#162645b9#;
   pragma Export (C, u02763, "standard_complex_term_lists_ioB");
   u02764 : constant Version_32 := 16#c23938bd#;
   pragma Export (C, u02764, "standard_complex_term_lists_ioS");
   u02765 : constant Version_32 := 16#3f38c5f7#;
   pragma Export (C, u02765, "standard_complex_to_real_polyB");
   u02766 : constant Version_32 := 16#66d349f3#;
   pragma Export (C, u02766, "standard_complex_to_real_polyS");
   u02767 : constant Version_32 := 16#105d69ea#;
   pragma Export (C, u02767, "standard_complex_veclistsB");
   u02768 : constant Version_32 := 16#3f999b6c#;
   pragma Export (C, u02768, "standard_complex_veclistsS");
   u02769 : constant Version_32 := 16#b003b36b#;
   pragma Export (C, u02769, "standard_complex_vecmatsB");
   u02770 : constant Version_32 := 16#bd756197#;
   pragma Export (C, u02770, "standard_complex_vecmatsS");
   u02771 : constant Version_32 := 16#8cb350a2#;
   pragma Export (C, u02771, "standard_complex_vecmats_ioB");
   u02772 : constant Version_32 := 16#cb583f9b#;
   pragma Export (C, u02772, "standard_complex_vecmats_ioS");
   u02773 : constant Version_32 := 16#ac3ea3dc#;
   pragma Export (C, u02773, "generic_vecmats_ioB");
   u02774 : constant Version_32 := 16#f5172dce#;
   pragma Export (C, u02774, "generic_vecmats_ioS");
   u02775 : constant Version_32 := 16#19655c95#;
   pragma Export (C, u02775, "standard_complex_vector_normsB");
   u02776 : constant Version_32 := 16#9c9ca79f#;
   pragma Export (C, u02776, "standard_complex_vector_normsS");
   u02777 : constant Version_32 := 16#1daff539#;
   pragma Export (C, u02777, "standard_complex_vectorsB");
   u02778 : constant Version_32 := 16#32dd5e56#;
   pragma Export (C, u02778, "standard_complex_vectorsS");
   u02779 : constant Version_32 := 16#7146aed4#;
   pragma Export (C, u02779, "standard_complex_vectors_ioB");
   u02780 : constant Version_32 := 16#d0ef2fb9#;
   pragma Export (C, u02780, "standard_complex_vectors_ioS");
   u02781 : constant Version_32 := 16#fde7288b#;
   pragma Export (C, u02781, "standard_complex_vecvecsB");
   u02782 : constant Version_32 := 16#d1323a95#;
   pragma Export (C, u02782, "standard_complex_vecvecsS");
   u02783 : constant Version_32 := 16#92e10bc1#;
   pragma Export (C, u02783, "standard_complex_vecvecs_ioB");
   u02784 : constant Version_32 := 16#fa883cee#;
   pragma Export (C, u02784, "standard_complex_vecvecs_ioS");
   u02785 : constant Version_32 := 16#f804dfe3#;
   pragma Export (C, u02785, "standard_complex_vecvecvecsB");
   u02786 : constant Version_32 := 16#28d43d38#;
   pragma Export (C, u02786, "standard_complex_vecvecvecsS");
   u02787 : constant Version_32 := 16#6b8d270f#;
   pragma Export (C, u02787, "standard_condition_reportB");
   u02788 : constant Version_32 := 16#33c7381b#;
   pragma Export (C, u02788, "standard_condition_reportS");
   u02789 : constant Version_32 := 16#6036a28a#;
   pragma Export (C, u02789, "standard_condition_tablesB");
   u02790 : constant Version_32 := 16#7e8ccd00#;
   pragma Export (C, u02790, "standard_condition_tablesS");
   u02791 : constant Version_32 := 16#9dbc24b6#;
   pragma Export (C, u02791, "standard_continuation_dataB");
   u02792 : constant Version_32 := 16#b552ee80#;
   pragma Export (C, u02792, "standard_continuation_dataS");
   u02793 : constant Version_32 := 16#340280cd#;
   pragma Export (C, u02793, "standard_continuation_data_ioB");
   u02794 : constant Version_32 := 16#5ea94887#;
   pragma Export (C, u02794, "standard_continuation_data_ioS");
   u02795 : constant Version_32 := 16#ae87ac85#;
   pragma Export (C, u02795, "standard_convolution_splittersB");
   u02796 : constant Version_32 := 16#4c2da808#;
   pragma Export (C, u02796, "standard_convolution_splittersS");
   u02797 : constant Version_32 := 16#bd5e847d#;
   pragma Export (C, u02797, "standard_cseries_jaco_matricesB");
   u02798 : constant Version_32 := 16#cac6b0c3#;
   pragma Export (C, u02798, "standard_cseries_jaco_matricesS");
   u02799 : constant Version_32 := 16#85f6e457#;
   pragma Export (C, u02799, "standard_cseries_poly_functionsB");
   u02800 : constant Version_32 := 16#b7939c77#;
   pragma Export (C, u02800, "standard_cseries_poly_functionsS");
   u02801 : constant Version_32 := 16#6fb2e92d#;
   pragma Export (C, u02801, "standard_cseries_poly_sysfunB");
   u02802 : constant Version_32 := 16#1a9d6bfc#;
   pragma Export (C, u02802, "standard_cseries_poly_sysfunS");
   u02803 : constant Version_32 := 16#36080dc8#;
   pragma Export (C, u02803, "standard_cseries_poly_systemsB");
   u02804 : constant Version_32 := 16#5b3b87c6#;
   pragma Export (C, u02804, "standard_cseries_poly_systemsS");
   u02805 : constant Version_32 := 16#51e326d7#;
   pragma Export (C, u02805, "standard_cseries_polynomialsB");
   u02806 : constant Version_32 := 16#d15ae511#;
   pragma Export (C, u02806, "standard_cseries_polynomialsS");
   u02807 : constant Version_32 := 16#1405bcf3#;
   pragma Export (C, u02807, "standard_cseries_vector_functionsB");
   u02808 : constant Version_32 := 16#a68d721d#;
   pragma Export (C, u02808, "standard_cseries_vector_functionsS");
   u02809 : constant Version_32 := 16#dd6d8895#;
   pragma Export (C, u02809, "standard_data_on_pathB");
   u02810 : constant Version_32 := 16#7edc744f#;
   pragma Export (C, u02810, "standard_data_on_pathS");
   u02811 : constant Version_32 := 16#400a651c#;
   pragma Export (C, u02811, "directions_of_standard_pathsB");
   u02812 : constant Version_32 := 16#41ff7785#;
   pragma Export (C, u02812, "directions_of_standard_pathsS");
   u02813 : constant Version_32 := 16#354ac9ac#;
   pragma Export (C, u02813, "standard_deflate_singularitiesB");
   u02814 : constant Version_32 := 16#cb21575b#;
   pragma Export (C, u02814, "standard_deflate_singularitiesS");
   u02815 : constant Version_32 := 16#0872e42a#;
   pragma Export (C, u02815, "standard_deflation_methodsB");
   u02816 : constant Version_32 := 16#c46f71e2#;
   pragma Export (C, u02816, "standard_deflation_methodsS");
   u02817 : constant Version_32 := 16#c808781f#;
   pragma Export (C, u02817, "standard_complex_newton_stepsB");
   u02818 : constant Version_32 := 16#e7ae51f3#;
   pragma Export (C, u02818, "standard_complex_newton_stepsS");
   u02819 : constant Version_32 := 16#3d2e7fef#;
   pragma Export (C, u02819, "standard_deflation_treesB");
   u02820 : constant Version_32 := 16#8b7e89ec#;
   pragma Export (C, u02820, "standard_deflation_treesS");
   u02821 : constant Version_32 := 16#80a0a0e2#;
   pragma Export (C, u02821, "standard_deflation_trees_ioB");
   u02822 : constant Version_32 := 16#972aea97#;
   pragma Export (C, u02822, "standard_deflation_trees_ioS");
   u02823 : constant Version_32 := 16#6b560bc4#;
   pragma Export (C, u02823, "standard_diagonal_polynomialsB");
   u02824 : constant Version_32 := 16#f47a0d66#;
   pragma Export (C, u02824, "standard_diagonal_polynomialsS");
   u02825 : constant Version_32 := 16#de100e5b#;
   pragma Export (C, u02825, "standard_diagonal_solutionsB");
   u02826 : constant Version_32 := 16#541a0c1b#;
   pragma Export (C, u02826, "standard_diagonal_solutionsS");
   u02827 : constant Version_32 := 16#9be4716c#;
   pragma Export (C, u02827, "standard_dictionary_solutions_ioB");
   u02828 : constant Version_32 := 16#abf56a3d#;
   pragma Export (C, u02828, "standard_dictionary_solutions_ioS");
   u02829 : constant Version_32 := 16#ac6fc64c#;
   pragma Export (C, u02829, "standard_divided_differencesB");
   u02830 : constant Version_32 := 16#3dc34850#;
   pragma Export (C, u02830, "standard_divided_differencesS");
   u02831 : constant Version_32 := 16#f3d2c234#;
   pragma Export (C, u02831, "standard_durand_kernerB");
   u02832 : constant Version_32 := 16#74941ab7#;
   pragma Export (C, u02832, "standard_durand_kernerS");
   u02833 : constant Version_32 := 16#cea7592c#;
   pragma Export (C, u02833, "standard_dynamic32_triangulationsB");
   u02834 : constant Version_32 := 16#e06a2e48#;
   pragma Export (C, u02834, "standard_dynamic32_triangulationsS");
   u02835 : constant Version_32 := 16#0fbdcea4#;
   pragma Export (C, u02835, "standard_echelon_formsB");
   u02836 : constant Version_32 := 16#c69eeb0c#;
   pragma Export (C, u02836, "standard_echelon_formsS");
   u02837 : constant Version_32 := 16#23f4a36b#;
   pragma Export (C, u02837, "standard_embed_polynomialsB");
   u02838 : constant Version_32 := 16#c0971cd8#;
   pragma Export (C, u02838, "standard_embed_polynomialsS");
   u02839 : constant Version_32 := 16#4b805612#;
   pragma Export (C, u02839, "standard_evaluate_deflationB");
   u02840 : constant Version_32 := 16#d48df574#;
   pragma Export (C, u02840, "standard_evaluate_deflationS");
   u02841 : constant Version_32 := 16#d10e1682#;
   pragma Export (C, u02841, "standard_deflation_matricesB");
   u02842 : constant Version_32 := 16#b1b9e3ea#;
   pragma Export (C, u02842, "standard_deflation_matricesS");
   u02843 : constant Version_32 := 16#c150a75d#;
   pragma Export (C, u02843, "standard_evaluate_deflation_ioB");
   u02844 : constant Version_32 := 16#9c7cfb41#;
   pragma Export (C, u02844, "standard_evaluate_deflation_ioS");
   u02845 : constant Version_32 := 16#78fb97a3#;
   pragma Export (C, u02845, "standard_exponent_transformationsB");
   u02846 : constant Version_32 := 16#bc471432#;
   pragma Export (C, u02846, "standard_exponent_transformationsS");
   u02847 : constant Version_32 := 16#a4ee4a75#;
   pragma Export (C, u02847, "standard_fabry_on_homotopyB");
   u02848 : constant Version_32 := 16#36229a12#;
   pragma Export (C, u02848, "standard_fabry_on_homotopyS");
   u02849 : constant Version_32 := 16#6603103f#;
   pragma Export (C, u02849, "staggered_newton_convolutionsB");
   u02850 : constant Version_32 := 16#4eafc569#;
   pragma Export (C, u02850, "staggered_newton_convolutionsS");
   u02851 : constant Version_32 := 16#bc2a9d9f#;
   pragma Export (C, u02851, "newton_coefficient_convolutionsB");
   u02852 : constant Version_32 := 16#cea791be#;
   pragma Export (C, u02852, "newton_coefficient_convolutionsS");
   u02853 : constant Version_32 := 16#41aa6ece#;
   pragma Export (C, u02853, "standard_floating_jaco_matricesB");
   u02854 : constant Version_32 := 16#3c97bac0#;
   pragma Export (C, u02854, "standard_floating_jaco_matricesS");
   u02855 : constant Version_32 := 16#67f1c68d#;
   pragma Export (C, u02855, "standard_floating_linear_solversB");
   u02856 : constant Version_32 := 16#e9081533#;
   pragma Export (C, u02856, "standard_floating_linear_solversS");
   u02857 : constant Version_32 := 16#49b1fb7f#;
   pragma Export (C, u02857, "standard_floating_matricesB");
   u02858 : constant Version_32 := 16#9ae01d86#;
   pragma Export (C, u02858, "standard_floating_matricesS");
   u02859 : constant Version_32 := 16#63acee70#;
   pragma Export (C, u02859, "standard_floating_matrices_ioB");
   u02860 : constant Version_32 := 16#8a61b28d#;
   pragma Export (C, u02860, "standard_floating_matrices_ioS");
   u02861 : constant Version_32 := 16#76ba452e#;
   pragma Export (C, u02861, "standard_floating_norms_equalsB");
   u02862 : constant Version_32 := 16#3409ec2f#;
   pragma Export (C, u02862, "standard_floating_norms_equalsS");
   u02863 : constant Version_32 := 16#7d558bd7#;
   pragma Export (C, u02863, "generic_norms_equalsB");
   u02864 : constant Version_32 := 16#46bf237d#;
   pragma Export (C, u02864, "generic_norms_equalsS");
   u02865 : constant Version_32 := 16#16dd0bdd#;
   pragma Export (C, u02865, "standard_floating_numbersB");
   u02866 : constant Version_32 := 16#d80182a7#;
   pragma Export (C, u02866, "standard_floating_numbersS");
   u02867 : constant Version_32 := 16#3bf2322c#;
   pragma Export (C, u02867, "standard_floating_numbers_ioB");
   u02868 : constant Version_32 := 16#8edcd08c#;
   pragma Export (C, u02868, "standard_floating_numbers_ioS");
   u02869 : constant Version_32 := 16#ca0d6c70#;
   pragma Export (C, u02869, "standard_floating_poly_functionsB");
   u02870 : constant Version_32 := 16#a4e8e92f#;
   pragma Export (C, u02870, "standard_floating_poly_functionsS");
   u02871 : constant Version_32 := 16#ff948cf3#;
   pragma Export (C, u02871, "standard_floating_poly_sysfunB");
   u02872 : constant Version_32 := 16#dc671605#;
   pragma Export (C, u02872, "standard_floating_poly_sysfunS");
   u02873 : constant Version_32 := 16#59417179#;
   pragma Export (C, u02873, "standard_floating_poly_systemsB");
   u02874 : constant Version_32 := 16#78772095#;
   pragma Export (C, u02874, "standard_floating_poly_systemsS");
   u02875 : constant Version_32 := 16#edd7c10e#;
   pragma Export (C, u02875, "standard_floating_polynomialsB");
   u02876 : constant Version_32 := 16#9d5f3ef3#;
   pragma Export (C, u02876, "standard_floating_polynomialsS");
   u02877 : constant Version_32 := 16#f5c9b224#;
   pragma Export (C, u02877, "standard_floating_qr_least_squaresB");
   u02878 : constant Version_32 := 16#fcaaaced#;
   pragma Export (C, u02878, "standard_floating_qr_least_squaresS");
   u02879 : constant Version_32 := 16#343f612c#;
   pragma Export (C, u02879, "standard_floating_ringS");
   u02880 : constant Version_32 := 16#5b2dcb65#;
   pragma Export (C, u02880, "standard_floating_ring__ffieldS");
   u02881 : constant Version_32 := 16#79c94e2a#;
   pragma Export (C, u02881, "standard_floating_ring_ioS");
   u02882 : constant Version_32 := 16#0ed9f7d1#;
   pragma Export (C, u02882, "standard_floating_two_normsB");
   u02883 : constant Version_32 := 16#ba6dfd23#;
   pragma Export (C, u02883, "standard_floating_two_normsS");
   u02884 : constant Version_32 := 16#f2e8d6f0#;
   pragma Export (C, u02884, "standard_floating_vecmatsB");
   u02885 : constant Version_32 := 16#7838b83f#;
   pragma Export (C, u02885, "standard_floating_vecmatsS");
   u02886 : constant Version_32 := 16#2c744f31#;
   pragma Export (C, u02886, "standard_floating_vector_normsB");
   u02887 : constant Version_32 := 16#169d6265#;
   pragma Export (C, u02887, "standard_floating_vector_normsS");
   u02888 : constant Version_32 := 16#253a5b14#;
   pragma Export (C, u02888, "standard_floating_vectorsB");
   u02889 : constant Version_32 := 16#d4c466a7#;
   pragma Export (C, u02889, "standard_floating_vectorsS");
   u02890 : constant Version_32 := 16#9f873e12#;
   pragma Export (C, u02890, "standard_floating_vectors_ioB");
   u02891 : constant Version_32 := 16#5b9bd0a4#;
   pragma Export (C, u02891, "standard_floating_vectors_ioS");
   u02892 : constant Version_32 := 16#e1ba2a52#;
   pragma Export (C, u02892, "standard_floating_vecvecsB");
   u02893 : constant Version_32 := 16#2b7600bd#;
   pragma Export (C, u02893, "standard_floating_vecvecsS");
   u02894 : constant Version_32 := 16#c069744a#;
   pragma Export (C, u02894, "standard_floating_vecvecs_ioB");
   u02895 : constant Version_32 := 16#3f29bea1#;
   pragma Export (C, u02895, "standard_floating_vecvecs_ioS");
   u02896 : constant Version_32 := 16#e1e052e3#;
   pragma Export (C, u02896, "standard_floating_vecvecvecsB");
   u02897 : constant Version_32 := 16#9ba84d9e#;
   pragma Export (C, u02897, "standard_floating_vecvecvecsS");
   u02898 : constant Version_32 := 16#c85e17bc#;
   pragma Export (C, u02898, "standard_gradient_evaluationsB");
   u02899 : constant Version_32 := 16#42e3ae42#;
   pragma Export (C, u02899, "standard_gradient_evaluationsS");
   u02900 : constant Version_32 := 16#744eb543#;
   pragma Export (C, u02900, "standard_hessian_updatersB");
   u02901 : constant Version_32 := 16#4367cfc1#;
   pragma Export (C, u02901, "standard_hessian_updatersS");
   u02902 : constant Version_32 := 16#de67b975#;
   pragma Export (C, u02902, "standard_homotopyB");
   u02903 : constant Version_32 := 16#fb3ff9ee#;
   pragma Export (C, u02903, "standard_homotopyS");
   u02904 : constant Version_32 := 16#4dbde7d6#;
   pragma Export (C, u02904, "standard_homotopy_convolutions_ioB");
   u02905 : constant Version_32 := 16#c8253a0a#;
   pragma Export (C, u02905, "standard_homotopy_convolutions_ioS");
   u02906 : constant Version_32 := 16#fd6a34bd#;
   pragma Export (C, u02906, "standard_hypersurface_witsetsB");
   u02907 : constant Version_32 := 16#f3fd8270#;
   pragma Export (C, u02907, "standard_hypersurface_witsetsS");
   u02908 : constant Version_32 := 16#384c41a2#;
   pragma Export (C, u02908, "standard_incfix_continuationB");
   u02909 : constant Version_32 := 16#50300bb8#;
   pragma Export (C, u02909, "standard_incfix_continuationS");
   u02910 : constant Version_32 := 16#4c3d67d4#;
   pragma Export (C, u02910, "standard_initial_formsB");
   u02911 : constant Version_32 := 16#4461ec28#;
   pragma Export (C, u02911, "standard_initial_formsS");
   u02912 : constant Version_32 := 16#54e23f9a#;
   pragma Export (C, u02912, "standard_inlined_linear_solversB");
   u02913 : constant Version_32 := 16#41f530f1#;
   pragma Export (C, u02913, "standard_inlined_linear_solversS");
   u02914 : constant Version_32 := 16#739b6225#;
   pragma Export (C, u02914, "standard_inlined_linearizationB");
   u02915 : constant Version_32 := 16#0e3671bd#;
   pragma Export (C, u02915, "standard_inlined_linearizationS");
   u02916 : constant Version_32 := 16#9e38d8e0#;
   pragma Export (C, u02916, "standard_inlined_newton_circuitsB");
   u02917 : constant Version_32 := 16#a81381c9#;
   pragma Export (C, u02917, "standard_inlined_newton_circuitsS");
   u02918 : constant Version_32 := 16#c4c47bad#;
   pragma Export (C, u02918, "standard_integer32_simplicesB");
   u02919 : constant Version_32 := 16#4a08d193#;
   pragma Export (C, u02919, "standard_integer32_simplicesS");
   u02920 : constant Version_32 := 16#17c9689b#;
   pragma Export (C, u02920, "standard_integer32_transformationsB");
   u02921 : constant Version_32 := 16#aeebfde8#;
   pragma Export (C, u02921, "standard_integer32_transformationsS");
   u02922 : constant Version_32 := 16#da209121#;
   pragma Export (C, u02922, "standard_integer32_triangulationsB");
   u02923 : constant Version_32 := 16#f28ca94d#;
   pragma Export (C, u02923, "standard_integer32_triangulationsS");
   u02924 : constant Version_32 := 16#43a7ac1c#;
   pragma Export (C, u02924, "standard_integer32_triangulations_ioB");
   u02925 : constant Version_32 := 16#d8df5d6e#;
   pragma Export (C, u02925, "standard_integer32_triangulations_ioS");
   u02926 : constant Version_32 := 16#63b78975#;
   pragma Export (C, u02926, "standard_integer32_simplices_ioB");
   u02927 : constant Version_32 := 16#4e84fbc8#;
   pragma Export (C, u02927, "standard_integer32_simplices_ioS");
   u02928 : constant Version_32 := 16#61059cf6#;
   pragma Export (C, u02928, "standard_integer32_verticesB");
   u02929 : constant Version_32 := 16#04b6d388#;
   pragma Export (C, u02929, "standard_integer32_verticesS");
   u02930 : constant Version_32 := 16#0b60baec#;
   pragma Export (C, u02930, "dictionariesB");
   u02931 : constant Version_32 := 16#6869b36b#;
   pragma Export (C, u02931, "dictionariesS");
   u02932 : constant Version_32 := 16#17af93e5#;
   pragma Export (C, u02932, "linear_programmingB");
   u02933 : constant Version_32 := 16#de51dd17#;
   pragma Export (C, u02933, "linear_programmingS");
   u02934 : constant Version_32 := 16#5bdd5c46#;
   pragma Export (C, u02934, "standard_integer64_kernelB");
   u02935 : constant Version_32 := 16#53529d4c#;
   pragma Export (C, u02935, "standard_integer64_kernelS");
   u02936 : constant Version_32 := 16#261c3465#;
   pragma Export (C, u02936, "standard_integer64_linear_solversB");
   u02937 : constant Version_32 := 16#f5933b78#;
   pragma Export (C, u02937, "standard_integer64_linear_solversS");
   u02938 : constant Version_32 := 16#9c2ecbc9#;
   pragma Export (C, u02938, "generic_integer_linear_solversB");
   u02939 : constant Version_32 := 16#6d11c184#;
   pragma Export (C, u02939, "generic_integer_linear_solversS");
   u02940 : constant Version_32 := 16#7c853ee2#;
   pragma Export (C, u02940, "standard_integer64_matricesB");
   u02941 : constant Version_32 := 16#23352805#;
   pragma Export (C, u02941, "standard_integer64_matricesS");
   u02942 : constant Version_32 := 16#f2861309#;
   pragma Export (C, u02942, "standard_integer64_matrices_ioB");
   u02943 : constant Version_32 := 16#5955183f#;
   pragma Export (C, u02943, "standard_integer64_matrices_ioS");
   u02944 : constant Version_32 := 16#70b59781#;
   pragma Export (C, u02944, "standard_integer64_ringS");
   u02945 : constant Version_32 := 16#16f5e237#;
   pragma Export (C, u02945, "standard_integer64_ring__ddomainS");
   u02946 : constant Version_32 := 16#50ff55f6#;
   pragma Export (C, u02946, "standard_integer64_ring_ioS");
   u02947 : constant Version_32 := 16#3427bed1#;
   pragma Export (C, u02947, "standard_integer64_vectorsB");
   u02948 : constant Version_32 := 16#582596b9#;
   pragma Export (C, u02948, "standard_integer64_vectorsS");
   u02949 : constant Version_32 := 16#e92daffc#;
   pragma Export (C, u02949, "standard_integer_kernelB");
   u02950 : constant Version_32 := 16#de669b23#;
   pragma Export (C, u02950, "standard_integer_kernelS");
   u02951 : constant Version_32 := 16#9b4ec892#;
   pragma Export (C, u02951, "standard_integer_linear_equalitiesB");
   u02952 : constant Version_32 := 16#5a621312#;
   pragma Export (C, u02952, "standard_integer_linear_equalitiesS");
   u02953 : constant Version_32 := 16#34df0966#;
   pragma Export (C, u02953, "standard_integer_linear_solversB");
   u02954 : constant Version_32 := 16#d2ac6d27#;
   pragma Export (C, u02954, "standard_integer_linear_solversS");
   u02955 : constant Version_32 := 16#99dc9372#;
   pragma Export (C, u02955, "standard_integer_matricesB");
   u02956 : constant Version_32 := 16#800ab8de#;
   pragma Export (C, u02956, "standard_integer_matricesS");
   u02957 : constant Version_32 := 16#18b45ab2#;
   pragma Export (C, u02957, "standard_integer_matrices_ioB");
   u02958 : constant Version_32 := 16#f59a4519#;
   pragma Export (C, u02958, "standard_integer_matrices_ioS");
   u02959 : constant Version_32 := 16#f6044e0b#;
   pragma Export (C, u02959, "standard_integer_matrix_inverseB");
   u02960 : constant Version_32 := 16#c1da1dc1#;
   pragma Export (C, u02960, "standard_integer_matrix_inverseS");
   u02961 : constant Version_32 := 16#42d84e3f#;
   pragma Export (C, u02961, "standard_integer_normsB");
   u02962 : constant Version_32 := 16#62406fe0#;
   pragma Export (C, u02962, "standard_integer_normsS");
   u02963 : constant Version_32 := 16#b3c2bc01#;
   pragma Export (C, u02963, "standard_integer_numbers_ioB");
   u02964 : constant Version_32 := 16#85574a6e#;
   pragma Export (C, u02964, "standard_integer_numbers_ioS");
   u02965 : constant Version_32 := 16#83a34794#;
   pragma Export (C, u02965, "standard_integer_ringS");
   u02966 : constant Version_32 := 16#1cfb989f#;
   pragma Export (C, u02966, "standard_integer_ring__ddomainS");
   u02967 : constant Version_32 := 16#b53dd1b0#;
   pragma Export (C, u02967, "standard_integer_ring_ioS");
   u02968 : constant Version_32 := 16#8157538f#;
   pragma Export (C, u02968, "standard_integer_vectorsB");
   u02969 : constant Version_32 := 16#1e43abf2#;
   pragma Export (C, u02969, "standard_integer_vectorsS");
   u02970 : constant Version_32 := 16#aea9aff6#;
   pragma Export (C, u02970, "standard_integer_vectors_ioB");
   u02971 : constant Version_32 := 16#be3b6a1b#;
   pragma Export (C, u02971, "standard_integer_vectors_ioS");
   u02972 : constant Version_32 := 16#37c9873e#;
   pragma Export (C, u02972, "standard_integer_vecvecsB");
   u02973 : constant Version_32 := 16#37826084#;
   pragma Export (C, u02973, "standard_integer_vecvecsS");
   u02974 : constant Version_32 := 16#8d447340#;
   pragma Export (C, u02974, "standard_integer_vecvecs_ioB");
   u02975 : constant Version_32 := 16#41d7ae78#;
   pragma Export (C, u02975, "standard_integer_vecvecs_ioS");
   u02976 : constant Version_32 := 16#be6edea2#;
   pragma Export (C, u02976, "standard_intrinsic_continuationB");
   u02977 : constant Version_32 := 16#4e9c8180#;
   pragma Export (C, u02977, "standard_intrinsic_continuationS");
   u02978 : constant Version_32 := 16#8a33664f#;
   pragma Export (C, u02978, "standard_intrinsic_newtonB");
   u02979 : constant Version_32 := 16#a790162e#;
   pragma Export (C, u02979, "standard_intrinsic_newtonS");
   u02980 : constant Version_32 := 16#ff01b652#;
   pragma Export (C, u02980, "standard_intrinsic_solutionsB");
   u02981 : constant Version_32 := 16#c79bfb17#;
   pragma Export (C, u02981, "standard_intrinsic_solutionsS");
   u02982 : constant Version_32 := 16#34943397#;
   pragma Export (C, u02982, "standard_intrinsic_trackersB");
   u02983 : constant Version_32 := 16#2776becb#;
   pragma Export (C, u02983, "standard_intrinsic_trackersS");
   u02984 : constant Version_32 := 16#21a65a0c#;
   pragma Export (C, u02984, "standard_irreducible_decompB");
   u02985 : constant Version_32 := 16#a77bab67#;
   pragma Export (C, u02985, "standard_irreducible_decompS");
   u02986 : constant Version_32 := 16#a8327a02#;
   pragma Export (C, u02986, "standard_irreducible_decomp_ioB");
   u02987 : constant Version_32 := 16#8c526435#;
   pragma Export (C, u02987, "standard_irreducible_decomp_ioS");
   u02988 : constant Version_32 := 16#b71e408b#;
   pragma Export (C, u02988, "standard_jacobian_evaluationsB");
   u02989 : constant Version_32 := 16#9fad4e44#;
   pragma Export (C, u02989, "standard_jacobian_evaluationsS");
   u02990 : constant Version_32 := 16#71085daf#;
   pragma Export (C, u02990, "standard_jacobian_treesB");
   u02991 : constant Version_32 := 16#3a0e54f3#;
   pragma Export (C, u02991, "standard_jacobian_treesS");
   u02992 : constant Version_32 := 16#7db55b27#;
   pragma Export (C, u02992, "standard_lattice_polygonsB");
   u02993 : constant Version_32 := 16#119cfdba#;
   pragma Export (C, u02993, "standard_lattice_polygonsS");
   u02994 : constant Version_32 := 16#aef71505#;
   pragma Export (C, u02994, "standard_integer64_vectors_ioB");
   u02995 : constant Version_32 := 16#1dc169e5#;
   pragma Export (C, u02995, "standard_integer64_vectors_ioS");
   u02996 : constant Version_32 := 16#a8d42890#;
   pragma Export (C, u02996, "standard_laur_poly_convertorsB");
   u02997 : constant Version_32 := 16#ff31de67#;
   pragma Export (C, u02997, "standard_laur_poly_convertorsS");
   u02998 : constant Version_32 := 16#5a1fd5de#;
   pragma Export (C, u02998, "standard_laurent_homotopyB");
   u02999 : constant Version_32 := 16#362de925#;
   pragma Export (C, u02999, "standard_laurent_homotopyS");
   u03000 : constant Version_32 := 16#451890c5#;
   pragma Export (C, u03000, "standard_linear_poly_solversB");
   u03001 : constant Version_32 := 16#b67630cf#;
   pragma Export (C, u03001, "standard_linear_poly_solversS");
   u03002 : constant Version_32 := 16#709cc65b#;
   pragma Export (C, u03002, "standard_linear_product_systemB");
   u03003 : constant Version_32 := 16#5f502480#;
   pragma Export (C, u03003, "standard_linear_product_systemS");
   u03004 : constant Version_32 := 16#db6308ef#;
   pragma Export (C, u03004, "standard_complex_row_reductionB");
   u03005 : constant Version_32 := 16#c1b0c263#;
   pragma Export (C, u03005, "standard_complex_row_reductionS");
   u03006 : constant Version_32 := 16#87e5f45f#;
   pragma Export (C, u03006, "standard_linear_projectionsB");
   u03007 : constant Version_32 := 16#6ae25e05#;
   pragma Export (C, u03007, "standard_linear_projectionsS");
   u03008 : constant Version_32 := 16#0bd5597a#;
   pragma Export (C, u03008, "standard_linear_reductionB");
   u03009 : constant Version_32 := 16#bc2500e2#;
   pragma Export (C, u03009, "standard_linear_reductionS");
   u03010 : constant Version_32 := 16#ba676bfc#;
   pragma Export (C, u03010, "standard_linear_spacesB");
   u03011 : constant Version_32 := 16#ff6349fc#;
   pragma Export (C, u03011, "standard_linear_spacesS");
   u03012 : constant Version_32 := 16#d584578c#;
   pragma Export (C, u03012, "standard_lined_hypersurfacesB");
   u03013 : constant Version_32 := 16#93d9269c#;
   pragma Export (C, u03013, "standard_lined_hypersurfacesS");
   u03014 : constant Version_32 := 16#5408c811#;
   pragma Export (C, u03014, "standard_mathematical_functionsB");
   u03015 : constant Version_32 := 16#be6512fc#;
   pragma Export (C, u03015, "standard_mathematical_functionsS");
   u03016 : constant Version_32 := 16#97d2ad7e#;
   pragma Export (C, u03016, "standard_matrix_inversionB");
   u03017 : constant Version_32 := 16#c365a507#;
   pragma Export (C, u03017, "standard_matrix_inversionS");
   u03018 : constant Version_32 := 16#a8f20cd8#;
   pragma Export (C, u03018, "standard_matrix_splittersB");
   u03019 : constant Version_32 := 16#582c220a#;
   pragma Export (C, u03019, "standard_matrix_splittersS");
   u03020 : constant Version_32 := 16#b4f6670c#;
   pragma Export (C, u03020, "standard_membership_testsB");
   u03021 : constant Version_32 := 16#e0aa2672#;
   pragma Export (C, u03021, "standard_membership_testsS");
   u03022 : constant Version_32 := 16#e808c34d#;
   pragma Export (C, u03022, "standard_mixed_residualsB");
   u03023 : constant Version_32 := 16#bc6b3060#;
   pragma Export (C, u03023, "standard_mixed_residualsS");
   u03024 : constant Version_32 := 16#10341795#;
   pragma Export (C, u03024, "standard_monomial_evaluationsB");
   u03025 : constant Version_32 := 16#90bd492d#;
   pragma Export (C, u03025, "standard_monomial_evaluationsS");
   u03026 : constant Version_32 := 16#b2ae7354#;
   pragma Export (C, u03026, "standard_monomial_map_filtersB");
   u03027 : constant Version_32 := 16#82799e65#;
   pragma Export (C, u03027, "standard_monomial_map_filtersS");
   u03028 : constant Version_32 := 16#7ece720a#;
   pragma Export (C, u03028, "standard_monomial_mapsB");
   u03029 : constant Version_32 := 16#f8b18850#;
   pragma Export (C, u03029, "standard_monomial_mapsS");
   u03030 : constant Version_32 := 16#a9fb38da#;
   pragma Export (C, u03030, "standard_monomial_maps_ioB");
   u03031 : constant Version_32 := 16#3abea909#;
   pragma Export (C, u03031, "standard_monomial_maps_ioS");
   u03032 : constant Version_32 := 16#d26cf2e5#;
   pragma Export (C, u03032, "standard_moving_planesB");
   u03033 : constant Version_32 := 16#3a07bdaa#;
   pragma Export (C, u03033, "standard_moving_planesS");
   u03034 : constant Version_32 := 16#d2a18c29#;
   pragma Export (C, u03034, "standard_multiple_solutionsB");
   u03035 : constant Version_32 := 16#777e4c27#;
   pragma Export (C, u03035, "standard_multiple_solutionsS");
   u03036 : constant Version_32 := 16#e91d11ca#;
   pragma Export (C, u03036, "standard_multiplicity_structureB");
   u03037 : constant Version_32 := 16#183e24d8#;
   pragma Export (C, u03037, "standard_multiplicity_structureS");
   u03038 : constant Version_32 := 16#625c93b1#;
   pragma Export (C, u03038, "standard_natural64_vectorsB");
   u03039 : constant Version_32 := 16#6b71d37d#;
   pragma Export (C, u03039, "standard_natural64_vectorsS");
   u03040 : constant Version_32 := 16#6b0dfcef#;
   pragma Export (C, u03040, "standard_natural64_ringS");
   u03041 : constant Version_32 := 16#74e50acc#;
   pragma Export (C, u03041, "standard_natural64_vecvecsB");
   u03042 : constant Version_32 := 16#019c95f9#;
   pragma Export (C, u03042, "standard_natural64_vecvecsS");
   u03043 : constant Version_32 := 16#78a8ba57#;
   pragma Export (C, u03043, "standard_natural_matricesB");
   u03044 : constant Version_32 := 16#d7c5fe4f#;
   pragma Export (C, u03044, "standard_natural_matricesS");
   u03045 : constant Version_32 := 16#e4598d99#;
   pragma Export (C, u03045, "standard_natural_matrices_ioB");
   u03046 : constant Version_32 := 16#b406831c#;
   pragma Export (C, u03046, "standard_natural_matrices_ioS");
   u03047 : constant Version_32 := 16#68348474#;
   pragma Export (C, u03047, "standard_natural_numbersB");
   u03048 : constant Version_32 := 16#017761d1#;
   pragma Export (C, u03048, "standard_natural_numbersS");
   u03049 : constant Version_32 := 16#145fc2ef#;
   pragma Export (C, u03049, "standard_natural_numbers_ioB");
   u03050 : constant Version_32 := 16#3b080162#;
   pragma Export (C, u03050, "standard_natural_numbers_ioS");
   u03051 : constant Version_32 := 16#7bf1be37#;
   pragma Export (C, u03051, "standard_natural_ringS");
   u03052 : constant Version_32 := 16#9e3caf18#;
   pragma Export (C, u03052, "standard_natural_ring_ioS");
   u03053 : constant Version_32 := 16#b129c652#;
   pragma Export (C, u03053, "standard_natural_vectorsB");
   u03054 : constant Version_32 := 16#a8f8c446#;
   pragma Export (C, u03054, "standard_natural_vectorsS");
   u03055 : constant Version_32 := 16#41c126ae#;
   pragma Export (C, u03055, "standard_natural_vectors_ioB");
   u03056 : constant Version_32 := 16#0d56db48#;
   pragma Export (C, u03056, "standard_natural_vectors_ioS");
   u03057 : constant Version_32 := 16#659c81d4#;
   pragma Export (C, u03057, "standard_natural_vecvecsB");
   u03058 : constant Version_32 := 16#d36c09da#;
   pragma Export (C, u03058, "standard_natural_vecvecsS");
   u03059 : constant Version_32 := 16#12912d07#;
   pragma Export (C, u03059, "standard_newton_circuitsB");
   u03060 : constant Version_32 := 16#3513dfb0#;
   pragma Export (C, u03060, "standard_newton_circuitsS");
   u03061 : constant Version_32 := 16#07926036#;
   pragma Export (C, u03061, "standard_newton_convolutionsB");
   u03062 : constant Version_32 := 16#d7628e07#;
   pragma Export (C, u03062, "standard_newton_convolutionsS");
   u03063 : constant Version_32 := 16#54ea4d10#;
   pragma Export (C, u03063, "standard_newton_matrix_seriesB");
   u03064 : constant Version_32 := 16#02b5ae5b#;
   pragma Export (C, u03064, "standard_newton_matrix_seriesS");
   u03065 : constant Version_32 := 16#33f0b59a#;
   pragma Export (C, u03065, "standard_complex_matrix_seriesB");
   u03066 : constant Version_32 := 16#c071a572#;
   pragma Export (C, u03066, "standard_complex_matrix_seriesS");
   u03067 : constant Version_32 := 16#e5d791ae#;
   pragma Export (C, u03067, "standard_complex_vector_seriesB");
   u03068 : constant Version_32 := 16#c0df79ec#;
   pragma Export (C, u03068, "standard_complex_vector_seriesS");
   u03069 : constant Version_32 := 16#37feecc1#;
   pragma Export (C, u03069, "standard_cseries_vector_normsB");
   u03070 : constant Version_32 := 16#4c4119b9#;
   pragma Export (C, u03070, "standard_cseries_vector_normsS");
   u03071 : constant Version_32 := 16#49364761#;
   pragma Export (C, u03071, "standard_complex_algebraic_seriesB");
   u03072 : constant Version_32 := 16#fd0cf628#;
   pragma Export (C, u03072, "standard_complex_algebraic_seriesS");
   u03073 : constant Version_32 := 16#27237428#;
   pragma Export (C, u03073, "standard_complex_series_normsB");
   u03074 : constant Version_32 := 16#3139d74f#;
   pragma Export (C, u03074, "standard_complex_series_normsS");
   u03075 : constant Version_32 := 16#29f230fc#;
   pragma Export (C, u03075, "standard_nullity_matricesB");
   u03076 : constant Version_32 := 16#f65f1698#;
   pragma Export (C, u03076, "standard_nullity_matricesS");
   u03077 : constant Version_32 := 16#40eb5139#;
   pragma Export (C, u03077, "standard_nullity_polynomialsB");
   u03078 : constant Version_32 := 16#04fd7eb3#;
   pragma Export (C, u03078, "standard_nullity_polynomialsS");
   u03079 : constant Version_32 := 16#700b884e#;
   pragma Export (C, u03079, "standard_numerical_rankB");
   u03080 : constant Version_32 := 16#11027f64#;
   pragma Export (C, u03080, "standard_numerical_rankS");
   u03081 : constant Version_32 := 16#5916e192#;
   pragma Export (C, u03081, "standard_pade_approximantsB");
   u03082 : constant Version_32 := 16#0d52b1db#;
   pragma Export (C, u03082, "standard_pade_approximantsS");
   u03083 : constant Version_32 := 16#8d3df05f#;
   pragma Export (C, u03083, "standard_pade_approximants_ioB");
   u03084 : constant Version_32 := 16#859ddae6#;
   pragma Export (C, u03084, "standard_pade_approximants_ioS");
   u03085 : constant Version_32 := 16#c5785818#;
   pragma Export (C, u03085, "standard_pade_trackersB");
   u03086 : constant Version_32 := 16#609c62fd#;
   pragma Export (C, u03086, "standard_pade_trackersS");
   u03087 : constant Version_32 := 16#0a9bb0b8#;
   pragma Export (C, u03087, "standard_parameter_solutionsB");
   u03088 : constant Version_32 := 16#65cc3f28#;
   pragma Export (C, u03088, "standard_parameter_solutionsS");
   u03089 : constant Version_32 := 16#a25ef8a5#;
   pragma Export (C, u03089, "standard_parameter_systemsB");
   u03090 : constant Version_32 := 16#812d3adf#;
   pragma Export (C, u03090, "standard_parameter_systemsS");
   u03091 : constant Version_32 := 16#341d363b#;
   pragma Export (C, u03091, "standard_parse_numbersB");
   u03092 : constant Version_32 := 16#66aaf626#;
   pragma Export (C, u03092, "standard_parse_numbersS");
   u03093 : constant Version_32 := 16#ebc2ecd9#;
   pragma Export (C, u03093, "standard_path_trackersB");
   u03094 : constant Version_32 := 16#e5bdb4cc#;
   pragma Export (C, u03094, "standard_path_trackersS");
   u03095 : constant Version_32 := 16#6df878fb#;
   pragma Export (C, u03095, "standard_correctorsB");
   u03096 : constant Version_32 := 16#13fde737#;
   pragma Export (C, u03096, "standard_correctorsS");
   u03097 : constant Version_32 := 16#f88e4d0a#;
   pragma Export (C, u03097, "standard_dispatch_predictorsB");
   u03098 : constant Version_32 := 16#86cbd6c3#;
   pragma Export (C, u03098, "standard_dispatch_predictorsS");
   u03099 : constant Version_32 := 16#eddc3c19#;
   pragma Export (C, u03099, "standard_orthogonal_correctorsB");
   u03100 : constant Version_32 := 16#bdedccf0#;
   pragma Export (C, u03100, "standard_orthogonal_correctorsS");
   u03101 : constant Version_32 := 16#3bc67e6b#;
   pragma Export (C, u03101, "standard_permanent_factorsB");
   u03102 : constant Version_32 := 16#a8f9b20a#;
   pragma Export (C, u03102, "standard_permanent_factorsS");
   u03103 : constant Version_32 := 16#3ad332d4#;
   pragma Export (C, u03103, "affine_binomial_iteratorB");
   u03104 : constant Version_32 := 16#68d5941a#;
   pragma Export (C, u03104, "affine_binomial_iteratorS");
   u03105 : constant Version_32 := 16#5465e4ef#;
   pragma Export (C, u03105, "standard_affine_binomialsB");
   u03106 : constant Version_32 := 16#9cc1d0b3#;
   pragma Export (C, u03106, "standard_affine_binomialsS");
   u03107 : constant Version_32 := 16#c99540de#;
   pragma Export (C, u03107, "standard_monomial_map_solversB");
   u03108 : constant Version_32 := 16#9497a701#;
   pragma Export (C, u03108, "standard_monomial_map_solversS");
   u03109 : constant Version_32 := 16#2065cd5b#;
   pragma Export (C, u03109, "standard_plane_operationsB");
   u03110 : constant Version_32 := 16#dc10497a#;
   pragma Export (C, u03110, "standard_plane_operationsS");
   u03111 : constant Version_32 := 16#bf133d62#;
   pragma Export (C, u03111, "standard_plane_representationsB");
   u03112 : constant Version_32 := 16#50b16c17#;
   pragma Export (C, u03112, "standard_plane_representationsS");
   u03113 : constant Version_32 := 16#d15832a9#;
   pragma Export (C, u03113, "standard_point_coordinatesB");
   u03114 : constant Version_32 := 16#59325c89#;
   pragma Export (C, u03114, "standard_point_coordinatesS");
   u03115 : constant Version_32 := 16#11272366#;
   pragma Export (C, u03115, "standard_point_listsB");
   u03116 : constant Version_32 := 16#c4e70b4f#;
   pragma Export (C, u03116, "standard_point_listsS");
   u03117 : constant Version_32 := 16#0a30c4db#;
   pragma Export (C, u03117, "standard_poly_laur_convertorsB");
   u03118 : constant Version_32 := 16#19ac60a7#;
   pragma Export (C, u03118, "standard_poly_laur_convertorsS");
   u03119 : constant Version_32 := 16#a6f2f6c9#;
   pragma Export (C, u03119, "standard_polynomial_interpolatorsB");
   u03120 : constant Version_32 := 16#2ade9f2c#;
   pragma Export (C, u03120, "standard_polynomial_interpolatorsS");
   u03121 : constant Version_32 := 16#524ef91e#;
   pragma Export (C, u03121, "standard_power_transformationsB");
   u03122 : constant Version_32 := 16#6bd9d896#;
   pragma Export (C, u03122, "standard_power_transformationsS");
   u03123 : constant Version_32 := 16#811be844#;
   pragma Export (C, u03123, "standard_predictor_convolutionsB");
   u03124 : constant Version_32 := 16#16d4b002#;
   pragma Export (C, u03124, "standard_predictor_convolutionsS");
   u03125 : constant Version_32 := 16#ab4f9cb8#;
   pragma Export (C, u03125, "standard_inlined_singular_valuesB");
   u03126 : constant Version_32 := 16#f21e75bc#;
   pragma Export (C, u03126, "standard_inlined_singular_valuesS");
   u03127 : constant Version_32 := 16#2ce8f1ea#;
   pragma Export (C, u03127, "standard_inlined_blas_helpersB");
   u03128 : constant Version_32 := 16#b3215207#;
   pragma Export (C, u03128, "standard_inlined_blas_helpersS");
   u03129 : constant Version_32 := 16#d70f0c16#;
   pragma Export (C, u03129, "standard_newton_convolution_stepsB");
   u03130 : constant Version_32 := 16#7b960436#;
   pragma Export (C, u03130, "standard_newton_convolution_stepsS");
   u03131 : constant Version_32 := 16#728d2b30#;
   pragma Export (C, u03131, "standard_predictorsB");
   u03132 : constant Version_32 := 16#bdbd66e6#;
   pragma Export (C, u03132, "standard_predictorsS");
   u03133 : constant Version_32 := 16#5f25f845#;
   pragma Export (C, u03133, "standard_extrapolatorsB");
   u03134 : constant Version_32 := 16#e5eeaefe#;
   pragma Export (C, u03134, "standard_extrapolatorsS");
   u03135 : constant Version_32 := 16#aa8e65da#;
   pragma Export (C, u03135, "standard_puiseux_certificatesB");
   u03136 : constant Version_32 := 16#b46615dd#;
   pragma Export (C, u03136, "standard_puiseux_certificatesS");
   u03137 : constant Version_32 := 16#95e880f9#;
   pragma Export (C, u03137, "standard_puiseux_certificates_ioB");
   u03138 : constant Version_32 := 16#51b2cb9b#;
   pragma Export (C, u03138, "standard_puiseux_certificates_ioS");
   u03139 : constant Version_32 := 16#c48fcb5b#;
   pragma Export (C, u03139, "standard_quad_parametersB");
   u03140 : constant Version_32 := 16#45cfdc6e#;
   pragma Export (C, u03140, "standard_quad_parametersS");
   u03141 : constant Version_32 := 16#4ded5a77#;
   pragma Export (C, u03141, "standard_quad_sweepersB");
   u03142 : constant Version_32 := 16#21c1c0e2#;
   pragma Export (C, u03142, "standard_quad_sweepersS");
   u03143 : constant Version_32 := 16#6adf2915#;
   pragma Export (C, u03143, "standard_floating_poly_systems_ioB");
   u03144 : constant Version_32 := 16#c2d43d8b#;
   pragma Export (C, u03144, "standard_floating_poly_systems_ioS");
   u03145 : constant Version_32 := 16#e42d6ab1#;
   pragma Export (C, u03145, "standard_quad_treesB");
   u03146 : constant Version_32 := 16#ddfab58d#;
   pragma Export (C, u03146, "standard_quad_treesS");
   u03147 : constant Version_32 := 16#d18caf5d#;
   pragma Export (C, u03147, "standard_quad_turn_pointsB");
   u03148 : constant Version_32 := 16#91d2a56b#;
   pragma Export (C, u03148, "standard_quad_turn_pointsS");
   u03149 : constant Version_32 := 16#91ea2ef4#;
   pragma Export (C, u03149, "standard_floating_eigenvaluesB");
   u03150 : constant Version_32 := 16#eb1c9867#;
   pragma Export (C, u03150, "standard_floating_eigenvaluesS");
   u03151 : constant Version_32 := 16#58c8dc70#;
   pragma Export (C, u03151, "standard_quad_turn_points_ioB");
   u03152 : constant Version_32 := 16#01cc76e6#;
   pragma Export (C, u03152, "standard_quad_turn_points_ioS");
   u03153 : constant Version_32 := 16#f352c07e#;
   pragma Export (C, u03153, "standard_radial_solversB");
   u03154 : constant Version_32 := 16#fd2786b0#;
   pragma Export (C, u03154, "standard_radial_solversS");
   u03155 : constant Version_32 := 16#980c9eed#;
   pragma Export (C, u03155, "standard_random_matricesB");
   u03156 : constant Version_32 := 16#4742812f#;
   pragma Export (C, u03156, "standard_random_matricesS");
   u03157 : constant Version_32 := 16#e9f758a7#;
   pragma Export (C, u03157, "standard_random_numbersB");
   u03158 : constant Version_32 := 16#35aa4acf#;
   pragma Export (C, u03158, "standard_random_numbersS");
   u03159 : constant Version_32 := 16#a08132f8#;
   pragma Export (C, u03159, "machinesB");
   u03160 : constant Version_32 := 16#7f431eff#;
   pragma Export (C, u03160, "machinesS");
   u03161 : constant Version_32 := 16#9b5725bd#;
   pragma Export (C, u03161, "standard_random_vectorsB");
   u03162 : constant Version_32 := 16#0f4c72b1#;
   pragma Export (C, u03162, "standard_random_vectorsS");
   u03163 : constant Version_32 := 16#76d61315#;
   pragma Export (C, u03163, "standard_rational_approximationsB");
   u03164 : constant Version_32 := 16#2ca2606e#;
   pragma Export (C, u03164, "standard_rational_approximationsS");
   u03165 : constant Version_32 := 16#30e94896#;
   pragma Export (C, u03165, "standard_refiner_circuitsB");
   u03166 : constant Version_32 := 16#0db48ea8#;
   pragma Export (C, u03166, "standard_refiner_circuitsS");
   u03167 : constant Version_32 := 16#a22fa927#;
   pragma Export (C, u03167, "standard_rescaling_coordinatesB");
   u03168 : constant Version_32 := 16#987522d1#;
   pragma Export (C, u03168, "standard_rescaling_coordinatesS");
   u03169 : constant Version_32 := 16#862e3e30#;
   pragma Export (C, u03169, "standard_root_refinersB");
   u03170 : constant Version_32 := 16#4b68c910#;
   pragma Export (C, u03170, "standard_root_refinersS");
   u03171 : constant Version_32 := 16#1d11cdd5#;
   pragma Export (C, u03171, "standard_scalingB");
   u03172 : constant Version_32 := 16#fe5f691f#;
   pragma Export (C, u03172, "standard_scalingS");
   u03173 : constant Version_32 := 16#5c7b2bb2#;
   pragma Export (C, u03173, "standard_select_solutionsB");
   u03174 : constant Version_32 := 16#3d30ae8a#;
   pragma Export (C, u03174, "standard_select_solutionsS");
   u03175 : constant Version_32 := 16#4661dc5d#;
   pragma Export (C, u03175, "standard_series_matrix_solversB");
   u03176 : constant Version_32 := 16#736b83fa#;
   pragma Export (C, u03176, "standard_series_matrix_solversS");
   u03177 : constant Version_32 := 16#18c87e31#;
   pragma Export (C, u03177, "standard_interpolating_cseriesB");
   u03178 : constant Version_32 := 16#9e82fd23#;
   pragma Export (C, u03178, "standard_interpolating_cseriesS");
   u03179 : constant Version_32 := 16#313f4c19#;
   pragma Export (C, u03179, "standard_seriespade_trackerB");
   u03180 : constant Version_32 := 16#a480bd62#;
   pragma Export (C, u03180, "standard_seriespade_trackerS");
   u03181 : constant Version_32 := 16#f97a3e16#;
   pragma Export (C, u03181, "standard_simpomial_solversB");
   u03182 : constant Version_32 := 16#1a264509#;
   pragma Export (C, u03182, "standard_simpomial_solversS");
   u03183 : constant Version_32 := 16#6d75a679#;
   pragma Export (C, u03183, "standard_simplex_solversB");
   u03184 : constant Version_32 := 16#b1c86610#;
   pragma Export (C, u03184, "standard_simplex_solversS");
   u03185 : constant Version_32 := 16#c1913b58#;
   pragma Export (C, u03185, "standard_simplex_systemsB");
   u03186 : constant Version_32 := 16#fe23f5ec#;
   pragma Export (C, u03186, "standard_simplex_systemsS");
   u03187 : constant Version_32 := 16#9b20d2b9#;
   pragma Export (C, u03187, "standard_smith_normal_formB");
   u03188 : constant Version_32 := 16#e23b9e8e#;
   pragma Export (C, u03188, "standard_smith_normal_formS");
   u03189 : constant Version_32 := 16#18db2584#;
   pragma Export (C, u03189, "standard_solution_diagnosticsB");
   u03190 : constant Version_32 := 16#11d0d564#;
   pragma Export (C, u03190, "standard_solution_diagnosticsS");
   u03191 : constant Version_32 := 16#0a430c3d#;
   pragma Export (C, u03191, "standard_solution_filtersB");
   u03192 : constant Version_32 := 16#9fbe2254#;
   pragma Export (C, u03192, "standard_solution_filtersS");
   u03193 : constant Version_32 := 16#62810801#;
   pragma Export (C, u03193, "standard_solution_manipulatorsB");
   u03194 : constant Version_32 := 16#541547c5#;
   pragma Export (C, u03194, "standard_solution_manipulatorsS");
   u03195 : constant Version_32 := 16#97382b5a#;
   pragma Export (C, u03195, "standard_solution_posetsB");
   u03196 : constant Version_32 := 16#d19bdbb1#;
   pragma Export (C, u03196, "standard_solution_posetsS");
   u03197 : constant Version_32 := 16#ef003612#;
   pragma Export (C, u03197, "standard_solution_splittersB");
   u03198 : constant Version_32 := 16#e6d435b0#;
   pragma Export (C, u03198, "standard_solution_splittersS");
   u03199 : constant Version_32 := 16#eb6394b7#;
   pragma Export (C, u03199, "standard_solutions_heapB");
   u03200 : constant Version_32 := 16#9852be34#;
   pragma Export (C, u03200, "standard_solutions_heapS");
   u03201 : constant Version_32 := 16#a2b70d50#;
   pragma Export (C, u03201, "standard_solutions_queueB");
   u03202 : constant Version_32 := 16#118d414c#;
   pragma Export (C, u03202, "standard_solutions_queueS");
   u03203 : constant Version_32 := 16#99412733#;
   pragma Export (C, u03203, "standard_speelpenning_convolutionsB");
   u03204 : constant Version_32 := 16#ebaeed23#;
   pragma Export (C, u03204, "standard_speelpenning_convolutionsS");
   u03205 : constant Version_32 := 16#24a6a56a#;
   pragma Export (C, u03205, "standard_speelpenning_productsB");
   u03206 : constant Version_32 := 16#0d37f648#;
   pragma Export (C, u03206, "standard_speelpenning_productsS");
   u03207 : constant Version_32 := 16#cd73de8c#;
   pragma Export (C, u03207, "standard_stable_homotopiesB");
   u03208 : constant Version_32 := 16#7420bca2#;
   pragma Export (C, u03208, "standard_stable_homotopiesS");
   u03209 : constant Version_32 := 16#fe91df01#;
   pragma Export (C, u03209, "standard_stacked_sample_gridsB");
   u03210 : constant Version_32 := 16#15c0bf15#;
   pragma Export (C, u03210, "standard_stacked_sample_gridsS");
   u03211 : constant Version_32 := 16#8fd43015#;
   pragma Export (C, u03211, "standard_subspace_restrictionsB");
   u03212 : constant Version_32 := 16#7ece2509#;
   pragma Export (C, u03212, "standard_subspace_restrictionsS");
   u03213 : constant Version_32 := 16#3278ea73#;
   pragma Export (C, u03213, "standard_system_and_solutions_ioB");
   u03214 : constant Version_32 := 16#0dabab1d#;
   pragma Export (C, u03214, "standard_system_and_solutions_ioS");
   u03215 : constant Version_32 := 16#7149bfd6#;
   pragma Export (C, u03215, "standard_system_readersB");
   u03216 : constant Version_32 := 16#542cfabc#;
   pragma Export (C, u03216, "standard_system_readersS");
   u03217 : constant Version_32 := 16#29defb03#;
   pragma Export (C, u03217, "standard_tableau_formatsB");
   u03218 : constant Version_32 := 16#0bee18f4#;
   pragma Export (C, u03218, "standard_tableau_formatsS");
   u03219 : constant Version_32 := 16#6589dc94#;
   pragma Export (C, u03219, "standard_to_multprec_convertorsB");
   u03220 : constant Version_32 := 16#f6200720#;
   pragma Export (C, u03220, "standard_to_multprec_convertorsS");
   u03221 : constant Version_32 := 16#7a661675#;
   pragma Export (C, u03221, "multprec_floating_poly_systemsB");
   u03222 : constant Version_32 := 16#7e32aa19#;
   pragma Export (C, u03222, "multprec_floating_poly_systemsS");
   u03223 : constant Version_32 := 16#d1935d33#;
   pragma Export (C, u03223, "multprec_floating_polynomialsB");
   u03224 : constant Version_32 := 16#b83dd373#;
   pragma Export (C, u03224, "multprec_floating_polynomialsS");
   u03225 : constant Version_32 := 16#8fe14bac#;
   pragma Export (C, u03225, "standard_trace_interpolatorsB");
   u03226 : constant Version_32 := 16#ed93bd37#;
   pragma Export (C, u03226, "standard_trace_interpolatorsS");
   u03227 : constant Version_32 := 16#ece9ec99#;
   pragma Export (C, u03227, "standard_complex_nesvecsB");
   u03228 : constant Version_32 := 16#e4a998a0#;
   pragma Export (C, u03228, "standard_complex_nesvecsS");
   u03229 : constant Version_32 := 16#6fd7670e#;
   pragma Export (C, u03229, "standard_complex_nesvecs_ioB");
   u03230 : constant Version_32 := 16#6eb12c92#;
   pragma Export (C, u03230, "standard_complex_nesvecs_ioS");
   u03231 : constant Version_32 := 16#84702835#;
   pragma Export (C, u03231, "standard_nvariate_interpolatorsB");
   u03232 : constant Version_32 := 16#269d9a02#;
   pragma Export (C, u03232, "standard_nvariate_interpolatorsS");
   u03233 : constant Version_32 := 16#491afc49#;
   pragma Export (C, u03233, "standard_power_tracesB");
   u03234 : constant Version_32 := 16#f8b25038#;
   pragma Export (C, u03234, "standard_power_tracesS");
   u03235 : constant Version_32 := 16#6a5ad0fa#;
   pragma Export (C, u03235, "standard_tracked_solutions_ioB");
   u03236 : constant Version_32 := 16#ae4f127b#;
   pragma Export (C, u03236, "standard_tracked_solutions_ioS");
   u03237 : constant Version_32 := 16#0583453e#;
   pragma Export (C, u03237, "standard_univariate_interpolatorsB");
   u03238 : constant Version_32 := 16#4c9dfb01#;
   pragma Export (C, u03238, "standard_univariate_interpolatorsS");
   u03239 : constant Version_32 := 16#a3ed4998#;
   pragma Export (C, u03239, "standard_vector_splittersB");
   u03240 : constant Version_32 := 16#5d978b90#;
   pragma Export (C, u03240, "standard_vector_splittersS");
   u03241 : constant Version_32 := 16#faa79042#;
   pragma Export (C, u03241, "standard_vlprs_algorithmB");
   u03242 : constant Version_32 := 16#53495d89#;
   pragma Export (C, u03242, "standard_vlprs_algorithmS");
   u03243 : constant Version_32 := 16#e2a89604#;
   pragma Export (C, u03243, "standard_vlprs_tablesB");
   u03244 : constant Version_32 := 16#8a935137#;
   pragma Export (C, u03244, "standard_vlprs_tablesS");
   u03245 : constant Version_32 := 16#a66a0a5c#;
   pragma Export (C, u03245, "standard_write_numbersB");
   u03246 : constant Version_32 := 16#8ced50a6#;
   pragma Export (C, u03246, "standard_write_numbersS");
   u03247 : constant Version_32 := 16#02201092#;
   pragma Export (C, u03247, "start_flag_homotopiesB");
   u03248 : constant Version_32 := 16#772f3242#;
   pragma Export (C, u03248, "start_flag_homotopiesS");
   u03249 : constant Version_32 := 16#21bfd910#;
   pragma Export (C, u03249, "straightening_syzygiesB");
   u03250 : constant Version_32 := 16#47293a64#;
   pragma Export (C, u03250, "straightening_syzygiesS");
   u03251 : constant Version_32 := 16#a5653cf9#;
   pragma Export (C, u03251, "string_splittersB");
   u03252 : constant Version_32 := 16#09f98fc8#;
   pragma Export (C, u03252, "string_splittersS");
   u03253 : constant Version_32 := 16#c85c545b#;
   pragma Export (C, u03253, "string_system_readersB");
   u03254 : constant Version_32 := 16#902219ad#;
   pragma Export (C, u03254, "string_system_readersS");
   u03255 : constant Version_32 := 16#19d22087#;
   pragma Export (C, u03255, "strings_and_numbersB");
   u03256 : constant Version_32 := 16#07c7db84#;
   pragma Export (C, u03256, "strings_and_numbersS");
   u03257 : constant Version_32 := 16#2b318192#;
   pragma Export (C, u03257, "supports_of_polynomial_systemsB");
   u03258 : constant Version_32 := 16#534bd90e#;
   pragma Export (C, u03258, "supports_of_polynomial_systemsS");
   u03259 : constant Version_32 := 16#41ef8731#;
   pragma Export (C, u03259, "symbol_tableB");
   u03260 : constant Version_32 := 16#d3b0dc24#;
   pragma Export (C, u03260, "symbol_tableS");
   u03261 : constant Version_32 := 16#2392cfc7#;
   pragma Export (C, u03261, "symbol_table_ioB");
   u03262 : constant Version_32 := 16#cef8d8e5#;
   pragma Export (C, u03262, "symbol_table_ioS");
   u03263 : constant Version_32 := 16#b34196f8#;
   pragma Export (C, u03263, "symbol_table_orderB");
   u03264 : constant Version_32 := 16#c0cc013f#;
   pragma Export (C, u03264, "symbol_table_orderS");
   u03265 : constant Version_32 := 16#8c26c9d1#;
   pragma Export (C, u03265, "symbolic_minor_equationsB");
   u03266 : constant Version_32 := 16#6a0bc7bb#;
   pragma Export (C, u03266, "symbolic_minor_equationsS");
   u03267 : constant Version_32 := 16#f9da643e#;
   pragma Export (C, u03267, "symbolic_schubert_conditionsB");
   u03268 : constant Version_32 := 16#60bf1a62#;
   pragma Export (C, u03268, "symbolic_schubert_conditionsS");
   u03269 : constant Version_32 := 16#a2bf0199#;
   pragma Export (C, u03269, "symbolic_symmetry_group_ioB");
   u03270 : constant Version_32 := 16#ac1f2b07#;
   pragma Export (C, u03270, "symbolic_symmetry_group_ioS");
   u03271 : constant Version_32 := 16#def39906#;
   pragma Export (C, u03271, "symbols_ioB");
   u03272 : constant Version_32 := 16#40e0448a#;
   pragma Export (C, u03272, "symbols_ioS");
   u03273 : constant Version_32 := 16#1290b2d1#;
   pragma Export (C, u03273, "symmetric_lifting_functionsB");
   u03274 : constant Version_32 := 16#1345a6a9#;
   pragma Export (C, u03274, "symmetric_lifting_functionsS");
   u03275 : constant Version_32 := 16#df69ad8c#;
   pragma Export (C, u03275, "symmetric_polyhedral_continuationB");
   u03276 : constant Version_32 := 16#1f6a4ebf#;
   pragma Export (C, u03276, "symmetric_polyhedral_continuationS");
   u03277 : constant Version_32 := 16#686d156d#;
   pragma Export (C, u03277, "symmetric_bkk_bound_solversB");
   u03278 : constant Version_32 := 16#4c474b27#;
   pragma Export (C, u03278, "symmetric_bkk_bound_solversS");
   u03279 : constant Version_32 := 16#e857153c#;
   pragma Export (C, u03279, "symmetric_randomizeB");
   u03280 : constant Version_32 := 16#b6de38ab#;
   pragma Export (C, u03280, "symmetric_randomizeS");
   u03281 : constant Version_32 := 16#180eee88#;
   pragma Export (C, u03281, "symmetric_set_structureB");
   u03282 : constant Version_32 := 16#fb0b3cb4#;
   pragma Export (C, u03282, "symmetric_set_structureS");
   u03283 : constant Version_32 := 16#962f1ca5#;
   pragma Export (C, u03283, "symmetry_groupB");
   u03284 : constant Version_32 := 16#c8054298#;
   pragma Export (C, u03284, "symmetry_groupS");
   u03285 : constant Version_32 := 16#3ebb0761#;
   pragma Export (C, u03285, "symmetry_group_ioB");
   u03286 : constant Version_32 := 16#9305c0a5#;
   pragma Export (C, u03286, "symmetry_group_ioS");
   u03287 : constant Version_32 := 16#62abe8b7#;
   pragma Export (C, u03287, "system_callB");
   u03288 : constant Version_32 := 16#e2afd090#;
   pragma Export (C, u03288, "system_callS");
   u03289 : constant Version_32 := 16#38eea93d#;
   pragma Export (C, u03289, "system_convolution_circuitsB");
   u03290 : constant Version_32 := 16#24125f38#;
   pragma Export (C, u03290, "system_convolution_circuitsS");
   u03291 : constant Version_32 := 16#1e609c9b#;
   pragma Export (C, u03291, "templatesB");
   u03292 : constant Version_32 := 16#4ab7c6a4#;
   pragma Export (C, u03292, "templatesS");
   u03293 : constant Version_32 := 16#7b156c50#;
   pragma Export (C, u03293, "test_double_lseries_matricesB");
   u03294 : constant Version_32 := 16#dbfce780#;
   pragma Export (C, u03294, "test_double_lseries_matricesS");
   u03295 : constant Version_32 := 16#1013ef1d#;
   pragma Export (C, u03295, "test_series_predictorsB");
   u03296 : constant Version_32 := 16#ba82bea9#;
   pragma Export (C, u03296, "test_series_predictorsS");
   u03297 : constant Version_32 := 16#8f1b8711#;
   pragma Export (C, u03297, "three_way_minimaB");
   u03298 : constant Version_32 := 16#e305f14e#;
   pragma Export (C, u03298, "three_way_minimaS");
   u03299 : constant Version_32 := 16#be205922#;
   pragma Export (C, u03299, "time_stampsB");
   u03300 : constant Version_32 := 16#c10645c1#;
   pragma Export (C, u03300, "time_stampsS");
   u03301 : constant Version_32 := 16#86bccd6e#;
   pragma Export (C, u03301, "duration_ioB");
   u03302 : constant Version_32 := 16#a70e05f6#;
   pragma Export (C, u03302, "duration_ioS");
   u03303 : constant Version_32 := 16#e503abeb#;
   pragma Export (C, u03303, "timing_packageB");
   u03304 : constant Version_32 := 16#273520fa#;
   pragma Export (C, u03304, "timing_packageS");
   u03305 : constant Version_32 := 16#4710bf6a#;
   pragma Export (C, u03305, "total_degree_start_systemsB");
   u03306 : constant Version_32 := 16#f6927644#;
   pragma Export (C, u03306, "total_degree_start_systemsS");
   u03307 : constant Version_32 := 16#74466c25#;
   pragma Export (C, u03307, "track_path_convolutionsB");
   u03308 : constant Version_32 := 16#da3b5679#;
   pragma Export (C, u03308, "track_path_convolutionsS");
   u03309 : constant Version_32 := 16#5b0330b7#;
   pragma Export (C, u03309, "transformation_of_supportsB");
   u03310 : constant Version_32 := 16#387778c8#;
   pragma Export (C, u03310, "transformation_of_supportsS");
   u03311 : constant Version_32 := 16#e3d37c4e#;
   pragma Export (C, u03311, "transforming_integer32_vector_listsB");
   u03312 : constant Version_32 := 16#dc41da53#;
   pragma Export (C, u03312, "transforming_integer32_vector_listsS");
   u03313 : constant Version_32 := 16#b6a95cba#;
   pragma Export (C, u03313, "transforming_laurent_systemsB");
   u03314 : constant Version_32 := 16#49e10922#;
   pragma Export (C, u03314, "transforming_laurent_systemsS");
   u03315 : constant Version_32 := 16#1b98d337#;
   pragma Export (C, u03315, "transforming_solutionsB");
   u03316 : constant Version_32 := 16#91fe1b01#;
   pragma Export (C, u03316, "transforming_solutionsS");
   u03317 : constant Version_32 := 16#d6bc9114#;
   pragma Export (C, u03317, "trees_of_vectorsB");
   u03318 : constant Version_32 := 16#3f80d124#;
   pragma Export (C, u03318, "trees_of_vectorsS");
   u03319 : constant Version_32 := 16#b04e544c#;
   pragma Export (C, u03319, "trees_of_vectors_ioB");
   u03320 : constant Version_32 := 16#048cee5e#;
   pragma Export (C, u03320, "trees_of_vectors_ioS");
   u03321 : constant Version_32 := 16#46bdc66b#;
   pragma Export (C, u03321, "triangulations_and_subdivisionsB");
   u03322 : constant Version_32 := 16#fabf26ba#;
   pragma Export (C, u03322, "triangulations_and_subdivisionsS");
   u03323 : constant Version_32 := 16#c98b75a1#;
   pragma Export (C, u03323, "tripdobl_coefficient_homotopyB");
   u03324 : constant Version_32 := 16#a6069dff#;
   pragma Export (C, u03324, "tripdobl_coefficient_homotopyS");
   u03325 : constant Version_32 := 16#fc9375fe#;
   pragma Export (C, u03325, "tripdobl_complex_jaco_matricesB");
   u03326 : constant Version_32 := 16#b8524535#;
   pragma Export (C, u03326, "tripdobl_complex_jaco_matricesS");
   u03327 : constant Version_32 := 16#0446ce7a#;
   pragma Export (C, u03327, "tripdobl_complex_linear_solversB");
   u03328 : constant Version_32 := 16#95115a24#;
   pragma Export (C, u03328, "tripdobl_complex_linear_solversS");
   u03329 : constant Version_32 := 16#fe1644d8#;
   pragma Export (C, u03329, "tripdobl_complex_matricesB");
   u03330 : constant Version_32 := 16#ae90c253#;
   pragma Export (C, u03330, "tripdobl_complex_matricesS");
   u03331 : constant Version_32 := 16#c635fac5#;
   pragma Export (C, u03331, "tripdobl_complex_numbersB");
   u03332 : constant Version_32 := 16#d528c098#;
   pragma Export (C, u03332, "tripdobl_complex_numbersS");
   u03333 : constant Version_32 := 16#6ec86637#;
   pragma Export (C, u03333, "tripdobl_complex_numbers_cvB");
   u03334 : constant Version_32 := 16#e6e7122c#;
   pragma Export (C, u03334, "tripdobl_complex_numbers_cvS");
   u03335 : constant Version_32 := 16#819da4c3#;
   pragma Export (C, u03335, "multprec_tripdobl_convertorsB");
   u03336 : constant Version_32 := 16#78ffb26a#;
   pragma Export (C, u03336, "multprec_tripdobl_convertorsS");
   u03337 : constant Version_32 := 16#a532c595#;
   pragma Export (C, u03337, "tripdobl_complex_numbers_ioB");
   u03338 : constant Version_32 := 16#29a526cf#;
   pragma Export (C, u03338, "tripdobl_complex_numbers_ioS");
   u03339 : constant Version_32 := 16#3013d061#;
   pragma Export (C, u03339, "tripdobl_complex_numbers_polarB");
   u03340 : constant Version_32 := 16#eefd3d21#;
   pragma Export (C, u03340, "tripdobl_complex_numbers_polarS");
   u03341 : constant Version_32 := 16#7d981d70#;
   pragma Export (C, u03341, "tripdobl_complex_poly_functionsB");
   u03342 : constant Version_32 := 16#d903b2a4#;
   pragma Export (C, u03342, "tripdobl_complex_poly_functionsS");
   u03343 : constant Version_32 := 16#301ada35#;
   pragma Export (C, u03343, "tripdobl_complex_poly_sysfunB");
   u03344 : constant Version_32 := 16#523c4d67#;
   pragma Export (C, u03344, "tripdobl_complex_poly_sysfunS");
   u03345 : constant Version_32 := 16#61e39000#;
   pragma Export (C, u03345, "tripdobl_complex_poly_systemsB");
   u03346 : constant Version_32 := 16#a1ff0b9c#;
   pragma Export (C, u03346, "tripdobl_complex_poly_systemsS");
   u03347 : constant Version_32 := 16#d007cb1d#;
   pragma Export (C, u03347, "tripdobl_complex_poly_systems_ioB");
   u03348 : constant Version_32 := 16#6b5eef08#;
   pragma Export (C, u03348, "tripdobl_complex_poly_systems_ioS");
   u03349 : constant Version_32 := 16#a47e8bf7#;
   pragma Export (C, u03349, "tripdobl_complex_polynomialsB");
   u03350 : constant Version_32 := 16#7c75f483#;
   pragma Export (C, u03350, "tripdobl_complex_polynomialsS");
   u03351 : constant Version_32 := 16#584f2051#;
   pragma Export (C, u03351, "tripdobl_complex_polynomials_ioB");
   u03352 : constant Version_32 := 16#8dfe18dd#;
   pragma Export (C, u03352, "tripdobl_complex_polynomials_ioS");
   u03353 : constant Version_32 := 16#b20315d9#;
   pragma Export (C, u03353, "tripdobl_complex_qr_least_squaresB");
   u03354 : constant Version_32 := 16#2d5dcd58#;
   pragma Export (C, u03354, "tripdobl_complex_qr_least_squaresS");
   u03355 : constant Version_32 := 16#fc1f9a0d#;
   pragma Export (C, u03355, "tripdobl_complex_ringS");
   u03356 : constant Version_32 := 16#6b27230f#;
   pragma Export (C, u03356, "tripdobl_complex_seriesB");
   u03357 : constant Version_32 := 16#0ca61bb2#;
   pragma Export (C, u03357, "tripdobl_complex_seriesS");
   u03358 : constant Version_32 := 16#a673d2d3#;
   pragma Export (C, u03358, "tripdobl_complex_series_functionsB");
   u03359 : constant Version_32 := 16#e6ad0b56#;
   pragma Export (C, u03359, "tripdobl_complex_series_functionsS");
   u03360 : constant Version_32 := 16#b8dcdb90#;
   pragma Export (C, u03360, "tripdobl_complex_series_ioB");
   u03361 : constant Version_32 := 16#1a04de29#;
   pragma Export (C, u03361, "tripdobl_complex_series_ioS");
   u03362 : constant Version_32 := 16#6eaa4768#;
   pragma Export (C, u03362, "tripdobl_complex_series_matricesB");
   u03363 : constant Version_32 := 16#fd2d5e5f#;
   pragma Export (C, u03363, "tripdobl_complex_series_matricesS");
   u03364 : constant Version_32 := 16#32fcfba1#;
   pragma Export (C, u03364, "tripdobl_complex_series_ringS");
   u03365 : constant Version_32 := 16#ae9e9c35#;
   pragma Export (C, u03365, "tripdobl_complex_series_vectorsB");
   u03366 : constant Version_32 := 16#94129969#;
   pragma Export (C, u03366, "tripdobl_complex_series_vectorsS");
   u03367 : constant Version_32 := 16#53705a97#;
   pragma Export (C, u03367, "tripdobl_complex_series_vecvecsB");
   u03368 : constant Version_32 := 16#d96a8fb6#;
   pragma Export (C, u03368, "tripdobl_complex_series_vecvecsS");
   u03369 : constant Version_32 := 16#c07a39d0#;
   pragma Export (C, u03369, "tripdobl_complex_singular_valuesB");
   u03370 : constant Version_32 := 16#9869294d#;
   pragma Export (C, u03370, "tripdobl_complex_singular_valuesS");
   u03371 : constant Version_32 := 16#fed6da62#;
   pragma Export (C, u03371, "tripdobl_complex_solutionsB");
   u03372 : constant Version_32 := 16#66b2f502#;
   pragma Export (C, u03372, "tripdobl_complex_solutionsS");
   u03373 : constant Version_32 := 16#23a71309#;
   pragma Export (C, u03373, "tripdobl_complex_solutions_ioB");
   u03374 : constant Version_32 := 16#d5d6067a#;
   pragma Export (C, u03374, "tripdobl_complex_solutions_ioS");
   u03375 : constant Version_32 := 16#ff632c84#;
   pragma Export (C, u03375, "tripdobl_complex_vecmatsB");
   u03376 : constant Version_32 := 16#41c39d9e#;
   pragma Export (C, u03376, "tripdobl_complex_vecmatsS");
   u03377 : constant Version_32 := 16#cfa189bb#;
   pragma Export (C, u03377, "tripdobl_complex_vector_normsB");
   u03378 : constant Version_32 := 16#6d9b1a16#;
   pragma Export (C, u03378, "tripdobl_complex_vector_normsS");
   u03379 : constant Version_32 := 16#0e6ebbef#;
   pragma Export (C, u03379, "tripdobl_complex_vectorsB");
   u03380 : constant Version_32 := 16#571306d5#;
   pragma Export (C, u03380, "tripdobl_complex_vectorsS");
   u03381 : constant Version_32 := 16#a08b37e4#;
   pragma Export (C, u03381, "tripdobl_complex_vectors_cvB");
   u03382 : constant Version_32 := 16#6736402b#;
   pragma Export (C, u03382, "tripdobl_complex_vectors_cvS");
   u03383 : constant Version_32 := 16#ba0c178a#;
   pragma Export (C, u03383, "tripdobl_complex_vectors_ioB");
   u03384 : constant Version_32 := 16#844bcdd1#;
   pragma Export (C, u03384, "tripdobl_complex_vectors_ioS");
   u03385 : constant Version_32 := 16#c79f975e#;
   pragma Export (C, u03385, "tripdobl_complex_ring_ioS");
   u03386 : constant Version_32 := 16#e5269d04#;
   pragma Export (C, u03386, "tripdobl_complex_vecvecsB");
   u03387 : constant Version_32 := 16#ac3dd799#;
   pragma Export (C, u03387, "tripdobl_complex_vecvecsS");
   u03388 : constant Version_32 := 16#2019f458#;
   pragma Export (C, u03388, "tripdobl_cseries_jaco_matricesB");
   u03389 : constant Version_32 := 16#bd81da4e#;
   pragma Export (C, u03389, "tripdobl_cseries_jaco_matricesS");
   u03390 : constant Version_32 := 16#c39f1dd9#;
   pragma Export (C, u03390, "tripdobl_cseries_poly_functionsB");
   u03391 : constant Version_32 := 16#160dca29#;
   pragma Export (C, u03391, "tripdobl_cseries_poly_functionsS");
   u03392 : constant Version_32 := 16#e5887f4b#;
   pragma Export (C, u03392, "tripdobl_cseries_poly_sysfunB");
   u03393 : constant Version_32 := 16#1bd9500a#;
   pragma Export (C, u03393, "tripdobl_cseries_poly_sysfunS");
   u03394 : constant Version_32 := 16#84cc970d#;
   pragma Export (C, u03394, "tripdobl_cseries_poly_systemsB");
   u03395 : constant Version_32 := 16#9529536f#;
   pragma Export (C, u03395, "tripdobl_cseries_poly_systemsS");
   u03396 : constant Version_32 := 16#16766c6f#;
   pragma Export (C, u03396, "tripdobl_cseries_polynomialsB");
   u03397 : constant Version_32 := 16#ad8cab7d#;
   pragma Export (C, u03397, "tripdobl_cseries_polynomialsS");
   u03398 : constant Version_32 := 16#eef5abc1#;
   pragma Export (C, u03398, "tripdobl_fabry_on_homotopyB");
   u03399 : constant Version_32 := 16#92940d3e#;
   pragma Export (C, u03399, "tripdobl_fabry_on_homotopyS");
   u03400 : constant Version_32 := 16#0d32ab89#;
   pragma Export (C, u03400, "tripdobl_complex_vecvecs_ioB");
   u03401 : constant Version_32 := 16#293ecb41#;
   pragma Export (C, u03401, "tripdobl_complex_vecvecs_ioS");
   u03402 : constant Version_32 := 16#38e7bbef#;
   pragma Export (C, u03402, "tripdobl_homotopyB");
   u03403 : constant Version_32 := 16#5bfa99fa#;
   pragma Export (C, u03403, "tripdobl_homotopyS");
   u03404 : constant Version_32 := 16#befac19e#;
   pragma Export (C, u03404, "tripdobl_homotopy_convolutions_ioB");
   u03405 : constant Version_32 := 16#51fd34d2#;
   pragma Export (C, u03405, "tripdobl_homotopy_convolutions_ioS");
   u03406 : constant Version_32 := 16#b55804a1#;
   pragma Export (C, u03406, "tripdobl_mathematical_functionsB");
   u03407 : constant Version_32 := 16#3baf2441#;
   pragma Export (C, u03407, "tripdobl_mathematical_functionsS");
   u03408 : constant Version_32 := 16#f37e6a83#;
   pragma Export (C, u03408, "tripdobl_newton_convolution_stepsB");
   u03409 : constant Version_32 := 16#e9ba40dd#;
   pragma Export (C, u03409, "tripdobl_newton_convolution_stepsS");
   u03410 : constant Version_32 := 16#acbdb834#;
   pragma Export (C, u03410, "tripdobl_newton_convolutionsB");
   u03411 : constant Version_32 := 16#ea696c39#;
   pragma Export (C, u03411, "tripdobl_newton_convolutionsS");
   u03412 : constant Version_32 := 16#db3637af#;
   pragma Export (C, u03412, "tripdobl_newton_matrix_seriesB");
   u03413 : constant Version_32 := 16#49a14aa7#;
   pragma Export (C, u03413, "tripdobl_newton_matrix_seriesS");
   u03414 : constant Version_32 := 16#4db7c94c#;
   pragma Export (C, u03414, "tripdobl_complex_matrix_seriesB");
   u03415 : constant Version_32 := 16#004d295e#;
   pragma Export (C, u03415, "tripdobl_complex_matrix_seriesS");
   u03416 : constant Version_32 := 16#5244149e#;
   pragma Export (C, u03416, "tripdobl_complex_vector_seriesB");
   u03417 : constant Version_32 := 16#956c0f77#;
   pragma Export (C, u03417, "tripdobl_complex_vector_seriesS");
   u03418 : constant Version_32 := 16#d5b0f002#;
   pragma Export (C, u03418, "tripdobl_cseries_vector_normsB");
   u03419 : constant Version_32 := 16#d14f1e25#;
   pragma Export (C, u03419, "tripdobl_cseries_vector_normsS");
   u03420 : constant Version_32 := 16#ba6a7d60#;
   pragma Export (C, u03420, "tripdobl_complex_algebraic_seriesB");
   u03421 : constant Version_32 := 16#da1bafbe#;
   pragma Export (C, u03421, "tripdobl_complex_algebraic_seriesS");
   u03422 : constant Version_32 := 16#02842f39#;
   pragma Export (C, u03422, "tripdobl_complex_series_normsB");
   u03423 : constant Version_32 := 16#21f2dbc2#;
   pragma Export (C, u03423, "tripdobl_complex_series_normsS");
   u03424 : constant Version_32 := 16#c95a1857#;
   pragma Export (C, u03424, "tripdobl_parameter_systemsB");
   u03425 : constant Version_32 := 16#90345ed2#;
   pragma Export (C, u03425, "tripdobl_parameter_systemsS");
   u03426 : constant Version_32 := 16#938e00d6#;
   pragma Export (C, u03426, "tripdobl_polynomial_convertorsB");
   u03427 : constant Version_32 := 16#a5b50355#;
   pragma Export (C, u03427, "tripdobl_polynomial_convertorsS");
   u03428 : constant Version_32 := 16#b2c339b2#;
   pragma Export (C, u03428, "tripdobl_complex_laur_systemsB");
   u03429 : constant Version_32 := 16#1e854564#;
   pragma Export (C, u03429, "tripdobl_complex_laur_systemsS");
   u03430 : constant Version_32 := 16#d0ec0b11#;
   pragma Export (C, u03430, "tripdobl_complex_laurentialsB");
   u03431 : constant Version_32 := 16#81521fc1#;
   pragma Export (C, u03431, "tripdobl_complex_laurentialsS");
   u03432 : constant Version_32 := 16#8e46eaab#;
   pragma Export (C, u03432, "tripdobl_random_numbersB");
   u03433 : constant Version_32 := 16#ad0c2589#;
   pragma Export (C, u03433, "tripdobl_random_numbersS");
   u03434 : constant Version_32 := 16#15e3dac7#;
   pragma Export (C, u03434, "tripdobl_series_matrix_solversB");
   u03435 : constant Version_32 := 16#517072a7#;
   pragma Export (C, u03435, "tripdobl_series_matrix_solversS");
   u03436 : constant Version_32 := 16#e1ea1ecc#;
   pragma Export (C, u03436, "tripdobl_echelon_formsB");
   u03437 : constant Version_32 := 16#eab8a50e#;
   pragma Export (C, u03437, "tripdobl_echelon_formsS");
   u03438 : constant Version_32 := 16#7fb0d3ff#;
   pragma Export (C, u03438, "tripdobl_interpolating_cseriesB");
   u03439 : constant Version_32 := 16#3055738c#;
   pragma Export (C, u03439, "tripdobl_interpolating_cseriesS");
   u03440 : constant Version_32 := 16#a783092f#;
   pragma Export (C, u03440, "tripdobl_complex_matrices_ioB");
   u03441 : constant Version_32 := 16#03b2de98#;
   pragma Export (C, u03441, "tripdobl_complex_matrices_ioS");
   u03442 : constant Version_32 := 16#311cb94f#;
   pragma Export (C, u03442, "tripdobl_random_vectorsB");
   u03443 : constant Version_32 := 16#0a73c451#;
   pragma Export (C, u03443, "tripdobl_random_vectorsS");
   u03444 : constant Version_32 := 16#c3ca922d#;
   pragma Export (C, u03444, "tripdobl_speelpenning_convolutionsB");
   u03445 : constant Version_32 := 16#555211bb#;
   pragma Export (C, u03445, "tripdobl_speelpenning_convolutionsS");
   u03446 : constant Version_32 := 16#fd6908d3#;
   pragma Export (C, u03446, "tripdobl_system_and_solutions_ioB");
   u03447 : constant Version_32 := 16#d7d03f4e#;
   pragma Export (C, u03447, "tripdobl_system_and_solutions_ioS");
   u03448 : constant Version_32 := 16#409d9a2f#;
   pragma Export (C, u03448, "tripdobl_complex_laur_systems_ioB");
   u03449 : constant Version_32 := 16#dced22dd#;
   pragma Export (C, u03449, "tripdobl_complex_laur_systems_ioS");
   u03450 : constant Version_32 := 16#bb9d83fa#;
   pragma Export (C, u03450, "tripdobl_complex_laurentials_ioB");
   u03451 : constant Version_32 := 16#dbbab6ff#;
   pragma Export (C, u03451, "tripdobl_complex_laurentials_ioS");
   u03452 : constant Version_32 := 16#fd165c74#;
   pragma Export (C, u03452, "triple_double_constantsS");
   u03453 : constant Version_32 := 16#f4b8aa9d#;
   pragma Export (C, u03453, "triple_double_numbersB");
   u03454 : constant Version_32 := 16#3d65a8b1#;
   pragma Export (C, u03454, "triple_double_numbersS");
   u03455 : constant Version_32 := 16#c201f37d#;
   pragma Export (C, u03455, "triple_double_numbers_ioB");
   u03456 : constant Version_32 := 16#0389612b#;
   pragma Export (C, u03456, "triple_double_numbers_ioS");
   u03457 : constant Version_32 := 16#35047cff#;
   pragma Export (C, u03457, "triple_double_poly_systemsB");
   u03458 : constant Version_32 := 16#cc670626#;
   pragma Export (C, u03458, "triple_double_poly_systemsS");
   u03459 : constant Version_32 := 16#2a797cf5#;
   pragma Export (C, u03459, "triple_double_polynomialsB");
   u03460 : constant Version_32 := 16#450a15c6#;
   pragma Export (C, u03460, "triple_double_polynomialsS");
   u03461 : constant Version_32 := 16#68365c99#;
   pragma Export (C, u03461, "triple_double_ringS");
   u03462 : constant Version_32 := 16#74526fb7#;
   pragma Export (C, u03462, "triple_double_ring__ffieldS");
   u03463 : constant Version_32 := 16#1d406cb1#;
   pragma Export (C, u03463, "triple_double_vectorsB");
   u03464 : constant Version_32 := 16#f345c7cc#;
   pragma Export (C, u03464, "triple_double_vectorsS");
   u03465 : constant Version_32 := 16#97d61f37#;
   pragma Export (C, u03465, "triple_double_vectors_ioB");
   u03466 : constant Version_32 := 16#33eefd67#;
   pragma Export (C, u03466, "triple_double_vectors_ioS");
   u03467 : constant Version_32 := 16#8f2b9b60#;
   pragma Export (C, u03467, "triple_double_ring_ioS");
   u03468 : constant Version_32 := 16#020dff6b#;
   pragma Export (C, u03468, "unfolding_subdivisionsB");
   u03469 : constant Version_32 := 16#feb2ff5f#;
   pragma Export (C, u03469, "unfolding_subdivisionsS");
   u03470 : constant Version_32 := 16#4e07c43c#;
   pragma Export (C, u03470, "unix_command_lineB");
   u03471 : constant Version_32 := 16#a1ed6bbe#;
   pragma Export (C, u03471, "unix_command_lineS");
   u03472 : constant Version_32 := 16#e94bb70a#;
   pragma Export (C, u03472, "use_c2phc4cB");
   u03473 : constant Version_32 := 16#05014871#;
   pragma Export (C, u03473, "use_c2phc4cS");
   u03474 : constant Version_32 := 16#629c7228#;
   pragma Export (C, u03474, "c_to_phcpackB");
   u03475 : constant Version_32 := 16#59d086d3#;
   pragma Export (C, u03475, "c_to_phcpackS");
   u03476 : constant Version_32 := 16#a7576aad#;
   pragma Export (C, u03476, "continuation_parameters_interfaceB");
   u03477 : constant Version_32 := 16#b9d54c8f#;
   pragma Export (C, u03477, "continuation_parameters_interfaceS");
   u03478 : constant Version_32 := 16#14267b39#;
   pragma Export (C, u03478, "assignments_in_ada_and_cB");
   u03479 : constant Version_32 := 16#5c0da770#;
   pragma Export (C, u03479, "assignments_in_ada_and_cS");
   u03480 : constant Version_32 := 16#f54f2b73#;
   pragma Export (C, u03480, "deflation_interfaceB");
   u03481 : constant Version_32 := 16#9815b321#;
   pragma Export (C, u03481, "deflation_interfaceS");
   u03482 : constant Version_32 := 16#cf9b9635#;
   pragma Export (C, u03482, "dobldobl_polysys_containerB");
   u03483 : constant Version_32 := 16#24b9a723#;
   pragma Export (C, u03483, "dobldobl_polysys_containerS");
   u03484 : constant Version_32 := 16#292e97ac#;
   pragma Export (C, u03484, "dobldobl_solutions_containerB");
   u03485 : constant Version_32 := 16#b5e2ad1c#;
   pragma Export (C, u03485, "dobldobl_solutions_containerS");
   u03486 : constant Version_32 := 16#075da4ec#;
   pragma Export (C, u03486, "file_management_interfaceB");
   u03487 : constant Version_32 := 16#28ab4a30#;
   pragma Export (C, u03487, "file_management_interfaceS");
   u03488 : constant Version_32 := 16#a5996022#;
   pragma Export (C, u03488, "file_managementB");
   u03489 : constant Version_32 := 16#47d75aac#;
   pragma Export (C, u03489, "file_managementS");
   u03490 : constant Version_32 := 16#b3ab6ad6#;
   pragma Export (C, u03490, "job_containersB");
   u03491 : constant Version_32 := 16#d7ff80a3#;
   pragma Export (C, u03491, "job_containersS");
   u03492 : constant Version_32 := 16#64a55666#;
   pragma Export (C, u03492, "dobldobl_laursys_containerB");
   u03493 : constant Version_32 := 16#3c4f4f62#;
   pragma Export (C, u03493, "dobldobl_laursys_containerS");
   u03494 : constant Version_32 := 16#b881e22d#;
   pragma Export (C, u03494, "job_handlersB");
   u03495 : constant Version_32 := 16#48f3853a#;
   pragma Export (C, u03495, "job_handlersS");
   u03496 : constant Version_32 := 16#55b56394#;
   pragma Export (C, u03496, "black_box_polyhedral_solversB");
   u03497 : constant Version_32 := 16#b7fa409d#;
   pragma Export (C, u03497, "black_box_polyhedral_solversS");
   u03498 : constant Version_32 := 16#5dd2d3a9#;
   pragma Export (C, u03498, "black_box_mixed_volumesB");
   u03499 : constant Version_32 := 16#a3dffeef#;
   pragma Export (C, u03499, "black_box_mixed_volumesS");
   u03500 : constant Version_32 := 16#0855a60e#;
   pragma Export (C, u03500, "double_cells_containerB");
   u03501 : constant Version_32 := 16#65a6a0f2#;
   pragma Export (C, u03501, "double_cells_containerS");
   u03502 : constant Version_32 := 16#a760ffcc#;
   pragma Export (C, u03502, "arrays_of_floating_vector_lists_ioB");
   u03503 : constant Version_32 := 16#54942c40#;
   pragma Export (C, u03503, "arrays_of_floating_vector_lists_ioS");
   u03504 : constant Version_32 := 16#414004cc#;
   pragma Export (C, u03504, "multprec_polysys_containerB");
   u03505 : constant Version_32 := 16#056a0350#;
   pragma Export (C, u03505, "multprec_polysys_containerS");
   u03506 : constant Version_32 := 16#516d10b8#;
   pragma Export (C, u03506, "multprec_polysys_interfaceB");
   u03507 : constant Version_32 := 16#db30b450#;
   pragma Export (C, u03507, "multprec_polysys_interfaceS");
   u03508 : constant Version_32 := 16#e2047e94#;
   pragma Export (C, u03508, "multprec_solutions_containerB");
   u03509 : constant Version_32 := 16#88c9ec01#;
   pragma Export (C, u03509, "multprec_solutions_containerS");
   u03510 : constant Version_32 := 16#0c74085d#;
   pragma Export (C, u03510, "multprec_solutions_interfaceB");
   u03511 : constant Version_32 := 16#80e1042a#;
   pragma Export (C, u03511, "multprec_solutions_interfaceS");
   u03512 : constant Version_32 := 16#79677e46#;
   pragma Export (C, u03512, "multprec_solution_stringsB");
   u03513 : constant Version_32 := 16#9cec59c1#;
   pragma Export (C, u03513, "multprec_solution_stringsS");
   u03514 : constant Version_32 := 16#7127f8da#;
   pragma Export (C, u03514, "newton_interfaceB");
   u03515 : constant Version_32 := 16#e3e7b039#;
   pragma Export (C, u03515, "newton_interfaceS");
   u03516 : constant Version_32 := 16#2ea21b03#;
   pragma Export (C, u03516, "assignments_of_solutionsB");
   u03517 : constant Version_32 := 16#460d9ce3#;
   pragma Export (C, u03517, "assignments_of_solutionsS");
   u03518 : constant Version_32 := 16#ddba9c74#;
   pragma Export (C, u03518, "multprec_laursys_containerB");
   u03519 : constant Version_32 := 16#6d58a967#;
   pragma Export (C, u03519, "multprec_laursys_containerS");
   u03520 : constant Version_32 := 16#44fa07f6#;
   pragma Export (C, u03520, "pack_continuation_parametersB");
   u03521 : constant Version_32 := 16#6c4ec5cc#;
   pragma Export (C, u03521, "pack_continuation_parametersS");
   u03522 : constant Version_32 := 16#1c142312#;
   pragma Export (C, u03522, "path_trackers_interfaceB");
   u03523 : constant Version_32 := 16#c415e58a#;
   pragma Export (C, u03523, "path_trackers_interfaceS");
   u03524 : constant Version_32 := 16#47ae4d34#;
   pragma Export (C, u03524, "crude_path_trackersB");
   u03525 : constant Version_32 := 16#2a1035a5#;
   pragma Export (C, u03525, "crude_path_trackersS");
   u03526 : constant Version_32 := 16#121c3cff#;
   pragma Export (C, u03526, "phcpack_operations_ioB");
   u03527 : constant Version_32 := 16#4a6d5508#;
   pragma Export (C, u03527, "phcpack_operations_ioS");
   u03528 : constant Version_32 := 16#49e0dfd4#;
   pragma Export (C, u03528, "quaddobl_laursys_containerB");
   u03529 : constant Version_32 := 16#44dc728e#;
   pragma Export (C, u03529, "quaddobl_laursys_containerS");
   u03530 : constant Version_32 := 16#adae43a4#;
   pragma Export (C, u03530, "quaddobl_polysys_containerB");
   u03531 : constant Version_32 := 16#1fb1a1f1#;
   pragma Export (C, u03531, "quaddobl_polysys_containerS");
   u03532 : constant Version_32 := 16#22bd9d2b#;
   pragma Export (C, u03532, "quaddobl_solutions_containerB");
   u03533 : constant Version_32 := 16#d88d4db4#;
   pragma Export (C, u03533, "quaddobl_solutions_containerS");
   u03534 : constant Version_32 := 16#461d67db#;
   pragma Export (C, u03534, "solutions_poolB");
   u03535 : constant Version_32 := 16#30c2db2b#;
   pragma Export (C, u03535, "solutions_poolS");
   u03536 : constant Version_32 := 16#b6c2a34b#;
   pragma Export (C, u03536, "standard_laursys_containerB");
   u03537 : constant Version_32 := 16#011524b6#;
   pragma Export (C, u03537, "standard_laursys_containerS");
   u03538 : constant Version_32 := 16#89bfca31#;
   pragma Export (C, u03538, "standard_polysys_containerB");
   u03539 : constant Version_32 := 16#fad2a36d#;
   pragma Export (C, u03539, "standard_polysys_containerS");
   u03540 : constant Version_32 := 16#654a1bc6#;
   pragma Export (C, u03540, "standard_solution_stringsB");
   u03541 : constant Version_32 := 16#12e6f5df#;
   pragma Export (C, u03541, "standard_solution_stringsS");
   u03542 : constant Version_32 := 16#554ce759#;
   pragma Export (C, u03542, "standard_complex_vector_stringsB");
   u03543 : constant Version_32 := 16#2fe717a0#;
   pragma Export (C, u03543, "standard_complex_vector_stringsS");
   u03544 : constant Version_32 := 16#9d74e0e1#;
   pragma Export (C, u03544, "standard_solutions_containerB");
   u03545 : constant Version_32 := 16#9c143fbb#;
   pragma Export (C, u03545, "standard_solutions_containerS");
   u03546 : constant Version_32 := 16#9e057181#;
   pragma Export (C, u03546, "standard_systems_poolB");
   u03547 : constant Version_32 := 16#89bae18b#;
   pragma Export (C, u03547, "standard_systems_poolS");
   u03548 : constant Version_32 := 16#7559962f#;
   pragma Export (C, u03548, "string_parsingB");
   u03549 : constant Version_32 := 16#7e6f8eba#;
   pragma Export (C, u03549, "string_parsingS");
   u03550 : constant Version_32 := 16#c4a99db0#;
   pragma Export (C, u03550, "symbol_table_interfaceB");
   u03551 : constant Version_32 := 16#38c00cca#;
   pragma Export (C, u03551, "symbol_table_interfaceS");
   u03552 : constant Version_32 := 16#11d232e4#;
   pragma Export (C, u03552, "parse_dimensionsB");
   u03553 : constant Version_32 := 16#bdff409c#;
   pragma Export (C, u03553, "parse_dimensionsS");
   u03554 : constant Version_32 := 16#53b8a175#;
   pragma Export (C, u03554, "unisolveB");
   u03555 : constant Version_32 := 16#8c8754ac#;
   pragma Export (C, u03555, "unisolveS");
   u03556 : constant Version_32 := 16#6db8bbbe#;
   pragma Export (C, u03556, "univariate_solvers_interfaceB");
   u03557 : constant Version_32 := 16#69c0fc23#;
   pragma Export (C, u03557, "univariate_solvers_interfaceS");
   u03558 : constant Version_32 := 16#a3e8e974#;
   pragma Export (C, u03558, "use_avvconB");
   u03559 : constant Version_32 := 16#e96baff3#;
   pragma Export (C, u03559, "use_avvconS");
   u03560 : constant Version_32 := 16#6b6f8109#;
   pragma Export (C, u03560, "dcmplx_vecvecs_interfaceB");
   u03561 : constant Version_32 := 16#f67ddf0e#;
   pragma Export (C, u03561, "dcmplx_vecvecs_interfaceS");
   u03562 : constant Version_32 := 16#e743d13d#;
   pragma Export (C, u03562, "dcmplx_vecvecs_containerB");
   u03563 : constant Version_32 := 16#682e5c43#;
   pragma Export (C, u03563, "dcmplx_vecvecs_containerS");
   u03564 : constant Version_32 := 16#b6ae84da#;
   pragma Export (C, u03564, "double_puiseux_interfaceB");
   u03565 : constant Version_32 := 16#c5852e9b#;
   pragma Export (C, u03565, "double_puiseux_interfaceS");
   u03566 : constant Version_32 := 16#ccae908f#;
   pragma Export (C, u03566, "double_newton_puiseuxB");
   u03567 : constant Version_32 := 16#2fbd0cc2#;
   pragma Export (C, u03567, "double_newton_puiseuxS");
   u03568 : constant Version_32 := 16#377a2dc4#;
   pragma Export (C, u03568, "double_leading_evaluationsB");
   u03569 : constant Version_32 := 16#d8cd8397#;
   pragma Export (C, u03569, "double_leading_evaluationsS");
   u03570 : constant Version_32 := 16#7c4afe66#;
   pragma Export (C, u03570, "double_ordered_evaluationsB");
   u03571 : constant Version_32 := 16#75e76500#;
   pragma Export (C, u03571, "double_ordered_evaluationsS");
   u03572 : constant Version_32 := 16#3a853eea#;
   pragma Export (C, u03572, "double_puiseux_structuresB");
   u03573 : constant Version_32 := 16#7ac21eb7#;
   pragma Export (C, u03573, "double_puiseux_structuresS");
   u03574 : constant Version_32 := 16#e62cb15b#;
   pragma Export (C, u03574, "double_real_powered_seriesB");
   u03575 : constant Version_32 := 16#76ceda5b#;
   pragma Export (C, u03575, "double_real_powered_seriesS");
   u03576 : constant Version_32 := 16#b495d3f8#;
   pragma Export (C, u03576, "double_vecvecs_containerB");
   u03577 : constant Version_32 := 16#c1eeec7b#;
   pragma Export (C, u03577, "double_vecvecs_containerS");
   u03578 : constant Version_32 := 16#865b3e1e#;
   pragma Export (C, u03578, "double_vecvecs_interfaceB");
   u03579 : constant Version_32 := 16#a0f76896#;
   pragma Export (C, u03579, "double_vecvecs_interfaceS");
   u03580 : constant Version_32 := 16#af12a04a#;
   pragma Export (C, u03580, "laurent_homotopy_derivativesB");
   u03581 : constant Version_32 := 16#3000fa6c#;
   pragma Export (C, u03581, "laurent_homotopy_derivativesS");
   u03582 : constant Version_32 := 16#38d35b51#;
   pragma Export (C, u03582, "real_powered_homotopyB");
   u03583 : constant Version_32 := 16#a0d00ac6#;
   pragma Export (C, u03583, "real_powered_homotopyS");
   u03584 : constant Version_32 := 16#035b99b0#;
   pragma Export (C, u03584, "real_powered_homotopy_ioB");
   u03585 : constant Version_32 := 16#a6d63081#;
   pragma Export (C, u03585, "real_powered_homotopy_ioS");
   u03586 : constant Version_32 := 16#8a17c420#;
   pragma Export (C, u03586, "real_powered_series_ioB");
   u03587 : constant Version_32 := 16#5ea7781e#;
   pragma Export (C, u03587, "real_powered_series_ioS");
   u03588 : constant Version_32 := 16#3172b450#;
   pragma Export (C, u03588, "use_c2facB");
   u03589 : constant Version_32 := 16#c48e2936#;
   pragma Export (C, u03589, "use_c2facS");
   u03590 : constant Version_32 := 16#61d89afd#;
   pragma Export (C, u03590, "monodromy_interfaceB");
   u03591 : constant Version_32 := 16#015facb9#;
   pragma Export (C, u03591, "monodromy_interfaceS");
   u03592 : constant Version_32 := 16#efb19e18#;
   pragma Export (C, u03592, "dobldobl_monodromy_permutationsB");
   u03593 : constant Version_32 := 16#bab943d1#;
   pragma Export (C, u03593, "dobldobl_monodromy_permutationsS");
   u03594 : constant Version_32 := 16#925fc014#;
   pragma Export (C, u03594, "dobldobl_sampling_operationsB");
   u03595 : constant Version_32 := 16#5d0256c6#;
   pragma Export (C, u03595, "dobldobl_sampling_operationsS");
   u03596 : constant Version_32 := 16#5677a3b2#;
   pragma Export (C, u03596, "quaddobl_monodromy_permutationsB");
   u03597 : constant Version_32 := 16#77e199a7#;
   pragma Export (C, u03597, "quaddobl_monodromy_permutationsS");
   u03598 : constant Version_32 := 16#61429bf5#;
   pragma Export (C, u03598, "quaddobl_sampling_operationsB");
   u03599 : constant Version_32 := 16#dbf1e13b#;
   pragma Export (C, u03599, "quaddobl_sampling_operationsS");
   u03600 : constant Version_32 := 16#cb60245b#;
   pragma Export (C, u03600, "standard_monodromy_permutationsB");
   u03601 : constant Version_32 := 16#aa9dbb5c#;
   pragma Export (C, u03601, "standard_monodromy_permutationsS");
   u03602 : constant Version_32 := 16#a6c7c6a4#;
   pragma Export (C, u03602, "standard_sampling_operationsB");
   u03603 : constant Version_32 := 16#1b94c4d4#;
   pragma Export (C, u03603, "standard_sampling_operationsS");
   u03604 : constant Version_32 := 16#0d027ad6#;
   pragma Export (C, u03604, "use_c2lrhomB");
   u03605 : constant Version_32 := 16#8ddbe70d#;
   pragma Export (C, u03605, "use_c2lrhomS");
   u03606 : constant Version_32 := 16#1059cbd9#;
   pragma Export (C, u03606, "schubert_interfaceB");
   u03607 : constant Version_32 := 16#2c683dd9#;
   pragma Export (C, u03607, "schubert_interfaceS");
   u03608 : constant Version_32 := 16#545ab76a#;
   pragma Export (C, u03608, "use_c2mbtB");
   u03609 : constant Version_32 := 16#240e206d#;
   pragma Export (C, u03609, "use_c2mbtS");
   u03610 : constant Version_32 := 16#62eec25f#;
   pragma Export (C, u03610, "member_interfaceB");
   u03611 : constant Version_32 := 16#5e57b686#;
   pragma Export (C, u03611, "member_interfaceS");
   u03612 : constant Version_32 := 16#1061d31a#;
   pragma Export (C, u03612, "dobldobl_solution_stringsB");
   u03613 : constant Version_32 := 16#ae4ef31e#;
   pragma Export (C, u03613, "dobldobl_solution_stringsS");
   u03614 : constant Version_32 := 16#60a146c3#;
   pragma Export (C, u03614, "quaddobl_solution_stringsB");
   u03615 : constant Version_32 := 16#99a52c42#;
   pragma Export (C, u03615, "quaddobl_solution_stringsS");
   u03616 : constant Version_32 := 16#f35d173f#;
   pragma Export (C, u03616, "use_c2pieriB");
   u03617 : constant Version_32 := 16#97a6ea9a#;
   pragma Export (C, u03617, "use_c2pieriS");
   u03618 : constant Version_32 := 16#93ad08d7#;
   pragma Export (C, u03618, "pieri_interfaceB");
   u03619 : constant Version_32 := 16#ff2b8dbd#;
   pragma Export (C, u03619, "pieri_interfaceS");
   u03620 : constant Version_32 := 16#fdda594b#;
   pragma Export (C, u03620, "localization_poset_stringsB");
   u03621 : constant Version_32 := 16#2bc555ec#;
   pragma Export (C, u03621, "localization_poset_stringsS");
   u03622 : constant Version_32 := 16#d124de67#;
   pragma Export (C, u03622, "pieri_homotopyB");
   u03623 : constant Version_32 := 16#091e8a0d#;
   pragma Export (C, u03623, "pieri_homotopyS");
   u03624 : constant Version_32 := 16#3e90d9d7#;
   pragma Export (C, u03624, "pieri_root_countB");
   u03625 : constant Version_32 := 16#d0ce9a8c#;
   pragma Export (C, u03625, "pieri_root_countS");
   u03626 : constant Version_32 := 16#b8cb72ba#;
   pragma Export (C, u03626, "standard_bracket_polynomials_ioB");
   u03627 : constant Version_32 := 16#811ec274#;
   pragma Export (C, u03627, "standard_bracket_polynomials_ioS");
   u03628 : constant Version_32 := 16#b5c0d889#;
   pragma Export (C, u03628, "use_celconB");
   u03629 : constant Version_32 := 16#fb271f3b#;
   pragma Export (C, u03629, "use_celconS");
   u03630 : constant Version_32 := 16#812547b3#;
   pragma Export (C, u03630, "cells_interfaceB");
   u03631 : constant Version_32 := 16#5f9a856c#;
   pragma Export (C, u03631, "cells_interfaceS");
   u03632 : constant Version_32 := 16#31dcb806#;
   pragma Export (C, u03632, "integer_cells_containerB");
   u03633 : constant Version_32 := 16#eeeb1165#;
   pragma Export (C, u03633, "integer_cells_containerS");
   u03634 : constant Version_32 := 16#c6705a33#;
   pragma Export (C, u03634, "use_giftwrapB");
   u03635 : constant Version_32 := 16#705da5d6#;
   pragma Export (C, u03635, "use_giftwrapS");
   u03636 : constant Version_32 := 16#c6903c75#;
   pragma Export (C, u03636, "giftwrap_interfaceB");
   u03637 : constant Version_32 := 16#95348d39#;
   pragma Export (C, u03637, "giftwrap_interfaceS");
   u03638 : constant Version_32 := 16#9f593675#;
   pragma Export (C, u03638, "facets_and_stringsB");
   u03639 : constant Version_32 := 16#4eafe748#;
   pragma Export (C, u03639, "facets_and_stringsS");
   u03640 : constant Version_32 := 16#2027c416#;
   pragma Export (C, u03640, "multprec_giftwrap_containerB");
   u03641 : constant Version_32 := 16#770487c5#;
   pragma Export (C, u03641, "multprec_giftwrap_containerS");
   u03642 : constant Version_32 := 16#422ba027#;
   pragma Export (C, u03642, "multprec_lattice_3d_facetsB");
   u03643 : constant Version_32 := 16#5da7aef5#;
   pragma Export (C, u03643, "multprec_lattice_3d_facetsS");
   u03644 : constant Version_32 := 16#45239c0c#;
   pragma Export (C, u03644, "lists_of_integer64_vectorsB");
   u03645 : constant Version_32 := 16#7c3c18c2#;
   pragma Export (C, u03645, "lists_of_integer64_vectorsS");
   u03646 : constant Version_32 := 16#99213213#;
   pragma Export (C, u03646, "multprec_lattice_4d_facetsB");
   u03647 : constant Version_32 := 16#98c7c1b8#;
   pragma Export (C, u03647, "multprec_lattice_4d_facetsS");
   u03648 : constant Version_32 := 16#62fabc7b#;
   pragma Export (C, u03648, "multprec_integer_orthogonalsB");
   u03649 : constant Version_32 := 16#08e720b2#;
   pragma Export (C, u03649, "multprec_integer_orthogonalsS");
   u03650 : constant Version_32 := 16#ec9fbe20#;
   pragma Export (C, u03650, "multprec_lattice_polygonsB");
   u03651 : constant Version_32 := 16#9184dc17#;
   pragma Export (C, u03651, "multprec_lattice_polygonsS");
   u03652 : constant Version_32 := 16#814b48b1#;
   pragma Export (C, u03652, "multprec_integer_vectors_ioB");
   u03653 : constant Version_32 := 16#5ad4db83#;
   pragma Export (C, u03653, "multprec_integer_vectors_ioS");
   u03654 : constant Version_32 := 16#6e1e7510#;
   pragma Export (C, u03654, "multprec_lattice_polytopesB");
   u03655 : constant Version_32 := 16#67990ff5#;
   pragma Export (C, u03655, "multprec_lattice_polytopesS");
   u03656 : constant Version_32 := 16#deb409bf#;
   pragma Export (C, u03656, "multprec_lattice_supportsB");
   u03657 : constant Version_32 := 16#7f8a2b1a#;
   pragma Export (C, u03657, "multprec_lattice_supportsS");
   u03658 : constant Version_32 := 16#cbc35096#;
   pragma Export (C, u03658, "multprec_power_transformationsB");
   u03659 : constant Version_32 := 16#d34e4db2#;
   pragma Export (C, u03659, "multprec_power_transformationsS");
   u03660 : constant Version_32 := 16#0c892996#;
   pragma Export (C, u03660, "point_lists_and_stringsB");
   u03661 : constant Version_32 := 16#9a7355d4#;
   pragma Export (C, u03661, "point_lists_and_stringsS");
   u03662 : constant Version_32 := 16#81c4962c#;
   pragma Export (C, u03662, "standard_integer64_vecvecsB");
   u03663 : constant Version_32 := 16#c7e94cdd#;
   pragma Export (C, u03663, "standard_integer64_vecvecsS");
   u03664 : constant Version_32 := 16#c35c0db0#;
   pragma Export (C, u03664, "standard_lattice_supportsB");
   u03665 : constant Version_32 := 16#43624299#;
   pragma Export (C, u03665, "standard_lattice_supportsS");
   u03666 : constant Version_32 := 16#fd955a4b#;
   pragma Export (C, u03666, "use_mapconB");
   u03667 : constant Version_32 := 16#881ed847#;
   pragma Export (C, u03667, "use_mapconS");
   u03668 : constant Version_32 := 16#0fc1baf7#;
   pragma Export (C, u03668, "monomial_maps_interfaceB");
   u03669 : constant Version_32 := 16#bb6c5684#;
   pragma Export (C, u03669, "monomial_maps_interfaceS");
   u03670 : constant Version_32 := 16#9823a468#;
   pragma Export (C, u03670, "monomial_maps_containerB");
   u03671 : constant Version_32 := 16#de628c07#;
   pragma Export (C, u03671, "monomial_maps_containerS");
   u03672 : constant Version_32 := 16#eefa37e9#;
   pragma Export (C, u03672, "use_multipB");
   u03673 : constant Version_32 := 16#26e134e0#;
   pragma Export (C, u03673, "use_multipS");
   u03674 : constant Version_32 := 16#7438083c#;
   pragma Export (C, u03674, "use_numbtropB");
   u03675 : constant Version_32 := 16#a1550c49#;
   pragma Export (C, u03675, "use_numbtropS");
   u03676 : constant Version_32 := 16#2084c988#;
   pragma Export (C, u03676, "numerical_tropisms_interfaceB");
   u03677 : constant Version_32 := 16#29cf7cb5#;
   pragma Export (C, u03677, "numerical_tropisms_interfaceS");
   u03678 : constant Version_32 := 16#69ee9b9c#;
   pragma Export (C, u03678, "use_nxtsolB");
   u03679 : constant Version_32 := 16#bbba9f40#;
   pragma Export (C, u03679, "use_nxtsolS");
   u03680 : constant Version_32 := 16#88237073#;
   pragma Export (C, u03680, "step_trackers_interfaceB");
   u03681 : constant Version_32 := 16#c36e6c3e#;
   pragma Export (C, u03681, "step_trackers_interfaceS");
   u03682 : constant Version_32 := 16#a57aeb12#;
   pragma Export (C, u03682, "dobldobl_path_trackerB");
   u03683 : constant Version_32 := 16#7e43925b#;
   pragma Export (C, u03683, "dobldobl_path_trackerS");
   u03684 : constant Version_32 := 16#06002dd8#;
   pragma Export (C, u03684, "multprec_path_trackerB");
   u03685 : constant Version_32 := 16#182472fe#;
   pragma Export (C, u03685, "multprec_path_trackerS");
   u03686 : constant Version_32 := 16#bb25f541#;
   pragma Export (C, u03686, "quaddobl_path_trackerB");
   u03687 : constant Version_32 := 16#c39e98b9#;
   pragma Export (C, u03687, "quaddobl_path_trackerS");
   u03688 : constant Version_32 := 16#1d328157#;
   pragma Export (C, u03688, "standard_path_trackerB");
   u03689 : constant Version_32 := 16#9952c2b6#;
   pragma Export (C, u03689, "standard_path_trackerS");
   u03690 : constant Version_32 := 16#0110c0bb#;
   pragma Export (C, u03690, "use_outdataB");
   u03691 : constant Version_32 := 16#32b85d77#;
   pragma Export (C, u03691, "use_outdataS");
   u03692 : constant Version_32 := 16#f52fa361#;
   pragma Export (C, u03692, "demics_output_dataB");
   u03693 : constant Version_32 := 16#be1eb3a6#;
   pragma Export (C, u03693, "demics_output_dataS");
   u03694 : constant Version_32 := 16#9cae5513#;
   pragma Export (C, u03694, "lists_of_stringsB");
   u03695 : constant Version_32 := 16#d96c02cc#;
   pragma Export (C, u03695, "lists_of_stringsS");
   u03696 : constant Version_32 := 16#fcb389aa#;
   pragma Export (C, u03696, "use_padconB");
   u03697 : constant Version_32 := 16#a5574d13#;
   pragma Export (C, u03697, "use_padconS");
   u03698 : constant Version_32 := 16#e067b048#;
   pragma Export (C, u03698, "pade_continuation_interfaceB");
   u03699 : constant Version_32 := 16#3f4ac747#;
   pragma Export (C, u03699, "pade_continuation_interfaceS");
   u03700 : constant Version_32 := 16#530d13cb#;
   pragma Export (C, u03700, "use_reductionB");
   u03701 : constant Version_32 := 16#ccfd3bc4#;
   pragma Export (C, u03701, "use_reductionS");
   u03702 : constant Version_32 := 16#2a5facfd#;
   pragma Export (C, u03702, "reduction_interfaceB");
   u03703 : constant Version_32 := 16#179b74a3#;
   pragma Export (C, u03703, "reduction_interfaceS");
   u03704 : constant Version_32 := 16#e10e6fc5#;
   pragma Export (C, u03704, "use_rocoB");
   u03705 : constant Version_32 := 16#5e1e7c19#;
   pragma Export (C, u03705, "use_rocoS");
   u03706 : constant Version_32 := 16#79a39006#;
   pragma Export (C, u03706, "linear_products_interfaceB");
   u03707 : constant Version_32 := 16#b920d8c5#;
   pragma Export (C, u03707, "linear_products_interfaceS");
   u03708 : constant Version_32 := 16#a11b4e7d#;
   pragma Export (C, u03708, "supporting_set_structureB");
   u03709 : constant Version_32 := 16#38ddd232#;
   pragma Export (C, u03709, "supporting_set_structureS");
   u03710 : constant Version_32 := 16#2860a76f#;
   pragma Export (C, u03710, "use_scalingB");
   u03711 : constant Version_32 := 16#c8a75c46#;
   pragma Export (C, u03711, "use_scalingS");
   u03712 : constant Version_32 := 16#ae8e3a27#;
   pragma Export (C, u03712, "scaling_interfaceB");
   u03713 : constant Version_32 := 16#ff27ad0a#;
   pragma Export (C, u03713, "scaling_interfaceS");
   u03714 : constant Version_32 := 16#15b47a85#;
   pragma Export (C, u03714, "use_seriesB");
   u03715 : constant Version_32 := 16#9e338744#;
   pragma Export (C, u03715, "use_seriesS");
   u03716 : constant Version_32 := 16#b49e73ae#;
   pragma Export (C, u03716, "power_series_interfaceB");
   u03717 : constant Version_32 := 16#bd2b3b5d#;
   pragma Export (C, u03717, "power_series_interfaceS");
   u03718 : constant Version_32 := 16#1ce44caf#;
   pragma Export (C, u03718, "dobldobl_systems_poolB");
   u03719 : constant Version_32 := 16#564b1f81#;
   pragma Export (C, u03719, "dobldobl_systems_poolS");
   u03720 : constant Version_32 := 16#6378ea2d#;
   pragma Export (C, u03720, "quaddobl_systems_poolB");
   u03721 : constant Version_32 := 16#7137a965#;
   pragma Export (C, u03721, "quaddobl_systems_poolS");
   u03722 : constant Version_32 := 16#eaab6fb9#;
   pragma Export (C, u03722, "use_solconB");
   u03723 : constant Version_32 := 16#8f3618de#;
   pragma Export (C, u03723, "use_solconS");
   u03724 : constant Version_32 := 16#4d8a293c#;
   pragma Export (C, u03724, "dobldobl_solutions_interfaceB");
   u03725 : constant Version_32 := 16#f50b021a#;
   pragma Export (C, u03725, "dobldobl_solutions_interfaceS");
   u03726 : constant Version_32 := 16#79bc21c5#;
   pragma Export (C, u03726, "quaddobl_solutions_interfaceB");
   u03727 : constant Version_32 := 16#5289e7f1#;
   pragma Export (C, u03727, "quaddobl_solutions_interfaceS");
   u03728 : constant Version_32 := 16#086f5ed2#;
   pragma Export (C, u03728, "standard_solutions_interfaceB");
   u03729 : constant Version_32 := 16#06ba9d8a#;
   pragma Export (C, u03729, "standard_solutions_interfaceS");
   u03730 : constant Version_32 := 16#a2f6ca35#;
   pragma Export (C, u03730, "use_solpoolB");
   u03731 : constant Version_32 := 16#2fdb7c3d#;
   pragma Export (C, u03731, "use_solpoolS");
   u03732 : constant Version_32 := 16#fe65bdf7#;
   pragma Export (C, u03732, "standard_solspool_interfaceB");
   u03733 : constant Version_32 := 16#1c9cb3e5#;
   pragma Export (C, u03733, "standard_solspool_interfaceS");
   u03734 : constant Version_32 := 16#e8172e80#;
   pragma Export (C, u03734, "use_sweepB");
   u03735 : constant Version_32 := 16#6c6bc92f#;
   pragma Export (C, u03735, "use_sweepS");
   u03736 : constant Version_32 := 16#32b2fdeb#;
   pragma Export (C, u03736, "sweep_interfaceB");
   u03737 : constant Version_32 := 16#cf0af3bc#;
   pragma Export (C, u03737, "sweep_interfaceS");
   u03738 : constant Version_32 := 16#5c4fb491#;
   pragma Export (C, u03738, "parameter_homotopy_stateB");
   u03739 : constant Version_32 := 16#a2cea2b0#;
   pragma Export (C, u03739, "parameter_homotopy_stateS");
   u03740 : constant Version_32 := 16#eb387fab#;
   pragma Export (C, u03740, "use_sysconB");
   u03741 : constant Version_32 := 16#8b4c750c#;
   pragma Export (C, u03741, "use_sysconS");
   u03742 : constant Version_32 := 16#718127da#;
   pragma Export (C, u03742, "dobldobl_laursys_interfaceB");
   u03743 : constant Version_32 := 16#745dd637#;
   pragma Export (C, u03743, "dobldobl_laursys_interfaceS");
   u03744 : constant Version_32 := 16#6a99d0e1#;
   pragma Export (C, u03744, "dobldobl_polysys_interfaceB");
   u03745 : constant Version_32 := 16#77d271b7#;
   pragma Export (C, u03745, "dobldobl_polysys_interfaceS");
   u03746 : constant Version_32 := 16#3f550900#;
   pragma Export (C, u03746, "dobldobl_random_polynomialsB");
   u03747 : constant Version_32 := 16#63632a60#;
   pragma Export (C, u03747, "dobldobl_random_polynomialsS");
   u03748 : constant Version_32 := 16#115e975a#;
   pragma Export (C, u03748, "multprec_laursys_interfaceB");
   u03749 : constant Version_32 := 16#f0e7f589#;
   pragma Export (C, u03749, "multprec_laursys_interfaceS");
   u03750 : constant Version_32 := 16#54c37893#;
   pragma Export (C, u03750, "polynomial_dropsB");
   u03751 : constant Version_32 := 16#60d95ad2#;
   pragma Export (C, u03751, "polynomial_dropsS");
   u03752 : constant Version_32 := 16#baa36d39#;
   pragma Export (C, u03752, "quaddobl_laursys_interfaceB");
   u03753 : constant Version_32 := 16#793be841#;
   pragma Export (C, u03753, "quaddobl_laursys_interfaceS");
   u03754 : constant Version_32 := 16#2a4ab3cc#;
   pragma Export (C, u03754, "quaddobl_polysys_interfaceB");
   u03755 : constant Version_32 := 16#86a25a53#;
   pragma Export (C, u03755, "quaddobl_polysys_interfaceS");
   u03756 : constant Version_32 := 16#60eab116#;
   pragma Export (C, u03756, "quaddobl_random_polynomialsB");
   u03757 : constant Version_32 := 16#690f4cb8#;
   pragma Export (C, u03757, "quaddobl_random_polynomialsS");
   u03758 : constant Version_32 := 16#c1eb7173#;
   pragma Export (C, u03758, "standard_laursys_interfaceB");
   u03759 : constant Version_32 := 16#f5d1f8a2#;
   pragma Export (C, u03759, "standard_laursys_interfaceS");
   u03760 : constant Version_32 := 16#139d019c#;
   pragma Export (C, u03760, "standard_polysys_interfaceB");
   u03761 : constant Version_32 := 16#e5fdbdd3#;
   pragma Export (C, u03761, "standard_polysys_interfaceS");
   u03762 : constant Version_32 := 16#0bd38518#;
   pragma Export (C, u03762, "standard_random_polynomialsB");
   u03763 : constant Version_32 := 16#039b5a0e#;
   pragma Export (C, u03763, "standard_random_polynomialsS");
   u03764 : constant Version_32 := 16#125bbbb4#;
   pragma Export (C, u03764, "use_syspoolB");
   u03765 : constant Version_32 := 16#4702b5a8#;
   pragma Export (C, u03765, "use_syspoolS");
   u03766 : constant Version_32 := 16#5ef69f03#;
   pragma Export (C, u03766, "dobldobl_syspool_interfaceB");
   u03767 : constant Version_32 := 16#3a816492#;
   pragma Export (C, u03767, "dobldobl_syspool_interfaceS");
   u03768 : constant Version_32 := 16#05e22bdd#;
   pragma Export (C, u03768, "quaddobl_syspool_interfaceB");
   u03769 : constant Version_32 := 16#da7f6805#;
   pragma Export (C, u03769, "quaddobl_syspool_interfaceS");
   u03770 : constant Version_32 := 16#5bc7d7f0#;
   pragma Export (C, u03770, "standard_syspool_interfaceB");
   u03771 : constant Version_32 := 16#f18dd31a#;
   pragma Export (C, u03771, "standard_syspool_interfaceS");
   u03772 : constant Version_32 := 16#de91c674#;
   pragma Export (C, u03772, "use_tabformB");
   u03773 : constant Version_32 := 16#d466af32#;
   pragma Export (C, u03773, "use_tabformS");
   u03774 : constant Version_32 := 16#135d5395#;
   pragma Export (C, u03774, "tableau_form_interfaceB");
   u03775 : constant Version_32 := 16#f7e69cef#;
   pragma Export (C, u03775, "tableau_form_interfaceS");
   u03776 : constant Version_32 := 16#393de276#;
   pragma Export (C, u03776, "use_trackB");
   u03777 : constant Version_32 := 16#6a0ff995#;
   pragma Export (C, u03777, "use_trackS");
   u03778 : constant Version_32 := 16#6b57d626#;
   pragma Export (C, u03778, "cascade_homotopy_interfaceB");
   u03779 : constant Version_32 := 16#0cba1f6f#;
   pragma Export (C, u03779, "cascade_homotopy_interfaceS");
   u03780 : constant Version_32 := 16#383ba33b#;
   pragma Export (C, u03780, "diagonal_homotopy_interfaceB");
   u03781 : constant Version_32 := 16#866e9e03#;
   pragma Export (C, u03781, "diagonal_homotopy_interfaceS");
   u03782 : constant Version_32 := 16#dcbbc533#;
   pragma Export (C, u03782, "dobldobl_hypersurface_witdriversB");
   u03783 : constant Version_32 := 16#7e3488cd#;
   pragma Export (C, u03783, "dobldobl_hypersurface_witdriversS");
   u03784 : constant Version_32 := 16#0c366352#;
   pragma Export (C, u03784, "dobldobl_hypersurface_witsets_ioB");
   u03785 : constant Version_32 := 16#952ee89d#;
   pragma Export (C, u03785, "dobldobl_hypersurface_witsets_ioS");
   u03786 : constant Version_32 := 16#98e789f2#;
   pragma Export (C, u03786, "quaddobl_hypersurface_witdriversB");
   u03787 : constant Version_32 := 16#7b47830c#;
   pragma Export (C, u03787, "quaddobl_hypersurface_witdriversS");
   u03788 : constant Version_32 := 16#19d2531d#;
   pragma Export (C, u03788, "quaddobl_hypersurface_witsets_ioB");
   u03789 : constant Version_32 := 16#91acafb5#;
   pragma Export (C, u03789, "quaddobl_hypersurface_witsets_ioS");
   u03790 : constant Version_32 := 16#8891b314#;
   pragma Export (C, u03790, "standard_hypersurface_witdriversB");
   u03791 : constant Version_32 := 16#b39b9d8e#;
   pragma Export (C, u03791, "standard_hypersurface_witdriversS");
   u03792 : constant Version_32 := 16#699c6508#;
   pragma Export (C, u03792, "standard_hypersurface_witsets_ioB");
   u03793 : constant Version_32 := 16#eb83ec6d#;
   pragma Export (C, u03793, "standard_hypersurface_witsets_ioS");
   u03794 : constant Version_32 := 16#636a61df#;
   pragma Export (C, u03794, "use_witsolsB");
   u03795 : constant Version_32 := 16#4f75a81e#;
   pragma Export (C, u03795, "use_witsolsS");
   u03796 : constant Version_32 := 16#64deac4d#;
   pragma Export (C, u03796, "irreducible_components_interfaceB");
   u03797 : constant Version_32 := 16#03b36e57#;
   pragma Export (C, u03797, "irreducible_components_interfaceS");
   u03798 : constant Version_32 := 16#1d70ee78#;
   pragma Export (C, u03798, "dobldobl_witness_solutionsB");
   u03799 : constant Version_32 := 16#e8a79be5#;
   pragma Export (C, u03799, "dobldobl_witness_solutionsS");
   u03800 : constant Version_32 := 16#f42e93d8#;
   pragma Export (C, u03800, "quaddobl_witness_solutionsB");
   u03801 : constant Version_32 := 16#1873dded#;
   pragma Export (C, u03801, "quaddobl_witness_solutionsS");
   u03802 : constant Version_32 := 16#ccab3f9d#;
   pragma Export (C, u03802, "standard_witness_solutionsB");
   u03803 : constant Version_32 := 16#1f532e93#;
   pragma Export (C, u03803, "standard_witness_solutionsS");
   u03804 : constant Version_32 := 16#aae384e0#;
   pragma Export (C, u03804, "store_witness_solutionsB");
   u03805 : constant Version_32 := 16#159f07e7#;
   pragma Export (C, u03805, "store_witness_solutionsS");
   u03806 : constant Version_32 := 16#9252223e#;
   pragma Export (C, u03806, "valid_vector_checksB");
   u03807 : constant Version_32 := 16#7f1945fb#;
   pragma Export (C, u03807, "valid_vector_checksS");
   u03808 : constant Version_32 := 16#44d60a09#;
   pragma Export (C, u03808, "valipocoB");
   u03809 : constant Version_32 := 16#d2c34dbe#;
   pragma Export (C, u03809, "valipocoS");
   u03810 : constant Version_32 := 16#6458c548#;
   pragma Export (C, u03810, "varbprec_path_trackerB");
   u03811 : constant Version_32 := 16#f9e4c975#;
   pragma Export (C, u03811, "varbprec_path_trackerS");
   u03812 : constant Version_32 := 16#1fb3cbab#;
   pragma Export (C, u03812, "solution_string_splittersB");
   u03813 : constant Version_32 := 16#2a9bf39a#;
   pragma Export (C, u03813, "solution_string_splittersS");
   u03814 : constant Version_32 := 16#1b8202b6#;
   pragma Export (C, u03814, "varbprec_corrector_stepsB");
   u03815 : constant Version_32 := 16#6ddc844e#;
   pragma Export (C, u03815, "varbprec_corrector_stepsS");
   u03816 : constant Version_32 := 16#eafacb77#;
   pragma Export (C, u03816, "dobldobl_complex_vector_stringsB");
   u03817 : constant Version_32 := 16#859d871b#;
   pragma Export (C, u03817, "dobldobl_complex_vector_stringsS");
   u03818 : constant Version_32 := 16#234aeee8#;
   pragma Export (C, u03818, "multprec_complex_vector_stringsB");
   u03819 : constant Version_32 := 16#867e27da#;
   pragma Export (C, u03819, "multprec_complex_vector_stringsS");
   u03820 : constant Version_32 := 16#1c2b52ea#;
   pragma Export (C, u03820, "quaddobl_complex_vector_stringsB");
   u03821 : constant Version_32 := 16#1fa7928e#;
   pragma Export (C, u03821, "quaddobl_complex_vector_stringsS");
   u03822 : constant Version_32 := 16#b4a63081#;
   pragma Export (C, u03822, "varbprec_complex_linear_solversB");
   u03823 : constant Version_32 := 16#ca1a9f0f#;
   pragma Export (C, u03823, "varbprec_complex_linear_solversS");
   u03824 : constant Version_32 := 16#a36413d1#;
   pragma Export (C, u03824, "varbprec_complex_newton_stepsB");
   u03825 : constant Version_32 := 16#bd6ff6c6#;
   pragma Export (C, u03825, "varbprec_complex_newton_stepsS");
   u03826 : constant Version_32 := 16#d55f0884#;
   pragma Export (C, u03826, "varbprec_homotopyB");
   u03827 : constant Version_32 := 16#d9ec2d24#;
   pragma Export (C, u03827, "varbprec_homotopyS");
   u03828 : constant Version_32 := 16#42eef139#;
   pragma Export (C, u03828, "varbprec_matrix_conversionsB");
   u03829 : constant Version_32 := 16#506c1bc8#;
   pragma Export (C, u03829, "varbprec_matrix_conversionsS");
   u03830 : constant Version_32 := 16#0af39bfd#;
   pragma Export (C, u03830, "varbprec_polynomial_evaluationsB");
   u03831 : constant Version_32 := 16#0e2eadc0#;
   pragma Export (C, u03831, "varbprec_polynomial_evaluationsS");
   u03832 : constant Version_32 := 16#80787282#;
   pragma Export (C, u03832, "varbprec_vecvec_conversionsB");
   u03833 : constant Version_32 := 16#ec03c3ab#;
   pragma Export (C, u03833, "varbprec_vecvec_conversionsS");
   u03834 : constant Version_32 := 16#b3be5f2a#;
   pragma Export (C, u03834, "triple_double_vecvecsB");
   u03835 : constant Version_32 := 16#5ef3d4ae#;
   pragma Export (C, u03835, "triple_double_vecvecsS");
   u03836 : constant Version_32 := 16#71bfff3b#;
   pragma Export (C, u03836, "verification_of_solutionsB");
   u03837 : constant Version_32 := 16#a18c2e02#;
   pragma Export (C, u03837, "verification_of_solutionsS");
   u03838 : constant Version_32 := 16#1d77d31d#;
   pragma Export (C, u03838, "verification_with_determinantsB");
   u03839 : constant Version_32 := 16#5b8c4a44#;
   pragma Export (C, u03839, "verification_with_determinantsS");
   u03840 : constant Version_32 := 16#d64a7a58#;
   pragma Export (C, u03840, "verify_solution_mapsB");
   u03841 : constant Version_32 := 16#92b8729d#;
   pragma Export (C, u03841, "verify_solution_mapsS");
   u03842 : constant Version_32 := 16#81f675c8#;
   pragma Export (C, u03842, "volumesB");
   u03843 : constant Version_32 := 16#8c56cd98#;
   pragma Export (C, u03843, "volumesS");
   u03844 : constant Version_32 := 16#2135b2e8#;
   pragma Export (C, u03844, "witness_interfaceB");
   u03845 : constant Version_32 := 16#6fabd579#;
   pragma Export (C, u03845, "witness_interfaceS");
   u03846 : constant Version_32 := 16#68689822#;
   pragma Export (C, u03846, "witness_setsB");
   u03847 : constant Version_32 := 16#3bf3e64b#;
   pragma Export (C, u03847, "witness_setsS");
   u03848 : constant Version_32 := 16#4b06d35a#;
   pragma Export (C, u03848, "dobldobl_embed_laurentialsB");
   u03849 : constant Version_32 := 16#85cccfed#;
   pragma Export (C, u03849, "dobldobl_embed_laurentialsS");
   u03850 : constant Version_32 := 16#c263d2b8#;
   pragma Export (C, u03850, "quaddobl_embed_laurentialsB");
   u03851 : constant Version_32 := 16#65bc3591#;
   pragma Export (C, u03851, "quaddobl_embed_laurentialsS");
   u03852 : constant Version_32 := 16#0eee97cc#;
   pragma Export (C, u03852, "standard_embed_laurentialsB");
   u03853 : constant Version_32 := 16#19a41823#;
   pragma Export (C, u03853, "standard_embed_laurentialsS");
   u03854 : constant Version_32 := 16#1a760e77#;
   pragma Export (C, u03854, "witness_sets_formatsB");
   u03855 : constant Version_32 := 16#0f4093b5#;
   pragma Export (C, u03855, "witness_sets_formatsS");
   u03856 : constant Version_32 := 16#2ecfbb44#;
   pragma Export (C, u03856, "witness_sets_ioB");
   u03857 : constant Version_32 := 16#cadf80e9#;
   pragma Export (C, u03857, "witness_sets_ioS");
   u03858 : constant Version_32 := 16#a636086f#;
   pragma Export (C, u03858, "wrapped_pade_trackersB");
   u03859 : constant Version_32 := 16#33c20f14#;
   pragma Export (C, u03859, "wrapped_pade_trackersS");
   u03860 : constant Version_32 := 16#a9557efa#;
   pragma Export (C, u03860, "wrapped_path_trackersB");
   u03861 : constant Version_32 := 16#b7215a60#;
   pragma Export (C, u03861, "wrapped_path_trackersS");
   u03862 : constant Version_32 := 16#ce9d0a9e#;
   pragma Export (C, u03862, "wrapped_solution_vectorsB");
   u03863 : constant Version_32 := 16#27d8ceac#;
   pragma Export (C, u03863, "wrapped_solution_vectorsS");
   u03864 : constant Version_32 := 16#bf2b2d43#;
   pragma Export (C, u03864, "write_factorsB");
   u03865 : constant Version_32 := 16#4b929b9f#;
   pragma Export (C, u03865, "write_factorsS");
   u03866 : constant Version_32 := 16#04d31830#;
   pragma Export (C, u03866, "write_number_of_tasksB");
   u03867 : constant Version_32 := 16#0f753aac#;
   pragma Export (C, u03867, "write_number_of_tasksS");
   u03868 : constant Version_32 := 16#063e3111#;
   pragma Export (C, u03868, "write_seed_numberB");
   u03869 : constant Version_32 := 16#75aef93f#;
   pragma Export (C, u03869, "write_seed_numberS");
   u03870 : constant Version_32 := 16#3106b8f8#;
   pragma Export (C, u03870, "write_witness_solutionsB");
   u03871 : constant Version_32 := 16#16af08bc#;
   pragma Export (C, u03871, "write_witness_solutionsS");
   u03872 : constant Version_32 := 16#59f2ffe0#;
   pragma Export (C, u03872, "zero_index_treeB");
   u03873 : constant Version_32 := 16#5fffe9a6#;
   pragma Export (C, u03873, "zero_index_treeS");

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

end adamain;
