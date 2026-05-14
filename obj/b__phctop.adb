pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__phctop.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__phctop.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is

   E073 : Short_Integer; pragma Import (Ada, E073, "system__os_lib_E");
   E019 : Short_Integer; pragma Import (Ada, E019, "ada__exceptions_E");
   E015 : Short_Integer; pragma Import (Ada, E015, "system__soft_links_E");
   E013 : Short_Integer; pragma Import (Ada, E013, "system__exception_table_E");
   E038 : Short_Integer; pragma Import (Ada, E038, "ada__containers_E");
   E069 : Short_Integer; pragma Import (Ada, E069, "ada__io_exceptions_E");
   E028 : Short_Integer; pragma Import (Ada, E028, "ada__numerics_E");
   E010 : Short_Integer; pragma Import (Ada, E010, "ada__strings_E");
   E056 : Short_Integer; pragma Import (Ada, E056, "ada__strings__maps_E");
   E059 : Short_Integer; pragma Import (Ada, E059, "ada__strings__maps__constants_E");
   E043 : Short_Integer; pragma Import (Ada, E043, "interfaces__c_E");
   E022 : Short_Integer; pragma Import (Ada, E022, "system__exceptions_E");
   E084 : Short_Integer; pragma Import (Ada, E084, "system__object_reader_E");
   E050 : Short_Integer; pragma Import (Ada, E050, "system__dwarf_lines_E");
   E104 : Short_Integer; pragma Import (Ada, E104, "system__soft_links__initialize_E");
   E037 : Short_Integer; pragma Import (Ada, E037, "system__traceback__symbolic_E");
   E108 : Short_Integer; pragma Import (Ada, E108, "ada__strings__utf_encoding_E");
   E116 : Short_Integer; pragma Import (Ada, E116, "ada__tags_E");
   E008 : Short_Integer; pragma Import (Ada, E008, "ada__strings__text_buffers_E");
   E1357 : Short_Integer; pragma Import (Ada, E1357, "interfaces__c__strings_E");
   E133 : Short_Integer; pragma Import (Ada, E133, "ada__streams_E");
   E148 : Short_Integer; pragma Import (Ada, E148, "system__file_control_block_E");
   E144 : Short_Integer; pragma Import (Ada, E144, "system__finalization_root_E");
   E142 : Short_Integer; pragma Import (Ada, E142, "ada__finalization_E");
   E141 : Short_Integer; pragma Import (Ada, E141, "system__file_io_E");
   E219 : Short_Integer; pragma Import (Ada, E219, "system__storage_pools_E");
   E1363 : Short_Integer; pragma Import (Ada, E1363, "system__task_info_E");
   E178 : Short_Integer; pragma Import (Ada, E178, "ada__calendar_E");
   E3276 : Short_Integer; pragma Import (Ada, E3276, "ada__calendar__delays_E");
   E1351 : Short_Integer; pragma Import (Ada, E1351, "ada__real_time_E");
   E131 : Short_Integer; pragma Import (Ada, E131, "ada__text_io_E");
   E215 : Short_Integer; pragma Import (Ada, E215, "system__pool_global_E");
   E1387 : Short_Integer; pragma Import (Ada, E1387, "system__tasking__initialization_E");
   E1377 : Short_Integer; pragma Import (Ada, E1377, "system__tasking__protected_objects_E");
   E1383 : Short_Integer; pragma Import (Ada, E1383, "system__tasking__protected_objects__entries_E");
   E1395 : Short_Integer; pragma Import (Ada, E1395, "system__tasking__queuing_E");
   E1405 : Short_Integer; pragma Import (Ada, E1405, "system__tasking__stages_E");
   E1311 : Short_Integer; pragma Import (Ada, E1311, "boolean_numbers_E");
   E3346 : Short_Integer; pragma Import (Ada, E3346, "bye_bye_message_E");
   E3774 : Short_Integer; pragma Import (Ada, E3774, "c_double_arrays_E");
   E3770 : Short_Integer; pragma Import (Ada, E3770, "c_integer_arrays_E");
   E156 : Short_Integer; pragma Import (Ada, E156, "file_scanning_E");
   E237 : Short_Integer; pragma Import (Ada, E237, "greatest_common_divisors_E");
   E2037 : Short_Integer; pragma Import (Ada, E2037, "greeting_banners_E");
   E391 : Short_Integer; pragma Import (Ada, E391, "parse_polynomial_exceptions_E");
   E1375 : Short_Integer; pragma Import (Ada, E1375, "semaphore_E");
   E126 : Short_Integer; pragma Import (Ada, E126, "standard_integer_numbers_E");
   E198 : Short_Integer; pragma Import (Ada, E198, "generic_vectors_E");
   E2386 : Short_Integer; pragma Import (Ada, E2386, "generic_dense_series_E");
   E235 : Short_Integer; pragma Import (Ada, E235, "generic_matrices_E");
   E1155 : Short_Integer; pragma Import (Ada, E1155, "generic_norms_equals_E");
   E1233 : Short_Integer; pragma Import (Ada, E1233, "generic_vecmats_E");
   E200 : Short_Integer; pragma Import (Ada, E200, "generic_vecvecs_E");
   E150 : Short_Integer; pragma Import (Ada, E150, "number_of_cores_E");
   E315 : Short_Integer; pragma Import (Ada, E315, "cell_stack_E");
   E1726 : Short_Integer; pragma Import (Ada, E1726, "permutations_E");
   E1179 : Short_Integer; pragma Import (Ada, E1179, "standard_integer_linear_equalities_E");
   E244 : Short_Integer; pragma Import (Ada, E244, "standard_integer_norms_E");
   E2025 : Short_Integer; pragma Import (Ada, E2025, "affine_binomial_iterator_E");
   E3117 : Short_Integer; pragma Import (Ada, E3117, "exponent_indices_E");
   E3119 : Short_Integer; pragma Import (Ada, E3119, "generic_speelpenning_convolutions_E");
   E3968 : Short_Integer; pragma Import (Ada, E3968, "standard_lattice_supports_E");
   E128 : Short_Integer; pragma Import (Ada, E128, "standard_natural_numbers_E");
   E1532 : Short_Integer; pragma Import (Ada, E1532, "generate_unions_E");
   E424 : Short_Integer; pragma Import (Ada, E424, "generic_complex_numbers_E");
   E233 : Short_Integer; pragma Import (Ada, E233, "generic_integer_linear_solvers_E");
   E211 : Short_Integer; pragma Import (Ada, E211, "generic_lists_E");
   E209 : Short_Integer; pragma Import (Ada, E209, "generic_lists_of_vectors_E");
   E207 : Short_Integer; pragma Import (Ada, E207, "generic_arrays_of_vector_lists_E");
   E589 : Short_Integer; pragma Import (Ada, E589, "generic_matrices_io_E");
   E1850 : Short_Integer; pragma Import (Ada, E1850, "generic_nesvecs_E");
   E533 : Short_Integer; pragma Import (Ada, E533, "generic_vectors_io_E");
   E769 : Short_Integer; pragma Import (Ada, E769, "generic_lists_of_vectors_io_E");
   E1858 : Short_Integer; pragma Import (Ada, E1858, "generic_vecvecs_io_E");
   E3972 : Short_Integer; pragma Import (Ada, E3972, "lists_of_integer64_vectors_E");
   E213 : Short_Integer; pragma Import (Ada, E213, "lists_of_integer_vectors_E");
   E3417 : Short_Integer; pragma Import (Ada, E3417, "frequency_graph_E");
   E1617 : Short_Integer; pragma Import (Ada, E1617, "lexicographical_supports_E");
   E1476 : Short_Integer; pragma Import (Ada, E1476, "mixed_labels_queue_E");
   E1401 : Short_Integer; pragma Import (Ada, E1401, "multitasking_E");
   E1510 : Short_Integer; pragma Import (Ada, E1510, "sets_of_unknowns_E");
   E1508 : Short_Integer; pragma Import (Ada, E1508, "partitions_of_sets_of_unknowns_E");
   E124 : Short_Integer; pragma Import (Ada, E124, "standard_floating_numbers_E");
   E122 : Short_Integer; pragma Import (Ada, E122, "characters_and_numbers_E");
   E319 : Short_Integer; pragma Import (Ada, E319, "continuation_parameters_E");
   E331 : Short_Integer; pragma Import (Ada, E331, "double_double_basics_E");
   E502 : Short_Integer; pragma Import (Ada, E502, "fast_double_renormalizations_E");
   E409 : Short_Integer; pragma Import (Ada, E409, "multprec_natural_coefficients_E");
   E412 : Short_Integer; pragma Import (Ada, E412, "multprec_natural_numbers_E");
   E407 : Short_Integer; pragma Import (Ada, E407, "multprec_integer_numbers_E");
   E658 : Short_Integer; pragma Import (Ada, E658, "multprec_common_divisors_E");
   E639 : Short_Integer; pragma Import (Ada, E639, "multprec_integer_ring_E");
   E656 : Short_Integer; pragma Import (Ada, E656, "multprec_integer_linear_solvers_E");
   E3956 : Short_Integer; pragma Import (Ada, E3956, "multprec_lattice_supports_E");
   E3966 : Short_Integer; pragma Import (Ada, E3966, "multprec_integer_orthogonals_E");
   E3970 : Short_Integer; pragma Import (Ada, E3970, "multprec_power_transformations_E");
   E498 : Short_Integer; pragma Import (Ada, E498, "quad_double_renormalizations_E");
   E256 : Short_Integer; pragma Import (Ada, E256, "standard_complex_numbers_E");
   E259 : Short_Integer; pragma Import (Ada, E259, "standard_complex_ring_E");
   E3666 : Short_Integer; pragma Import (Ada, E3666, "polyhedral_coefficient_predictors_E");
   E3610 : Short_Integer; pragma Import (Ada, E3610, "complex_osculating_planes_E");
   E3626 : Short_Integer; pragma Import (Ada, E3626, "matrix_homotopies_E");
   E2417 : Short_Integer; pragma Import (Ada, E2417, "standard_complex_series_ring_E");
   E3876 : Short_Integer; pragma Import (Ada, E3876, "dcmplx_vecvecs_container_E");
   E2165 : Short_Integer; pragma Import (Ada, E2165, "standard_central_projections_E");
   E1984 : Short_Integer; pragma Import (Ada, E1984, "standard_complex_veclists_E");
   E2874 : Short_Integer; pragma Import (Ada, E2874, "standard_complex_vector_series_E");
   E2872 : Short_Integer; pragma Import (Ada, E2872, "standard_complex_matrix_series_E");
   E3093 : Short_Integer; pragma Import (Ada, E3093, "standard_complex_vecvecvecs_E");
   E1098 : Short_Integer; pragma Import (Ada, E1098, "standard_extrapolators_E");
   E362 : Short_Integer; pragma Import (Ada, E362, "standard_floating_numbers_io_E");
   E360 : Short_Integer; pragma Import (Ada, E360, "standard_complex_numbers_io_E");
   E1434 : Short_Integer; pragma Import (Ada, E1434, "pruning_statistics_E");
   E3776 : Short_Integer; pragma Import (Ada, E3776, "complex_polynomial_matrices_E");
   E288 : Short_Integer; pragma Import (Ada, E288, "dictionaries_E");
   E1177 : Short_Integer; pragma Import (Ada, E1177, "floating_linear_inequality_solvers_E");
   E297 : Short_Integer; pragma Import (Ada, E297, "linear_programming_E");
   E1462 : Short_Integer; pragma Import (Ada, E1462, "simplex_pivoting_E");
   E3892 : Short_Integer; pragma Import (Ada, E3892, "double_vecvecs_container_E");
   E676 : Short_Integer; pragma Import (Ada, E676, "lists_of_floating_vectors_E");
   E682 : Short_Integer; pragma Import (Ada, E682, "floating_support_functions_E");
   E3151 : Short_Integer; pragma Import (Ada, E3151, "standard_floating_vecvecvecs_E");
   E3169 : Short_Integer; pragma Import (Ada, E3169, "standard_hessian_updaters_E");
   E3145 : Short_Integer; pragma Import (Ada, E3145, "standard_inlined_linear_solvers_E");
   E737 : Short_Integer; pragma Import (Ada, E737, "face_enumerators_utilities_E");
   E299 : Short_Integer; pragma Import (Ada, E299, "lists_of_vectors32_utilities_E");
   E254 : Short_Integer; pragma Import (Ada, E254, "standard_integer32_transformations_E");
   E295 : Short_Integer; pragma Import (Ada, E295, "integer32_vectors_utilities_E");
   E252 : Short_Integer; pragma Import (Ada, E252, "standard_integer32_simplices_E");
   E2013 : Short_Integer; pragma Import (Ada, E2013, "standard_integer_kernel_E");
   E2019 : Short_Integer; pragma Import (Ada, E2019, "standard_integer64_kernel_E");
   E2015 : Short_Integer; pragma Import (Ada, E2015, "standard_integer_matrix_inverse_E");
   E382 : Short_Integer; pragma Import (Ada, E382, "standard_integer_numbers_io_E");
   E3778 : Short_Integer; pragma Import (Ada, E3778, "complex_polynomial_matrices_io_E");
   E3385 : Short_Integer; pragma Import (Ada, E3385, "demics_ftest_E");
   E3091 : Short_Integer; pragma Import (Ada, E3091, "double_laurent_series_E");
   E3089 : Short_Integer; pragma Import (Ada, E3089, "double_linear_laurent_solvers_E");
   E2179 : Short_Integer; pragma Import (Ada, E2179, "filtered_points_E");
   E1458 : Short_Integer; pragma Import (Ada, E1458, "index_tree_lp_E");
   E2369 : Short_Integer; pragma Import (Ada, E2369, "main_output_feedback_E");
   E1520 : Short_Integer; pragma Import (Ada, E1520, "standard_complex_row_reduction_E");
   E2494 : Short_Integer; pragma Import (Ada, E2494, "standard_complex_series_io_E");
   E1468 : Short_Integer; pragma Import (Ada, E1468, "one_level_lp_E");
   E2853 : Short_Integer; pragma Import (Ada, E2853, "standard_echelon_forms_E");
   E269 : Short_Integer; pragma Import (Ada, E269, "standard_mathematical_functions_E");
   E3614 : Short_Integer; pragma Import (Ada, E3614, "chebychev_polynomials_E");
   E329 : Short_Integer; pragma Import (Ada, E329, "double_double_numbers_E");
   E327 : Short_Integer; pragma Import (Ada, E327, "dobldobl_complex_numbers_E");
   E325 : Short_Integer; pragma Import (Ada, E325, "dobldobl_complex_ring_E");
   E537 : Short_Integer; pragma Import (Ada, E537, "dobldobl_complex_equality_tests_E");
   E2382 : Short_Integer; pragma Import (Ada, E2382, "dobldobl_complex_series_ring_E");
   E1980 : Short_Integer; pragma Import (Ada, E1980, "dobldobl_complex_veclists_E");
   E2890 : Short_Integer; pragma Import (Ada, E2890, "dobldobl_complex_vector_series_E");
   E2888 : Short_Integer; pragma Import (Ada, E2888, "dobldobl_complex_matrix_series_E");
   E2900 : Short_Integer; pragma Import (Ada, E2900, "dobldobl_echelon_forms_E");
   E611 : Short_Integer; pragma Import (Ada, E611, "dobldobl_extrapolators_E");
   E1796 : Short_Integer; pragma Import (Ada, E1796, "dobldobl_point_coordinates_E");
   E1862 : Short_Integer; pragma Import (Ada, E1862, "dobldobl_power_traces_E");
   E1864 : Short_Integer; pragma Import (Ada, E1864, "dobldobl_univariate_interpolators_E");
   E3143 : Short_Integer; pragma Import (Ada, E3143, "dobldobl_vector_splitters_E");
   E507 : Short_Integer; pragma Import (Ada, E507, "double_double_constants_E");
   E506 : Short_Integer; pragma Import (Ada, E506, "dobldobl_mathematical_functions_E");
   E629 : Short_Integer; pragma Import (Ada, E629, "dobldobl_complex_numbers_polar_E");
   E615 : Short_Integer; pragma Import (Ada, E615, "dobldobl_complex_qr_least_squares_E");
   E617 : Short_Integer; pragma Import (Ada, E617, "dobldobl_complex_singular_values_E");
   E504 : Short_Integer; pragma Import (Ada, E504, "dobldobl_complex_vector_norms_E");
   E1860 : Short_Integer; pragma Import (Ada, E1860, "dobldobl_durand_kerner_E");
   E356 : Short_Integer; pragma Import (Ada, E356, "double_double_numbers_io_E");
   E354 : Short_Integer; pragma Import (Ada, E354, "dobldobl_complex_numbers_io_E");
   E3646 : Short_Integer; pragma Import (Ada, E3646, "dobldobl_complex_row_reduction_E");
   E2432 : Short_Integer; pragma Import (Ada, E2432, "dobldobl_complex_series_io_E");
   E2894 : Short_Integer; pragma Import (Ada, E2894, "dobldobl_complex_algebraic_series_E");
   E2896 : Short_Integer; pragma Import (Ada, E2896, "dobldobl_complex_series_norms_E");
   E2892 : Short_Integer; pragma Import (Ada, E2892, "dobldobl_cseries_vector_norms_E");
   E1564 : Short_Integer; pragma Import (Ada, E1564, "dobldobl_numerical_rank_E");
   E1562 : Short_Integer; pragma Import (Ada, E1562, "dobldobl_complex_newton_steps_E");
   E3473 : Short_Integer; pragma Import (Ada, E3473, "dobldobl_rescaling_coordinates_E");
   E472 : Short_Integer; pragma Import (Ada, E472, "double_double_ring_E");
   E521 : Short_Integer; pragma Import (Ada, E521, "dobldobl_vlprs_tables_E");
   E519 : Short_Integer; pragma Import (Ada, E519, "dobldobl_vlprs_algorithm_E");
   E2291 : Short_Integer; pragma Import (Ada, E2291, "double_double_eigenvalues_E");
   E1577 : Short_Integer; pragma Import (Ada, E1577, "double_double_qr_least_squares_E");
   E527 : Short_Integer; pragma Import (Ada, E527, "double_double_vector_norms_E");
   E517 : Short_Integer; pragma Import (Ada, E517, "directions_of_dobldobl_paths_E");
   E2293 : Short_Integer; pragma Import (Ada, E2293, "double_double_two_norms_E");
   E743 : Short_Integer; pragma Import (Ada, E743, "givens_rotations_E");
   E427 : Short_Integer; pragma Import (Ada, E427, "multprec_floating_numbers_E");
   E425 : Short_Integer; pragma Import (Ada, E425, "multprec_floating_ring_E");
   E441 : Short_Integer; pragma Import (Ada, E441, "multprec_complex_number_tools_E");
   E433 : Short_Integer; pragma Import (Ada, E433, "multprec_complex_ring_E");
   E2145 : Short_Integer; pragma Import (Ada, E2145, "multprec_central_projections_E");
   E443 : Short_Integer; pragma Import (Ada, E443, "multprec_complex_vector_tools_E");
   E1131 : Short_Integer; pragma Import (Ada, E1131, "multprec_extrapolators_E");
   E439 : Short_Integer; pragma Import (Ada, E439, "multprec_mathematical_functions_E");
   E437 : Short_Integer; pragma Import (Ada, E437, "multprec_complex_norms_equals_E");
   E2153 : Short_Integer; pragma Import (Ada, E2153, "multprec_complex_qr_least_squares_E");
   E1887 : Short_Integer; pragma Import (Ada, E1887, "multprec_complex_singular_values_E");
   E1988 : Short_Integer; pragma Import (Ada, E1988, "multprec_durand_kerner_E");
   E3694 : Short_Integer; pragma Import (Ada, E3694, "multprec_floating_qr_least_squares_E");
   E2255 : Short_Integer; pragma Import (Ada, E2255, "multprec_power_traces_E");
   E2257 : Short_Integer; pragma Import (Ada, E2257, "multprec_univariate_interpolators_E");
   E826 : Short_Integer; pragma Import (Ada, E826, "octo_double_numbers_E");
   E855 : Short_Integer; pragma Import (Ada, E855, "octo_double_constants_E");
   E951 : Short_Integer; pragma Import (Ada, E951, "octo_double_numbers_io_E");
   E851 : Short_Integer; pragma Import (Ada, E851, "octo_double_ring_E");
   E2596 : Short_Integer; pragma Import (Ada, E2596, "octodobl_complex_numbers_io_E");
   E888 : Short_Integer; pragma Import (Ada, E888, "octodobl_complex_ring_E");
   E2475 : Short_Integer; pragma Import (Ada, E2475, "octodobl_complex_series_ring_E");
   E2748 : Short_Integer; pragma Import (Ada, E2748, "octodobl_complex_series_io_E");
   E2910 : Short_Integer; pragma Import (Ada, E2910, "octodobl_complex_vector_series_E");
   E2906 : Short_Integer; pragma Import (Ada, E2906, "octodobl_complex_matrix_series_E");
   E2926 : Short_Integer; pragma Import (Ada, E2926, "octodobl_echelon_forms_E");
   E857 : Short_Integer; pragma Import (Ada, E857, "octodobl_mathematical_functions_E");
   E2746 : Short_Integer; pragma Import (Ada, E2746, "octodobl_complex_numbers_polar_E");
   E2914 : Short_Integer; pragma Import (Ada, E2914, "octodobl_complex_algebraic_series_E");
   E2922 : Short_Integer; pragma Import (Ada, E2922, "octodobl_complex_qr_least_squares_E");
   E2916 : Short_Integer; pragma Import (Ada, E2916, "octodobl_complex_series_norms_E");
   E2924 : Short_Integer; pragma Import (Ada, E2924, "octodobl_complex_singular_values_E");
   E2937 : Short_Integer; pragma Import (Ada, E2937, "octodobl_complex_vector_norms_E");
   E2912 : Short_Integer; pragma Import (Ada, E2912, "octodobl_cseries_vector_norms_E");
   E828 : Short_Integer; pragma Import (Ada, E828, "penta_double_numbers_E");
   E864 : Short_Integer; pragma Import (Ada, E864, "penta_double_constants_E");
   E961 : Short_Integer; pragma Import (Ada, E961, "penta_double_numbers_io_E");
   E860 : Short_Integer; pragma Import (Ada, E860, "penta_double_ring_E");
   E2620 : Short_Integer; pragma Import (Ada, E2620, "pentdobl_complex_numbers_io_E");
   E893 : Short_Integer; pragma Import (Ada, E893, "pentdobl_complex_ring_E");
   E2480 : Short_Integer; pragma Import (Ada, E2480, "pentdobl_complex_series_ring_E");
   E2757 : Short_Integer; pragma Import (Ada, E2757, "pentdobl_complex_series_io_E");
   E2949 : Short_Integer; pragma Import (Ada, E2949, "pentdobl_complex_vector_series_E");
   E2945 : Short_Integer; pragma Import (Ada, E2945, "pentdobl_complex_matrix_series_E");
   E2965 : Short_Integer; pragma Import (Ada, E2965, "pentdobl_echelon_forms_E");
   E866 : Short_Integer; pragma Import (Ada, E866, "pentdobl_mathematical_functions_E");
   E2755 : Short_Integer; pragma Import (Ada, E2755, "pentdobl_complex_numbers_polar_E");
   E2953 : Short_Integer; pragma Import (Ada, E2953, "pentdobl_complex_algebraic_series_E");
   E2961 : Short_Integer; pragma Import (Ada, E2961, "pentdobl_complex_qr_least_squares_E");
   E2955 : Short_Integer; pragma Import (Ada, E2955, "pentdobl_complex_series_norms_E");
   E2963 : Short_Integer; pragma Import (Ada, E2963, "pentdobl_complex_singular_values_E");
   E2976 : Short_Integer; pragma Import (Ada, E2976, "pentdobl_complex_vector_norms_E");
   E2951 : Short_Integer; pragma Import (Ada, E2951, "pentdobl_cseries_vector_norms_E");
   E1106 : Short_Integer; pragma Import (Ada, E1106, "standard_complex_blas_helpers_E");
   E395 : Short_Integer; pragma Import (Ada, E395, "standard_complex_norms_equals_E");
   E636 : Short_Integer; pragma Import (Ada, E636, "standard_complex_numbers_polar_E");
   E1908 : Short_Integer; pragma Import (Ada, E1908, "multprec_complex_numbers_polar_E");
   E2878 : Short_Integer; pragma Import (Ada, E2878, "standard_complex_algebraic_series_E");
   E1102 : Short_Integer; pragma Import (Ada, E1102, "standard_complex_qr_least_squares_E");
   E2880 : Short_Integer; pragma Import (Ada, E2880, "standard_complex_series_norms_E");
   E1104 : Short_Integer; pragma Import (Ada, E1104, "standard_complex_singular_values_E");
   E3167 : Short_Integer; pragma Import (Ada, E3167, "standard_coefficient_circuits_E");
   E3187 : Short_Integer; pragma Import (Ada, E3187, "standard_complex_circuits_E");
   E393 : Short_Integer; pragma Import (Ada, E393, "standard_complex_solutions_E");
   E435 : Short_Integer; pragma Import (Ada, E435, "multprec_complex_solutions_E");
   E2147 : Short_Integer; pragma Import (Ada, E2147, "multprec_linear_projections_E");
   E1896 : Short_Integer; pragma Import (Ada, E1896, "multprec_solution_diagnostics_E");
   E3824 : Short_Integer; pragma Import (Ada, E3824, "multprec_solutions_container_E");
   E3856 : Short_Integer; pragma Import (Ada, E3856, "solutions_pool_E");
   E1333 : Short_Integer; pragma Import (Ada, E1333, "standard_complex_vector_norms_E");
   E605 : Short_Integer; pragma Import (Ada, E605, "standard_continuation_data_E");
   E1112 : Short_Integer; pragma Import (Ada, E1112, "multprec_continuation_data_E");
   E2876 : Short_Integer; pragma Import (Ada, E2876, "standard_cseries_vector_norms_E");
   E1734 : Short_Integer; pragma Import (Ada, E1734, "standard_diagonal_solutions_E");
   E1216 : Short_Integer; pragma Import (Ada, E1216, "standard_durand_kerner_E");
   E2247 : Short_Integer; pragma Import (Ada, E2247, "hybrid_durand_kerner_E");
   E2345 : Short_Integer; pragma Import (Ada, E2345, "standard_floating_eigenvalues_E");
   E1306 : Short_Integer; pragma Import (Ada, E1306, "standard_floating_qr_least_squares_E");
   E2347 : Short_Integer; pragma Import (Ada, E2347, "standard_floating_two_norms_E");
   E592 : Short_Integer; pragma Import (Ada, E592, "standard_floating_vector_norms_E");
   E3163 : Short_Integer; pragma Import (Ada, E3163, "standard_inlined_blas_helpers_E");
   E2167 : Short_Integer; pragma Import (Ada, E2167, "standard_linear_projections_E");
   E3149 : Short_Integer; pragma Import (Ada, E3149, "standard_matrix_splitters_E");
   E384 : Short_Integer; pragma Import (Ada, E384, "standard_natural_numbers_io_E");
   E1854 : Short_Integer; pragma Import (Ada, E1854, "generic_nesvecs_io_E");
   E3618 : Short_Integer; pragma Import (Ada, E3618, "generic_vecmats_io_E");
   E3628 : Short_Integer; pragma Import (Ada, E3628, "matrix_homotopies_io_E");
   E1712 : Short_Integer; pragma Import (Ada, E1712, "multprec_natural64_coefficients_E");
   E1718 : Short_Integer; pragma Import (Ada, E1718, "multprec_natural64_numbers_E");
   E1716 : Short_Integer; pragma Import (Ada, E1716, "multprec_integer64_numbers_E");
   E1714 : Short_Integer; pragma Import (Ada, E1714, "multprec_floating64_numbers_E");
   E3697 : Short_Integer; pragma Import (Ada, E3697, "multprec_integer64_ring_E");
   E416 : Short_Integer; pragma Import (Ada, E416, "multprec_natural_numbers_io_E");
   E414 : Short_Integer; pragma Import (Ada, E414, "multprec_integer_numbers_io_E");
   E3960 : Short_Integer; pragma Import (Ada, E3960, "multprec_lattice_polygons_E");
   E3958 : Short_Integer; pragma Import (Ada, E3958, "multprec_lattice_3d_facets_E");
   E3964 : Short_Integer; pragma Import (Ada, E3964, "multprec_lattice_polytopes_E");
   E3976 : Short_Integer; pragma Import (Ada, E3976, "multprec_lattice_4d_facets_E");
   E3954 : Short_Integer; pragma Import (Ada, E3954, "facets_and_strings_E");
   E3802 : Short_Integer; pragma Import (Ada, E3802, "pack_continuation_parameters_E");
   E3980 : Short_Integer; pragma Import (Ada, E3980, "point_lists_and_strings_E");
   E3423 : Short_Integer; pragma Import (Ada, E3423, "standard_integer32_simplices_io_E");
   E2205 : Short_Integer; pragma Import (Ada, E2205, "standard_lattice_polygons_E");
   E2011 : Short_Integer; pragma Import (Ada, E2011, "brackets_E");
   E3497 : Short_Integer; pragma Import (Ada, E3497, "bracket_monomials_E");
   E3495 : Short_Integer; pragma Import (Ada, E3495, "brackets_io_E");
   E3493 : Short_Integer; pragma Import (Ada, E3493, "bracket_monomials_io_E");
   E3501 : Short_Integer; pragma Import (Ada, E3501, "checker_boards_E");
   E3505 : Short_Integer; pragma Import (Ada, E3505, "checker_moves_E");
   E3544 : Short_Integer; pragma Import (Ada, E3544, "generic_bracket_polynomials_E");
   E3542 : Short_Integer; pragma Import (Ada, E3542, "dobldobl_bracket_polynomials_E");
   E3550 : Short_Integer; pragma Import (Ada, E3550, "dobldobl_bracket_systems_E");
   E455 : Short_Integer; pragma Import (Ada, E455, "generic_polynomials_E");
   E453 : Short_Integer; pragma Import (Ada, E453, "dobldobl_complex_polynomials_E");
   E1571 : Short_Integer; pragma Import (Ada, E1571, "dobldobl_complex_poly_ring_E");
   E2396 : Short_Integer; pragma Import (Ada, E2396, "dobldobl_cseries_polynomials_E");
   E1866 : Short_Integer; pragma Import (Ada, E1866, "dobldobl_nvariate_interpolators_E");
   E471 : Short_Integer; pragma Import (Ada, E471, "double_double_polynomials_E");
   E810 : Short_Integer; pragma Import (Ada, E810, "generic_lists_of_terms_E");
   E820 : Short_Integer; pragma Import (Ada, E820, "dobldobl_complex_term_lists_E");
   E457 : Short_Integer; pragma Import (Ada, E457, "generic_polynomial_systems_E");
   E2271 : Short_Integer; pragma Import (Ada, E2271, "dobldobl_complex_to_real_poly_E");
   E225 : Short_Integer; pragma Import (Ada, E225, "graded_lexicographic_order_E");
   E309 : Short_Integer; pragma Import (Ada, E309, "generic_laurent_polynomials_E");
   E324 : Short_Integer; pragma Import (Ada, E324, "dobldobl_complex_laurentials_E");
   E336 : Short_Integer; pragma Import (Ada, E336, "generic_laur_poly_functions_E");
   E307 : Short_Integer; pragma Import (Ada, E307, "generic_laur_poly_systems_E");
   E1706 : Short_Integer; pragma Import (Ada, E1706, "dobldobl_embed_laurentials_E");
   E449 : Short_Integer; pragma Import (Ada, E449, "dobldobl_laur_poly_convertors_E");
   E459 : Short_Integer; pragma Import (Ada, E459, "dobldobl_poly_laur_convertors_E");
   E346 : Short_Integer; pragma Import (Ada, E346, "generic_laur_system_functions_E");
   E350 : Short_Integer; pragma Import (Ada, E350, "generic_laur_jaco_matrices_E");
   E793 : Short_Integer; pragma Import (Ada, E793, "dobldobl_laurent_homotopy_E");
   E3820 : Short_Integer; pragma Import (Ada, E3820, "dobldobl_laursys_container_E");
   E223 : Short_Integer; pragma Import (Ada, E223, "integer_support_functions_E");
   E221 : Short_Integer; pragma Import (Ada, E221, "integer_mixed_subdivisions_E");
   E278 : Short_Integer; pragma Import (Ada, E278, "flatten_mixed_subdivisions_E");
   E1518 : Short_Integer; pragma Import (Ada, E1518, "lexicographic_root_enumeration_E");
   E3328 : Short_Integer; pragma Import (Ada, E3328, "localization_posets_E");
   E3936 : Short_Integer; pragma Import (Ada, E3936, "localization_poset_strings_E");
   E1220 : Short_Integer; pragma Import (Ada, E1220, "monomial_hashing_E");
   E476 : Short_Integer; pragma Import (Ada, E476, "multprec_complex_laurentials_E");
   E480 : Short_Integer; pragma Import (Ada, E480, "multprec_complex_polynomials_E");
   E818 : Short_Integer; pragma Import (Ada, E818, "multprec_complex_term_lists_E");
   E1031 : Short_Integer; pragma Import (Ada, E1031, "multprec_floating_polynomials_E");
   E3854 : Short_Integer; pragma Import (Ada, E3854, "multprec_laursys_container_E");
   E2582 : Short_Integer; pragma Import (Ada, E2582, "octo_double_polynomials_E");
   E2586 : Short_Integer; pragma Import (Ada, E2586, "octodobl_complex_laurentials_E");
   E887 : Short_Integer; pragma Import (Ada, E887, "octodobl_complex_polynomials_E");
   E2698 : Short_Integer; pragma Import (Ada, E2698, "octodobl_cseries_polynomials_E");
   E2606 : Short_Integer; pragma Import (Ada, E2606, "penta_double_polynomials_E");
   E2610 : Short_Integer; pragma Import (Ada, E2610, "pentdobl_complex_laurentials_E");
   E892 : Short_Integer; pragma Import (Ada, E892, "pentdobl_complex_polynomials_E");
   E2716 : Short_Integer; pragma Import (Ada, E2716, "pentdobl_cseries_polynomials_E");
   E3942 : Short_Integer; pragma Import (Ada, E3942, "pieri_root_count_E");
   E3354 : Short_Integer; pragma Import (Ada, E3354, "pivot_selection_E");
   E1530 : Short_Integer; pragma Import (Ada, E1530, "set_structure_E");
   E3352 : Short_Integer; pragma Import (Ada, E3352, "degree_sets_tables_E");
   E3548 : Short_Integer; pragma Import (Ada, E3548, "standard_bracket_polynomials_E");
   E3940 : Short_Integer; pragma Import (Ada, E3940, "standard_bracket_polynomials_io_E");
   E311 : Short_Integer; pragma Import (Ada, E311, "standard_complex_laurentials_E");
   E303 : Short_Integer; pragma Import (Ada, E303, "integer_lifting_utilities_E");
   E3898 : Short_Integer; pragma Import (Ada, E3898, "real_powered_homotopy_E");
   E2027 : Short_Integer; pragma Import (Ada, E2027, "standard_affine_binomials_E");
   E484 : Short_Integer; pragma Import (Ada, E484, "standard_complex_polynomials_E");
   E3334 : Short_Integer; pragma Import (Ada, E3334, "reduction_of_polynomials_E");
   E1524 : Short_Integer; pragma Import (Ada, E1524, "standard_complex_poly_lists_E");
   E1300 : Short_Integer; pragma Import (Ada, E1300, "standard_complex_poly_ring_E");
   E2161 : Short_Integer; pragma Import (Ada, E2161, "multprec_to_standard_convertors_E");
   E1526 : Short_Integer; pragma Import (Ada, E1526, "standard_complex_prod_systems_E");
   E1722 : Short_Integer; pragma Import (Ada, E1722, "standard_complex_substitutors_E");
   E808 : Short_Integer; pragma Import (Ada, E808, "standard_complex_term_lists_E");
   E2512 : Short_Integer; pragma Import (Ada, E2512, "standard_cseries_polynomials_E");
   E1724 : Short_Integer; pragma Import (Ada, E1724, "standard_embed_laurentials_E");
   E2333 : Short_Integer; pragma Import (Ada, E2333, "standard_floating_polynomials_E");
   E2329 : Short_Integer; pragma Import (Ada, E2329, "standard_complex_to_real_poly_E");
   E2203 : Short_Integer; pragma Import (Ada, E2203, "standard_initial_forms_E");
   E1187 : Short_Integer; pragma Import (Ada, E1187, "standard_laur_poly_convertors_E");
   E1018 : Short_Integer; pragma Import (Ada, E1018, "standard_laurent_homotopy_E");
   E3828 : Short_Integer; pragma Import (Ada, E3828, "standard_laursys_container_E");
   E3624 : Short_Integer; pragma Import (Ada, E3624, "bracket_expansions_E");
   E3588 : Short_Integer; pragma Import (Ada, E3588, "curves_into_grassmannian_E");
   E541 : Short_Integer; pragma Import (Ada, E541, "dobldobl_complex_linear_solvers_E");
   E3338 : Short_Integer; pragma Import (Ada, E3338, "dobldobl_linear_reduction_E");
   E2423 : Short_Integer; pragma Import (Ada, E2423, "dobldobl_rational_approximations_E");
   E2421 : Short_Integer; pragma Import (Ada, E2421, "dobldobl_pade_approximants_E");
   E1770 : Short_Integer; pragma Import (Ada, E1770, "flow_tables_E");
   E686 : Short_Integer; pragma Import (Ada, E686, "generic_floating_linear_solvers_E");
   E3514 : Short_Integer; pragma Import (Ada, E3514, "dobldobl_matrix_inversion_E");
   E785 : Short_Integer; pragma Import (Ada, E785, "generic_polynomial_functions_E");
   E2379 : Short_Integer; pragma Import (Ada, E2379, "generic_hessian_matrices_E");
   E789 : Short_Integer; pragma Import (Ada, E789, "generic_poly_system_functions_E");
   E1593 : Short_Integer; pragma Import (Ada, E1593, "dobldobl_mixed_residuals_E");
   E791 : Short_Integer; pragma Import (Ada, E791, "generic_jacobian_matrices_E");
   E1686 : Short_Integer; pragma Import (Ada, E1686, "dobldobl_coefficient_homotopy_E");
   E1568 : Short_Integer; pragma Import (Ada, E1568, "dobldobl_embed_polynomials_E");
   E779 : Short_Integer; pragma Import (Ada, E779, "dobldobl_homotopy_E");
   E1589 : Short_Integer; pragma Import (Ada, E1589, "dobldobl_jacobian_trees_E");
   E3806 : Short_Integer; pragma Import (Ada, E3806, "dobldobl_polysys_container_E");
   E4042 : Short_Integer; pragma Import (Ada, E4042, "dobldobl_systems_pool_E");
   E3690 : Short_Integer; pragma Import (Ada, E3690, "multprec_embed_polynomials_E");
   E899 : Short_Integer; pragma Import (Ada, E899, "multprec_homotopy_E");
   E3713 : Short_Integer; pragma Import (Ada, E3713, "multprec_jacobian_trees_E");
   E3822 : Short_Integer; pragma Import (Ada, E3822, "multprec_polysys_container_E");
   E2920 : Short_Integer; pragma Import (Ada, E2920, "octodobl_complex_linear_solvers_E");
   E2686 : Short_Integer; pragma Import (Ada, E2686, "octodobl_coefficient_homotopy_E");
   E2700 : Short_Integer; pragma Import (Ada, E2700, "octodobl_homotopy_E");
   E2959 : Short_Integer; pragma Import (Ada, E2959, "pentdobl_complex_linear_solvers_E");
   E2704 : Short_Integer; pragma Import (Ada, E2704, "pentdobl_coefficient_homotopy_E");
   E2718 : Short_Integer; pragma Import (Ada, E2718, "pentdobl_homotopy_E");
   E3596 : Short_Integer; pragma Import (Ada, E3596, "plane_representations_E");
   E1092 : Short_Integer; pragma Import (Ada, E1092, "standard_complex_linear_solvers_E");
   E3664 : Short_Integer; pragma Import (Ada, E3664, "polyhedral_coefficient_correctors_E");
   E1758 : Short_Integer; pragma Import (Ada, E1758, "standard_cascading_planes_E");
   E1008 : Short_Integer; pragma Import (Ada, E1008, "standard_coefficient_homotopy_E");
   E1297 : Short_Integer; pragma Import (Ada, E1297, "standard_embed_polynomials_E");
   E747 : Short_Integer; pragma Import (Ada, E747, "basis_exchanges_E");
   E678 : Short_Integer; pragma Import (Ada, E678, "floating_mixed_subdivisions_E");
   E680 : Short_Integer; pragma Import (Ada, E680, "floating_lifting_utilities_E");
   E3376 : Short_Integer; pragma Import (Ada, E3376, "demics_output_cells_E");
   E3395 : Short_Integer; pragma Import (Ada, E3395, "demics_output_convertors_E");
   E672 : Short_Integer; pragma Import (Ada, E672, "floating_integer_convertors_E");
   E745 : Short_Integer; pragma Import (Ada, E745, "linear_minimization_E");
   E1373 : Short_Integer; pragma Import (Ada, E1373, "mixed_cells_queue_E");
   E1016 : Short_Integer; pragma Import (Ada, E1016, "standard_homotopy_E");
   E1325 : Short_Integer; pragma Import (Ada, E1325, "standard_jacobian_trees_E");
   E1816 : Short_Integer; pragma Import (Ada, E1816, "standard_linear_poly_solvers_E");
   E3342 : Short_Integer; pragma Import (Ada, E3342, "standard_linear_reduction_E");
   E2175 : Short_Integer; pragma Import (Ada, E2175, "standard_linear_spaces_E");
   E3524 : Short_Integer; pragma Import (Ada, E3524, "standard_matrix_inversion_E");
   E1331 : Short_Integer; pragma Import (Ada, E1331, "standard_mixed_residuals_E");
   E3499 : Short_Integer; pragma Import (Ada, E3499, "checker_boards_io_E");
   E3674 : Short_Integer; pragma Import (Ada, E3674, "dobldobl_nullity_polynomials_E");
   E3672 : Short_Integer; pragma Import (Ada, E3672, "dobldobl_nullity_matrices_E");
   E1169 : Short_Integer; pragma Import (Ada, E1169, "generic_arrays_of_vector_lists_io_E");
   E3606 : Short_Integer; pragma Import (Ada, E3606, "localization_posets_io_E");
   E803 : Short_Integer; pragma Import (Ada, E803, "standard_complex_term_lists_io_E");
   E1237 : Short_Integer; pragma Import (Ada, E1237, "standard_condition_tables_E");
   E1894 : Short_Integer; pragma Import (Ada, E1894, "multprec_condition_tables_E");
   E1587 : Short_Integer; pragma Import (Ada, E1587, "dobldobl_deflation_matrices_E");
   E1585 : Short_Integer; pragma Import (Ada, E1585, "dobldobl_evaluate_deflation_E");
   E1591 : Short_Integer; pragma Import (Ada, E1591, "dobldobl_evaluate_deflation_io_E");
   E2139 : Short_Integer; pragma Import (Ada, E2139, "monodromy_group_actions_E");
   E2141 : Short_Integer; pragma Import (Ada, E2141, "monodromy_group_actions_io_E");
   E3711 : Short_Integer; pragma Import (Ada, E3711, "multprec_deflation_matrices_E");
   E3709 : Short_Integer; pragma Import (Ada, E3709, "multprec_evaluate_deflation_E");
   E3715 : Short_Integer; pragma Import (Ada, E3715, "multprec_evaluate_deflation_io_E");
   E1323 : Short_Integer; pragma Import (Ada, E1323, "standard_deflation_matrices_E");
   E1321 : Short_Integer; pragma Import (Ada, E1321, "standard_evaluate_deflation_E");
   E1329 : Short_Integer; pragma Import (Ada, E1329, "standard_evaluate_deflation_io_E");
   E1516 : Short_Integer; pragma Import (Ada, E1516, "standard_linear_product_system_E");
   E1522 : Short_Integer; pragma Import (Ada, E1522, "standard_complex_prod_planes_E");
   E1605 : Short_Integer; pragma Import (Ada, E1605, "standard_monomial_evaluations_E");
   E1603 : Short_Integer; pragma Import (Ada, E1603, "dobldobl_monomial_evaluations_E");
   E3729 : Short_Integer; pragma Import (Ada, E3729, "standard_nullity_polynomials_E");
   E3727 : Short_Integer; pragma Import (Ada, E3727, "standard_nullity_matrices_E");
   E1229 : Short_Integer; pragma Import (Ada, E1229, "standard_numerical_rank_E");
   E1227 : Short_Integer; pragma Import (Ada, E1227, "standard_complex_newton_steps_E");
   E1966 : Short_Integer; pragma Import (Ada, E1966, "standard_nvariate_interpolators_E");
   E2335 : Short_Integer; pragma Import (Ada, E2335, "standard_parameter_solutions_E");
   E420 : Short_Integer; pragma Import (Ada, E420, "standard_parse_numbers_E");
   E418 : Short_Integer; pragma Import (Ada, E418, "multprec_parse_numbers_E");
   E631 : Short_Integer; pragma Import (Ada, E631, "multprec_floating_constants_E");
   E405 : Short_Integer; pragma Import (Ada, E405, "multprec_floating_numbers_io_E");
   E547 : Short_Integer; pragma Import (Ada, E547, "multprec_complex_numbers_io_E");
   E1118 : Short_Integer; pragma Import (Ada, E1118, "multprec_complex_linear_solvers_E");
   E403 : Short_Integer; pragma Import (Ada, E403, "multprec_dobldobl_convertors_E");
   E401 : Short_Integer; pragma Import (Ada, E401, "dobldobl_complex_numbers_cv_E");
   E430 : Short_Integer; pragma Import (Ada, E430, "dobldobl_complex_vectors_cv_E");
   E399 : Short_Integer; pragma Import (Ada, E399, "dobldobl_complex_solutions_E");
   E1245 : Short_Integer; pragma Import (Ada, E1245, "dobldobl_condition_tables_E");
   E511 : Short_Integer; pragma Import (Ada, E511, "dobldobl_continuation_data_E");
   E1696 : Short_Integer; pragma Import (Ada, E1696, "dobldobl_diagonal_solutions_E");
   E1794 : Short_Integer; pragma Import (Ada, E1794, "dobldobl_intrinsic_solutions_E");
   E1812 : Short_Integer; pragma Import (Ada, E1812, "dobldobl_linear_poly_solvers_E");
   E3644 : Short_Integer; pragma Import (Ada, E3644, "dobldobl_linear_product_system_E");
   E2281 : Short_Integer; pragma Import (Ada, E2281, "dobldobl_parameter_solutions_E");
   E1251 : Short_Integer; pragma Import (Ada, E1251, "dobldobl_point_lists_E");
   E467 : Short_Integer; pragma Import (Ada, E467, "dobldobl_polynomial_convertors_E");
   E609 : Short_Integer; pragma Import (Ada, E609, "dobldobl_predictors_E");
   E607 : Short_Integer; pragma Import (Ada, E607, "dobldobl_dispatch_predictors_E");
   E1253 : Short_Integer; pragma Import (Ada, E1253, "dobldobl_quad_trees_E");
   E648 : Short_Integer; pragma Import (Ada, E648, "dobldobl_radial_solvers_E");
   E1688 : Short_Integer; pragma Import (Ada, E1688, "dobldobl_scaling_E");
   E1249 : Short_Integer; pragma Import (Ada, E1249, "dobldobl_solution_diagnostics_E");
   E1680 : Short_Integer; pragma Import (Ada, E1680, "dobldobl_solution_manipulators_E");
   E3808 : Short_Integer; pragma Import (Ada, E3808, "dobldobl_solutions_container_E");
   E1692 : Short_Integer; pragma Import (Ada, E1692, "dobldobl_solutions_queue_E");
   E1438 : Short_Integer; pragma Import (Ada, E1438, "dobldobl_stable_homotopies_E");
   E4124 : Short_Integer; pragma Import (Ada, E4124, "dobldobl_witness_solutions_E");
   E1120 : Short_Integer; pragma Import (Ada, E1120, "multprec_data_on_path_E");
   E2159 : Short_Integer; pragma Import (Ada, E2159, "multprec_linear_spaces_E");
   E1892 : Short_Integer; pragma Import (Ada, E1892, "multprec_numerical_rank_E");
   E1885 : Short_Integer; pragma Import (Ada, E1885, "multprec_complex_newton_steps_E");
   E2253 : Short_Integer; pragma Import (Ada, E2253, "multprec_nvariate_interpolators_E");
   E949 : Short_Integer; pragma Import (Ada, E949, "multprec_octodobl_convertors_E");
   E959 : Short_Integer; pragma Import (Ada, E959, "multprec_pentdobl_convertors_E");
   E1129 : Short_Integer; pragma Import (Ada, E1129, "multprec_predictors_E");
   E1127 : Short_Integer; pragma Import (Ada, E1127, "multprec_dispatch_predictors_E");
   E3717 : Short_Integer; pragma Import (Ada, E3717, "multprec_residual_evaluations_E");
   E3489 : Short_Integer; pragma Import (Ada, E3489, "multprec_scaling_E");
   E488 : Short_Integer; pragma Import (Ada, E488, "multprec_write_numbers_E");
   E953 : Short_Integer; pragma Import (Ada, E953, "octodobl_complex_numbers_cv_E");
   E955 : Short_Integer; pragma Import (Ada, E955, "octodobl_complex_vectors_cv_E");
   E947 : Short_Integer; pragma Import (Ada, E947, "octodobl_complex_solutions_E");
   E2578 : Short_Integer; pragma Import (Ada, E2578, "octodobl_polynomial_convertors_E");
   E963 : Short_Integer; pragma Import (Ada, E963, "pentdobl_complex_numbers_cv_E");
   E965 : Short_Integer; pragma Import (Ada, E965, "pentdobl_complex_vectors_cv_E");
   E957 : Short_Integer; pragma Import (Ada, E957, "pentdobl_complex_solutions_E");
   E2602 : Short_Integer; pragma Import (Ada, E2602, "pentdobl_polynomial_convertors_E");
   E1766 : Short_Integer; pragma Import (Ada, E1766, "standard_point_coordinates_E");
   E1790 : Short_Integer; pragma Import (Ada, E1790, "standard_intrinsic_solutions_E");
   E1289 : Short_Integer; pragma Import (Ada, E1289, "standard_point_lists_E");
   E1341 : Short_Integer; pragma Import (Ada, E1341, "standard_poly_laur_convertors_E");
   E3814 : Short_Integer; pragma Import (Ada, E3814, "standard_polysys_container_E");
   E1962 : Short_Integer; pragma Import (Ada, E1962, "standard_power_traces_E");
   E2209 : Short_Integer; pragma Import (Ada, E2209, "standard_power_transformations_E");
   E1096 : Short_Integer; pragma Import (Ada, E1096, "standard_predictors_E");
   E1094 : Short_Integer; pragma Import (Ada, E1094, "standard_dispatch_predictors_E");
   E1291 : Short_Integer; pragma Import (Ada, E1291, "standard_quad_trees_E");
   E1202 : Short_Integer; pragma Import (Ada, E1202, "standard_radial_solvers_E");
   E2414 : Short_Integer; pragma Import (Ada, E2414, "standard_rational_approximations_E");
   E2412 : Short_Integer; pragma Import (Ada, E2412, "standard_pade_approximants_E");
   E1788 : Short_Integer; pragma Import (Ada, E1788, "standard_rescaling_coordinates_E");
   E2057 : Short_Integer; pragma Import (Ada, E2057, "standard_scaling_E");
   E2017 : Short_Integer; pragma Import (Ada, E2017, "standard_smith_normal_form_E");
   E1273 : Short_Integer; pragma Import (Ada, E1273, "standard_solution_diagnostics_E");
   E2055 : Short_Integer; pragma Import (Ada, E2055, "standard_solution_manipulators_E");
   E1744 : Short_Integer; pragma Import (Ada, E1744, "standard_solutions_queue_E");
   E1609 : Short_Integer; pragma Import (Ada, E1609, "standard_speelpenning_products_E");
   E1607 : Short_Integer; pragma Import (Ada, E1607, "dobldobl_speelpenning_products_E");
   E1601 : Short_Integer; pragma Import (Ada, E1601, "dobldobl_gradient_evaluations_E");
   E1611 : Short_Integer; pragma Import (Ada, E1611, "standard_gradient_evaluations_E");
   E1450 : Short_Integer; pragma Import (Ada, E1450, "standard_stable_homotopies_E");
   E3858 : Short_Integer; pragma Import (Ada, E3858, "standard_systems_pool_E");
   E1027 : Short_Integer; pragma Import (Ada, E1027, "standard_to_multprec_convertors_E");
   E1964 : Short_Integer; pragma Import (Ada, E1964, "standard_univariate_interpolators_E");
   E3153 : Short_Integer; pragma Import (Ada, E3153, "standard_vector_splitters_E");
   E3159 : Short_Integer; pragma Import (Ada, E3159, "standard_coefficient_convolutions_E");
   E3157 : Short_Integer; pragma Import (Ada, E3157, "dobldobl_coefficient_convolutions_E");
   E3185 : Short_Integer; pragma Import (Ada, E3185, "standard_coefficient_storage_E");
   E3195 : Short_Integer; pragma Import (Ada, E3195, "standard_convolution_splitters_E");
   E3147 : Short_Integer; pragma Import (Ada, E3147, "standard_inlined_linearization_E");
   E3179 : Short_Integer; pragma Import (Ada, E3179, "standard_inlined_newton_circuits_E");
   E3161 : Short_Integer; pragma Import (Ada, E3161, "standard_inlined_singular_values_E");
   E3197 : Short_Integer; pragma Import (Ada, E3197, "standard_newton_circuits_E");
   E601 : Short_Integer; pragma Import (Ada, E601, "standard_vlprs_tables_E");
   E599 : Short_Integer; pragma Import (Ada, E599, "standard_vlprs_algorithm_E");
   E585 : Short_Integer; pragma Import (Ada, E585, "directions_of_standard_paths_E");
   E583 : Short_Integer; pragma Import (Ada, E583, "standard_data_on_path_E");
   E581 : Short_Integer; pragma Import (Ada, E581, "dobldobl_data_on_path_E");
   E4128 : Short_Integer; pragma Import (Ada, E4128, "standard_witness_solutions_E");
   E717 : Short_Integer; pragma Import (Ada, E717, "standard_write_numbers_E");
   E3556 : Short_Integer; pragma Import (Ada, E3556, "straightening_syzygies_E");
   E3554 : Short_Integer; pragma Import (Ada, E3554, "standard_bracket_systems_E");
   E3848 : Short_Integer; pragma Import (Ada, E3848, "string_parsing_E");
   E154 : Short_Integer; pragma Import (Ada, E154, "string_splitters_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "actions_and_options_E");
   E317 : Short_Integer; pragma Import (Ada, E317, "communications_with_user_E");
   E3380 : Short_Integer; pragma Import (Ada, E3380, "demics_input_data_E");
   E3387 : Short_Integer; pragma Import (Ada, E3387, "demics_itest_E");
   E3794 : Short_Integer; pragma Import (Ada, E3794, "file_management_E");
   E4018 : Short_Integer; pragma Import (Ada, E4018, "lists_of_strings_E");
   E4016 : Short_Integer; pragma Import (Ada, E4016, "demics_output_data_E");
   E3326 : Short_Integer; pragma Import (Ada, E3326, "main_pieri_count_E");
   E3978 : Short_Integer; pragma Import (Ada, E3978, "multprec_giftwrap_container_E");
   E3741 : Short_Integer; pragma Import (Ada, E3741, "standard_complex_vector_strings_E");
   E3745 : Short_Integer; pragma Import (Ada, E3745, "dobldobl_complex_vector_strings_E");
   E3739 : Short_Integer; pragma Import (Ada, E3739, "multprec_complex_vector_strings_E");
   E2359 : Short_Integer; pragma Import (Ada, E2359, "string_system_readers_E");
   E812 : Short_Integer; pragma Import (Ada, E812, "strings_and_numbers_E");
   E3896 : Short_Integer; pragma Import (Ada, E3896, "real_powered_series_io_E");
   E4032 : Short_Integer; pragma Import (Ada, E4032, "supporting_set_structure_E");
   E390 : Short_Integer; pragma Import (Ada, E390, "symbol_table_E");
   E3590 : Short_Integer; pragma Import (Ada, E3590, "curves_into_grassmannian_io_E");
   E715 : Short_Integer; pragma Import (Ada, E715, "line_breaks_E");
   E2195 : Short_Integer; pragma Import (Ada, E2195, "lists_of_symbols_E");
   E1546 : Short_Integer; pragma Import (Ada, E1546, "set_structure_strings_E");
   E1542 : Short_Integer; pragma Import (Ada, E1542, "sets_of_unknowns_strings_E");
   E1540 : Short_Integer; pragma Import (Ada, E1540, "partitions_of_sets_strings_E");
   E3846 : Short_Integer; pragma Import (Ada, E3846, "standard_solution_strings_E");
   E3928 : Short_Integer; pragma Import (Ada, E3928, "dobldobl_solution_strings_E");
   E3844 : Short_Integer; pragma Import (Ada, E3844, "multprec_solution_strings_E");
   E4008 : Short_Integer; pragma Import (Ada, E4008, "solution_string_splitters_E");
   E3796 : Short_Integer; pragma Import (Ada, E3796, "standard_solutions_container_E");
   E388 : Short_Integer; pragma Import (Ada, E388, "symbol_table_io_E");
   E2289 : Short_Integer; pragma Import (Ada, E2289, "dobldobl_quad_turn_points_io_E");
   E486 : Short_Integer; pragma Import (Ada, E486, "multprec_complex_laurentials_io_E");
   E465 : Short_Integer; pragma Import (Ada, E465, "dobldobl_complex_laurentials_io_E");
   E2367 : Short_Integer; pragma Import (Ada, E2367, "multprec_maple_solutions_io_E");
   E2592 : Short_Integer; pragma Import (Ada, E2592, "octodobl_complex_laurentials_io_E");
   E2616 : Short_Integer; pragma Import (Ada, E2616, "pentdobl_complex_laurentials_io_E");
   E1544 : Short_Integer; pragma Import (Ada, E1544, "set_structure_io_E");
   E1538 : Short_Integer; pragma Import (Ada, E1538, "sets_of_unknowns_io_E");
   E1143 : Short_Integer; pragma Import (Ada, E1143, "standard_complex_laur_readers_E");
   E1141 : Short_Integer; pragma Import (Ada, E1141, "standard_complex_laurentials_io_E");
   E801 : Short_Integer; pragma Import (Ada, E801, "standard_complex_poly_strings_E");
   E799 : Short_Integer; pragma Import (Ada, E799, "multprec_complex_laur_strings_E");
   E797 : Short_Integer; pragma Import (Ada, E797, "dobldobl_complex_laur_strings_E");
   E816 : Short_Integer; pragma Import (Ada, E816, "multprec_complex_poly_strings_E");
   E814 : Short_Integer; pragma Import (Ada, E814, "dobldobl_complex_poly_strings_E");
   E2357 : Short_Integer; pragma Import (Ada, E2357, "standard_complex_laur_strings_E");
   E3866 : Short_Integer; pragma Import (Ada, E3866, "parse_dimensions_E");
   E3894 : Short_Integer; pragma Import (Ada, E3894, "real_powered_homotopy_io_E");
   E2193 : Short_Integer; pragma Import (Ada, E2193, "standard_dictionary_solutions_io_E");
   E2410 : Short_Integer; pragma Import (Ada, E2410, "standard_pade_approximants_io_E");
   E2408 : Short_Integer; pragma Import (Ada, E2408, "dobldobl_pade_approximants_io_E");
   E2349 : Short_Integer; pragma Import (Ada, E2349, "standard_quad_turn_points_io_E");
   E386 : Short_Integer; pragma Import (Ada, E386, "symbols_io_E");
   E358 : Short_Integer; pragma Import (Ada, E358, "standard_complex_solutions_io_E");
   E352 : Short_Integer; pragma Import (Ada, E352, "dobldobl_complex_solutions_io_E");
   E513 : Short_Integer; pragma Import (Ada, E513, "dobldobl_continuation_data_io_E");
   E3670 : Short_Integer; pragma Import (Ada, E3670, "dobldobl_multiplicity_structure_E");
   E1257 : Short_Integer; pragma Import (Ada, E1257, "dobldobl_solution_filters_E");
   E1682 : Short_Integer; pragma Import (Ada, E1682, "dobldobl_solution_splitters_E");
   E2191 : Short_Integer; pragma Import (Ada, E2191, "main_dictionary_solutions_E");
   E549 : Short_Integer; pragma Import (Ada, E549, "multprec_complex_solutions_io_E");
   E2365 : Short_Integer; pragma Import (Ada, E2365, "main_maple_solutions_E");
   E1883 : Short_Integer; pragma Import (Ada, E1883, "multprec_root_refiners_E");
   E2594 : Short_Integer; pragma Import (Ada, E2594, "octodobl_complex_solutions_io_E");
   E2618 : Short_Integer; pragma Import (Ada, E2618, "pentdobl_complex_solutions_io_E");
   E1133 : Short_Integer; pragma Import (Ada, E1133, "standard_continuation_data_io_E");
   E3725 : Short_Integer; pragma Import (Ada, E3725, "standard_multiplicity_structure_E");
   E1271 : Short_Integer; pragma Import (Ada, E1271, "standard_solution_filters_E");
   E1768 : Short_Integer; pragma Import (Ada, E1768, "standard_solution_splitters_E");
   E3360 : Short_Integer; pragma Import (Ada, E3360, "symmetry_group_E");
   E3358 : Short_Integer; pragma Import (Ada, E3358, "symbolic_symmetry_group_io_E");
   E3372 : Short_Integer; pragma Import (Ada, E3372, "symmetry_group_io_E");
   E267 : Short_Integer; pragma Import (Ada, E267, "system_call_E");
   E265 : Short_Integer; pragma Import (Ada, E265, "machines_E");
   E263 : Short_Integer; pragma Import (Ada, E263, "standard_random_numbers_E");
   E3391 : Short_Integer; pragma Import (Ada, E3391, "demics_simplex_E");
   E3389 : Short_Integer; pragma Import (Ada, E3389, "demics_reltab_E");
   E3382 : Short_Integer; pragma Import (Ada, E3382, "demics_mvc_E");
   E654 : Short_Integer; pragma Import (Ada, E654, "dobldobl_random_numbers_E");
   E1844 : Short_Integer; pragma Import (Ada, E1844, "dobldobl_lined_hypersurfaces_E");
   E1575 : Short_Integer; pragma Import (Ada, E1575, "dobldobl_random_matrices_E");
   E4072 : Short_Integer; pragma Import (Ada, E4072, "dobldobl_random_polynomials_E");
   E652 : Short_Integer; pragma Import (Ada, E652, "dobldobl_random_vectors_E");
   E1566 : Short_Integer; pragma Import (Ada, E1566, "dobldobl_deflate_singularities_E");
   E1579 : Short_Integer; pragma Import (Ada, E1579, "dobldobl_deflation_trees_E");
   E1774 : Short_Integer; pragma Import (Ada, E1774, "dobldobl_hypersurface_witsets_E");
   E2902 : Short_Integer; pragma Import (Ada, E2902, "dobldobl_interpolating_cseries_E");
   E1583 : Short_Integer; pragma Import (Ada, E1583, "dobldobl_multiple_solutions_E");
   E1798 : Short_Integer; pragma Import (Ada, E1798, "dobldobl_plane_representations_E");
   E3471 : Short_Integer; pragma Import (Ada, E3471, "dobldobl_moving_planes_E");
   E1615 : Short_Integer; pragma Import (Ada, E1615, "dobldobl_polynomial_flatteners_E");
   E2898 : Short_Integer; pragma Import (Ada, E2898, "dobldobl_series_matrix_solvers_E");
   E1906 : Short_Integer; pragma Import (Ada, E1906, "extended_random_numbers_E");
   E1151 : Short_Integer; pragma Import (Ada, E1151, "facet_vertex_enumeration_E");
   E741 : Short_Integer; pragma Import (Ada, E741, "floating_linear_inequalities_E");
   E1157 : Short_Integer; pragma Import (Ada, E1157, "floating_face_enumerators_E");
   E1149 : Short_Integer; pragma Import (Ada, E1149, "floating_faces_of_polytope_E");
   E1345 : Short_Integer; pragma Import (Ada, E1345, "floating_pruning_methods_E");
   E3065 : Short_Integer; pragma Import (Ada, E3065, "homotopy_continuation_parameters_E");
   E1171 : Short_Integer; pragma Import (Ada, E1171, "integer_lifting_functions_E");
   E739 : Short_Integer; pragma Import (Ada, E739, "integer_linear_inequalities_E");
   E735 : Short_Integer; pragma Import (Ada, E735, "integer_face_enumerators_E");
   E733 : Short_Integer; pragma Import (Ada, E733, "integer_faces_of_polytope_E");
   E3411 : Short_Integer; pragma Import (Ada, E3411, "common_faces_of_polytope_E");
   E1175 : Short_Integer; pragma Import (Ada, E1175, "integer_pruning_methods_E");
   E1710 : Short_Integer; pragma Import (Ada, E1710, "multprec_random_numbers_E");
   E3692 : Short_Integer; pragma Import (Ada, E3692, "multprec_random_matrices_E");
   E1708 : Short_Integer; pragma Import (Ada, E1708, "multprec_random_vectors_E");
   E3688 : Short_Integer; pragma Import (Ada, E3688, "multprec_deflate_singularities_E");
   E3705 : Short_Integer; pragma Import (Ada, E3705, "multprec_deflation_trees_E");
   E2151 : Short_Integer; pragma Import (Ada, E2151, "multprec_polynomial_interpolators_E");
   E854 : Short_Integer; pragma Import (Ada, E854, "octodobl_random_numbers_E");
   E2941 : Short_Integer; pragma Import (Ada, E2941, "octodobl_random_vectors_E");
   E2928 : Short_Integer; pragma Import (Ada, E2928, "octodobl_interpolating_cseries_E");
   E2918 : Short_Integer; pragma Import (Ada, E2918, "octodobl_series_matrix_solvers_E");
   E3284 : Short_Integer; pragma Import (Ada, E3284, "octodobl_newton_convolutions_E");
   E3302 : Short_Integer; pragma Import (Ada, E3302, "octodobl_newton_convolution_steps_E");
   E3612 : Short_Integer; pragma Import (Ada, E3612, "osculating_planes_E");
   E863 : Short_Integer; pragma Import (Ada, E863, "pentdobl_random_numbers_E");
   E2980 : Short_Integer; pragma Import (Ada, E2980, "pentdobl_random_vectors_E");
   E2967 : Short_Integer; pragma Import (Ada, E2967, "pentdobl_interpolating_cseries_E");
   E2957 : Short_Integer; pragma Import (Ada, E2957, "pentdobl_series_matrix_solvers_E");
   E3286 : Short_Integer; pragma Import (Ada, E3286, "pentdobl_newton_convolutions_E");
   E3308 : Short_Integer; pragma Import (Ada, E3308, "pentdobl_newton_convolution_steps_E");
   E1470 : Short_Integer; pragma Import (Ada, E1470, "prepare_for_mv_E");
   E1528 : Short_Integer; pragma Import (Ada, E1528, "random_product_start_systems_E");
   E3332 : Short_Integer; pragma Import (Ada, E3332, "reduction_of_nonsquare_systems_E");
   E2127 : Short_Integer; pragma Import (Ada, E2127, "span_of_supports_E");
   E3604 : Short_Integer; pragma Import (Ada, E3604, "specialization_of_planes_E");
   E1145 : Short_Integer; pragma Import (Ada, E1145, "standard_complex_laur_randomizers_E");
   E1147 : Short_Integer; pragma Import (Ada, E1147, "standard_complex_poly_randomizers_E");
   E261 : Short_Integer; pragma Import (Ada, E261, "standard_integer32_triangulations_E");
   E193 : Short_Integer; pragma Import (Ada, E193, "cayley_embedding_E");
   E282 : Short_Integer; pragma Import (Ada, E282, "dynamic32_lifting_functions_E");
   E3413 : Short_Integer; pragma Import (Ada, E3413, "enumerate_faces_of_polytope_E");
   E3421 : Short_Integer; pragma Import (Ada, E3421, "standard_integer32_triangulations_io_E");
   E1870 : Short_Integer; pragma Import (Ada, E1870, "standard_lined_hypersurfaces_E");
   E1304 : Short_Integer; pragma Import (Ada, E1304, "standard_random_matrices_E");
   E4086 : Short_Integer; pragma Import (Ada, E4086, "standard_random_polynomials_E");
   E1204 : Short_Integer; pragma Import (Ada, E1204, "standard_random_vectors_E");
   E3884 : Short_Integer; pragma Import (Ada, E3884, "double_real_powered_series_E");
   E3882 : Short_Integer; pragma Import (Ada, E3882, "double_leading_evaluations_E");
   E3886 : Short_Integer; pragma Import (Ada, E3886, "double_ordered_evaluations_E");
   E3099 : Short_Integer; pragma Import (Ada, E3099, "random_laurent_series_E");
   E3101 : Short_Integer; pragma Import (Ada, E3101, "double_lseries_polynomials_E");
   E1295 : Short_Integer; pragma Import (Ada, E1295, "standard_deflate_singularities_E");
   E1315 : Short_Integer; pragma Import (Ada, E1315, "standard_deflation_trees_E");
   E1778 : Short_Integer; pragma Import (Ada, E1778, "standard_hypersurface_witsets_E");
   E2884 : Short_Integer; pragma Import (Ada, E2884, "standard_interpolating_cseries_E");
   E1319 : Short_Integer; pragma Import (Ada, E1319, "standard_multiple_solutions_E");
   E1762 : Short_Integer; pragma Import (Ada, E1762, "standard_plane_representations_E");
   E1760 : Short_Integer; pragma Import (Ada, E1760, "standard_moving_planes_E");
   E1764 : Short_Integer; pragma Import (Ada, E1764, "standard_plane_operations_E");
   E2171 : Short_Integer; pragma Import (Ada, E2171, "standard_polynomial_interpolators_E");
   E2882 : Short_Integer; pragma Import (Ada, E2882, "standard_series_matrix_solvers_E");
   E3113 : Short_Integer; pragma Import (Ada, E3113, "dobldobl_newton_convolutions_E");
   E3111 : Short_Integer; pragma Import (Ada, E3111, "dobldobl_newton_convolution_steps_E");
   E3155 : Short_Integer; pragma Import (Ada, E3155, "standard_newton_convolutions_E");
   E3141 : Short_Integer; pragma Import (Ada, E3141, "newton_coefficient_convolutions_E");
   E3139 : Short_Integer; pragma Import (Ada, E3139, "staggered_newton_convolutions_E");
   E3165 : Short_Integer; pragma Import (Ada, E3165, "standard_newton_convolution_steps_E");
   E3733 : Short_Integer; pragma Import (Ada, E3733, "standard_solutions_heap_E");
   E3370 : Short_Integer; pragma Import (Ada, E3370, "templates_E");
   E3097 : Short_Integer; pragma Import (Ada, E3097, "test_double_lseries_matrices_E");
   E3095 : Short_Integer; pragma Import (Ada, E3095, "double_lseries_newton_steps_E");
   E1500 : Short_Integer; pragma Import (Ada, E1500, "time_stamps_E");
   E751 : Short_Integer; pragma Import (Ada, E751, "timing_package_E");
   E1403 : Short_Integer; pragma Import (Ada, E1403, "multitasking_volume_computation_E");
   E2081 : Short_Integer; pragma Import (Ada, E2081, "path_counts_table_E");
   E2129 : Short_Integer; pragma Import (Ada, E2129, "transformation_of_supports_E");
   E301 : Short_Integer; pragma Import (Ada, E301, "transforming_integer32_vector_lists_E");
   E1214 : Short_Integer; pragma Import (Ada, E1214, "arrays_of_lists_utilities_E");
   E1173 : Short_Integer; pragma Import (Ada, E1173, "integer_mixed_subdivisions_io_E");
   E1165 : Short_Integer; pragma Import (Ada, E1165, "mixed_volume_computation_E");
   E1161 : Short_Integer; pragma Import (Ada, E1161, "floating_mixed_subdivisions_io_E");
   E3407 : Short_Integer; pragma Import (Ada, E3407, "minkowski_polynomials_E");
   E3405 : Short_Integer; pragma Import (Ada, E3405, "driver_for_minkowski_polynomials_E");
   E286 : Short_Integer; pragma Import (Ada, E286, "standard_integer32_vertices_E");
   E284 : Short_Integer; pragma Import (Ada, E284, "global_dynamic32_triangulation_E");
   E3415 : Short_Integer; pragma Import (Ada, E3415, "initial_mixed_cell_E");
   E731 : Short_Integer; pragma Import (Ada, E731, "inner_normal_cones_E");
   E749 : Short_Integer; pragma Import (Ada, E749, "normal_cone_intersections_E");
   E729 : Short_Integer; pragma Import (Ada, E729, "contributions_to_mixed_volume_E");
   E727 : Short_Integer; pragma Import (Ada, E727, "drivers_for_mixed_contributions_E");
   E3409 : Short_Integer; pragma Import (Ada, E3409, "dynamic_mixed_subdivisions_E");
   E280 : Short_Integer; pragma Import (Ada, E280, "standard_dynamic32_triangulations_E");
   E191 : Short_Integer; pragma Import (Ada, E191, "cayley_trick_E");
   E1335 : Short_Integer; pragma Import (Ada, E1335, "transforming_solutions_E");
   E1339 : Short_Integer; pragma Import (Ada, E1339, "trees_of_vectors_E");
   E1343 : Short_Integer; pragma Import (Ada, E1343, "trees_of_vectors_io_E");
   E500 : Short_Integer; pragma Import (Ada, E500, "triple_double_numbers_E");
   E496 : Short_Integer; pragma Import (Ada, E496, "quad_double_numbers_E");
   E824 : Short_Integer; pragma Import (Ada, E824, "deca_double_numbers_E");
   E835 : Short_Integer; pragma Import (Ada, E835, "deca_double_constants_E");
   E917 : Short_Integer; pragma Import (Ada, E917, "deca_double_numbers_io_E");
   E831 : Short_Integer; pragma Import (Ada, E831, "deca_double_ring_E");
   E2534 : Short_Integer; pragma Import (Ada, E2534, "deca_double_polynomials_E");
   E2548 : Short_Integer; pragma Import (Ada, E2548, "decadobl_complex_numbers_io_E");
   E878 : Short_Integer; pragma Import (Ada, E878, "decadobl_complex_ring_E");
   E2538 : Short_Integer; pragma Import (Ada, E2538, "decadobl_complex_laurentials_E");
   E877 : Short_Integer; pragma Import (Ada, E877, "decadobl_complex_polynomials_E");
   E2465 : Short_Integer; pragma Import (Ada, E2465, "decadobl_complex_series_ring_E");
   E2730 : Short_Integer; pragma Import (Ada, E2730, "decadobl_complex_series_io_E");
   E2845 : Short_Integer; pragma Import (Ada, E2845, "decadobl_complex_linear_solvers_E");
   E2646 : Short_Integer; pragma Import (Ada, E2646, "decadobl_coefficient_homotopy_E");
   E2835 : Short_Integer; pragma Import (Ada, E2835, "decadobl_complex_vector_series_E");
   E2831 : Short_Integer; pragma Import (Ada, E2831, "decadobl_complex_matrix_series_E");
   E2658 : Short_Integer; pragma Import (Ada, E2658, "decadobl_cseries_polynomials_E");
   E2851 : Short_Integer; pragma Import (Ada, E2851, "decadobl_echelon_forms_E");
   E2660 : Short_Integer; pragma Import (Ada, E2660, "decadobl_homotopy_E");
   E837 : Short_Integer; pragma Import (Ada, E837, "decadobl_mathematical_functions_E");
   E2728 : Short_Integer; pragma Import (Ada, E2728, "decadobl_complex_numbers_polar_E");
   E2839 : Short_Integer; pragma Import (Ada, E2839, "decadobl_complex_algebraic_series_E");
   E2847 : Short_Integer; pragma Import (Ada, E2847, "decadobl_complex_qr_least_squares_E");
   E2841 : Short_Integer; pragma Import (Ada, E2841, "decadobl_complex_series_norms_E");
   E2849 : Short_Integer; pragma Import (Ada, E2849, "decadobl_complex_singular_values_E");
   E2864 : Short_Integer; pragma Import (Ada, E2864, "decadobl_complex_vector_norms_E");
   E2837 : Short_Integer; pragma Import (Ada, E2837, "decadobl_cseries_vector_norms_E");
   E834 : Short_Integer; pragma Import (Ada, E834, "decadobl_random_numbers_E");
   E2868 : Short_Integer; pragma Import (Ada, E2868, "decadobl_random_vectors_E");
   E2855 : Short_Integer; pragma Import (Ada, E2855, "decadobl_interpolating_cseries_E");
   E2843 : Short_Integer; pragma Import (Ada, E2843, "decadobl_series_matrix_solvers_E");
   E3235 : Short_Integer; pragma Import (Ada, E3235, "decadobl_newton_convolutions_E");
   E3233 : Short_Integer; pragma Import (Ada, E3233, "decadobl_newton_convolution_steps_E");
   E839 : Short_Integer; pragma Import (Ada, E839, "hexa_double_numbers_E");
   E2406 : Short_Integer; pragma Import (Ada, E2406, "binomial_coefficients_E");
   E2726 : Short_Integer; pragma Import (Ada, E2726, "decadobl_complex_series_functions_E");
   E2404 : Short_Integer; pragma Import (Ada, E2404, "dobldobl_complex_series_functions_E");
   E2402 : Short_Integer; pragma Import (Ada, E2402, "dobldobl_cseries_vector_functions_E");
   E846 : Short_Integer; pragma Import (Ada, E846, "hexa_double_constants_E");
   E939 : Short_Integer; pragma Import (Ada, E939, "hexa_double_numbers_io_E");
   E842 : Short_Integer; pragma Import (Ada, E842, "hexa_double_ring_E");
   E2558 : Short_Integer; pragma Import (Ada, E2558, "hexa_double_polynomials_E");
   E2572 : Short_Integer; pragma Import (Ada, E2572, "hexadobl_complex_numbers_io_E");
   E883 : Short_Integer; pragma Import (Ada, E883, "hexadobl_complex_ring_E");
   E2562 : Short_Integer; pragma Import (Ada, E2562, "hexadobl_complex_laurentials_E");
   E882 : Short_Integer; pragma Import (Ada, E882, "hexadobl_complex_polynomials_E");
   E2470 : Short_Integer; pragma Import (Ada, E2470, "hexadobl_complex_series_ring_E");
   E2739 : Short_Integer; pragma Import (Ada, E2739, "hexadobl_complex_series_io_E");
   E3249 : Short_Integer; pragma Import (Ada, E3249, "hexadobl_complex_linear_solvers_E");
   E2664 : Short_Integer; pragma Import (Ada, E2664, "hexadobl_coefficient_homotopy_E");
   E3272 : Short_Integer; pragma Import (Ada, E3272, "hexadobl_complex_vector_series_E");
   E3270 : Short_Integer; pragma Import (Ada, E3270, "hexadobl_complex_matrix_series_E");
   E2676 : Short_Integer; pragma Import (Ada, E2676, "hexadobl_cseries_polynomials_E");
   E3255 : Short_Integer; pragma Import (Ada, E3255, "hexadobl_echelon_forms_E");
   E2678 : Short_Integer; pragma Import (Ada, E2678, "hexadobl_homotopy_E");
   E848 : Short_Integer; pragma Import (Ada, E848, "hexadobl_mathematical_functions_E");
   E2737 : Short_Integer; pragma Import (Ada, E2737, "hexadobl_complex_numbers_polar_E");
   E3251 : Short_Integer; pragma Import (Ada, E3251, "hexadobl_complex_qr_least_squares_E");
   E2735 : Short_Integer; pragma Import (Ada, E2735, "hexadobl_complex_series_functions_E");
   E3253 : Short_Integer; pragma Import (Ada, E3253, "hexadobl_complex_singular_values_E");
   E3266 : Short_Integer; pragma Import (Ada, E3266, "hexadobl_complex_vector_norms_E");
   E845 : Short_Integer; pragma Import (Ada, E845, "hexadobl_random_numbers_E");
   E3268 : Short_Integer; pragma Import (Ada, E3268, "hexadobl_random_vectors_E");
   E3257 : Short_Integer; pragma Import (Ada, E3257, "hexadobl_interpolating_cseries_E");
   E3247 : Short_Integer; pragma Import (Ada, E3247, "hexadobl_series_matrix_solvers_E");
   E3243 : Short_Integer; pragma Import (Ada, E3243, "hexadobl_newton_convolutions_E");
   E3296 : Short_Integer; pragma Import (Ada, E3296, "hexadobl_newton_convolution_steps_E");
   E915 : Short_Integer; pragma Import (Ada, E915, "multprec_decadobl_convertors_E");
   E937 : Short_Integer; pragma Import (Ada, E937, "multprec_hexadobl_convertors_E");
   E2744 : Short_Integer; pragma Import (Ada, E2744, "octodobl_complex_series_functions_E");
   E2753 : Short_Integer; pragma Import (Ada, E2753, "pentdobl_complex_series_functions_E");
   E632 : Short_Integer; pragma Import (Ada, E632, "quad_double_constants_E");
   E494 : Short_Integer; pragma Import (Ada, E494, "quad_double_numbers_io_E");
   E561 : Short_Integer; pragma Import (Ada, E561, "multprec_quaddobl_convertors_E");
   E492 : Short_Integer; pragma Import (Ada, E492, "numbers_io_E");
   E777 : Short_Integer; pragma Import (Ada, E777, "continuation_parameters_io_E");
   E2283 : Short_Integer; pragma Import (Ada, E2283, "dobldobl_quad_parameters_E");
   E2287 : Short_Integer; pragma Import (Ada, E2287, "dobldobl_quad_turn_points_E");
   E3356 : Short_Integer; pragma Import (Ada, E3356, "drivers_for_symmetry_group_io_E");
   E3067 : Short_Integer; pragma Import (Ada, E3067, "homotopy_continuation_parameters_io_E");
   E3608 : Short_Integer; pragma Import (Ada, E3608, "make_input_planes_E");
   E490 : Short_Integer; pragma Import (Ada, E490, "multprec_complex_laur_systems_io_E");
   E463 : Short_Integer; pragma Import (Ada, E463, "dobldobl_complex_laur_systems_io_E");
   E2590 : Short_Integer; pragma Import (Ada, E2590, "octodobl_complex_laur_systems_io_E");
   E1536 : Short_Integer; pragma Import (Ada, E1536, "partitions_of_sets_of_unknowns_io_E");
   E2614 : Short_Integer; pragma Import (Ada, E2614, "pentdobl_complex_laur_systems_io_E");
   E3660 : Short_Integer; pragma Import (Ada, E3660, "polyhedral_coefficient_parameters_E");
   E554 : Short_Integer; pragma Import (Ada, E554, "quad_double_ring_E");
   E983 : Short_Integer; pragma Import (Ada, E983, "quad_double_polynomials_E");
   E1736 : Short_Integer; pragma Import (Ada, E1736, "numerical_tropisms_container_E");
   E551 : Short_Integer; pragma Import (Ada, E551, "quaddobl_complex_numbers_io_E");
   E572 : Short_Integer; pragma Import (Ada, E572, "quaddobl_complex_ring_E");
   E3546 : Short_Integer; pragma Import (Ada, E3546, "quaddobl_bracket_polynomials_E");
   E3552 : Short_Integer; pragma Import (Ada, E3552, "quaddobl_bracket_systems_E");
   E697 : Short_Integer; pragma Import (Ada, E697, "quaddobl_complex_laurentials_E");
   E701 : Short_Integer; pragma Import (Ada, E701, "quaddobl_complex_polynomials_E");
   E3534 : Short_Integer; pragma Import (Ada, E3534, "matrix_indeterminates_E");
   E1638 : Short_Integer; pragma Import (Ada, E1638, "quaddobl_complex_poly_ring_E");
   E693 : Short_Integer; pragma Import (Ada, E693, "exponent_vectors_E");
   E1159 : Short_Integer; pragma Import (Ada, E1159, "floating_lifting_functions_E");
   E1480 : Short_Integer; pragma Import (Ada, E1480, "induced_permutations_E");
   E4068 : Short_Integer; pragma Import (Ada, E4068, "polynomial_drops_E");
   E987 : Short_Integer; pragma Import (Ada, E987, "quaddobl_complex_term_lists_E");
   E2303 : Short_Integer; pragma Import (Ada, E2303, "quaddobl_complex_to_real_poly_E");
   E3800 : Short_Integer; pragma Import (Ada, E3800, "assignments_in_ada_and_c_E");
   E3772 : Short_Integer; pragma Import (Ada, E3772, "c_to_ada_arrays_E");
   E1597 : Short_Integer; pragma Import (Ada, E1597, "coefficient_supported_polynomials_E");
   E3874 : Short_Integer; pragma Import (Ada, E3874, "dcmplx_vecvecs_interface_E");
   E4090 : Short_Integer; pragma Import (Ada, E4090, "dobldobl_syspool_interface_E");
   E3900 : Short_Integer; pragma Import (Ada, E3900, "double_vecvecs_interface_E");
   E1976 : Short_Integer; pragma Import (Ada, E1976, "factored_witness_vectors_E");
   E1090 : Short_Integer; pragma Import (Ada, E1090, "handle_underflow_gracefully_E");
   E1968 : Short_Integer; pragma Import (Ada, E1968, "monodromy_partitions_E");
   E3992 : Short_Integer; pragma Import (Ada, E3992, "numerical_tropisms_interface_E");
   E1740 : Short_Integer; pragma Import (Ada, E1740, "permute_operations_E");
   E3362 : Short_Integer; pragma Import (Ada, E3362, "equivariant_polynomial_systems_E");
   E3439 : Short_Integer; pragma Import (Ada, E3439, "generating_mixed_cells_E");
   E3364 : Short_Integer; pragma Import (Ada, E3364, "linear_symmetric_reduction_E");
   E3366 : Short_Integer; pragma Import (Ada, E3366, "orbits_of_solutions_E");
   E3678 : Short_Integer; pragma Import (Ada, E3678, "drivers_for_orbits_of_solutions_E");
   E3437 : Short_Integer; pragma Import (Ada, E3437, "permutations_of_faces_E");
   E3435 : Short_Integer; pragma Import (Ada, E3435, "faces_of_symmetric_polytopes_E");
   E1702 : Short_Integer; pragma Import (Ada, E1702, "planes_and_polynomials_E");
   E2149 : Short_Integer; pragma Import (Ada, E2149, "multprec_membership_tests_E");
   E1064 : Short_Integer; pragma Import (Ada, E1064, "quaddobl_complex_equality_tests_E");
   E3503 : Short_Integer; pragma Import (Ada, E3503, "checker_localization_patterns_E");
   E3530 : Short_Integer; pragma Import (Ada, E3530, "checker_posets_E");
   E3528 : Short_Integer; pragma Import (Ada, E3528, "checker_posets_io_E");
   E3580 : Short_Integer; pragma Import (Ada, E3580, "intersection_posets_E");
   E3578 : Short_Integer; pragma Import (Ada, E3578, "dobldobl_solution_posets_E");
   E3582 : Short_Integer; pragma Import (Ada, E3582, "intersection_posets_io_E");
   E3079 : Short_Integer; pragma Import (Ada, E3079, "affine_transformations_E");
   E3652 : Short_Integer; pragma Import (Ada, E3652, "quaddobl_complex_row_reduction_E");
   E2442 : Short_Integer; pragma Import (Ada, E2442, "quaddobl_complex_series_ring_E");
   E3747 : Short_Integer; pragma Import (Ada, E3747, "quaddobl_complex_vector_strings_E");
   E2439 : Short_Integer; pragma Import (Ada, E2439, "quaddobl_complex_series_io_E");
   E1068 : Short_Integer; pragma Import (Ada, E1068, "quaddobl_complex_linear_solvers_E");
   E2004 : Short_Integer; pragma Import (Ada, E2004, "evaluated_minors_E");
   E2047 : Short_Integer; pragma Import (Ada, E2047, "quaddobl_coefficient_homotopy_E");
   E1982 : Short_Integer; pragma Import (Ada, E1982, "quaddobl_complex_veclists_E");
   E2986 : Short_Integer; pragma Import (Ada, E2986, "quaddobl_complex_vector_series_E");
   E2984 : Short_Integer; pragma Import (Ada, E2984, "quaddobl_complex_matrix_series_E");
   E2504 : Short_Integer; pragma Import (Ada, E2504, "quaddobl_cseries_polynomials_E");
   E2996 : Short_Integer; pragma Import (Ada, E2996, "quaddobl_echelon_forms_E");
   E1720 : Short_Integer; pragma Import (Ada, E1720, "quaddobl_embed_laurentials_E");
   E1635 : Short_Integer; pragma Import (Ada, E1635, "quaddobl_embed_polynomials_E");
   E1076 : Short_Integer; pragma Import (Ada, E1076, "quaddobl_extrapolators_E");
   E3193 : Short_Integer; pragma Import (Ada, E3193, "quaddobl_hessian_updaters_E");
   E989 : Short_Integer; pragma Import (Ada, E989, "quaddobl_homotopy_E");
   E1656 : Short_Integer; pragma Import (Ada, E1656, "quaddobl_jacobian_trees_E");
   E1654 : Short_Integer; pragma Import (Ada, E1654, "quaddobl_deflation_matrices_E");
   E1652 : Short_Integer; pragma Import (Ada, E1652, "quaddobl_evaluate_deflation_E");
   E1658 : Short_Integer; pragma Import (Ada, E1658, "quaddobl_evaluate_deflation_io_E");
   E1486 : Short_Integer; pragma Import (Ada, E1486, "quaddobl_laur_poly_convertors_E");
   E999 : Short_Integer; pragma Import (Ada, E999, "quaddobl_laurent_homotopy_E");
   E3826 : Short_Integer; pragma Import (Ada, E3826, "quaddobl_laursys_container_E");
   E3340 : Short_Integer; pragma Import (Ada, E3340, "quaddobl_linear_reduction_E");
   E691 : Short_Integer; pragma Import (Ada, E691, "quaddobl_mathematical_functions_E");
   E689 : Short_Integer; pragma Import (Ada, E689, "polyhedral_coefficient_homotopies_E");
   E2317 : Short_Integer; pragma Import (Ada, E2317, "quad_double_eigenvalues_E");
   E1644 : Short_Integer; pragma Import (Ada, E1644, "quad_double_qr_least_squares_E");
   E2319 : Short_Integer; pragma Import (Ada, E2319, "quad_double_two_norms_E");
   E1056 : Short_Integer; pragma Import (Ada, E1056, "quad_double_vector_norms_E");
   E1419 : Short_Integer; pragma Import (Ada, E1419, "quaddobl_complex_numbers_polar_E");
   E2990 : Short_Integer; pragma Import (Ada, E2990, "quaddobl_complex_algebraic_series_E");
   E1080 : Short_Integer; pragma Import (Ada, E1080, "quaddobl_complex_qr_least_squares_E");
   E2448 : Short_Integer; pragma Import (Ada, E2448, "quaddobl_complex_series_functions_E");
   E2992 : Short_Integer; pragma Import (Ada, E2992, "quaddobl_complex_series_norms_E");
   E1082 : Short_Integer; pragma Import (Ada, E1082, "quaddobl_complex_singular_values_E");
   E3191 : Short_Integer; pragma Import (Ada, E3191, "quaddobl_complex_circuits_E");
   E1040 : Short_Integer; pragma Import (Ada, E1040, "quaddobl_complex_vector_norms_E");
   E2434 : Short_Integer; pragma Import (Ada, E2434, "hyperplane_solution_scaling_E");
   E2446 : Short_Integer; pragma Import (Ada, E2446, "quaddobl_cseries_vector_functions_E");
   E2988 : Short_Integer; pragma Import (Ada, E2988, "quaddobl_cseries_vector_norms_E");
   E1938 : Short_Integer; pragma Import (Ada, E1938, "quaddobl_durand_kerner_E");
   E3519 : Short_Integer; pragma Import (Ada, E3519, "quaddobl_matrix_inversion_E");
   E1660 : Short_Integer; pragma Import (Ada, E1660, "quaddobl_mixed_residuals_E");
   E2516 : Short_Integer; pragma Import (Ada, E2516, "homotopy_mixed_residuals_E");
   E1668 : Short_Integer; pragma Import (Ada, E1668, "quaddobl_monomial_evaluations_E");
   E3723 : Short_Integer; pragma Import (Ada, E3723, "quaddobl_nullity_polynomials_E");
   E3721 : Short_Integer; pragma Import (Ada, E3721, "quaddobl_nullity_matrices_E");
   E1631 : Short_Integer; pragma Import (Ada, E1631, "quaddobl_numerical_rank_E");
   E1629 : Short_Integer; pragma Import (Ada, E1629, "quaddobl_complex_newton_steps_E");
   E1944 : Short_Integer; pragma Import (Ada, E1944, "quaddobl_nvariate_interpolators_E");
   E1802 : Short_Integer; pragma Import (Ada, E1802, "quaddobl_point_coordinates_E");
   E1488 : Short_Integer; pragma Import (Ada, E1488, "quaddobl_poly_laur_convertors_E");
   E3810 : Short_Integer; pragma Import (Ada, E3810, "quaddobl_polysys_container_E");
   E1940 : Short_Integer; pragma Import (Ada, E1940, "quaddobl_power_traces_E");
   E2309 : Short_Integer; pragma Import (Ada, E2309, "quaddobl_quad_parameters_E");
   E868 : Short_Integer; pragma Import (Ada, E868, "quaddobl_random_numbers_E");
   E1928 : Short_Integer; pragma Import (Ada, E1928, "quaddobl_lined_hypersurfaces_E");
   E1642 : Short_Integer; pragma Import (Ada, E1642, "quaddobl_random_matrices_E");
   E4080 : Short_Integer; pragma Import (Ada, E4080, "quaddobl_random_polynomials_E");
   E1281 : Short_Integer; pragma Import (Ada, E1281, "quaddobl_random_vectors_E");
   E1978 : Short_Integer; pragma Import (Ada, E1978, "monodromy_polynomial_breakup_E");
   E1776 : Short_Integer; pragma Import (Ada, E1776, "quaddobl_hypersurface_witsets_E");
   E2998 : Short_Integer; pragma Import (Ada, E2998, "quaddobl_interpolating_cseries_E");
   E1804 : Short_Integer; pragma Import (Ada, E1804, "quaddobl_plane_representations_E");
   E3481 : Short_Integer; pragma Import (Ada, E3481, "quaddobl_moving_planes_E");
   E1672 : Short_Integer; pragma Import (Ada, E1672, "quaddobl_polynomial_flatteners_E");
   E3049 : Short_Integer; pragma Import (Ada, E3049, "quaddobl_rational_approximations_E");
   E3047 : Short_Integer; pragma Import (Ada, E3047, "quaddobl_pade_approximants_E");
   E3483 : Short_Integer; pragma Import (Ada, E3483, "quaddobl_rescaling_coordinates_E");
   E2994 : Short_Integer; pragma Import (Ada, E2994, "quaddobl_series_matrix_solvers_E");
   E3121 : Short_Integer; pragma Import (Ada, E3121, "hessian_convolution_circuits_E");
   E3175 : Short_Integer; pragma Import (Ada, E3175, "hyperplane_convolution_scaling_E");
   E3127 : Short_Integer; pragma Import (Ada, E3127, "jacobian_convolution_circuits_E");
   E3135 : Short_Integer; pragma Import (Ada, E3135, "quaddobl_newton_convolutions_E");
   E3133 : Short_Integer; pragma Import (Ada, E3133, "quaddobl_newton_convolution_steps_E");
   E1670 : Short_Integer; pragma Import (Ada, E1670, "quaddobl_speelpenning_products_E");
   E1666 : Short_Integer; pragma Import (Ada, E1666, "quaddobl_gradient_evaluations_E");
   E4044 : Short_Integer; pragma Import (Ada, E4044, "quaddobl_systems_pool_E");
   E4092 : Short_Integer; pragma Import (Ada, E4092, "quaddobl_syspool_interface_E");
   E1942 : Short_Integer; pragma Import (Ada, E1942, "quaddobl_univariate_interpolators_E");
   E3278 : Short_Integer; pragma Import (Ada, E3278, "quaddobl_vector_splitters_E");
   E3280 : Short_Integer; pragma Import (Ada, E3280, "quaddobl_coefficient_convolutions_E");
   E1060 : Short_Integer; pragma Import (Ada, E1060, "quaddobl_vlprs_tables_E");
   E1058 : Short_Integer; pragma Import (Ada, E1058, "quaddobl_vlprs_algorithm_E");
   E1050 : Short_Integer; pragma Import (Ada, E1050, "directions_of_quaddobl_paths_E");
   E1484 : Short_Integer; pragma Import (Ada, E1484, "random_coefficient_systems_E");
   E3177 : Short_Integer; pragma Import (Ada, E3177, "residual_convolution_circuits_E");
   E1534 : Short_Integer; pragma Import (Ada, E1534, "root_counters_output_E");
   E1674 : Short_Integer; pragma Import (Ada, E1674, "root_refining_parameters_E");
   E3630 : Short_Integer; pragma Import (Ada, E3630, "sagbi_homotopies_E");
   E3181 : Short_Integer; pragma Import (Ada, E3181, "shift_coefficient_convolutions_E");
   E3183 : Short_Integer; pragma Import (Ada, E3183, "shift_convolution_circuits_E");
   E1806 : Short_Integer; pragma Import (Ada, E1806, "shuffle_polynomials_E");
   E634 : Short_Integer; pragma Import (Ada, E634, "standard_complex_exponentiation_E");
   E627 : Short_Integer; pragma Import (Ada, E627, "dobldobl_complex_exponentiation_E");
   E625 : Short_Integer; pragma Import (Ada, E625, "dobldobl_binomial_systems_E");
   E623 : Short_Integer; pragma Import (Ada, E623, "dobldobl_binomial_solvers_E");
   E670 : Short_Integer; pragma Import (Ada, E670, "dobldobl_simplex_systems_E");
   E621 : Short_Integer; pragma Import (Ada, E621, "dobldobl_simplex_solvers_E");
   E619 : Short_Integer; pragma Import (Ada, E619, "dobldobl_simpomial_solvers_E");
   E1417 : Short_Integer; pragma Import (Ada, E1417, "quaddobl_complex_exponentiation_E");
   E1195 : Short_Integer; pragma Import (Ada, E1195, "standard_binomial_systems_E");
   E1193 : Short_Integer; pragma Import (Ada, E1193, "standard_binomial_solvers_E");
   E1139 : Short_Integer; pragma Import (Ada, E1139, "standard_complex_laur_systems_io_E");
   E3890 : Short_Integer; pragma Import (Ada, E3890, "double_puiseux_structures_E");
   E3888 : Short_Integer; pragma Import (Ada, E3888, "laurent_homotopy_derivatives_E");
   E3880 : Short_Integer; pragma Import (Ada, E3880, "double_newton_puiseux_E");
   E3878 : Short_Integer; pragma Import (Ada, E3878, "double_puiseux_interface_E");
   E3757 : Short_Integer; pragma Import (Ada, E3757, "parse_strings_to_polynomials_E");
   E2498 : Short_Integer; pragma Import (Ada, E2498, "standard_complex_series_functions_E");
   E2496 : Short_Integer; pragma Import (Ada, E2496, "standard_cseries_vector_functions_E");
   E2002 : Short_Integer; pragma Import (Ada, E2002, "standard_exponent_transformations_E");
   E2000 : Short_Integer; pragma Import (Ada, E2000, "standard_binomial_varieties_E");
   E1998 : Short_Integer; pragma Import (Ada, E1998, "standard_binomial_varieties_io_E");
   E2031 : Short_Integer; pragma Import (Ada, E2031, "dobldobl_monomial_maps_E");
   E2033 : Short_Integer; pragma Import (Ada, E2033, "quaddobl_monomial_maps_E");
   E1613 : Short_Integer; pragma Import (Ada, E1613, "standard_jacobian_evaluations_E");
   E1599 : Short_Integer; pragma Import (Ada, E1599, "dobldobl_jacobian_evaluations_E");
   E1595 : Short_Integer; pragma Import (Ada, E1595, "dobldobl_jacobian_circuits_E");
   E1664 : Short_Integer; pragma Import (Ada, E1664, "quaddobl_jacobian_evaluations_E");
   E1662 : Short_Integer; pragma Import (Ada, E1662, "quaddobl_jacobian_circuits_E");
   E2169 : Short_Integer; pragma Import (Ada, E2169, "standard_membership_tests_E");
   E2021 : Short_Integer; pragma Import (Ada, E2021, "standard_monomial_maps_E");
   E3986 : Short_Integer; pragma Import (Ada, E3986, "monomial_maps_container_E");
   E1994 : Short_Integer; pragma Import (Ada, E1994, "standard_monomial_map_filters_E");
   E1996 : Short_Integer; pragma Import (Ada, E1996, "standard_monomial_maps_io_E");
   E2029 : Short_Integer; pragma Import (Ada, E2029, "standard_monomial_map_solvers_E");
   E2023 : Short_Integer; pragma Import (Ada, E2023, "standard_permanent_factors_E");
   E1992 : Short_Integer; pragma Import (Ada, E1992, "black_box_binomial_solvers_E");
   E3984 : Short_Integer; pragma Import (Ada, E3984, "monomial_maps_interface_E");
   E2337 : Short_Integer; pragma Import (Ada, E2337, "standard_quad_parameters_E");
   E2343 : Short_Integer; pragma Import (Ada, E2343, "standard_quad_turn_points_E");
   E1208 : Short_Integer; pragma Import (Ada, E1208, "standard_simplex_systems_E");
   E1191 : Short_Integer; pragma Import (Ada, E1191, "standard_simplex_solvers_E");
   E1189 : Short_Integer; pragma Import (Ada, E1189, "standard_simpomial_solvers_E");
   E3638 : Short_Integer; pragma Import (Ada, E3638, "standard_solution_posets_E");
   E2173 : Short_Integer; pragma Import (Ada, E2173, "standard_subspace_restrictions_E");
   E3570 : Short_Integer; pragma Import (Ada, E3570, "start_flag_homotopies_E");
   E703 : Short_Integer; pragma Import (Ada, E703, "supports_of_polynomial_systems_E");
   E3397 : Short_Integer; pragma Import (Ada, E3397, "demics_translated_setup_E");
   E3378 : Short_Integer; pragma Import (Ada, E3378, "demics_translated_E");
   E2125 : Short_Integer; pragma Import (Ada, E2125, "driver_to_rank_supports_E");
   E3429 : Short_Integer; pragma Import (Ada, E3429, "generic_position_E");
   E3952 : Short_Integer; pragma Import (Ada, E3952, "giftwrap_interface_E");
   E3401 : Short_Integer; pragma Import (Ada, E3401, "pipelined_cell_indices_E");
   E2201 : Short_Integer; pragma Import (Ada, E2201, "standard_binomial_factors_E");
   E2211 : Short_Integer; pragma Import (Ada, E2211, "standard_binomial_factors_io_E");
   E2213 : Short_Integer; pragma Import (Ada, E2213, "standard_puiseux_certificates_E");
   E2215 : Short_Integer; pragma Import (Ada, E2215, "standard_puiseux_certificates_io_E");
   E2199 : Short_Integer; pragma Import (Ada, E2199, "driver_for_common_factor_E");
   E3767 : Short_Integer; pragma Import (Ada, E3767, "symbol_table_order_E");
   E3560 : Short_Integer; pragma Import (Ada, E3560, "symbolic_minor_equations_E");
   E3594 : Short_Integer; pragma Import (Ada, E3594, "numeric_minor_equations_E");
   E3592 : Short_Integer; pragma Import (Ada, E3592, "determinantal_systems_E");
   E3602 : Short_Integer; pragma Import (Ada, E3602, "pieri_homotopies_E");
   E3562 : Short_Integer; pragma Import (Ada, E3562, "remember_numeric_minors_E");
   E3558 : Short_Integer; pragma Import (Ada, E3558, "symbolic_schubert_conditions_E");
   E3566 : Short_Integer; pragma Import (Ada, E3566, "setup_flag_homotopies_E");
   E3636 : Short_Integer; pragma Import (Ada, E3636, "flag_transformations_E");
   E3441 : Short_Integer; pragma Import (Ada, E3441, "symmetric_lifting_functions_E");
   E3447 : Short_Integer; pragma Import (Ada, E3447, "symmetric_randomize_E");
   E3368 : Short_Integer; pragma Import (Ada, E3368, "symmetric_set_structure_E");
   E3129 : Short_Integer; pragma Import (Ada, E3129, "three_way_minima_E");
   E1210 : Short_Integer; pragma Import (Ada, E1210, "transforming_laurent_systems_E");
   E873 : Short_Integer; pragma Import (Ada, E873, "triple_double_constants_E");
   E872 : Short_Integer; pragma Import (Ada, E872, "tripdobl_mathematical_functions_E");
   E971 : Short_Integer; pragma Import (Ada, E971, "triple_double_numbers_io_E");
   E969 : Short_Integer; pragma Import (Ada, E969, "multprec_tripdobl_convertors_E");
   E566 : Short_Integer; pragma Import (Ada, E566, "triple_double_ring_E");
   E2634 : Short_Integer; pragma Import (Ada, E2634, "triple_double_polynomials_E");
   E913 : Short_Integer; pragma Import (Ada, E913, "decadobl_complex_numbers_cv_E");
   E2530 : Short_Integer; pragma Import (Ada, E2530, "decadobl_polynomial_convertors_E");
   E2544 : Short_Integer; pragma Import (Ada, E2544, "decadobl_complex_laurentials_io_E");
   E2542 : Short_Integer; pragma Import (Ada, E2542, "decadobl_complex_laur_systems_io_E");
   E935 : Short_Integer; pragma Import (Ada, E935, "hexadobl_complex_numbers_cv_E");
   E2554 : Short_Integer; pragma Import (Ada, E2554, "hexadobl_polynomial_convertors_E");
   E2568 : Short_Integer; pragma Import (Ada, E2568, "hexadobl_complex_laurentials_io_E");
   E2566 : Short_Integer; pragma Import (Ada, E2566, "hexadobl_complex_laur_systems_io_E");
   E563 : Short_Integer; pragma Import (Ada, E563, "quaddobl_complex_numbers_cv_E");
   E3540 : Short_Integer; pragma Import (Ada, E3540, "bracket_polynomial_convertors_E");
   E2518 : Short_Integer; pragma Import (Ada, E2518, "homotopy_newton_steps_E");
   E979 : Short_Integer; pragma Import (Ada, E979, "quaddobl_polynomial_convertors_E");
   E977 : Short_Integer; pragma Import (Ada, E977, "quaddobl_complex_laur_strings_E");
   E1263 : Short_Integer; pragma Import (Ada, E1263, "quaddobl_complex_laurentials_io_E");
   E1261 : Short_Integer; pragma Import (Ada, E1261, "quaddobl_complex_laur_systems_io_E");
   E985 : Short_Integer; pragma Import (Ada, E985, "quaddobl_complex_poly_strings_E");
   E3071 : Short_Integer; pragma Import (Ada, E3071, "quaddobl_pade_approximants_io_E");
   E973 : Short_Integer; pragma Import (Ada, E973, "tripdobl_complex_numbers_cv_E");
   E2644 : Short_Integer; pragma Import (Ada, E2644, "tripdobl_complex_numbers_io_E");
   E3237 : Short_Integer; pragma Import (Ada, E3237, "fabry_on_homotopy_helpers_E");
   E2764 : Short_Integer; pragma Import (Ada, E2764, "tripdobl_complex_numbers_polar_E");
   E577 : Short_Integer; pragma Import (Ada, E577, "tripdobl_complex_ring_E");
   E2630 : Short_Integer; pragma Import (Ada, E2630, "tripdobl_complex_laurentials_E");
   E897 : Short_Integer; pragma Import (Ada, E897, "tripdobl_complex_polynomials_E");
   E1506 : Short_Integer; pragma Import (Ada, E1506, "degrees_in_sets_of_unknowns_E");
   E3457 : Short_Integer; pragma Import (Ada, E3457, "degree_structure_E");
   E3453 : Short_Integer; pragma Import (Ada, E3453, "interpolating_homotopies_E");
   E3451 : Short_Integer; pragma Import (Ada, E3451, "interpolating_homotopies_driver_E");
   E1504 : Short_Integer; pragma Import (Ada, E1504, "m_homogeneous_bezout_numbers_E");
   E1514 : Short_Integer; pragma Import (Ada, E1514, "m_homogeneous_permanent_factors_E");
   E1512 : Short_Integer; pragma Import (Ada, E1512, "m_homogeneous_start_systems_E");
   E3459 : Short_Integer; pragma Import (Ada, E3459, "multi_homogeneous_start_systems_E");
   E3020 : Short_Integer; pragma Import (Ada, E3020, "tripdobl_complex_qr_least_squares_E");
   E2762 : Short_Integer; pragma Import (Ada, E2762, "tripdobl_complex_series_functions_E");
   E2487 : Short_Integer; pragma Import (Ada, E2487, "tripdobl_complex_series_ring_E");
   E3022 : Short_Integer; pragma Import (Ada, E3022, "tripdobl_complex_singular_values_E");
   E3030 : Short_Integer; pragma Import (Ada, E3030, "tripdobl_complex_vector_norms_E");
   E975 : Short_Integer; pragma Import (Ada, E975, "tripdobl_complex_vectors_cv_E");
   E967 : Short_Integer; pragma Import (Ada, E967, "tripdobl_complex_solutions_E");
   E2642 : Short_Integer; pragma Import (Ada, E2642, "tripdobl_complex_solutions_io_E");
   E2766 : Short_Integer; pragma Import (Ada, E2766, "tripdobl_complex_series_io_E");
   E3012 : Short_Integer; pragma Import (Ada, E3012, "tripdobl_complex_algebraic_series_E");
   E3014 : Short_Integer; pragma Import (Ada, E3014, "tripdobl_complex_series_norms_E");
   E3109 : Short_Integer; pragma Import (Ada, E3109, "convergence_radius_estimates_E");
   E919 : Short_Integer; pragma Import (Ada, E919, "decadobl_complex_vectors_cv_E");
   E911 : Short_Integer; pragma Import (Ada, E911, "decadobl_complex_solutions_E");
   E2546 : Short_Integer; pragma Import (Ada, E2546, "decadobl_complex_solutions_io_E");
   E941 : Short_Integer; pragma Import (Ada, E941, "hexadobl_complex_vectors_cv_E");
   E933 : Short_Integer; pragma Import (Ada, E933, "hexadobl_complex_solutions_E");
   E2570 : Short_Integer; pragma Import (Ada, E2570, "hexadobl_complex_solutions_io_E");
   E569 : Short_Integer; pragma Import (Ada, E569, "quaddobl_complex_vectors_cv_E");
   E559 : Short_Integer; pragma Import (Ada, E559, "quaddobl_complex_solutions_E");
   E3852 : Short_Integer; pragma Import (Ada, E3852, "assignments_of_solutions_E");
   E1772 : Short_Integer; pragma Import (Ada, E1772, "hypersurfaces_and_filters_E");
   E909 : Short_Integer; pragma Import (Ada, E909, "projective_transformations_E");
   E1415 : Short_Integer; pragma Import (Ada, E1415, "quaddobl_binomial_systems_E");
   E557 : Short_Integer; pragma Import (Ada, E557, "quaddobl_complex_solutions_io_E");
   E1810 : Short_Integer; pragma Import (Ada, E1810, "black_box_helpers_E");
   E545 : Short_Integer; pragma Import (Ada, E545, "process_io_E");
   E539 : Short_Integer; pragma Import (Ada, E539, "dobldobl_correctors_E");
   E3467 : Short_Integer; pragma Import (Ada, E3467, "dobldobl_intrinsic_newton_E");
   E3469 : Short_Integer; pragma Import (Ada, E3469, "dobldobl_intrinsic_trackers_E");
   E3465 : Short_Integer; pragma Import (Ada, E3465, "dobldobl_intrinsic_continuation_E");
   E613 : Short_Integer; pragma Import (Ada, E613, "dobldobl_orthogonal_correctors_E");
   E3998 : Short_Integer; pragma Import (Ada, E3998, "dobldobl_path_tracker_E");
   E515 : Short_Integer; pragma Import (Ada, E515, "dobldobl_path_trackers_E");
   E509 : Short_Integer; pragma Import (Ada, E509, "dobldobl_incfix_continuation_E");
   E461 : Short_Integer; pragma Import (Ada, E461, "dobldobl_polyhedral_continuation_E");
   E1116 : Short_Integer; pragma Import (Ada, E1116, "multprec_correctors_E");
   E4000 : Short_Integer; pragma Import (Ada, E4000, "multprec_path_tracker_E");
   E1114 : Short_Integer; pragma Import (Ada, E1114, "multprec_path_trackers_E");
   E1110 : Short_Integer; pragma Import (Ada, E1110, "multprec_incfix_continuation_E");
   E1619 : Short_Integer; pragma Import (Ada, E1619, "prompt_for_solutions_E");
   E1279 : Short_Integer; pragma Import (Ada, E1279, "quaddobl_condition_tables_E");
   E1044 : Short_Integer; pragma Import (Ada, E1044, "quaddobl_continuation_data_E");
   E1046 : Short_Integer; pragma Import (Ada, E1046, "quaddobl_continuation_data_io_E");
   E1066 : Short_Integer; pragma Import (Ada, E1066, "quaddobl_correctors_E");
   E1070 : Short_Integer; pragma Import (Ada, E1070, "quaddobl_data_on_path_E");
   E1633 : Short_Integer; pragma Import (Ada, E1633, "quaddobl_deflate_singularities_E");
   E1646 : Short_Integer; pragma Import (Ada, E1646, "quaddobl_deflation_trees_E");
   E1730 : Short_Integer; pragma Import (Ada, E1730, "quaddobl_diagonal_solutions_E");
   E3477 : Short_Integer; pragma Import (Ada, E3477, "quaddobl_intrinsic_newton_E");
   E1800 : Short_Integer; pragma Import (Ada, E1800, "quaddobl_intrinsic_solutions_E");
   E3479 : Short_Integer; pragma Import (Ada, E3479, "quaddobl_intrinsic_trackers_E");
   E3475 : Short_Integer; pragma Import (Ada, E3475, "quaddobl_intrinsic_continuation_E");
   E1814 : Short_Integer; pragma Import (Ada, E1814, "quaddobl_linear_poly_solvers_E");
   E3650 : Short_Integer; pragma Import (Ada, E3650, "quaddobl_linear_product_system_E");
   E1650 : Short_Integer; pragma Import (Ada, E1650, "quaddobl_multiple_solutions_E");
   E3719 : Short_Integer; pragma Import (Ada, E3719, "quaddobl_multiplicity_structure_E");
   E1078 : Short_Integer; pragma Import (Ada, E1078, "quaddobl_orthogonal_correctors_E");
   E2305 : Short_Integer; pragma Import (Ada, E2305, "quaddobl_parameter_solutions_E");
   E1285 : Short_Integer; pragma Import (Ada, E1285, "quaddobl_point_lists_E");
   E1074 : Short_Integer; pragma Import (Ada, E1074, "quaddobl_predictors_E");
   E1072 : Short_Integer; pragma Import (Ada, E1072, "quaddobl_dispatch_predictors_E");
   E4002 : Short_Integer; pragma Import (Ada, E4002, "quaddobl_path_tracker_E");
   E1048 : Short_Integer; pragma Import (Ada, E1048, "quaddobl_path_trackers_E");
   E1042 : Short_Integer; pragma Import (Ada, E1042, "quaddobl_incfix_continuation_E");
   E1287 : Short_Integer; pragma Import (Ada, E1287, "quaddobl_quad_trees_E");
   E2321 : Short_Integer; pragma Import (Ada, E2321, "quaddobl_quad_turn_points_io_E");
   E2315 : Short_Integer; pragma Import (Ada, E2315, "quaddobl_quad_turn_points_E");
   E1424 : Short_Integer; pragma Import (Ada, E1424, "quaddobl_radial_solvers_E");
   E1413 : Short_Integer; pragma Import (Ada, E1413, "quaddobl_binomial_solvers_E");
   E2049 : Short_Integer; pragma Import (Ada, E2049, "quaddobl_scaling_E");
   E1446 : Short_Integer; pragma Import (Ada, E1446, "quaddobl_simplex_systems_E");
   E1444 : Short_Integer; pragma Import (Ada, E1444, "quaddobl_simplex_solvers_E");
   E1442 : Short_Integer; pragma Import (Ada, E1442, "quaddobl_simpomial_solvers_E");
   E1440 : Short_Integer; pragma Import (Ada, E1440, "quaddobl_polyhedral_continuation_E");
   E1267 : Short_Integer; pragma Import (Ada, E1267, "quaddobl_solution_diagnostics_E");
   E1265 : Short_Integer; pragma Import (Ada, E1265, "quaddobl_solution_filters_E");
   E2043 : Short_Integer; pragma Import (Ada, E2043, "quaddobl_solution_manipulators_E");
   E3632 : Short_Integer; pragma Import (Ada, E3632, "quaddobl_solution_posets_E");
   E2045 : Short_Integer; pragma Import (Ada, E2045, "quaddobl_solution_splitters_E");
   E3930 : Short_Integer; pragma Import (Ada, E3930, "quaddobl_solution_strings_E");
   E3812 : Short_Integer; pragma Import (Ada, E3812, "quaddobl_solutions_container_E");
   E1742 : Short_Integer; pragma Import (Ada, E1742, "quaddobl_solutions_queue_E");
   E1448 : Short_Integer; pragma Import (Ada, E1448, "quaddobl_stable_homotopies_E");
   E4126 : Short_Integer; pragma Import (Ada, E4126, "quaddobl_witness_solutions_E");
   E3568 : Short_Integer; pragma Import (Ada, E3568, "recondition_swap_homotopies_E");
   E4036 : Short_Integer; pragma Import (Ada, E4036, "scaling_interface_E");
   E2452 : Short_Integer; pragma Import (Ada, E2452, "series_and_solutions_E");
   E2427 : Short_Integer; pragma Import (Ada, E2427, "homotopy_coefficient_scaling_E");
   E3041 : Short_Integer; pragma Import (Ada, E3041, "singular_values_of_hessians_E");
   E3083 : Short_Integer; pragma Import (Ada, E3083, "solution_drops_E");
   E3189 : Short_Integer; pragma Import (Ada, E3189, "standard_circuit_makers_E");
   E1088 : Short_Integer; pragma Import (Ada, E1088, "standard_correctors_E");
   E1784 : Short_Integer; pragma Import (Ada, E1784, "standard_intrinsic_newton_E");
   E1786 : Short_Integer; pragma Import (Ada, E1786, "standard_intrinsic_trackers_E");
   E1782 : Short_Integer; pragma Import (Ada, E1782, "standard_intrinsic_continuation_E");
   E1100 : Short_Integer; pragma Import (Ada, E1100, "standard_orthogonal_correctors_E");
   E4004 : Short_Integer; pragma Import (Ada, E4004, "standard_path_tracker_E");
   E1086 : Short_Integer; pragma Import (Ada, E1086, "standard_path_trackers_E");
   E1432 : Short_Integer; pragma Import (Ada, E1432, "single_polyhedral_trackers_E");
   E4056 : Short_Integer; pragma Import (Ada, E4056, "standard_solspool_interface_E");
   E4130 : Short_Integer; pragma Import (Ada, E4130, "store_witness_solutions_E");
   E1552 : Short_Integer; pragma Import (Ada, E1552, "total_degree_start_systems_E");
   E3336 : Short_Integer; pragma Import (Ada, E3336, "reduction_of_polynomial_systems_E");
   E4026 : Short_Integer; pragma Import (Ada, E4026, "reduction_interface_E");
   E3018 : Short_Integer; pragma Import (Ada, E3018, "tripdobl_complex_linear_solvers_E");
   E3051 : Short_Integer; pragma Import (Ada, E3051, "tripdobl_coefficient_homotopy_E");
   E3008 : Short_Integer; pragma Import (Ada, E3008, "tripdobl_complex_vector_series_E");
   E3002 : Short_Integer; pragma Import (Ada, E3002, "tripdobl_complex_matrix_series_E");
   E2817 : Short_Integer; pragma Import (Ada, E2817, "tripdobl_cseries_polynomials_E");
   E2724 : Short_Integer; pragma Import (Ada, E2724, "complex_series_and_polynomials_E");
   E2722 : Short_Integer; pragma Import (Ada, E2722, "series_and_homotopies_E");
   E2870 : Short_Integer; pragma Import (Ada, E2870, "standard_newton_matrix_series_E");
   E2829 : Short_Integer; pragma Import (Ada, E2829, "decadobl_newton_matrix_series_E");
   E2886 : Short_Integer; pragma Import (Ada, E2886, "dobldobl_newton_matrix_series_E");
   E2904 : Short_Integer; pragma Import (Ada, E2904, "octodobl_newton_matrix_series_E");
   E2943 : Short_Integer; pragma Import (Ada, E2943, "pentdobl_newton_matrix_series_E");
   E2982 : Short_Integer; pragma Import (Ada, E2982, "quaddobl_newton_matrix_series_E");
   E3010 : Short_Integer; pragma Import (Ada, E3010, "tripdobl_cseries_vector_norms_E");
   E3024 : Short_Integer; pragma Import (Ada, E3024, "tripdobl_echelon_forms_E");
   E3059 : Short_Integer; pragma Import (Ada, E3059, "tripdobl_homotopy_E");
   E2626 : Short_Integer; pragma Import (Ada, E2626, "tripdobl_polynomial_convertors_E");
   E2640 : Short_Integer; pragma Import (Ada, E2640, "tripdobl_complex_laurentials_io_E");
   E2638 : Short_Integer; pragma Import (Ada, E2638, "tripdobl_complex_laur_systems_io_E");
   E870 : Short_Integer; pragma Import (Ada, E870, "tripdobl_random_numbers_E");
   E822 : Short_Integer; pragma Import (Ada, E822, "homogenization_E");
   E795 : Short_Integer; pragma Import (Ada, E795, "drivers_for_homotopy_creation_E");
   E2684 : Short_Integer; pragma Import (Ada, E2684, "multi_projective_transformations_E");
   E3274 : Short_Integer; pragma Import (Ada, E3274, "multitasked_algodiff_convolutions_E");
   E3034 : Short_Integer; pragma Import (Ada, E3034, "tripdobl_random_vectors_E");
   E3026 : Short_Integer; pragma Import (Ada, E3026, "tripdobl_interpolating_cseries_E");
   E3016 : Short_Integer; pragma Import (Ada, E3016, "tripdobl_series_matrix_solvers_E");
   E3282 : Short_Integer; pragma Import (Ada, E3282, "multitasked_series_linearization_E");
   E3288 : Short_Integer; pragma Import (Ada, E3288, "tripdobl_newton_convolutions_E");
   E3241 : Short_Integer; pragma Import (Ada, E3241, "multitasked_newton_convolutions_E");
   E3239 : Short_Integer; pragma Import (Ada, E3239, "multitasked_power_newton_E");
   E3318 : Short_Integer; pragma Import (Ada, E3318, "tripdobl_newton_convolution_steps_E");
   E3000 : Short_Integer; pragma Import (Ada, E3000, "tripdobl_newton_matrix_series_E");
   E1496 : Short_Integer; pragma Import (Ada, E1496, "unfolding_subdivisions_E");
   E1494 : Short_Integer; pragma Import (Ada, E1494, "triangulations_and_subdivisions_E");
   E3782 : Short_Integer; pragma Import (Ada, E3782, "unix_command_line_E");
   E3872 : Short_Integer; pragma Import (Ada, E3872, "use_avvcon_E");
   E3950 : Short_Integer; pragma Import (Ada, E3950, "use_giftwrap_E");
   E3982 : Short_Integer; pragma Import (Ada, E3982, "use_mapcon_E");
   E3990 : Short_Integer; pragma Import (Ada, E3990, "use_numbtrop_E");
   E4024 : Short_Integer; pragma Import (Ada, E4024, "use_reduction_E");
   E4034 : Short_Integer; pragma Import (Ada, E4034, "use_scaling_E");
   E4054 : Short_Integer; pragma Import (Ada, E4054, "use_solpool_E");
   E1108 : Short_Integer; pragma Import (Ada, E1108, "valid_vector_checks_E");
   E1084 : Short_Integer; pragma Import (Ada, E1084, "standard_incfix_continuation_E");
   E2279 : Short_Integer; pragma Import (Ada, E2279, "complex_convex_continuation_E");
   E1033 : Short_Integer; pragma Import (Ada, E1033, "drivers_for_path_directions_E");
   E4012 : Short_Integer; pragma Import (Ada, E4012, "varbprec_homotopy_E");
   E3751 : Short_Integer; pragma Import (Ada, E3751, "varbprec_matrix_conversions_E");
   E3753 : Short_Integer; pragma Import (Ada, E3753, "varbprec_polynomial_evaluations_E");
   E3205 : Short_Integer; pragma Import (Ada, E3205, "varbprec_vecvec_conversions_E");
   E3203 : Short_Integer; pragma Import (Ada, E3203, "system_convolution_circuits_E");
   E3749 : Short_Integer; pragma Import (Ada, E3749, "varbprec_complex_linear_solvers_E");
   E3743 : Short_Integer; pragma Import (Ada, E3743, "varbprec_complex_newton_steps_E");
   E4010 : Short_Integer; pragma Import (Ada, E4010, "varbprec_corrector_steps_E");
   E4006 : Short_Integer; pragma Import (Ada, E4006, "varbprec_path_tracker_E");
   E3737 : Short_Integer; pragma Import (Ada, E3737, "verification_of_solutions_E");
   E3780 : Short_Integer; pragma Import (Ada, E3780, "verify_solution_maps_E");
   E1337 : Short_Integer; pragma Import (Ada, E1337, "volumes_E");
   E1704 : Short_Integer; pragma Import (Ada, E1704, "witness_sets_E");
   E1700 : Short_Integer; pragma Import (Ada, E1700, "dobldobl_diagonal_polynomials_E");
   E2091 : Short_Integer; pragma Import (Ada, E2091, "homotopy_membership_target_E");
   E1728 : Short_Integer; pragma Import (Ada, E1728, "quaddobl_diagonal_polynomials_E");
   E1732 : Short_Integer; pragma Import (Ada, E1732, "standard_diagonal_polynomials_E");
   E1698 : Short_Integer; pragma Import (Ada, E1698, "extrinsic_diagonal_homotopies_E");
   E3574 : Short_Integer; pragma Import (Ada, E3574, "wrapped_solution_vectors_E");
   E719 : Short_Integer; pragma Import (Ada, E719, "write_factors_E");
   E713 : Short_Integer; pragma Import (Ada, E713, "standard_complex_polynomials_io_E");
   E711 : Short_Integer; pragma Import (Ada, E711, "multprec_complex_polynomials_io_E");
   E2528 : Short_Integer; pragma Import (Ada, E2528, "decadobl_complex_polynomials_io_E");
   E709 : Short_Integer; pragma Import (Ada, E709, "dobldobl_complex_polynomials_io_E");
   E2552 : Short_Integer; pragma Import (Ada, E2552, "hexadobl_complex_polynomials_io_E");
   E721 : Short_Integer; pragma Import (Ada, E721, "multprec_complex_poly_systems_io_E");
   E2526 : Short_Integer; pragma Import (Ada, E2526, "decadobl_complex_poly_systems_io_E");
   E2540 : Short_Integer; pragma Import (Ada, E2540, "decadobl_system_and_solutions_io_E");
   E707 : Short_Integer; pragma Import (Ada, E707, "dobldobl_complex_poly_systems_io_E");
   E705 : Short_Integer; pragma Import (Ada, E705, "dobldobl_system_and_solutions_io_E");
   E2063 : Short_Integer; pragma Import (Ada, E2063, "dobldobl_system_readers_E");
   E1411 : Short_Integer; pragma Import (Ada, E1411, "dobldobl_tableau_formats_E");
   E1259 : Short_Integer; pragma Import (Ada, E1259, "dobldobl_tracked_solutions_io_E");
   E2301 : Short_Integer; pragma Import (Ada, E2301, "double_double_poly_systems_io_E");
   E2285 : Short_Integer; pragma Import (Ada, E2285, "dobldobl_quad_sweepers_E");
   E2550 : Short_Integer; pragma Import (Ada, E2550, "hexadobl_complex_poly_systems_io_E");
   E2564 : Short_Integer; pragma Import (Ada, E2564, "hexadobl_system_and_solutions_io_E");
   E3684 : Short_Integer; pragma Import (Ada, E3684, "multprec_system_and_solutions_io_E");
   E2576 : Short_Integer; pragma Import (Ada, E2576, "octodobl_complex_polynomials_io_E");
   E2574 : Short_Integer; pragma Import (Ada, E2574, "octodobl_complex_poly_systems_io_E");
   E2588 : Short_Integer; pragma Import (Ada, E2588, "octodobl_system_and_solutions_io_E");
   E2600 : Short_Integer; pragma Import (Ada, E2600, "pentdobl_complex_polynomials_io_E");
   E2598 : Short_Integer; pragma Import (Ada, E2598, "pentdobl_complex_poly_systems_io_E");
   E2612 : Short_Integer; pragma Import (Ada, E2612, "pentdobl_system_and_solutions_io_E");
   E1137 : Short_Integer; pragma Import (Ada, E1137, "quaddobl_complex_polynomials_io_E");
   E1986 : Short_Integer; pragma Import (Ada, E1986, "black_box_univariate_solvers_E");
   E1135 : Short_Integer; pragma Import (Ada, E1135, "quaddobl_complex_poly_systems_io_E");
   E2313 : Short_Integer; pragma Import (Ada, E2313, "quad_double_poly_systems_io_E");
   E2311 : Short_Integer; pragma Import (Ada, E2311, "quaddobl_quad_sweepers_E");
   E1490 : Short_Integer; pragma Import (Ada, E1490, "quaddobl_system_and_solutions_io_E");
   E2117 : Short_Integer; pragma Import (Ada, E2117, "quaddobl_system_readers_E");
   E1428 : Short_Integer; pragma Import (Ada, E1428, "quaddobl_tableau_formats_E");
   E1269 : Short_Integer; pragma Import (Ada, E1269, "quaddobl_tracked_solutions_io_E");
   E3564 : Short_Integer; pragma Import (Ada, E3564, "remember_symbolic_minors_E");
   E3538 : Short_Integer; pragma Import (Ada, E3538, "numeric_schubert_conditions_E");
   E1550 : Short_Integer; pragma Import (Ada, E1550, "standard_complex_poly_lists_io_E");
   E3509 : Short_Integer; pragma Import (Ada, E3509, "checker_homotopies_E");
   E3536 : Short_Integer; pragma Import (Ada, E3536, "moving_flag_homotopies_E");
   E771 : Short_Integer; pragma Import (Ada, E771, "standard_complex_poly_systems_io_E");
   E1808 : Short_Integer; pragma Import (Ada, E1808, "black_box_linear_solvers_E");
   E2077 : Short_Integer; pragma Import (Ada, E2077, "cascade_homotopies_io_E");
   E3350 : Short_Integer; pragma Import (Ada, E3350, "driver_for_symmetric_set_structure_E");
   E1756 : Short_Integer; pragma Import (Ada, E1756, "extrinsic_diagonal_homotopies_io_E");
   E1347 : Short_Integer; pragma Import (Ada, E1347, "main_lifting_functions_E");
   E775 : Short_Integer; pragma Import (Ada, E775, "main_poly_continuation_E");
   E3348 : Short_Integer; pragma Import (Ada, E3348, "driver_for_own_start_system_E");
   E3676 : Short_Integer; pragma Import (Ada, E3676, "driver_for_winding_numbers_E");
   E773 : Short_Integer; pragma Import (Ada, E773, "drivers_for_coefficient_systems_E");
   E765 : Short_Integer; pragma Import (Ada, E765, "main_vertex_points_E");
   E725 : Short_Integer; pragma Import (Ada, E725, "driver_for_criterion_E");
   E2155 : Short_Integer; pragma Import (Ada, E2155, "multprec_subspace_restrictions_E");
   E3662 : Short_Integer; pragma Import (Ada, E3662, "polyhedral_coefficient_trackers_E");
   E3658 : Short_Integer; pragma Import (Ada, E3658, "jumpstart_polyhedral_homotopies_E");
   E1621 : Short_Integer; pragma Import (Ada, E1621, "prompt_for_systems_E");
   E3487 : Short_Integer; pragma Import (Ada, E3487, "scaling_methods_E");
   E3485 : Short_Integer; pragma Import (Ada, E3485, "main_scaling_E");
   E1548 : Short_Integer; pragma Import (Ada, E1548, "standard_complex_prod_systems_io_E");
   E3642 : Short_Integer; pragma Import (Ada, E3642, "drivers_to_track_dobldobl_paths_E");
   E3648 : Short_Integer; pragma Import (Ada, E3648, "drivers_to_track_quaddobl_paths_E");
   E3654 : Short_Integer; pragma Import (Ada, E3654, "drivers_to_track_standard_paths_E");
   E3449 : Short_Integer; pragma Import (Ada, E3449, "main_m_homogenization_E");
   E3455 : Short_Integer; pragma Import (Ada, E3455, "main_multi_homogenization_E");
   E3461 : Short_Integer; pragma Import (Ada, E3461, "main_set_structures_E");
   E1317 : Short_Integer; pragma Import (Ada, E1317, "standard_deflation_trees_io_E");
   E1581 : Short_Integer; pragma Import (Ada, E1581, "dobldobl_deflation_trees_io_E");
   E1560 : Short_Integer; pragma Import (Ada, E1560, "dobldobl_deflation_methods_E");
   E2682 : Short_Integer; pragma Import (Ada, E2682, "jacobian_rabinowitsch_trick_E");
   E3703 : Short_Integer; pragma Import (Ada, E3703, "multprec_deflation_trees_io_E");
   E3701 : Short_Integer; pragma Import (Ada, E3701, "multprec_deflation_methods_E");
   E1648 : Short_Integer; pragma Import (Ada, E1648, "quaddobl_deflation_trees_io_E");
   E1627 : Short_Integer; pragma Import (Ada, E1627, "quaddobl_deflation_methods_E");
   E1293 : Short_Integer; pragma Import (Ada, E1293, "standard_deflation_methods_E");
   E3804 : Short_Integer; pragma Import (Ada, E3804, "deflation_interface_E");
   E3686 : Short_Integer; pragma Import (Ada, E3686, "drivers_to_deflate_singularities_E");
   E2341 : Short_Integer; pragma Import (Ada, E2341, "standard_floating_poly_systems_io_E");
   E2275 : Short_Integer; pragma Import (Ada, E2275, "standard_parameter_systems_E");
   E2662 : Short_Integer; pragma Import (Ada, E2662, "decadobl_parameter_systems_E");
   E2273 : Short_Integer; pragma Import (Ada, E2273, "dobldobl_parameter_systems_E");
   E2680 : Short_Integer; pragma Import (Ada, E2680, "hexadobl_parameter_systems_E");
   E2702 : Short_Integer; pragma Import (Ada, E2702, "octodobl_parameter_systems_E");
   E4062 : Short_Integer; pragma Import (Ada, E4062, "parameter_homotopy_state_E");
   E2720 : Short_Integer; pragma Import (Ada, E2720, "pentdobl_parameter_systems_E");
   E2307 : Short_Integer; pragma Import (Ada, E2307, "quaddobl_parameter_systems_E");
   E2339 : Short_Integer; pragma Import (Ada, E2339, "standard_quad_sweepers_E");
   E1492 : Short_Integer; pragma Import (Ada, E1492, "standard_system_and_solutions_io_E");
   E3087 : Short_Integer; pragma Import (Ada, E3087, "main_laurent_series_newton_E");
   E2111 : Short_Integer; pragma Import (Ada, E2111, "monodromy_homotopies_io_E");
   E3731 : Short_Integer; pragma Import (Ada, E3731, "standard_refiner_circuits_E");
   E2119 : Short_Integer; pragma Import (Ada, E2119, "standard_system_readers_E");
   E3330 : Short_Integer; pragma Import (Ada, E3330, "main_reduction_E");
   E1430 : Short_Integer; pragma Import (Ada, E1430, "standard_tableau_formats_E");
   E1409 : Short_Integer; pragma Import (Ada, E1409, "polyhedral_start_systems_E");
   E1349 : Short_Integer; pragma Import (Ada, E1349, "multitasking_polyhedral_trackers_E");
   E1482 : Short_Integer; pragma Import (Ada, E1482, "pipelined_cell_trackers_E");
   E3399 : Short_Integer; pragma Import (Ada, E3399, "pipelined_polyhedral_homotopies_E");
   E1275 : Short_Integer; pragma Import (Ada, E1275, "standard_tracked_solutions_io_E");
   E1255 : Short_Integer; pragma Import (Ada, E1255, "drivers_for_failed_paths_E");
   E1243 : Short_Integer; pragma Import (Ada, E1243, "dobldobl_condition_report_E");
   E1247 : Short_Integer; pragma Import (Ada, E1247, "dobldobl_select_solutions_E");
   E1241 : Short_Integer; pragma Import (Ada, E1241, "drivers_for_condition_tables_E");
   E1277 : Short_Integer; pragma Import (Ada, E1277, "quaddobl_condition_report_E");
   E1283 : Short_Integer; pragma Import (Ada, E1283, "quaddobl_select_solutions_E");
   E1235 : Short_Integer; pragma Import (Ada, E1235, "standard_condition_report_E");
   E1239 : Short_Integer; pragma Import (Ada, E1239, "standard_select_solutions_E");
   E1556 : Short_Integer; pragma Import (Ada, E1556, "dobldobl_root_refiners_E");
   E1832 : Short_Integer; pragma Import (Ada, E1832, "dobldobl_sampling_laurent_machine_E");
   E1834 : Short_Integer; pragma Import (Ada, E1834, "dobldobl_sampling_machine_E");
   E1836 : Short_Integer; pragma Import (Ada, E1836, "dobldobl_sample_points_E");
   E1830 : Short_Integer; pragma Import (Ada, E1830, "dobldobl_sample_lists_E");
   E1828 : Short_Integer; pragma Import (Ada, E1828, "dobldobl_rectangular_sample_grids_E");
   E2099 : Short_Integer; pragma Import (Ada, E2099, "dobldobl_sample_grids_E");
   E3908 : Short_Integer; pragma Import (Ada, E3908, "dobldobl_sampling_operations_E");
   E1838 : Short_Integer; pragma Import (Ada, E1838, "dobldobl_stacked_sample_grids_E");
   E1826 : Short_Integer; pragma Import (Ada, E1826, "dobldobl_divided_differences_E");
   E1842 : Short_Integer; pragma Import (Ada, E1842, "dobldobl_gridded_hypersurfaces_E");
   E1846 : Short_Integer; pragma Import (Ada, E1846, "dobldobl_trace_interpolators_E");
   E2267 : Short_Integer; pragma Import (Ada, E2267, "main_solution_filters_E");
   E1623 : Short_Integer; pragma Import (Ada, E1623, "quaddobl_root_refiners_E");
   E3682 : Short_Integer; pragma Import (Ada, E3682, "multitasked_dd_qd_refiners_E");
   E3680 : Short_Integer; pragma Import (Ada, E3680, "drivers_to_dd_qd_root_refiners_E");
   E1918 : Short_Integer; pragma Import (Ada, E1918, "quaddobl_sampling_laurent_machine_E");
   E1920 : Short_Integer; pragma Import (Ada, E1920, "quaddobl_sampling_machine_E");
   E1922 : Short_Integer; pragma Import (Ada, E1922, "quaddobl_sample_points_E");
   E1916 : Short_Integer; pragma Import (Ada, E1916, "quaddobl_sample_lists_E");
   E1914 : Short_Integer; pragma Import (Ada, E1914, "quaddobl_rectangular_sample_grids_E");
   E2107 : Short_Integer; pragma Import (Ada, E2107, "quaddobl_sample_grids_E");
   E3912 : Short_Integer; pragma Import (Ada, E3912, "quaddobl_sampling_operations_E");
   E1924 : Short_Integer; pragma Import (Ada, E1924, "quaddobl_stacked_sample_grids_E");
   E1912 : Short_Integer; pragma Import (Ada, E1912, "quaddobl_divided_differences_E");
   E1926 : Short_Integer; pragma Import (Ada, E1926, "quaddobl_gridded_hypersurfaces_E");
   E1930 : Short_Integer; pragma Import (Ada, E1930, "quaddobl_trace_interpolators_E");
   E1218 : Short_Integer; pragma Import (Ada, E1218, "standard_root_refiners_E");
   E1554 : Short_Integer; pragma Import (Ada, E1554, "black_box_root_refiners_E");
   E2035 : Short_Integer; pragma Import (Ada, E2035, "black_box_simplex_solvers_E");
   E2071 : Short_Integer; pragma Import (Ada, E2071, "black_box_solver_cases_E");
   E3761 : Short_Integer; pragma Import (Ada, E3761, "driver_for_root_refining_E");
   E1212 : Short_Integer; pragma Import (Ada, E1212, "mixed_homotopy_continuation_E");
   E1183 : Short_Integer; pragma Import (Ada, E1183, "bkk_bound_computations_E");
   E1185 : Short_Integer; pragma Import (Ada, E1185, "integer_polyhedral_continuation_E");
   E3419 : Short_Integer; pragma Import (Ada, E3419, "dynamic_polyhedral_continuation_E");
   E3403 : Short_Integer; pragma Import (Ada, E3403, "drivers_for_dynamic_lifting_E");
   E1181 : Short_Integer; pragma Import (Ada, E1181, "floating_polyhedral_continuation_E");
   E3622 : Short_Integer; pragma Import (Ada, E3622, "main_sagbi_homotopies_E");
   E1684 : Short_Integer; pragma Import (Ada, E1684, "multitasking_root_refiners_E");
   E1678 : Short_Integer; pragma Import (Ada, E1678, "dobldobl_blackbox_refiners_E");
   E2277 : Short_Integer; pragma Import (Ada, E2277, "parameter_homotopy_continuation_E");
   E2041 : Short_Integer; pragma Import (Ada, E2041, "quaddobl_blackbox_refiners_E");
   E1874 : Short_Integer; pragma Import (Ada, E1874, "sampling_laurent_machine_E");
   E1898 : Short_Integer; pragma Import (Ada, E1898, "sampling_machine_E");
   E2089 : Short_Integer; pragma Import (Ada, E2089, "homotopy_membership_tests_E");
   E1900 : Short_Integer; pragma Import (Ada, E1900, "sample_points_E");
   E2225 : Short_Integer; pragma Import (Ada, E2225, "interpolation_points_E");
   E1872 : Short_Integer; pragma Import (Ada, E1872, "sample_point_lists_E");
   E2227 : Short_Integer; pragma Import (Ada, E2227, "interpolation_point_lists_E");
   E2229 : Short_Integer; pragma Import (Ada, E2229, "projection_operators_E");
   E2223 : Short_Integer; pragma Import (Ada, E2223, "interpolation_filters_E");
   E2265 : Short_Integer; pragma Import (Ada, E2265, "interpolation_filters_io_E");
   E1904 : Short_Integer; pragma Import (Ada, E1904, "rectangular_sample_grids_E");
   E2103 : Short_Integer; pragma Import (Ada, E2103, "multprec_stacked_sample_grids_E");
   E2243 : Short_Integer; pragma Import (Ada, E2243, "multprec_divided_differences_E");
   E2245 : Short_Integer; pragma Import (Ada, E2245, "multprec_trace_interpolators_E");
   E2109 : Short_Integer; pragma Import (Ada, E2109, "sample_point_grids_E");
   E2143 : Short_Integer; pragma Import (Ada, E2143, "multprec_breakup_components_E");
   E2181 : Short_Integer; pragma Import (Ada, E2181, "multprec_irreducible_decomp_E");
   E2185 : Short_Integer; pragma Import (Ada, E2185, "multprec_irreducible_decomp_io_E");
   E1948 : Short_Integer; pragma Import (Ada, E1948, "sample_points_io_E");
   E1946 : Short_Integer; pragma Import (Ada, E1946, "sample_point_lists_io_E");
   E2259 : Short_Integer; pragma Import (Ada, E2259, "monodromy_actions_breakup_E");
   E3431 : Short_Integer; pragma Import (Ada, E3431, "set_structures_and_volumes_E");
   E3427 : Short_Integer; pragma Import (Ada, E3427, "drivers_for_implicit_lifting_E");
   E2233 : Short_Integer; pragma Import (Ada, E2233, "span_of_component_E");
   E2231 : Short_Integer; pragma Import (Ada, E2231, "irreducible_components_E");
   E2239 : Short_Integer; pragma Import (Ada, E2239, "span_of_component_creators_E");
   E2241 : Short_Integer; pragma Import (Ada, E2241, "span_of_component_io_E");
   E2263 : Short_Integer; pragma Import (Ada, E2263, "irreducible_components_io_E");
   E1436 : Short_Integer; pragma Import (Ada, E1436, "stable_polyhedral_continuation_E");
   E723 : Short_Integer; pragma Import (Ada, E723, "drivers_for_static_lifting_E");
   E2053 : Short_Integer; pragma Import (Ada, E2053, "standard_blackbox_refiners_E");
   E2163 : Short_Integer; pragma Import (Ada, E2163, "standard_breakup_components_E");
   E2183 : Short_Integer; pragma Import (Ada, E2183, "standard_irreducible_decomp_E");
   E2187 : Short_Integer; pragma Import (Ada, E2187, "standard_irreducible_decomp_io_E");
   E3916 : Short_Integer; pragma Import (Ada, E3916, "standard_sampling_operations_E");
   E1902 : Short_Integer; pragma Import (Ada, E1902, "standard_stacked_sample_grids_E");
   E1868 : Short_Integer; pragma Import (Ada, E1868, "hypersurface_sample_grids_E");
   E2101 : Short_Integer; pragma Import (Ada, E2101, "make_sample_grids_E");
   E1954 : Short_Integer; pragma Import (Ada, E1954, "standard_divided_differences_E");
   E1956 : Short_Integer; pragma Import (Ada, E1956, "standard_trace_interpolators_E");
   E1972 : Short_Integer; pragma Import (Ada, E1972, "certify_factor_with_trace_E");
   E1974 : Short_Integer; pragma Import (Ada, E1974, "combinatorial_factorization_E");
   E1824 : Short_Integer; pragma Import (Ada, E1824, "interpolate_multivariate_factor_E");
   E2237 : Short_Integer; pragma Import (Ada, E2237, "irreducible_component_creators_E");
   E2235 : Short_Integer; pragma Import (Ada, E2235, "irreducible_component_lists_E");
   E2221 : Short_Integer; pragma Import (Ada, E2221, "drivers_to_component_creators_E");
   E2261 : Short_Integer; pragma Import (Ada, E2261, "irreducible_component_lists_io_E");
   E2097 : Short_Integer; pragma Import (Ada, E2097, "monodromy_component_breakup_E");
   E2095 : Short_Integer; pragma Import (Ada, E2095, "monodromy_homotopies_E");
   E1970 : Short_Integer; pragma Import (Ada, E1970, "multivariate_factorization_E");
   E1822 : Short_Integer; pragma Import (Ada, E1822, "drivers_to_factor_polynomials_E");
   E1820 : Short_Integer; pragma Import (Ada, E1820, "black_box_factorization_E");
   E1818 : Short_Integer; pragma Import (Ada, E1818, "black_box_single_solvers_E");
   E4060 : Short_Integer; pragma Import (Ada, E4060, "sweep_interface_E");
   E3445 : Short_Integer; pragma Import (Ada, E3445, "symmetric_bkk_bound_solvers_E");
   E3443 : Short_Integer; pragma Import (Ada, E3443, "symmetric_polyhedral_continuation_E");
   E3433 : Short_Integer; pragma Import (Ada, E3433, "drivers_for_symmetric_lifting_E");
   E4098 : Short_Integer; pragma Import (Ada, E4098, "tableau_form_interface_E");
   E2624 : Short_Integer; pragma Import (Ada, E2624, "tripdobl_complex_polynomials_io_E");
   E2622 : Short_Integer; pragma Import (Ada, E2622, "tripdobl_complex_poly_systems_io_E");
   E2825 : Short_Integer; pragma Import (Ada, E2825, "complex_series_and_polynomials_io_E");
   E2827 : Short_Integer; pragma Import (Ada, E2827, "power_series_methods_E");
   E3061 : Short_Integer; pragma Import (Ada, E3061, "tripdobl_parameter_systems_E");
   E2636 : Short_Integer; pragma Import (Ada, E2636, "tripdobl_system_and_solutions_io_E");
   E2524 : Short_Integer; pragma Import (Ada, E2524, "artificial_parameter_homotopy_io_E");
   E2520 : Short_Integer; pragma Import (Ada, E2520, "homotopy_pade_approximants_E");
   E2522 : Short_Integer; pragma Import (Ada, E2522, "homotopy_series_readers_E");
   E2823 : Short_Integer; pragma Import (Ada, E2823, "series_and_predictors_E");
   E3107 : Short_Integer; pragma Import (Ada, E3107, "dobldobl_predictor_convolutions_E");
   E4040 : Short_Integer; pragma Import (Ada, E4040, "power_series_interface_E");
   E3131 : Short_Integer; pragma Import (Ada, E3131, "quaddobl_predictor_convolutions_E");
   E3324 : Short_Integer; pragma Import (Ada, E3324, "run_power_series_methods_E");
   E3063 : Short_Integer; pragma Import (Ada, E3063, "standard_pade_trackers_E");
   E2425 : Short_Integer; pragma Import (Ada, E2425, "dobldobl_pade_trackers_E");
   E2375 : Short_Integer; pragma Import (Ada, E2375, "dobldobl_seriespade_tracker_E");
   E3073 : Short_Integer; pragma Import (Ada, E3073, "quaddobl_pade_trackers_E");
   E3069 : Short_Integer; pragma Import (Ada, E3069, "quaddobl_seriespade_tracker_E");
   E3081 : Short_Integer; pragma Import (Ada, E3081, "series_and_trackers_E");
   E3137 : Short_Integer; pragma Import (Ada, E3137, "standard_predictor_convolutions_E");
   E3105 : Short_Integer; pragma Import (Ada, E3105, "corrector_convolutions_E");
   E3173 : Short_Integer; pragma Import (Ada, E3173, "predictor_corrector_loops_E");
   E3171 : Short_Integer; pragma Import (Ada, E3171, "predictor_corrector_trackers_E");
   E3085 : Short_Integer; pragma Import (Ada, E3085, "standard_seriespade_tracker_E");
   E3221 : Short_Integer; pragma Import (Ada, E3221, "test_series_predictors_E");
   E3870 : Short_Integer; pragma Import (Ada, E3870, "univariate_solvers_interface_E");
   E3868 : Short_Integer; pragma Import (Ada, E3868, "unisolve_E");
   E3988 : Short_Integer; pragma Import (Ada, E3988, "use_multip_E");
   E4038 : Short_Integer; pragma Import (Ada, E4038, "use_series_E");
   E4058 : Short_Integer; pragma Import (Ada, E4058, "use_sweep_E");
   E4096 : Short_Integer; pragma Import (Ada, E4096, "use_tabform_E");
   E3735 : Short_Integer; pragma Import (Ada, E3735, "valipoco_E");
   E3668 : Short_Integer; pragma Import (Ada, E3668, "main_verification_E");
   E3600 : Short_Integer; pragma Import (Ada, E3600, "verification_with_determinants_E");
   E3598 : Short_Integer; pragma Import (Ada, E3598, "pieri_continuation_E");
   E3586 : Short_Integer; pragma Import (Ada, E3586, "deformation_posets_E");
   E3584 : Short_Integer; pragma Import (Ada, E3584, "main_pieri_homotopies_E");
   E3620 : Short_Integer; pragma Import (Ada, E3620, "main_quantum_pieri_E");
   E3938 : Short_Integer; pragma Import (Ada, E3938, "pieri_homotopy_E");
   E3934 : Short_Integer; pragma Import (Ada, E3934, "pieri_interface_E");
   E3769 : Short_Integer; pragma Import (Ada, E3769, "pieri_solver_E");
   E3932 : Short_Integer; pragma Import (Ada, E3932, "use_c2pieri_E");
   E1738 : Short_Integer; pragma Import (Ada, E1738, "witness_sets_io_E");
   E2137 : Short_Integer; pragma Import (Ada, E2137, "drivers_to_breakup_components_E");
   E2219 : Short_Integer; pragma Import (Ada, E2219, "drivers_to_factor_components_E");
   E1754 : Short_Integer; pragma Import (Ada, E1754, "extrinsic_diagonal_continuation_E");
   E2189 : Short_Integer; pragma Import (Ada, E2189, "extrinsic_diagonal_solvers_E");
   E1780 : Short_Integer; pragma Import (Ada, E1780, "intrinsic_diagonal_continuation_E");
   E2133 : Short_Integer; pragma Import (Ada, E2133, "drivers_to_intersect_varieties_E");
   E1792 : Short_Integer; pragma Import (Ada, E1792, "intrinsic_witness_sets_io_E");
   E1752 : Short_Integer; pragma Import (Ada, E1752, "equation_by_equation_solvers_E");
   E3656 : Short_Integer; pragma Import (Ada, E3656, "jumpstart_diagonal_homotopies_E");
   E1750 : Short_Integer; pragma Import (Ada, E1750, "main_eqn_by_eqn_solvers_E");
   E1748 : Short_Integer; pragma Import (Ada, E1748, "bablsolve_E");
   E2361 : Short_Integer; pragma Import (Ada, E2361, "main_hypersurface_witsets_E");
   E2363 : Short_Integer; pragma Import (Ada, E2363, "main_intersection_E");
   E3463 : Short_Integer; pragma Import (Ada, E3463, "main_samplers_E");
   E3640 : Short_Integer; pragma Import (Ada, E3640, "main_trackers_E");
   E1690 : Short_Integer; pragma Import (Ada, E1690, "multitasking_continuation_E");
   E1694 : Short_Integer; pragma Import (Ada, E1694, "phcpack_operations_E");
   E4102 : Short_Integer; pragma Import (Ada, E4102, "cascade_homotopy_interface_E");
   E3798 : Short_Integer; pragma Import (Ada, E3798, "continuation_parameters_interface_E");
   E3862 : Short_Integer; pragma Import (Ada, E3862, "crude_path_trackers_E");
   E1676 : Short_Integer; pragma Import (Ada, E1676, "dobldobl_blackbox_continuations_E");
   E4066 : Short_Integer; pragma Import (Ada, E4066, "dobldobl_laursys_interface_E");
   E3906 : Short_Integer; pragma Import (Ada, E3906, "dobldobl_monodromy_permutations_E");
   E4048 : Short_Integer; pragma Import (Ada, E4048, "dobldobl_solutions_interface_E");
   E3816 : Short_Integer; pragma Import (Ada, E3816, "file_management_interface_E");
   E3818 : Short_Integer; pragma Import (Ada, E3818, "job_containers_E");
   E2093 : Short_Integer; pragma Import (Ada, E2093, "multitasking_membership_tests_E");
   E2087 : Short_Integer; pragma Import (Ada, E2087, "homotopy_membership_filters_E");
   E2085 : Short_Integer; pragma Import (Ada, E2085, "cascade_membership_filters_E");
   E3926 : Short_Integer; pragma Import (Ada, E3926, "member_interface_E");
   E4074 : Short_Integer; pragma Import (Ada, E4074, "multprec_laursys_interface_E");
   E3850 : Short_Integer; pragma Import (Ada, E3850, "newton_interface_E");
   E3860 : Short_Integer; pragma Import (Ada, E3860, "path_trackers_interface_E");
   E3792 : Short_Integer; pragma Import (Ada, E3792, "phcpack_operations_io_E");
   E3790 : Short_Integer; pragma Import (Ada, E3790, "c_to_phcpack_E");
   E4070 : Short_Integer; pragma Import (Ada, E4070, "dobldobl_polysys_interface_E");
   E4030 : Short_Integer; pragma Import (Ada, E4030, "linear_products_interface_E");
   E3840 : Short_Integer; pragma Import (Ada, E3840, "multprec_polysys_interface_E");
   E3842 : Short_Integer; pragma Import (Ada, E3842, "multprec_solutions_interface_E");
   E2039 : Short_Integer; pragma Import (Ada, E2039, "quaddobl_blackbox_continuations_E");
   E4076 : Short_Integer; pragma Import (Ada, E4076, "quaddobl_laursys_interface_E");
   E3910 : Short_Integer; pragma Import (Ada, E3910, "quaddobl_monodromy_permutations_E");
   E4078 : Short_Integer; pragma Import (Ada, E4078, "quaddobl_polysys_interface_E");
   E4050 : Short_Integer; pragma Import (Ada, E4050, "quaddobl_solutions_interface_E");
   E2113 : Short_Integer; pragma Import (Ada, E2113, "square_and_embed_systems_E");
   E2051 : Short_Integer; pragma Import (Ada, E2051, "standard_blackbox_continuations_E");
   E2079 : Short_Integer; pragma Import (Ada, E2079, "cascade_homotopy_steps_E");
   E2177 : Short_Integer; pragma Import (Ada, E2177, "homotopy_cascade_filter_E");
   E4082 : Short_Integer; pragma Import (Ada, E4082, "standard_laursys_interface_E");
   E3914 : Short_Integer; pragma Import (Ada, E3914, "standard_monodromy_permutations_E");
   E3904 : Short_Integer; pragma Import (Ada, E3904, "monodromy_interface_E");
   E4084 : Short_Integer; pragma Import (Ada, E4084, "standard_polysys_interface_E");
   E4052 : Short_Integer; pragma Import (Ada, E4052, "standard_solutions_interface_E");
   E4094 : Short_Integer; pragma Import (Ada, E4094, "standard_syspool_interface_E");
   E3996 : Short_Integer; pragma Import (Ada, E3996, "step_trackers_interface_E");
   E3864 : Short_Integer; pragma Import (Ada, E3864, "symbol_table_interface_E");
   E3924 : Short_Integer; pragma Import (Ada, E3924, "use_c2mbt_E");
   E3994 : Short_Integer; pragma Import (Ada, E3994, "use_nxtsol_E");
   E4028 : Short_Integer; pragma Import (Ada, E4028, "use_roco_E");
   E4046 : Short_Integer; pragma Import (Ada, E4046, "use_solcon_E");
   E4064 : Short_Integer; pragma Import (Ada, E4064, "use_syscon_E");
   E4088 : Short_Integer; pragma Import (Ada, E4088, "use_syspool_E");
   E3918 : Short_Integer; pragma Import (Ada, E3918, "witness_interface_E");
   E3902 : Short_Integer; pragma Import (Ada, E3902, "use_c2fac_E");
   E4110 : Short_Integer; pragma Import (Ada, E4110, "witness_sets_formats_E");
   E4108 : Short_Integer; pragma Import (Ada, E4108, "dobldobl_hypersurface_witsets_io_E");
   E4106 : Short_Integer; pragma Import (Ada, E4106, "dobldobl_hypersurface_witdrivers_E");
   E4114 : Short_Integer; pragma Import (Ada, E4114, "quaddobl_hypersurface_witsets_io_E");
   E4112 : Short_Integer; pragma Import (Ada, E4112, "quaddobl_hypersurface_witdrivers_E");
   E4118 : Short_Integer; pragma Import (Ada, E4118, "standard_hypersurface_witsets_io_E");
   E4116 : Short_Integer; pragma Import (Ada, E4116, "standard_hypersurface_witdrivers_E");
   E4104 : Short_Integer; pragma Import (Ada, E4104, "diagonal_homotopy_interface_E");
   E4100 : Short_Integer; pragma Import (Ada, E4100, "use_track_E");
   E3576 : Short_Integer; pragma Import (Ada, E3576, "wrapped_path_trackers_E");
   E2059 : Short_Integer; pragma Import (Ada, E2059, "write_number_of_tasks_E");
   E2061 : Short_Integer; pragma Import (Ada, E2061, "write_seed_number_E");
   E2123 : Short_Integer; pragma Import (Ada, E2123, "add_and_remove_embedding_E");
   E2075 : Short_Integer; pragma Import (Ada, E2075, "cascade_homotopies_E");
   E2083 : Short_Integer; pragma Import (Ada, E2083, "cascade_homotopy_filters_E");
   E2217 : Short_Integer; pragma Import (Ada, E2217, "drivers_to_breakup_solutions_E");
   E3077 : Short_Integer; pragma Import (Ada, E3077, "drivers_to_series_trackers_E");
   E2115 : Short_Integer; pragma Import (Ada, E2115, "greetings_and_conclusions_E");
   E2197 : Short_Integer; pragma Import (Ada, E2197, "main_factorization_E");
   E2269 : Short_Integer; pragma Import (Ada, E2269, "main_homotopy_continuation_E");
   E2073 : Short_Integer; pragma Import (Ada, E2073, "running_cascades_E");
   E3075 : Short_Integer; pragma Import (Ada, E3075, "series_path_trackers_E");
   E3231 : Short_Integer; pragma Import (Ada, E3231, "decadobl_homotopy_convolutions_io_E");
   E3229 : Short_Integer; pragma Import (Ada, E3229, "decadobl_fabry_on_homotopy_E");
   E3201 : Short_Integer; pragma Import (Ada, E3201, "dobldobl_homotopy_convolutions_io_E");
   E3290 : Short_Integer; pragma Import (Ada, E3290, "dobldobl_fabry_on_homotopy_E");
   E3294 : Short_Integer; pragma Import (Ada, E3294, "hexadobl_homotopy_convolutions_io_E");
   E3292 : Short_Integer; pragma Import (Ada, E3292, "hexadobl_fabry_on_homotopy_E");
   E2373 : Short_Integer; pragma Import (Ada, E2373, "interactive_pade_trackers_E");
   E3300 : Short_Integer; pragma Import (Ada, E3300, "octodobl_homotopy_convolutions_io_E");
   E3298 : Short_Integer; pragma Import (Ada, E3298, "octodobl_fabry_on_homotopy_E");
   E4022 : Short_Integer; pragma Import (Ada, E4022, "pade_continuation_interface_E");
   E3306 : Short_Integer; pragma Import (Ada, E3306, "pentdobl_homotopy_convolutions_io_E");
   E3304 : Short_Integer; pragma Import (Ada, E3304, "pentdobl_fabry_on_homotopy_E");
   E3223 : Short_Integer; pragma Import (Ada, E3223, "quaddobl_homotopy_convolutions_io_E");
   E3310 : Short_Integer; pragma Import (Ada, E3310, "quaddobl_fabry_on_homotopy_E");
   E3225 : Short_Integer; pragma Import (Ada, E3225, "standard_homotopy_convolutions_io_E");
   E3312 : Short_Integer; pragma Import (Ada, E3312, "standard_fabry_on_homotopy_E");
   E3199 : Short_Integer; pragma Import (Ada, E3199, "track_path_convolutions_E");
   E3103 : Short_Integer; pragma Import (Ada, E3103, "multitasked_path_convolutions_E");
   E3316 : Short_Integer; pragma Import (Ada, E3316, "tripdobl_homotopy_convolutions_io_E");
   E3314 : Short_Integer; pragma Import (Ada, E3314, "tripdobl_fabry_on_homotopy_E");
   E3227 : Short_Integer; pragma Import (Ada, E3227, "newton_fabry_on_homotopy_E");
   E4020 : Short_Integer; pragma Import (Ada, E4020, "use_padcon_E");
   E3572 : Short_Integer; pragma Import (Ada, E3572, "wrapped_pade_trackers_E");
   E3532 : Short_Integer; pragma Import (Ada, E3532, "moving_flag_continuation_E");
   E3507 : Short_Integer; pragma Import (Ada, E3507, "checker_poset_deformations_E");
   E3634 : Short_Integer; pragma Import (Ada, E3634, "resolve_schubert_problems_E");
   E3491 : Short_Integer; pragma Import (Ada, E3491, "main_schubert_induction_E");
   E3922 : Short_Integer; pragma Import (Ada, E3922, "schubert_interface_E");
   E3920 : Short_Integer; pragma Import (Ada, E3920, "use_c2lrhom_E");
   E4132 : Short_Integer; pragma Import (Ada, E4132, "write_witness_solutions_E");
   E1464 : Short_Integer; pragma Import (Ada, E1464, "zero_index_tree_E");
   E1460 : Short_Integer; pragma Import (Ada, E1460, "relation_table_E");
   E1456 : Short_Integer; pragma Import (Ada, E1456, "form_lp_E");
   E1454 : Short_Integer; pragma Import (Ada, E1454, "mixed_volume_E");
   E1452 : Short_Integer; pragma Import (Ada, E1452, "mixedvol_algorithm_E");
   E1474 : Short_Integer; pragma Import (Ada, E1474, "pipelined_labeled_cells_E");
   E1478 : Short_Integer; pragma Import (Ada, E1478, "pipelined_polyhedral_trackers_E");
   E1472 : Short_Integer; pragma Import (Ada, E1472, "pipelined_polyhedral_drivers_E");
   E313 : Short_Integer; pragma Import (Ada, E313, "drivers_for_mixedvol_algorithm_E");
   E189 : Short_Integer; pragma Import (Ada, E189, "black_mixed_volume_computations_E");
   E187 : Short_Integer; pragma Import (Ada, E187, "apply_induced_permutations_E");
   E1498 : Short_Integer; pragma Import (Ada, E1498, "black_polyhedral_continuations_E");
   E176 : Short_Integer; pragma Import (Ada, E176, "black_box_root_counters_E");
   E3834 : Short_Integer; pragma Import (Ada, E3834, "black_box_mixed_volumes_E");
   E3832 : Short_Integer; pragma Import (Ada, E3832, "black_box_polyhedral_solvers_E");
   E2069 : Short_Integer; pragma Import (Ada, E2069, "black_box_solvers_E");
   E1990 : Short_Integer; pragma Import (Ada, E1990, "black_box_square_solvers_E");
   E1746 : Short_Integer; pragma Import (Ada, E1746, "dobldobl_blackbox_solvers_E");
   E3836 : Short_Integer; pragma Import (Ada, E3836, "double_cells_container_E");
   E3374 : Short_Integer; pragma Import (Ada, E3374, "drivers_for_demics_algorithm_E");
   E2135 : Short_Integer; pragma Import (Ada, E2135, "drivers_to_witness_generate_E");
   E2067 : Short_Integer; pragma Import (Ada, E2067, "embeddings_and_cascades_E");
   E2131 : Short_Integer; pragma Import (Ada, E2131, "drivers_to_cascade_filtering_E");
   E3948 : Short_Integer; pragma Import (Ada, E3948, "integer_cells_container_E");
   E3946 : Short_Integer; pragma Import (Ada, E3946, "cells_interface_E");
   E4122 : Short_Integer; pragma Import (Ada, E4122, "irreducible_components_interface_E");
   E3830 : Short_Integer; pragma Import (Ada, E3830, "job_handlers_E");
   E2065 : Short_Integer; pragma Import (Ada, E2065, "main_component_solvers_E");
   E2121 : Short_Integer; pragma Import (Ada, E2121, "main_decomposition_E");
   E3344 : Short_Integer; pragma Import (Ada, E3344, "main_root_counters_E");
   E3755 : Short_Integer; pragma Import (Ada, E3755, "mixed_volume_calculator_E");
   E3759 : Short_Integer; pragma Import (Ada, E3759, "polynomial_homotopy_continuation_E");
   E3763 : Short_Integer; pragma Import (Ada, E3763, "quaddobl_blackbox_solvers_E");
   E3322 : Short_Integer; pragma Import (Ada, E3322, "regular_solution_curves_series_E");
   E3320 : Short_Integer; pragma Import (Ada, E3320, "regular_newton_puiseux_E");
   E2371 : Short_Integer; pragma Import (Ada, E2371, "main_pade_trackers_E");
   E3765 : Short_Integer; pragma Import (Ada, E3765, "standard_blackbox_solvers_E");
   E174 : Short_Integer; pragma Import (Ada, E174, "option_handlers_E");
   E3944 : Short_Integer; pragma Import (Ada, E3944, "use_celcon_E");
   E4014 : Short_Integer; pragma Import (Ada, E4014, "use_outdata_E");
   E4120 : Short_Integer; pragma Import (Ada, E4120, "use_witsols_E");
   E3788 : Short_Integer; pragma Import (Ada, E3788, "use_c2phc4c_E");
   E3786 : Short_Integer; pragma Import (Ada, E3786, "use_c2phc_E");
   E002 : Short_Integer; pragma Import (Ada, E002, "phctop_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      declare
         procedure F1;
         pragma Import (Ada, F1, "quaddobl_solutions_queue__finalize_body");
      begin
         E1742 := E1742 - 1;
         F1;
      end;
      declare
         procedure F2;
         pragma Import (Ada, F2, "standard_solutions_queue__finalize_body");
      begin
         E1744 := E1744 - 1;
         F2;
      end;
      declare
         procedure F3;
         pragma Import (Ada, F3, "dobldobl_solutions_queue__finalize_body");
      begin
         E1692 := E1692 - 1;
         F3;
      end;
      declare
         procedure F4;
         pragma Import (Ada, F4, "mixed_cells_queue__finalize_body");
      begin
         E1373 := E1373 - 1;
         F4;
      end;
      declare
         procedure F5;
         pragma Import (Ada, F5, "mixed_labels_queue__finalize_body");
      begin
         E1476 := E1476 - 1;
         F5;
      end;
      E1383 := E1383 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         F6;
      end;
      E215 := E215 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "system__pool_global__finalize_spec");
      begin
         F7;
      end;
      E131 := E131 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "ada__text_io__finalize_spec");
      begin
         F8;
      end;
      declare
         procedure F9;
         pragma Import (Ada, F9, "system__file_io__finalize_body");
      begin
         E141 := E141 - 1;
         F9;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (Ada, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;
   pragma Favor_Top_Level (No_Param_Proc);

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");
      Interrupts_Default_To_System : Integer;
      pragma Import (C, Interrupts_Default_To_System, "__gl_interrupts_default_to_system");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      procedure Tasking_Runtime_Initialize;
      pragma Import (C, Tasking_Runtime_Initialize, "__gnat_tasking_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      System.Restrictions.Run_Time_Restrictions :=
        (Set =>
          (False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, True, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False),
         Value => (0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
         Violated =>
          (False, False, False, False, True, True, False, False, 
           True, False, False, True, True, True, True, False, 
           False, False, False, True, False, False, True, True, 
           False, True, True, False, True, True, True, True, 
           False, False, False, False, False, False, True, False, 
           True, True, False, True, False, True, True, False, 
           True, False, True, False, False, True, True, False, 
           False, False, False, False, False, True, False, False, 
           False, True, False, True, True, True, True, False, 
           True, False, True, True, True, False, True, True, 
           False, True, True, True, True, False, False, False, 
           False, False, False, False, False, True, False, False, 
           True, False, True, False),
         Count => (0, 0, 0, 1, 0, 0, 10, 0, 1, 0),
         Unknown => (False, False, False, False, False, False, True, False, True, False));
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 1;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);
      Tasking_Runtime_Initialize;

      Finalize_Library_Objects := finalize_library'access;

      Ada.Exceptions'Elab_Spec;
      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E013 := E013 + 1;
      Ada.Containers'Elab_Spec;
      E038 := E038 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E069 := E069 + 1;
      Ada.Numerics'Elab_Spec;
      E028 := E028 + 1;
      Ada.Strings'Elab_Spec;
      E010 := E010 + 1;
      Ada.Strings.Maps'Elab_Spec;
      E056 := E056 + 1;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E059 := E059 + 1;
      Interfaces.C'Elab_Spec;
      E043 := E043 + 1;
      System.Exceptions'Elab_Spec;
      E022 := E022 + 1;
      System.Object_Reader'Elab_Spec;
      E084 := E084 + 1;
      System.Dwarf_Lines'Elab_Spec;
      E050 := E050 + 1;
      System.Os_Lib'Elab_Body;
      E073 := E073 + 1;
      System.Soft_Links.Initialize'Elab_Body;
      E104 := E104 + 1;
      E015 := E015 + 1;
      System.Traceback.Symbolic'Elab_Body;
      E037 := E037 + 1;
      E019 := E019 + 1;
      Ada.Strings.Utf_Encoding'Elab_Spec;
      E108 := E108 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E116 := E116 + 1;
      Ada.Strings.Text_Buffers'Elab_Spec;
      E008 := E008 + 1;
      Interfaces.C.Strings'Elab_Spec;
      E1357 := E1357 + 1;
      Ada.Streams'Elab_Spec;
      E133 := E133 + 1;
      System.File_Control_Block'Elab_Spec;
      E148 := E148 + 1;
      System.Finalization_Root'Elab_Spec;
      E144 := E144 + 1;
      Ada.Finalization'Elab_Spec;
      E142 := E142 + 1;
      System.File_Io'Elab_Body;
      E141 := E141 + 1;
      System.Storage_Pools'Elab_Spec;
      E219 := E219 + 1;
      System.Task_Info'Elab_Spec;
      E1363 := E1363 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E178 := E178 + 1;
      Ada.Calendar.Delays'Elab_Body;
      E3276 := E3276 + 1;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E1351 := E1351 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E131 := E131 + 1;
      System.Pool_Global'Elab_Spec;
      E215 := E215 + 1;
      System.Tasking.Initialization'Elab_Body;
      E1387 := E1387 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E1377 := E1377 + 1;
      System.Tasking.Protected_Objects.Entries'Elab_Spec;
      E1383 := E1383 + 1;
      System.Tasking.Queuing'Elab_Body;
      E1395 := E1395 + 1;
      System.Tasking.Stages'Elab_Body;
      E1405 := E1405 + 1;
      E1311 := E1311 + 1;
      E3346 := E3346 + 1;
      C_Double_Arrays'Elab_Spec;
      E3774 := E3774 + 1;
      C_Integer_Arrays'Elab_Spec;
      E3770 := E3770 + 1;
      E156 := E156 + 1;
      E237 := E237 + 1;
      E2037 := E2037 + 1;
      Parse_Polynomial_Exceptions'Elab_Spec;
      E391 := E391 + 1;
      E1375 := E1375 + 1;
      E126 := E126 + 1;
      E198 := E198 + 1;
      E2386 := E2386 + 1;
      E235 := E235 + 1;
      E1155 := E1155 + 1;
      E1233 := E1233 + 1;
      E200 := E200 + 1;
      E150 := E150 + 1;
      E315 := E315 + 1;
      E1726 := E1726 + 1;
      E1179 := E1179 + 1;
      E244 := E244 + 1;
      E2025 := E2025 + 1;
      E3117 := E3117 + 1;
      E3119 := E3119 + 1;
      E3968 := E3968 + 1;
      E128 := E128 + 1;
      E1532 := E1532 + 1;
      E424 := E424 + 1;
      E233 := E233 + 1;
      E211 := E211 + 1;
      E209 := E209 + 1;
      E207 := E207 + 1;
      E589 := E589 + 1;
      E1850 := E1850 + 1;
      E533 := E533 + 1;
      E769 := E769 + 1;
      E1858 := E1858 + 1;
      Lists_Of_Integer64_Vectors'Elab_Spec;
      E3972 := E3972 + 1;
      Lists_Of_Integer_Vectors'Elab_Spec;
      E213 := E213 + 1;
      E3417 := E3417 + 1;
      E1617 := E1617 + 1;
      Mixed_Labels_Queue'Elab_Body;
      E1476 := E1476 + 1;
      E1401 := E1401 + 1;
      Sets_Of_Unknowns'Elab_Spec;
      E1510 := E1510 + 1;
      E1508 := E1508 + 1;
      E124 := E124 + 1;
      E122 := E122 + 1;
      E319 := E319 + 1;
      E331 := E331 + 1;
      E502 := E502 + 1;
      Multprec_Natural_Coefficients'Elab_Body;
      E409 := E409 + 1;
      Multprec_Natural_Numbers'Elab_Spec;
      Multprec_Natural_Numbers'Elab_Body;
      E412 := E412 + 1;
      Multprec_Integer_Numbers'Elab_Spec;
      E407 := E407 + 1;
      E658 := E658 + 1;
      Multprec_Integer_Ring'Elab_Spec;
      E639 := E639 + 1;
      E656 := E656 + 1;
      E3956 := E3956 + 1;
      E3966 := E3966 + 1;
      E3970 := E3970 + 1;
      E498 := E498 + 1;
      E256 := E256 + 1;
      Standard_Complex_Ring'Elab_Spec;
      E259 := E259 + 1;
      E3666 := E3666 + 1;
      E3610 := E3610 + 1;
      E3626 := E3626 + 1;
      Standard_Complex_Series_Ring'Elab_Spec;
      E2417 := E2417 + 1;
      Dcmplx_Vecvecs_Container'Elab_Body;
      E3876 := E3876 + 1;
      E2165 := E2165 + 1;
      Standard_Complex_Veclists'Elab_Spec;
      E1984 := E1984 + 1;
      E2874 := E2874 + 1;
      E2872 := E2872 + 1;
      E3093 := E3093 + 1;
      E1098 := E1098 + 1;
      E362 := E362 + 1;
      E360 := E360 + 1;
      E1434 := E1434 + 1;
      E3776 := E3776 + 1;
      E288 := E288 + 1;
      E1177 := E1177 + 1;
      E297 := E297 + 1;
      Simplex_Pivoting'Elab_Spec;
      E1462 := E1462 + 1;
      Double_Vecvecs_Container'Elab_Body;
      E3892 := E3892 + 1;
      Lists_Of_Floating_Vectors'Elab_Spec;
      E676 := E676 + 1;
      E682 := E682 + 1;
      E3151 := E3151 + 1;
      E3169 := E3169 + 1;
      E3145 := E3145 + 1;
      E737 := E737 + 1;
      E299 := E299 + 1;
      E254 := E254 + 1;
      E295 := E295 + 1;
      Standard_Integer32_Simplices'Elab_Spec;
      E252 := E252 + 1;
      E2013 := E2013 + 1;
      E2019 := E2019 + 1;
      E2015 := E2015 + 1;
      E382 := E382 + 1;
      E3778 := E3778 + 1;
      E3385 := E3385 + 1;
      E3091 := E3091 + 1;
      E3089 := E3089 + 1;
      E2179 := E2179 + 1;
      E1458 := E1458 + 1;
      E2369 := E2369 + 1;
      E1520 := E1520 + 1;
      E2494 := E2494 + 1;
      E1468 := E1468 + 1;
      E2853 := E2853 + 1;
      E269 := E269 + 1;
      E3614 := E3614 + 1;
      E329 := E329 + 1;
      E327 := E327 + 1;
      Dobldobl_Complex_Ring'Elab_Spec;
      E325 := E325 + 1;
      E537 := E537 + 1;
      Dobldobl_Complex_Series_Ring'Elab_Spec;
      E2382 := E2382 + 1;
      Dobldobl_Complex_Veclists'Elab_Spec;
      E1980 := E1980 + 1;
      E2890 := E2890 + 1;
      E2888 := E2888 + 1;
      E2900 := E2900 + 1;
      E611 := E611 + 1;
      E1796 := E1796 + 1;
      E1862 := E1862 + 1;
      E1864 := E1864 + 1;
      E3143 := E3143 + 1;
      Double_Double_Constants'Elab_Spec;
      E507 := E507 + 1;
      E506 := E506 + 1;
      E629 := E629 + 1;
      E615 := E615 + 1;
      E617 := E617 + 1;
      E504 := E504 + 1;
      E1860 := E1860 + 1;
      E356 := E356 + 1;
      E354 := E354 + 1;
      E3646 := E3646 + 1;
      E2432 := E2432 + 1;
      E2894 := E2894 + 1;
      E2896 := E2896 + 1;
      E2892 := E2892 + 1;
      E1564 := E1564 + 1;
      E1562 := E1562 + 1;
      E3473 := E3473 + 1;
      Double_Double_Ring'Elab_Spec;
      E472 := E472 + 1;
      E521 := E521 + 1;
      E519 := E519 + 1;
      E2291 := E2291 + 1;
      E1577 := E1577 + 1;
      E527 := E527 + 1;
      E517 := E517 + 1;
      E2293 := E2293 + 1;
      E743 := E743 + 1;
      Multprec_Floating_Numbers'Elab_Body;
      E427 := E427 + 1;
      Multprec_Floating_Ring'Elab_Spec;
      E425 := E425 + 1;
      E441 := E441 + 1;
      Multprec_Complex_Ring'Elab_Spec;
      E433 := E433 + 1;
      E2145 := E2145 + 1;
      E443 := E443 + 1;
      E1131 := E1131 + 1;
      E439 := E439 + 1;
      E437 := E437 + 1;
      E2153 := E2153 + 1;
      E1887 := E1887 + 1;
      E1988 := E1988 + 1;
      E3694 := E3694 + 1;
      E2255 := E2255 + 1;
      E2257 := E2257 + 1;
      E826 := E826 + 1;
      Octo_Double_Constants'Elab_Spec;
      E855 := E855 + 1;
      E951 := E951 + 1;
      Octo_Double_Ring'Elab_Spec;
      E851 := E851 + 1;
      E2596 := E2596 + 1;
      Octodobl_Complex_Ring'Elab_Spec;
      E888 := E888 + 1;
      Octodobl_Complex_Series_Ring'Elab_Spec;
      E2475 := E2475 + 1;
      E2748 := E2748 + 1;
      E2910 := E2910 + 1;
      E2906 := E2906 + 1;
      E2926 := E2926 + 1;
      E857 := E857 + 1;
      E2746 := E2746 + 1;
      E2914 := E2914 + 1;
      E2922 := E2922 + 1;
      E2916 := E2916 + 1;
      E2924 := E2924 + 1;
      E2937 := E2937 + 1;
      E2912 := E2912 + 1;
      E828 := E828 + 1;
      Penta_Double_Constants'Elab_Spec;
      E864 := E864 + 1;
      E961 := E961 + 1;
      Penta_Double_Ring'Elab_Spec;
      E860 := E860 + 1;
      E2620 := E2620 + 1;
      Pentdobl_Complex_Ring'Elab_Spec;
      E893 := E893 + 1;
      Pentdobl_Complex_Series_Ring'Elab_Spec;
      E2480 := E2480 + 1;
      E2757 := E2757 + 1;
      E2949 := E2949 + 1;
      E2945 := E2945 + 1;
      E2965 := E2965 + 1;
      E866 := E866 + 1;
      E2755 := E2755 + 1;
      E2953 := E2953 + 1;
      E2961 := E2961 + 1;
      E2955 := E2955 + 1;
      E2963 := E2963 + 1;
      E2976 := E2976 + 1;
      E2951 := E2951 + 1;
      E1106 := E1106 + 1;
      E395 := E395 + 1;
      E636 := E636 + 1;
      E1908 := E1908 + 1;
      E2878 := E2878 + 1;
      E1102 := E1102 + 1;
      E2880 := E2880 + 1;
      E1104 := E1104 + 1;
      E3167 := E3167 + 1;
      E3187 := E3187 + 1;
      Standard_Complex_Solutions'Elab_Spec;
      E393 := E393 + 1;
      Multprec_Complex_Solutions'Elab_Spec;
      E435 := E435 + 1;
      E2147 := E2147 + 1;
      E1896 := E1896 + 1;
      E3824 := E3824 + 1;
      Solutions_Pool'Elab_Body;
      E3856 := E3856 + 1;
      E1333 := E1333 + 1;
      Standard_Continuation_Data'Elab_Spec;
      E605 := E605 + 1;
      E1112 := E1112 + 1;
      E2876 := E2876 + 1;
      E1734 := E1734 + 1;
      E1216 := E1216 + 1;
      E2247 := E2247 + 1;
      E2345 := E2345 + 1;
      E1306 := E1306 + 1;
      E2347 := E2347 + 1;
      E592 := E592 + 1;
      E3163 := E3163 + 1;
      E2167 := E2167 + 1;
      E3149 := E3149 + 1;
      E384 := E384 + 1;
      E1854 := E1854 + 1;
      E3618 := E3618 + 1;
      E3628 := E3628 + 1;
      Multprec_Natural64_Coefficients'Elab_Body;
      E1712 := E1712 + 1;
      Multprec_Natural64_Numbers'Elab_Spec;
      Multprec_Natural64_Numbers'Elab_Body;
      E1718 := E1718 + 1;
      Multprec_Integer64_Numbers'Elab_Spec;
      E1716 := E1716 + 1;
      Multprec_Floating64_Numbers'Elab_Body;
      E1714 := E1714 + 1;
      Multprec_Integer64_Ring'Elab_Spec;
      E3697 := E3697 + 1;
      Multprec_Natural_Numbers_Io'Elab_Body;
      E416 := E416 + 1;
      E414 := E414 + 1;
      E3960 := E3960 + 1;
      Multprec_Lattice_3d_Facets'Elab_Spec;
      E3964 := E3964 + 1;
      E3958 := E3958 + 1;
      Multprec_Lattice_4d_Facets'Elab_Spec;
      E3976 := E3976 + 1;
      E3954 := E3954 + 1;
      E3802 := E3802 + 1;
      E3980 := E3980 + 1;
      E3423 := E3423 + 1;
      E2205 := E2205 + 1;
      E2011 := E2011 + 1;
      Bracket_Monomials'Elab_Spec;
      E3497 := E3497 + 1;
      E3495 := E3495 + 1;
      E3493 := E3493 + 1;
      E3501 := E3501 + 1;
      E3505 := E3505 + 1;
      E3544 := E3544 + 1;
      Dobldobl_Bracket_Polynomials'Elab_Spec;
      E3542 := E3542 + 1;
      E3550 := E3550 + 1;
      E455 := E455 + 1;
      Dobldobl_Complex_Polynomials'Elab_Spec;
      E453 := E453 + 1;
      Dobldobl_Complex_Poly_Ring'Elab_Spec;
      E1571 := E1571 + 1;
      Dobldobl_Cseries_Polynomials'Elab_Spec;
      E2396 := E2396 + 1;
      E1866 := E1866 + 1;
      Double_Double_Polynomials'Elab_Spec;
      E471 := E471 + 1;
      E810 := E810 + 1;
      Dobldobl_Complex_Term_Lists'Elab_Spec;
      E820 := E820 + 1;
      E457 := E457 + 1;
      E2271 := E2271 + 1;
      E225 := E225 + 1;
      E309 := E309 + 1;
      Dobldobl_Complex_Laurentials'Elab_Spec;
      E324 := E324 + 1;
      E336 := E336 + 1;
      E307 := E307 + 1;
      E1706 := E1706 + 1;
      E449 := E449 + 1;
      E459 := E459 + 1;
      E346 := E346 + 1;
      E350 := E350 + 1;
      E793 := E793 + 1;
      Dobldobl_Laursys_Container'Elab_Body;
      E3820 := E3820 + 1;
      E223 := E223 + 1;
      Integer_Mixed_Subdivisions'Elab_Spec;
      E221 := E221 + 1;
      E278 := E278 + 1;
      E1518 := E1518 + 1;
      E3328 := E3328 + 1;
      E3936 := E3936 + 1;
      E1220 := E1220 + 1;
      Multprec_Complex_Laurentials'Elab_Spec;
      E476 := E476 + 1;
      Multprec_Complex_Polynomials'Elab_Spec;
      E480 := E480 + 1;
      Multprec_Complex_Term_Lists'Elab_Spec;
      E818 := E818 + 1;
      Multprec_Floating_Polynomials'Elab_Spec;
      E1031 := E1031 + 1;
      Multprec_Laursys_Container'Elab_Body;
      E3854 := E3854 + 1;
      Octo_Double_Polynomials'Elab_Spec;
      E2582 := E2582 + 1;
      Octodobl_Complex_Laurentials'Elab_Spec;
      E2586 := E2586 + 1;
      Octodobl_Complex_Polynomials'Elab_Spec;
      E887 := E887 + 1;
      Octodobl_Cseries_Polynomials'Elab_Spec;
      E2698 := E2698 + 1;
      Penta_Double_Polynomials'Elab_Spec;
      E2606 := E2606 + 1;
      Pentdobl_Complex_Laurentials'Elab_Spec;
      E2610 := E2610 + 1;
      Pentdobl_Complex_Polynomials'Elab_Spec;
      E892 := E892 + 1;
      Pentdobl_Cseries_Polynomials'Elab_Spec;
      E2716 := E2716 + 1;
      E3942 := E3942 + 1;
      E3354 := E3354 + 1;
      E1530 := E1530 + 1;
      E3352 := E3352 + 1;
      Standard_Bracket_Polynomials'Elab_Spec;
      E3548 := E3548 + 1;
      E3940 := E3940 + 1;
      Standard_Complex_Laurentials'Elab_Spec;
      E311 := E311 + 1;
      E303 := E303 + 1;
      E3898 := E3898 + 1;
      E2027 := E2027 + 1;
      Standard_Complex_Polynomials'Elab_Spec;
      E484 := E484 + 1;
      E3334 := E3334 + 1;
      Standard_Complex_Poly_Lists'Elab_Spec;
      E1524 := E1524 + 1;
      Standard_Complex_Poly_Ring'Elab_Spec;
      E1300 := E1300 + 1;
      E2161 := E2161 + 1;
      E1526 := E1526 + 1;
      E1722 := E1722 + 1;
      Standard_Complex_Term_Lists'Elab_Spec;
      E808 := E808 + 1;
      Standard_Cseries_Polynomials'Elab_Spec;
      E2512 := E2512 + 1;
      E1724 := E1724 + 1;
      Standard_Floating_Polynomials'Elab_Spec;
      E2333 := E2333 + 1;
      E2329 := E2329 + 1;
      E2203 := E2203 + 1;
      E1187 := E1187 + 1;
      E1018 := E1018 + 1;
      Standard_Laursys_Container'Elab_Body;
      E3828 := E3828 + 1;
      E3624 := E3624 + 1;
      E3588 := E3588 + 1;
      E541 := E541 + 1;
      E3338 := E3338 + 1;
      E2423 := E2423 + 1;
      E2421 := E2421 + 1;
      E1770 := E1770 + 1;
      E686 := E686 + 1;
      E3514 := E3514 + 1;
      E785 := E785 + 1;
      E2379 := E2379 + 1;
      E789 := E789 + 1;
      E1593 := E1593 + 1;
      E791 := E791 + 1;
      E1686 := E1686 + 1;
      E1568 := E1568 + 1;
      E779 := E779 + 1;
      E1589 := E1589 + 1;
      Dobldobl_Polysys_Container'Elab_Body;
      E3806 := E3806 + 1;
      Dobldobl_Systems_Pool'Elab_Body;
      E4042 := E4042 + 1;
      E3690 := E3690 + 1;
      E899 := E899 + 1;
      E3713 := E3713 + 1;
      Multprec_Polysys_Container'Elab_Body;
      E3822 := E3822 + 1;
      E2920 := E2920 + 1;
      E2686 := E2686 + 1;
      E2700 := E2700 + 1;
      E2959 := E2959 + 1;
      E2704 := E2704 + 1;
      E2718 := E2718 + 1;
      E3596 := E3596 + 1;
      E1092 := E1092 + 1;
      E3664 := E3664 + 1;
      E1758 := E1758 + 1;
      E1008 := E1008 + 1;
      E1297 := E1297 + 1;
      E747 := E747 + 1;
      Floating_Mixed_Subdivisions'Elab_Spec;
      E680 := E680 + 1;
      E678 := E678 + 1;
      Demics_Output_Cells'Elab_Body;
      E3376 := E3376 + 1;
      E3395 := E3395 + 1;
      E672 := E672 + 1;
      E745 := E745 + 1;
      Mixed_Cells_Queue'Elab_Body;
      E1373 := E1373 + 1;
      E1016 := E1016 + 1;
      E1325 := E1325 + 1;
      E1816 := E1816 + 1;
      E3342 := E3342 + 1;
      E2175 := E2175 + 1;
      E3524 := E3524 + 1;
      E1331 := E1331 + 1;
      E3499 := E3499 + 1;
      E3674 := E3674 + 1;
      E3672 := E3672 + 1;
      E1169 := E1169 + 1;
      E3606 := E3606 + 1;
      E803 := E803 + 1;
      E1237 := E1237 + 1;
      E1894 := E1894 + 1;
      E1587 := E1587 + 1;
      Dobldobl_Evaluate_Deflation'Elab_Spec;
      E1591 := E1591 + 1;
      E1585 := E1585 + 1;
      Monodromy_Group_Actions'Elab_Spec;
      E2139 := E2139 + 1;
      E2141 := E2141 + 1;
      E3711 := E3711 + 1;
      Multprec_Evaluate_Deflation'Elab_Spec;
      E3715 := E3715 + 1;
      E3709 := E3709 + 1;
      E1323 := E1323 + 1;
      Standard_Evaluate_Deflation'Elab_Spec;
      E1329 := E1329 + 1;
      E1321 := E1321 + 1;
      Standard_Linear_Product_System'Elab_Body;
      E1516 := E1516 + 1;
      E1522 := E1522 + 1;
      E1605 := E1605 + 1;
      E1603 := E1603 + 1;
      E3729 := E3729 + 1;
      E3727 := E3727 + 1;
      E1229 := E1229 + 1;
      E1227 := E1227 + 1;
      E1966 := E1966 + 1;
      E2335 := E2335 + 1;
      Standard_Parse_Numbers'Elab_Spec;
      E420 := E420 + 1;
      Multprec_Parse_Numbers'Elab_Spec;
      E418 := E418 + 1;
      E631 := E631 + 1;
      E405 := E405 + 1;
      E547 := E547 + 1;
      E1118 := E1118 + 1;
      E403 := E403 + 1;
      E401 := E401 + 1;
      E430 := E430 + 1;
      Dobldobl_Complex_Solutions'Elab_Spec;
      E399 := E399 + 1;
      E1245 := E1245 + 1;
      Dobldobl_Continuation_Data'Elab_Spec;
      E511 := E511 + 1;
      E1696 := E1696 + 1;
      E1794 := E1794 + 1;
      E1812 := E1812 + 1;
      Dobldobl_Linear_Product_System'Elab_Body;
      E3644 := E3644 + 1;
      E2281 := E2281 + 1;
      Dobldobl_Point_Lists'Elab_Spec;
      E1251 := E1251 + 1;
      E467 := E467 + 1;
      E609 := E609 + 1;
      E607 := E607 + 1;
      E1253 := E1253 + 1;
      E648 := E648 + 1;
      E1688 := E1688 + 1;
      E1249 := E1249 + 1;
      E1680 := E1680 + 1;
      E3808 := E3808 + 1;
      Dobldobl_Solutions_Queue'Elab_Body;
      E1692 := E1692 + 1;
      E1438 := E1438 + 1;
      E4124 := E4124 + 1;
      E1120 := E1120 + 1;
      E2159 := E2159 + 1;
      E1892 := E1892 + 1;
      E1885 := E1885 + 1;
      E2253 := E2253 + 1;
      E949 := E949 + 1;
      E959 := E959 + 1;
      E1129 := E1129 + 1;
      E1127 := E1127 + 1;
      E3717 := E3717 + 1;
      E3489 := E3489 + 1;
      E488 := E488 + 1;
      E953 := E953 + 1;
      E955 := E955 + 1;
      Octodobl_Complex_Solutions'Elab_Spec;
      E947 := E947 + 1;
      E2578 := E2578 + 1;
      E963 := E963 + 1;
      E965 := E965 + 1;
      Pentdobl_Complex_Solutions'Elab_Spec;
      E957 := E957 + 1;
      E2602 := E2602 + 1;
      E1766 := E1766 + 1;
      E1790 := E1790 + 1;
      Standard_Point_Lists'Elab_Spec;
      E1289 := E1289 + 1;
      E1341 := E1341 + 1;
      Standard_Polysys_Container'Elab_Body;
      E3814 := E3814 + 1;
      E1962 := E1962 + 1;
      E2209 := E2209 + 1;
      E1096 := E1096 + 1;
      E1094 := E1094 + 1;
      E1291 := E1291 + 1;
      E1202 := E1202 + 1;
      E2414 := E2414 + 1;
      E2412 := E2412 + 1;
      E1788 := E1788 + 1;
      E2057 := E2057 + 1;
      E2017 := E2017 + 1;
      E1273 := E1273 + 1;
      E2055 := E2055 + 1;
      Standard_Solutions_Queue'Elab_Body;
      E1744 := E1744 + 1;
      E1609 := E1609 + 1;
      E1607 := E1607 + 1;
      E1601 := E1601 + 1;
      E1611 := E1611 + 1;
      E1450 := E1450 + 1;
      Standard_Systems_Pool'Elab_Body;
      E3858 := E3858 + 1;
      E1027 := E1027 + 1;
      E1964 := E1964 + 1;
      E3153 := E3153 + 1;
      E3159 := E3159 + 1;
      E3157 := E3157 + 1;
      E3185 := E3185 + 1;
      E3195 := E3195 + 1;
      E3147 := E3147 + 1;
      E3179 := E3179 + 1;
      E3161 := E3161 + 1;
      E3197 := E3197 + 1;
      E601 := E601 + 1;
      E599 := E599 + 1;
      E585 := E585 + 1;
      E583 := E583 + 1;
      E581 := E581 + 1;
      E4128 := E4128 + 1;
      E717 := E717 + 1;
      E3556 := E3556 + 1;
      E3554 := E3554 + 1;
      E3848 := E3848 + 1;
      E154 := E154 + 1;
      E006 := E006 + 1;
      E317 := E317 + 1;
      E3380 := E3380 + 1;
      E3387 := E3387 + 1;
      E3794 := E3794 + 1;
      Lists_Of_Strings'Elab_Spec;
      E4018 := E4018 + 1;
      Demics_Output_Data'Elab_Body;
      E4016 := E4016 + 1;
      E3326 := E3326 + 1;
      E3978 := E3978 + 1;
      E3741 := E3741 + 1;
      E3745 := E3745 + 1;
      E3739 := E3739 + 1;
      E2359 := E2359 + 1;
      E812 := E812 + 1;
      E3896 := E3896 + 1;
      E4032 := E4032 + 1;
      Symbol_Table'Elab_Spec;
      E390 := E390 + 1;
      E3590 := E3590 + 1;
      E715 := E715 + 1;
      Lists_Of_Symbols'Elab_Spec;
      E2195 := E2195 + 1;
      E1546 := E1546 + 1;
      E1542 := E1542 + 1;
      E1540 := E1540 + 1;
      E3846 := E3846 + 1;
      E3928 := E3928 + 1;
      E3844 := E3844 + 1;
      E4008 := E4008 + 1;
      E3796 := E3796 + 1;
      E388 := E388 + 1;
      E2289 := E2289 + 1;
      E486 := E486 + 1;
      E465 := E465 + 1;
      Multprec_Maple_Solutions_Io'Elab_Body;
      E2367 := E2367 + 1;
      E2592 := E2592 + 1;
      E2616 := E2616 + 1;
      E1544 := E1544 + 1;
      E1538 := E1538 + 1;
      E1143 := E1143 + 1;
      E1141 := E1141 + 1;
      E801 := E801 + 1;
      E799 := E799 + 1;
      E797 := E797 + 1;
      E816 := E816 + 1;
      E814 := E814 + 1;
      E2357 := E2357 + 1;
      E3866 := E3866 + 1;
      E3894 := E3894 + 1;
      Standard_Dictionary_Solutions_Io'Elab_Body;
      E2193 := E2193 + 1;
      E2410 := E2410 + 1;
      E2408 := E2408 + 1;
      E2349 := E2349 + 1;
      E386 := E386 + 1;
      E358 := E358 + 1;
      E352 := E352 + 1;
      E513 := E513 + 1;
      E3670 := E3670 + 1;
      E1257 := E1257 + 1;
      E1682 := E1682 + 1;
      E2191 := E2191 + 1;
      E549 := E549 + 1;
      E2365 := E2365 + 1;
      E1883 := E1883 + 1;
      E2594 := E2594 + 1;
      E2618 := E2618 + 1;
      E1133 := E1133 + 1;
      E3725 := E3725 + 1;
      E1271 := E1271 + 1;
      E1768 := E1768 + 1;
      Symmetry_Group'Elab_Spec;
      E3360 := E3360 + 1;
      E3358 := E3358 + 1;
      E3372 := E3372 + 1;
      System_Call'Elab_Spec;
      E267 := E267 + 1;
      E265 := E265 + 1;
      Standard_Random_Numbers'Elab_Body;
      E263 := E263 + 1;
      E3391 := E3391 + 1;
      E3389 := E3389 + 1;
      E3382 := E3382 + 1;
      E654 := E654 + 1;
      E1844 := E1844 + 1;
      E1575 := E1575 + 1;
      E4072 := E4072 + 1;
      E652 := E652 + 1;
      E1566 := E1566 + 1;
      E1579 := E1579 + 1;
      E1774 := E1774 + 1;
      E2902 := E2902 + 1;
      E1583 := E1583 + 1;
      E1798 := E1798 + 1;
      E3471 := E3471 + 1;
      E1615 := E1615 + 1;
      E2898 := E2898 + 1;
      E1906 := E1906 + 1;
      E1151 := E1151 + 1;
      E741 := E741 + 1;
      E1157 := E1157 + 1;
      Floating_Faces_Of_Polytope'Elab_Spec;
      E1149 := E1149 + 1;
      E1345 := E1345 + 1;
      E3065 := E3065 + 1;
      E1171 := E1171 + 1;
      E739 := E739 + 1;
      E735 := E735 + 1;
      Integer_Faces_Of_Polytope'Elab_Spec;
      E733 := E733 + 1;
      E3411 := E3411 + 1;
      E1175 := E1175 + 1;
      E1710 := E1710 + 1;
      E3692 := E3692 + 1;
      E1708 := E1708 + 1;
      E3688 := E3688 + 1;
      E3705 := E3705 + 1;
      E2151 := E2151 + 1;
      E854 := E854 + 1;
      E2941 := E2941 + 1;
      E2928 := E2928 + 1;
      E2918 := E2918 + 1;
      E3284 := E3284 + 1;
      E3302 := E3302 + 1;
      E3612 := E3612 + 1;
      E863 := E863 + 1;
      E2980 := E2980 + 1;
      E2967 := E2967 + 1;
      E2957 := E2957 + 1;
      E3286 := E3286 + 1;
      E3308 := E3308 + 1;
      E1470 := E1470 + 1;
      E1528 := E1528 + 1;
      E3332 := E3332 + 1;
      E2127 := E2127 + 1;
      E3604 := E3604 + 1;
      E1145 := E1145 + 1;
      E1147 := E1147 + 1;
      Standard_Integer32_Triangulations'Elab_Spec;
      E261 := E261 + 1;
      E193 := E193 + 1;
      E282 := E282 + 1;
      E3413 := E3413 + 1;
      E3421 := E3421 + 1;
      E1870 := E1870 + 1;
      E1304 := E1304 + 1;
      E4086 := E4086 + 1;
      E1204 := E1204 + 1;
      E3884 := E3884 + 1;
      E3882 := E3882 + 1;
      E3886 := E3886 + 1;
      E3099 := E3099 + 1;
      E3101 := E3101 + 1;
      E1295 := E1295 + 1;
      E1315 := E1315 + 1;
      E1778 := E1778 + 1;
      E2884 := E2884 + 1;
      E1319 := E1319 + 1;
      E1762 := E1762 + 1;
      E1760 := E1760 + 1;
      E1764 := E1764 + 1;
      E2171 := E2171 + 1;
      E2882 := E2882 + 1;
      E3113 := E3113 + 1;
      E3111 := E3111 + 1;
      E3155 := E3155 + 1;
      E3141 := E3141 + 1;
      E3139 := E3139 + 1;
      E3165 := E3165 + 1;
      Standard_Solutions_Heap'Elab_Spec;
      E3733 := E3733 + 1;
      Templates'Elab_Body;
      E3370 := E3370 + 1;
      E3097 := E3097 + 1;
      E3095 := E3095 + 1;
      E1500 := E1500 + 1;
      Timing_Package'Elab_Spec;
      Timing_Package'Elab_Body;
      E751 := E751 + 1;
      E1403 := E1403 + 1;
      E2081 := E2081 + 1;
      E2129 := E2129 + 1;
      E301 := E301 + 1;
      E1214 := E1214 + 1;
      E1165 := E1165 + 1;
      E1173 := E1173 + 1;
      E1161 := E1161 + 1;
      E3407 := E3407 + 1;
      E3405 := E3405 + 1;
      E286 := E286 + 1;
      E284 := E284 + 1;
      E3415 := E3415 + 1;
      E731 := E731 + 1;
      E749 := E749 + 1;
      E729 := E729 + 1;
      E727 := E727 + 1;
      E3409 := E3409 + 1;
      E280 := E280 + 1;
      E191 := E191 + 1;
      E1335 := E1335 + 1;
      Trees_Of_Vectors'Elab_Spec;
      E1339 := E1339 + 1;
      trees_of_vectors_io'elab_body;
      E1343 := E1343 + 1;
      E500 := E500 + 1;
      E496 := E496 + 1;
      E824 := E824 + 1;
      Deca_Double_Constants'Elab_Spec;
      E835 := E835 + 1;
      E917 := E917 + 1;
      Deca_Double_Ring'Elab_Spec;
      E831 := E831 + 1;
      Deca_Double_Polynomials'Elab_Spec;
      E2534 := E2534 + 1;
      E2548 := E2548 + 1;
      Decadobl_Complex_Ring'Elab_Spec;
      E878 := E878 + 1;
      Decadobl_Complex_Laurentials'Elab_Spec;
      E2538 := E2538 + 1;
      Decadobl_Complex_Polynomials'Elab_Spec;
      E877 := E877 + 1;
      Decadobl_Complex_Series_Ring'Elab_Spec;
      E2465 := E2465 + 1;
      E2730 := E2730 + 1;
      E2845 := E2845 + 1;
      E2646 := E2646 + 1;
      E2835 := E2835 + 1;
      E2831 := E2831 + 1;
      Decadobl_Cseries_Polynomials'Elab_Spec;
      E2658 := E2658 + 1;
      E2851 := E2851 + 1;
      E2660 := E2660 + 1;
      E837 := E837 + 1;
      E2728 := E2728 + 1;
      E2839 := E2839 + 1;
      E2847 := E2847 + 1;
      E2841 := E2841 + 1;
      E2849 := E2849 + 1;
      E2864 := E2864 + 1;
      E2837 := E2837 + 1;
      E834 := E834 + 1;
      E2868 := E2868 + 1;
      E2855 := E2855 + 1;
      E2843 := E2843 + 1;
      E3235 := E3235 + 1;
      E3233 := E3233 + 1;
      E839 := E839 + 1;
      E2406 := E2406 + 1;
      E2726 := E2726 + 1;
      E2404 := E2404 + 1;
      E2402 := E2402 + 1;
      Hexa_Double_Constants'Elab_Spec;
      E846 := E846 + 1;
      E939 := E939 + 1;
      Hexa_Double_Ring'Elab_Spec;
      E842 := E842 + 1;
      Hexa_Double_Polynomials'Elab_Spec;
      E2558 := E2558 + 1;
      E2572 := E2572 + 1;
      Hexadobl_Complex_Ring'Elab_Spec;
      E883 := E883 + 1;
      Hexadobl_Complex_Laurentials'Elab_Spec;
      E2562 := E2562 + 1;
      Hexadobl_Complex_Polynomials'Elab_Spec;
      E882 := E882 + 1;
      Hexadobl_Complex_Series_Ring'Elab_Spec;
      E2470 := E2470 + 1;
      E2739 := E2739 + 1;
      E3249 := E3249 + 1;
      E2664 := E2664 + 1;
      E3272 := E3272 + 1;
      E3270 := E3270 + 1;
      Hexadobl_Cseries_Polynomials'Elab_Spec;
      E2676 := E2676 + 1;
      E3255 := E3255 + 1;
      E2678 := E2678 + 1;
      E848 := E848 + 1;
      E2737 := E2737 + 1;
      E3251 := E3251 + 1;
      E2735 := E2735 + 1;
      E3253 := E3253 + 1;
      E3266 := E3266 + 1;
      E845 := E845 + 1;
      E3268 := E3268 + 1;
      E3257 := E3257 + 1;
      E3247 := E3247 + 1;
      E3243 := E3243 + 1;
      E3296 := E3296 + 1;
      E915 := E915 + 1;
      E937 := E937 + 1;
      E2744 := E2744 + 1;
      E2753 := E2753 + 1;
      Quad_Double_Constants'Elab_Spec;
      E632 := E632 + 1;
      E494 := E494 + 1;
      E561 := E561 + 1;
      E492 := E492 + 1;
      E777 := E777 + 1;
      Dobldobl_Quad_Parameters'Elab_Spec;
      E2283 := E2283 + 1;
      E2287 := E2287 + 1;
      E3356 := E3356 + 1;
      E3067 := E3067 + 1;
      E3608 := E3608 + 1;
      E490 := E490 + 1;
      E463 := E463 + 1;
      E2590 := E2590 + 1;
      E1536 := E1536 + 1;
      E2614 := E2614 + 1;
      E3660 := E3660 + 1;
      Quad_Double_Ring'Elab_Spec;
      E554 := E554 + 1;
      Quad_Double_Polynomials'Elab_Spec;
      E983 := E983 + 1;
      E1736 := E1736 + 1;
      E551 := E551 + 1;
      Quaddobl_Complex_Ring'Elab_Spec;
      E572 := E572 + 1;
      Quaddobl_Bracket_Polynomials'Elab_Spec;
      E3546 := E3546 + 1;
      E3552 := E3552 + 1;
      Quaddobl_Complex_Laurentials'Elab_Spec;
      E697 := E697 + 1;
      Quaddobl_Complex_Polynomials'Elab_Spec;
      E701 := E701 + 1;
      E3534 := E3534 + 1;
      Quaddobl_Complex_Poly_Ring'Elab_Spec;
      E1638 := E1638 + 1;
      E693 := E693 + 1;
      E1159 := E1159 + 1;
      E1480 := E1480 + 1;
      E4068 := E4068 + 1;
      Quaddobl_Complex_Term_Lists'Elab_Spec;
      E987 := E987 + 1;
      E2303 := E2303 + 1;
      E3800 := E3800 + 1;
      E3772 := E3772 + 1;
      E1597 := E1597 + 1;
      E3874 := E3874 + 1;
      E4090 := E4090 + 1;
      E3900 := E3900 + 1;
      E1976 := E1976 + 1;
      E1090 := E1090 + 1;
      E1968 := E1968 + 1;
      E3992 := E3992 + 1;
      E1740 := E1740 + 1;
      E3362 := E3362 + 1;
      E3439 := E3439 + 1;
      E3364 := E3364 + 1;
      Orbits_Of_Solutions'Elab_Spec;
      E3366 := E3366 + 1;
      E3678 := E3678 + 1;
      E3437 := E3437 + 1;
      E3435 := E3435 + 1;
      E1702 := E1702 + 1;
      E2149 := E2149 + 1;
      E1064 := E1064 + 1;
      E3503 := E3503 + 1;
      E3530 := E3530 + 1;
      E3528 := E3528 + 1;
      Intersection_Posets'Elab_Spec;
      E3580 := E3580 + 1;
      Dobldobl_Solution_Posets'Elab_Spec;
      E3578 := E3578 + 1;
      E3582 := E3582 + 1;
      E3079 := E3079 + 1;
      E3652 := E3652 + 1;
      Quaddobl_Complex_Series_Ring'Elab_Spec;
      E2442 := E2442 + 1;
      E3747 := E3747 + 1;
      E2439 := E2439 + 1;
      E1068 := E1068 + 1;
      E2004 := E2004 + 1;
      E2047 := E2047 + 1;
      Quaddobl_Complex_Veclists'Elab_Spec;
      E1982 := E1982 + 1;
      E2986 := E2986 + 1;
      E2984 := E2984 + 1;
      Quaddobl_Cseries_Polynomials'Elab_Spec;
      E2504 := E2504 + 1;
      E2996 := E2996 + 1;
      E1720 := E1720 + 1;
      E1635 := E1635 + 1;
      E1076 := E1076 + 1;
      E3193 := E3193 + 1;
      E989 := E989 + 1;
      E1656 := E1656 + 1;
      E1654 := E1654 + 1;
      Quaddobl_Evaluate_Deflation'Elab_Spec;
      E1658 := E1658 + 1;
      E1652 := E1652 + 1;
      E1486 := E1486 + 1;
      E999 := E999 + 1;
      Quaddobl_Laursys_Container'Elab_Body;
      E3826 := E3826 + 1;
      E3340 := E3340 + 1;
      E691 := E691 + 1;
      E689 := E689 + 1;
      E2317 := E2317 + 1;
      E1644 := E1644 + 1;
      E2319 := E2319 + 1;
      E1056 := E1056 + 1;
      E1419 := E1419 + 1;
      E2990 := E2990 + 1;
      E1080 := E1080 + 1;
      E2448 := E2448 + 1;
      E2992 := E2992 + 1;
      E1082 := E1082 + 1;
      E3191 := E3191 + 1;
      E1040 := E1040 + 1;
      E2434 := E2434 + 1;
      E2446 := E2446 + 1;
      E2988 := E2988 + 1;
      E1938 := E1938 + 1;
      E3519 := E3519 + 1;
      E1660 := E1660 + 1;
      E2516 := E2516 + 1;
      E1668 := E1668 + 1;
      E3723 := E3723 + 1;
      E3721 := E3721 + 1;
      E1631 := E1631 + 1;
      E1629 := E1629 + 1;
      E1944 := E1944 + 1;
      E1802 := E1802 + 1;
      E1488 := E1488 + 1;
      Quaddobl_Polysys_Container'Elab_Body;
      E3810 := E3810 + 1;
      E1940 := E1940 + 1;
      Quaddobl_Quad_Parameters'Elab_Spec;
      E2309 := E2309 + 1;
      E868 := E868 + 1;
      E1928 := E1928 + 1;
      E1642 := E1642 + 1;
      E4080 := E4080 + 1;
      E1281 := E1281 + 1;
      E1978 := E1978 + 1;
      E1776 := E1776 + 1;
      E2998 := E2998 + 1;
      E1804 := E1804 + 1;
      E3481 := E3481 + 1;
      E1672 := E1672 + 1;
      E3049 := E3049 + 1;
      E3047 := E3047 + 1;
      E3483 := E3483 + 1;
      E2994 := E2994 + 1;
      E3121 := E3121 + 1;
      E3175 := E3175 + 1;
      E3127 := E3127 + 1;
      E3135 := E3135 + 1;
      E3133 := E3133 + 1;
      E1670 := E1670 + 1;
      E1666 := E1666 + 1;
      Quaddobl_Systems_Pool'Elab_Body;
      E4044 := E4044 + 1;
      E4092 := E4092 + 1;
      E1942 := E1942 + 1;
      E3278 := E3278 + 1;
      E3280 := E3280 + 1;
      E1060 := E1060 + 1;
      E1058 := E1058 + 1;
      E1050 := E1050 + 1;
      E1484 := E1484 + 1;
      E3177 := E3177 + 1;
      E1534 := E1534 + 1;
      E1674 := E1674 + 1;
      E3630 := E3630 + 1;
      E3181 := E3181 + 1;
      E3183 := E3183 + 1;
      E1806 := E1806 + 1;
      Standard_Complex_Exponentiation'Elab_Body;
      E634 := E634 + 1;
      Dobldobl_Complex_Exponentiation'Elab_Body;
      E627 := E627 + 1;
      E625 := E625 + 1;
      E623 := E623 + 1;
      E670 := E670 + 1;
      E621 := E621 + 1;
      E619 := E619 + 1;
      Quaddobl_Complex_Exponentiation'Elab_Body;
      E1417 := E1417 + 1;
      E1195 := E1195 + 1;
      E1193 := E1193 + 1;
      E1139 := E1139 + 1;
      E3890 := E3890 + 1;
      E3888 := E3888 + 1;
      E3880 := E3880 + 1;
      E3878 := E3878 + 1;
      E3757 := E3757 + 1;
      E2498 := E2498 + 1;
      E2496 := E2496 + 1;
      E2002 := E2002 + 1;
      E1998 := E1998 + 1;
      E2000 := E2000 + 1;
      Dobldobl_Monomial_Maps'Elab_Spec;
      E2031 := E2031 + 1;
      Quaddobl_Monomial_Maps'Elab_Spec;
      E2033 := E2033 + 1;
      E1613 := E1613 + 1;
      E1599 := E1599 + 1;
      Dobldobl_Jacobian_Circuits'Elab_Spec;
      E1595 := E1595 + 1;
      E1664 := E1664 + 1;
      Quaddobl_Jacobian_Circuits'Elab_Spec;
      E1662 := E1662 + 1;
      E2169 := E2169 + 1;
      Standard_Monomial_Maps'Elab_Spec;
      E2021 := E2021 + 1;
      Monomial_Maps_Container'Elab_Body;
      E3986 := E3986 + 1;
      E1996 := E1996 + 1;
      E1994 := E1994 + 1;
      E2029 := E2029 + 1;
      E2023 := E2023 + 1;
      E1992 := E1992 + 1;
      E3984 := E3984 + 1;
      E2337 := E2337 + 1;
      E2343 := E2343 + 1;
      E1208 := E1208 + 1;
      E1191 := E1191 + 1;
      E1189 := E1189 + 1;
      Standard_Solution_Posets'Elab_Spec;
      E3638 := E3638 + 1;
      E2173 := E2173 + 1;
      E3570 := E3570 + 1;
      E703 := E703 + 1;
      E3397 := E3397 + 1;
      E3378 := E3378 + 1;
      E2125 := E2125 + 1;
      E3429 := E3429 + 1;
      E3952 := E3952 + 1;
      E3401 := E3401 + 1;
      Standard_Binomial_Factors'Elab_Spec;
      E2201 := E2201 + 1;
      E2211 := E2211 + 1;
      Standard_Puiseux_Certificates'Elab_Spec;
      E2213 := E2213 + 1;
      E2215 := E2215 + 1;
      E2199 := E2199 + 1;
      E3767 := E3767 + 1;
      E3560 := E3560 + 1;
      E3594 := E3594 + 1;
      E3592 := E3592 + 1;
      E3602 := E3602 + 1;
      E3562 := E3562 + 1;
      E3558 := E3558 + 1;
      E3566 := E3566 + 1;
      E3636 := E3636 + 1;
      E3441 := E3441 + 1;
      E3447 := E3447 + 1;
      Symmetric_Set_Structure'Elab_Body;
      E3368 := E3368 + 1;
      E3129 := E3129 + 1;
      E1210 := E1210 + 1;
      Triple_Double_Constants'Elab_Spec;
      E873 := E873 + 1;
      E872 := E872 + 1;
      E971 := E971 + 1;
      E969 := E969 + 1;
      Triple_Double_Ring'Elab_Spec;
      E566 := E566 + 1;
      Triple_Double_Polynomials'Elab_Spec;
      E2634 := E2634 + 1;
      E913 := E913 + 1;
      E2530 := E2530 + 1;
      E2544 := E2544 + 1;
      E2542 := E2542 + 1;
      E935 := E935 + 1;
      E2554 := E2554 + 1;
      E2568 := E2568 + 1;
      E2566 := E2566 + 1;
      E563 := E563 + 1;
      E3540 := E3540 + 1;
      E2518 := E2518 + 1;
      E979 := E979 + 1;
      E977 := E977 + 1;
      E1263 := E1263 + 1;
      E1261 := E1261 + 1;
      E985 := E985 + 1;
      E3071 := E3071 + 1;
      E973 := E973 + 1;
      E2644 := E2644 + 1;
      E3237 := E3237 + 1;
      E2764 := E2764 + 1;
      Tripdobl_Complex_Ring'Elab_Spec;
      E577 := E577 + 1;
      Tripdobl_Complex_Laurentials'Elab_Spec;
      E2630 := E2630 + 1;
      Tripdobl_Complex_Polynomials'Elab_Spec;
      E897 := E897 + 1;
      E1506 := E1506 + 1;
      E3457 := E3457 + 1;
      E3453 := E3453 + 1;
      E3451 := E3451 + 1;
      E1504 := E1504 + 1;
      E1514 := E1514 + 1;
      E1512 := E1512 + 1;
      E3459 := E3459 + 1;
      E3020 := E3020 + 1;
      E2762 := E2762 + 1;
      Tripdobl_Complex_Series_Ring'Elab_Spec;
      E2487 := E2487 + 1;
      E3022 := E3022 + 1;
      E3030 := E3030 + 1;
      E975 := E975 + 1;
      Tripdobl_Complex_Solutions'Elab_Spec;
      E967 := E967 + 1;
      E2642 := E2642 + 1;
      E2766 := E2766 + 1;
      E3012 := E3012 + 1;
      E3014 := E3014 + 1;
      E3109 := E3109 + 1;
      E919 := E919 + 1;
      Decadobl_Complex_Solutions'Elab_Spec;
      E911 := E911 + 1;
      E2546 := E2546 + 1;
      E941 := E941 + 1;
      Hexadobl_Complex_Solutions'Elab_Spec;
      E933 := E933 + 1;
      E2570 := E2570 + 1;
      E569 := E569 + 1;
      Quaddobl_Complex_Solutions'Elab_Spec;
      E559 := E559 + 1;
      E3852 := E3852 + 1;
      E1772 := E1772 + 1;
      E909 := E909 + 1;
      E1415 := E1415 + 1;
      E557 := E557 + 1;
      E1810 := E1810 + 1;
      E545 := E545 + 1;
      E539 := E539 + 1;
      E3467 := E3467 + 1;
      E3469 := E3469 + 1;
      E3465 := E3465 + 1;
      E613 := E613 + 1;
      Dobldobl_Path_Tracker'Elab_Body;
      E3998 := E3998 + 1;
      E515 := E515 + 1;
      E509 := E509 + 1;
      E461 := E461 + 1;
      E1116 := E1116 + 1;
      Multprec_Path_Tracker'Elab_Body;
      E4000 := E4000 + 1;
      E1114 := E1114 + 1;
      E1110 := E1110 + 1;
      E1619 := E1619 + 1;
      E1279 := E1279 + 1;
      Quaddobl_Continuation_Data'Elab_Spec;
      E1044 := E1044 + 1;
      E1046 := E1046 + 1;
      E1066 := E1066 + 1;
      E1070 := E1070 + 1;
      E1633 := E1633 + 1;
      E1646 := E1646 + 1;
      E1730 := E1730 + 1;
      E3477 := E3477 + 1;
      E1800 := E1800 + 1;
      E3479 := E3479 + 1;
      E3475 := E3475 + 1;
      E1814 := E1814 + 1;
      Quaddobl_Linear_Product_System'Elab_Body;
      E3650 := E3650 + 1;
      E1650 := E1650 + 1;
      E3719 := E3719 + 1;
      E1078 := E1078 + 1;
      E2305 := E2305 + 1;
      Quaddobl_Point_Lists'Elab_Spec;
      E1285 := E1285 + 1;
      E1074 := E1074 + 1;
      E1072 := E1072 + 1;
      Quaddobl_Path_Tracker'Elab_Body;
      E4002 := E4002 + 1;
      E1048 := E1048 + 1;
      E1042 := E1042 + 1;
      E1287 := E1287 + 1;
      E2321 := E2321 + 1;
      E2315 := E2315 + 1;
      E1424 := E1424 + 1;
      E1413 := E1413 + 1;
      E2049 := E2049 + 1;
      E1446 := E1446 + 1;
      E1444 := E1444 + 1;
      E1442 := E1442 + 1;
      E1440 := E1440 + 1;
      E1267 := E1267 + 1;
      E1265 := E1265 + 1;
      E2043 := E2043 + 1;
      Quaddobl_Solution_Posets'Elab_Spec;
      E3632 := E3632 + 1;
      E2045 := E2045 + 1;
      E3930 := E3930 + 1;
      E3812 := E3812 + 1;
      Quaddobl_Solutions_Queue'Elab_Body;
      E1742 := E1742 + 1;
      E1448 := E1448 + 1;
      E4126 := E4126 + 1;
      E3568 := E3568 + 1;
      E4036 := E4036 + 1;
      E2452 := E2452 + 1;
      E2427 := E2427 + 1;
      E3041 := E3041 + 1;
      E3083 := E3083 + 1;
      E3189 := E3189 + 1;
      E1088 := E1088 + 1;
      E1784 := E1784 + 1;
      E1786 := E1786 + 1;
      E1782 := E1782 + 1;
      E1100 := E1100 + 1;
      Standard_Path_Tracker'Elab_Body;
      E4004 := E4004 + 1;
      E1086 := E1086 + 1;
      E1432 := E1432 + 1;
      E4056 := E4056 + 1;
      E4130 := E4130 + 1;
      E1552 := E1552 + 1;
      E3336 := E3336 + 1;
      E4026 := E4026 + 1;
      E3018 := E3018 + 1;
      E3051 := E3051 + 1;
      E3008 := E3008 + 1;
      E3002 := E3002 + 1;
      Tripdobl_Cseries_Polynomials'Elab_Spec;
      E2817 := E2817 + 1;
      E2724 := E2724 + 1;
      E2722 := E2722 + 1;
      E2870 := E2870 + 1;
      E2829 := E2829 + 1;
      E2886 := E2886 + 1;
      E2904 := E2904 + 1;
      E2943 := E2943 + 1;
      E2982 := E2982 + 1;
      E3010 := E3010 + 1;
      E3024 := E3024 + 1;
      E3059 := E3059 + 1;
      E2626 := E2626 + 1;
      E2640 := E2640 + 1;
      E2638 := E2638 + 1;
      E870 := E870 + 1;
      E822 := E822 + 1;
      E795 := E795 + 1;
      E2684 := E2684 + 1;
      E3274 := E3274 + 1;
      E3034 := E3034 + 1;
      E3026 := E3026 + 1;
      E3016 := E3016 + 1;
      E3282 := E3282 + 1;
      E3288 := E3288 + 1;
      E3241 := E3241 + 1;
      E3239 := E3239 + 1;
      E3318 := E3318 + 1;
      E3000 := E3000 + 1;
      E1496 := E1496 + 1;
      E1494 := E1494 + 1;
      E3782 := E3782 + 1;
      E3872 := E3872 + 1;
      E3950 := E3950 + 1;
      E3982 := E3982 + 1;
      E3990 := E3990 + 1;
      E4024 := E4024 + 1;
      E4034 := E4034 + 1;
      E4054 := E4054 + 1;
      E1108 := E1108 + 1;
      E1084 := E1084 + 1;
      E2279 := E2279 + 1;
      E1033 := E1033 + 1;
      Varbprec_Homotopy'Elab_Body;
      E4012 := E4012 + 1;
      E3751 := E3751 + 1;
      E3753 := E3753 + 1;
      E3205 := E3205 + 1;
      E3203 := E3203 + 1;
      E3749 := E3749 + 1;
      E3743 := E3743 + 1;
      E4010 := E4010 + 1;
      Varbprec_Path_Tracker'Elab_Body;
      E4006 := E4006 + 1;
      E3737 := E3737 + 1;
      E3780 := E3780 + 1;
      E1337 := E1337 + 1;
      E1704 := E1704 + 1;
      E1700 := E1700 + 1;
      E2091 := E2091 + 1;
      E1728 := E1728 + 1;
      E1732 := E1732 + 1;
      E1698 := E1698 + 1;
      E3574 := E3574 + 1;
      E719 := E719 + 1;
      E713 := E713 + 1;
      E711 := E711 + 1;
      E2528 := E2528 + 1;
      E709 := E709 + 1;
      E2552 := E2552 + 1;
      E721 := E721 + 1;
      E2526 := E2526 + 1;
      E2540 := E2540 + 1;
      E707 := E707 + 1;
      E705 := E705 + 1;
      E2063 := E2063 + 1;
      E1411 := E1411 + 1;
      E1259 := E1259 + 1;
      E2301 := E2301 + 1;
      E2285 := E2285 + 1;
      E2550 := E2550 + 1;
      E2564 := E2564 + 1;
      E3684 := E3684 + 1;
      E2576 := E2576 + 1;
      E2574 := E2574 + 1;
      E2588 := E2588 + 1;
      E2600 := E2600 + 1;
      E2598 := E2598 + 1;
      E2612 := E2612 + 1;
      E1137 := E1137 + 1;
      E1986 := E1986 + 1;
      E1135 := E1135 + 1;
      E2313 := E2313 + 1;
      E2311 := E2311 + 1;
      E1490 := E1490 + 1;
      E2117 := E2117 + 1;
      E1428 := E1428 + 1;
      E1269 := E1269 + 1;
      E3564 := E3564 + 1;
      E3538 := E3538 + 1;
      E1550 := E1550 + 1;
      E3509 := E3509 + 1;
      E3536 := E3536 + 1;
      E771 := E771 + 1;
      E1808 := E1808 + 1;
      E2077 := E2077 + 1;
      E3350 := E3350 + 1;
      E1756 := E1756 + 1;
      E1347 := E1347 + 1;
      E775 := E775 + 1;
      E3348 := E3348 + 1;
      E3676 := E3676 + 1;
      E773 := E773 + 1;
      E765 := E765 + 1;
      E725 := E725 + 1;
      E2155 := E2155 + 1;
      E3662 := E3662 + 1;
      E3658 := E3658 + 1;
      E1621 := E1621 + 1;
      E3487 := E3487 + 1;
      E3485 := E3485 + 1;
      E1548 := E1548 + 1;
      E3642 := E3642 + 1;
      E3648 := E3648 + 1;
      E3654 := E3654 + 1;
      E3449 := E3449 + 1;
      E3455 := E3455 + 1;
      E3461 := E3461 + 1;
      E1317 := E1317 + 1;
      E1581 := E1581 + 1;
      E1560 := E1560 + 1;
      E2682 := E2682 + 1;
      E3703 := E3703 + 1;
      E3701 := E3701 + 1;
      E1648 := E1648 + 1;
      E1627 := E1627 + 1;
      E1293 := E1293 + 1;
      E3804 := E3804 + 1;
      E3686 := E3686 + 1;
      E2341 := E2341 + 1;
      E2275 := E2275 + 1;
      E2662 := E2662 + 1;
      E2273 := E2273 + 1;
      E2680 := E2680 + 1;
      E2702 := E2702 + 1;
      Parameter_Homotopy_State'Elab_Body;
      E4062 := E4062 + 1;
      E2720 := E2720 + 1;
      E2307 := E2307 + 1;
      E2339 := E2339 + 1;
      E1492 := E1492 + 1;
      E3087 := E3087 + 1;
      E2111 := E2111 + 1;
      E3731 := E3731 + 1;
      E2119 := E2119 + 1;
      E3330 := E3330 + 1;
      E1430 := E1430 + 1;
      E1409 := E1409 + 1;
      E1349 := E1349 + 1;
      E1482 := E1482 + 1;
      E3399 := E3399 + 1;
      E1275 := E1275 + 1;
      E1255 := E1255 + 1;
      E1243 := E1243 + 1;
      E1277 := E1277 + 1;
      E1239 := E1239 + 1;
      E1247 := E1247 + 1;
      E1241 := E1241 + 1;
      E1283 := E1283 + 1;
      E1235 := E1235 + 1;
      E1556 := E1556 + 1;
      E1832 := E1832 + 1;
      E1834 := E1834 + 1;
      Dobldobl_Sample_Points'Elab_Spec;
      Dobldobl_Sample_Points'Elab_Body;
      E1836 := E1836 + 1;
      Dobldobl_Sample_Lists'Elab_Spec;
      Dobldobl_Sample_Lists'Elab_Body;
      E1830 := E1830 + 1;
      E1828 := E1828 + 1;
      Dobldobl_Sample_Grids'Elab_Spec;
      E2099 := E2099 + 1;
      E3908 := E3908 + 1;
      E1838 := E1838 + 1;
      Dobldobl_Divided_Differences'Elab_Spec;
      E1826 := E1826 + 1;
      E1842 := E1842 + 1;
      Dobldobl_Trace_Interpolators'Elab_Spec;
      E1846 := E1846 + 1;
      E2267 := E2267 + 1;
      E1623 := E1623 + 1;
      E3682 := E3682 + 1;
      E3680 := E3680 + 1;
      E1918 := E1918 + 1;
      E1920 := E1920 + 1;
      Quaddobl_Sample_Points'Elab_Spec;
      Quaddobl_Sample_Points'Elab_Body;
      E1922 := E1922 + 1;
      Quaddobl_Sample_Lists'Elab_Spec;
      Quaddobl_Sample_Lists'Elab_Body;
      E1916 := E1916 + 1;
      E1914 := E1914 + 1;
      Quaddobl_Sample_Grids'Elab_Spec;
      E2107 := E2107 + 1;
      E3912 := E3912 + 1;
      E1924 := E1924 + 1;
      Quaddobl_Divided_Differences'Elab_Spec;
      E1912 := E1912 + 1;
      E1926 := E1926 + 1;
      Quaddobl_Trace_Interpolators'Elab_Spec;
      E1930 := E1930 + 1;
      E1218 := E1218 + 1;
      E1554 := E1554 + 1;
      E2035 := E2035 + 1;
      E2071 := E2071 + 1;
      E3761 := E3761 + 1;
      E1212 := E1212 + 1;
      E1185 := E1185 + 1;
      E1183 := E1183 + 1;
      E3419 := E3419 + 1;
      E3403 := E3403 + 1;
      E1181 := E1181 + 1;
      E3622 := E3622 + 1;
      Multitasking_Root_Refiners'Elab_Body;
      E1684 := E1684 + 1;
      E1678 := E1678 + 1;
      E2277 := E2277 + 1;
      E2041 := E2041 + 1;
      Sampling_Laurent_Machine'Elab_Body;
      E1874 := E1874 + 1;
      Sampling_Machine'Elab_Body;
      E1898 := E1898 + 1;
      E2089 := E2089 + 1;
      Sample_Points'Elab_Spec;
      Sample_Points'Elab_Body;
      E1900 := E1900 + 1;
      Interpolation_Points'Elab_Spec;
      E2225 := E2225 + 1;
      Sample_Point_Lists'Elab_Spec;
      Sample_Point_Lists'Elab_Body;
      E1872 := E1872 + 1;
      Interpolation_Point_Lists'Elab_Spec;
      E2227 := E2227 + 1;
      Projection_Operators'Elab_Spec;
      E2229 := E2229 + 1;
      Interpolation_Filters'Elab_Spec;
      E2223 := E2223 + 1;
      E2265 := E2265 + 1;
      E1904 := E1904 + 1;
      E2103 := E2103 + 1;
      Multprec_Divided_Differences'Elab_Spec;
      E2243 := E2243 + 1;
      Multprec_Trace_Interpolators'Elab_Spec;
      E2245 := E2245 + 1;
      Sample_Point_Grids'Elab_Spec;
      E2109 := E2109 + 1;
      E2143 := E2143 + 1;
      E2181 := E2181 + 1;
      E2185 := E2185 + 1;
      E1948 := E1948 + 1;
      E1946 := E1946 + 1;
      E2259 := E2259 + 1;
      E3431 := E3431 + 1;
      E3427 := E3427 + 1;
      Span_Of_Component'Elab_Spec;
      E2233 := E2233 + 1;
      E2231 := E2231 + 1;
      E2239 := E2239 + 1;
      E2241 := E2241 + 1;
      E2263 := E2263 + 1;
      E1436 := E1436 + 1;
      E723 := E723 + 1;
      E2053 := E2053 + 1;
      E2163 := E2163 + 1;
      E2183 := E2183 + 1;
      E2187 := E2187 + 1;
      E3916 := E3916 + 1;
      E1902 := E1902 + 1;
      E1868 := E1868 + 1;
      E2101 := E2101 + 1;
      Standard_Divided_Differences'Elab_Spec;
      E1954 := E1954 + 1;
      Standard_Trace_Interpolators'Elab_Spec;
      E1956 := E1956 + 1;
      E1972 := E1972 + 1;
      E1974 := E1974 + 1;
      E1824 := E1824 + 1;
      E2237 := E2237 + 1;
      Irreducible_Component_Lists'Elab_Spec;
      E2235 := E2235 + 1;
      E2221 := E2221 + 1;
      E2261 := E2261 + 1;
      Monodromy_Component_Breakup'Elab_Body;
      E2097 := E2097 + 1;
      E2095 := E2095 + 1;
      E1970 := E1970 + 1;
      E1822 := E1822 + 1;
      E1820 := E1820 + 1;
      E1818 := E1818 + 1;
      E4060 := E4060 + 1;
      E3443 := E3443 + 1;
      E3445 := E3445 + 1;
      E3433 := E3433 + 1;
      E4098 := E4098 + 1;
      E2624 := E2624 + 1;
      E2622 := E2622 + 1;
      E2825 := E2825 + 1;
      E2827 := E2827 + 1;
      E3061 := E3061 + 1;
      E2636 := E2636 + 1;
      E2524 := E2524 + 1;
      E2520 := E2520 + 1;
      E2823 := E2823 + 1;
      E2522 := E2522 + 1;
      E3107 := E3107 + 1;
      E4040 := E4040 + 1;
      E3131 := E3131 + 1;
      E3324 := E3324 + 1;
      E3063 := E3063 + 1;
      E2425 := E2425 + 1;
      E2375 := E2375 + 1;
      E3073 := E3073 + 1;
      E3069 := E3069 + 1;
      E3081 := E3081 + 1;
      E3137 := E3137 + 1;
      E3105 := E3105 + 1;
      E3173 := E3173 + 1;
      E3171 := E3171 + 1;
      E3085 := E3085 + 1;
      E3221 := E3221 + 1;
      E3870 := E3870 + 1;
      E3868 := E3868 + 1;
      E3988 := E3988 + 1;
      E4038 := E4038 + 1;
      E4058 := E4058 + 1;
      E4096 := E4096 + 1;
      E3735 := E3735 + 1;
      E3668 := E3668 + 1;
      E3600 := E3600 + 1;
      E3598 := E3598 + 1;
      E3586 := E3586 + 1;
      E3584 := E3584 + 1;
      E3620 := E3620 + 1;
      E3938 := E3938 + 1;
      E3934 := E3934 + 1;
      E3769 := E3769 + 1;
      E3932 := E3932 + 1;
      E1738 := E1738 + 1;
      E2137 := E2137 + 1;
      E2219 := E2219 + 1;
      E1754 := E1754 + 1;
      E2189 := E2189 + 1;
      E1780 := E1780 + 1;
      E2133 := E2133 + 1;
      E1792 := E1792 + 1;
      E1752 := E1752 + 1;
      E3656 := E3656 + 1;
      E1750 := E1750 + 1;
      E1748 := E1748 + 1;
      E2361 := E2361 + 1;
      E2363 := E2363 + 1;
      E3463 := E3463 + 1;
      E3640 := E3640 + 1;
      Phcpack_Operations'Elab_Body;
      E1694 := E1694 + 1;
      E1690 := E1690 + 1;
      E4102 := E4102 + 1;
      E3798 := E3798 + 1;
      E3862 := E3862 + 1;
      E1676 := E1676 + 1;
      E4066 := E4066 + 1;
      Dobldobl_Monodromy_Permutations'Elab_Body;
      E3906 := E3906 + 1;
      E4048 := E4048 + 1;
      E3816 := E3816 + 1;
      E3818 := E3818 + 1;
      E2093 := E2093 + 1;
      E2087 := E2087 + 1;
      E2085 := E2085 + 1;
      E3926 := E3926 + 1;
      E4074 := E4074 + 1;
      E3850 := E3850 + 1;
      E3860 := E3860 + 1;
      E3792 := E3792 + 1;
      E3790 := E3790 + 1;
      E4070 := E4070 + 1;
      E4030 := E4030 + 1;
      E3840 := E3840 + 1;
      E3842 := E3842 + 1;
      E2039 := E2039 + 1;
      E4076 := E4076 + 1;
      Quaddobl_Monodromy_Permutations'Elab_Body;
      E3910 := E3910 + 1;
      E4078 := E4078 + 1;
      E4050 := E4050 + 1;
      E2113 := E2113 + 1;
      E2051 := E2051 + 1;
      E2079 := E2079 + 1;
      E2177 := E2177 + 1;
      E4082 := E4082 + 1;
      Standard_Monodromy_Permutations'Elab_Body;
      E3914 := E3914 + 1;
      E3904 := E3904 + 1;
      E4084 := E4084 + 1;
      E4052 := E4052 + 1;
      E4094 := E4094 + 1;
      E3996 := E3996 + 1;
      E3864 := E3864 + 1;
      E3924 := E3924 + 1;
      E3994 := E3994 + 1;
      E4028 := E4028 + 1;
      E4046 := E4046 + 1;
      E4064 := E4064 + 1;
      E4088 := E4088 + 1;
      E3918 := E3918 + 1;
      E3902 := E3902 + 1;
      E4110 := E4110 + 1;
      E4108 := E4108 + 1;
      E4106 := E4106 + 1;
      E4114 := E4114 + 1;
      E4112 := E4112 + 1;
      E4118 := E4118 + 1;
      E4116 := E4116 + 1;
      E4104 := E4104 + 1;
      E4100 := E4100 + 1;
      E3576 := E3576 + 1;
      E2059 := E2059 + 1;
      E2061 := E2061 + 1;
      E2123 := E2123 + 1;
      E2075 := E2075 + 1;
      E2083 := E2083 + 1;
      E2217 := E2217 + 1;
      E3077 := E3077 + 1;
      E2115 := E2115 + 1;
      E2197 := E2197 + 1;
      E2269 := E2269 + 1;
      E2073 := E2073 + 1;
      E3075 := E3075 + 1;
      E3231 := E3231 + 1;
      E3229 := E3229 + 1;
      E3201 := E3201 + 1;
      E3290 := E3290 + 1;
      E3294 := E3294 + 1;
      E3292 := E3292 + 1;
      E2373 := E2373 + 1;
      E3300 := E3300 + 1;
      E3298 := E3298 + 1;
      E4022 := E4022 + 1;
      E3306 := E3306 + 1;
      E3304 := E3304 + 1;
      E3223 := E3223 + 1;
      E3310 := E3310 + 1;
      E3225 := E3225 + 1;
      E3312 := E3312 + 1;
      E3199 := E3199 + 1;
      E3103 := E3103 + 1;
      E3316 := E3316 + 1;
      E3314 := E3314 + 1;
      E3227 := E3227 + 1;
      E4020 := E4020 + 1;
      E3572 := E3572 + 1;
      E3532 := E3532 + 1;
      E3507 := E3507 + 1;
      E3634 := E3634 + 1;
      E3491 := E3491 + 1;
      E3922 := E3922 + 1;
      E3920 := E3920 + 1;
      E4132 := E4132 + 1;
      E1464 := E1464 + 1;
      E1460 := E1460 + 1;
      E1456 := E1456 + 1;
      E1454 := E1454 + 1;
      E1452 := E1452 + 1;
      E1474 := E1474 + 1;
      E1478 := E1478 + 1;
      E1472 := E1472 + 1;
      E313 := E313 + 1;
      E189 := E189 + 1;
      E187 := E187 + 1;
      E1498 := E1498 + 1;
      E176 := E176 + 1;
      E3834 := E3834 + 1;
      E3832 := E3832 + 1;
      E2069 := E2069 + 1;
      E1990 := E1990 + 1;
      E1746 := E1746 + 1;
      E3836 := E3836 + 1;
      E3374 := E3374 + 1;
      E2135 := E2135 + 1;
      E2067 := E2067 + 1;
      E2131 := E2131 + 1;
      E3948 := E3948 + 1;
      E3946 := E3946 + 1;
      E4122 := E4122 + 1;
      E3830 := E3830 + 1;
      E2065 := E2065 + 1;
      E2121 := E2121 + 1;
      E3344 := E3344 + 1;
      E3755 := E3755 + 1;
      E3759 := E3759 + 1;
      E3763 := E3763 + 1;
      E3322 := E3322 + 1;
      E3320 := E3320 + 1;
      E2371 := E2371 + 1;
      E3765 := E3765 + 1;
      E174 := E174 + 1;
      E3944 := E3944 + 1;
      E4014 := E4014 + 1;
      E4120 := E4120 + 1;
      E3788 := E3788 + 1;
      E3786 := E3786 + 1;
      E002 := E002 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_phctop");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      if gnat_argc = 0 then
         gnat_argc := argc;
         gnat_argv := argv;
      end if;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   M:\projects\PHCpack\obj\abstract_ring.o
   --   M:\projects\PHCpack\obj\abstract_ring-domain.o
   --   M:\projects\PHCpack\obj\abstract_ring-field.o
   --   M:\projects\PHCpack\obj\boolean_numbers.o
   --   M:\projects\PHCpack\obj\boolean_ring.o
   --   M:\projects\PHCpack\obj\bye_bye_message.o
   --   M:\projects\PHCpack\obj\c_double_arrays.o
   --   M:\projects\PHCpack\obj\c_integer_arrays.o
   --   M:\projects\PHCpack\obj\demics_global_constants.o
   --   M:\projects\PHCpack\obj\duration_io.o
   --   M:\projects\PHCpack\obj\file_scanning.o
   --   M:\projects\PHCpack\obj\greatest_common_divisors.o
   --   M:\projects\PHCpack\obj\greeting_banners.o
   --   M:\projects\PHCpack\obj\integer_io.o
   --   M:\projects\PHCpack\obj\parse_polynomial_exceptions.o
   --   M:\projects\PHCpack\obj\semaphore.o
   --   M:\projects\PHCpack\obj\standard_integer_numbers.o
   --   M:\projects\PHCpack\obj\generic_vectors.o
   --   M:\projects\PHCpack\obj\boolean_vectors.o
   --   M:\projects\PHCpack\obj\generic_dense_series.o
   --   M:\projects\PHCpack\obj\generic_matrices.o
   --   M:\projects\PHCpack\obj\boolean_matrices.o
   --   M:\projects\PHCpack\obj\generic_norms_equals.o
   --   M:\projects\PHCpack\obj\generic_vecmats.o
   --   M:\projects\PHCpack\obj\generic_vecvecs.o
   --   M:\projects\PHCpack\obj\number_of_cores.o
   --   M:\projects\PHCpack\obj\standard_integer64_ring.o
   --   M:\projects\PHCpack\obj\standard_integer64_ring-ddomain.o
   --   M:\projects\PHCpack\obj\standard64_common_divisors.o
   --   M:\projects\PHCpack\obj\standard_integer64_vectors.o
   --   M:\projects\PHCpack\obj\standard_integer64_matrices.o
   --   M:\projects\PHCpack\obj\standard_integer64_vecvecs.o
   --   M:\projects\PHCpack\obj\standard_integer_ring.o
   --   M:\projects\PHCpack\obj\standard_integer_ring-ddomain.o
   --   M:\projects\PHCpack\obj\standard_common_divisors.o
   --   M:\projects\PHCpack\obj\standard_integer_vectors.o
   --   M:\projects\PHCpack\obj\cell_stack.o
   --   M:\projects\PHCpack\obj\permutations.o
   --   M:\projects\PHCpack\obj\standard_integer_matrices.o
   --   M:\projects\PHCpack\obj\standard_integer_linear_equalities.o
   --   M:\projects\PHCpack\obj\standard_integer_norms.o
   --   M:\projects\PHCpack\obj\standard_integer_vecvecs.o
   --   M:\projects\PHCpack\obj\affine_binomial_iterator.o
   --   M:\projects\PHCpack\obj\exponent_indices.o
   --   M:\projects\PHCpack\obj\generic_speelpenning_convolutions.o
   --   M:\projects\PHCpack\obj\standard_lattice_supports.o
   --   M:\projects\PHCpack\obj\standard_natural_numbers.o
   --   M:\projects\PHCpack\obj\abstract_ring_io.o
   --   M:\projects\PHCpack\obj\generate_unions.o
   --   M:\projects\PHCpack\obj\generic_complex_numbers.o
   --   M:\projects\PHCpack\obj\generic_integer_linear_solvers.o
   --   M:\projects\PHCpack\obj\generic_lists.o
   --   M:\projects\PHCpack\obj\generic_lists_of_vectors.o
   --   M:\projects\PHCpack\obj\generic_arrays_of_vector_lists.o
   --   M:\projects\PHCpack\obj\generic_matrices_io.o
   --   M:\projects\PHCpack\obj\generic_nesvecs.o
   --   M:\projects\PHCpack\obj\generic_vectors_io.o
   --   M:\projects\PHCpack\obj\generic_lists_of_vectors_io.o
   --   M:\projects\PHCpack\obj\generic_vecvecs_io.o
   --   M:\projects\PHCpack\obj\lists_of_integer64_vectors.o
   --   M:\projects\PHCpack\obj\lists_of_integer_vectors.o
   --   M:\projects\PHCpack\obj\arrays_of_integer_vector_lists.o
   --   M:\projects\PHCpack\obj\frequency_graph.o
   --   M:\projects\PHCpack\obj\lexicographical_supports.o
   --   M:\projects\PHCpack\obj\mixed_labels_queue.o
   --   M:\projects\PHCpack\obj\multitasking.o
   --   M:\projects\PHCpack\obj\sets_of_unknowns.o
   --   M:\projects\PHCpack\obj\partitions_of_sets_of_unknowns.o
   --   M:\projects\PHCpack\obj\standard_floating_numbers.o
   --   M:\projects\PHCpack\obj\characters_and_numbers.o
   --   M:\projects\PHCpack\obj\continuation_parameters.o
   --   M:\projects\PHCpack\obj\double_double_basics.o
   --   M:\projects\PHCpack\obj\fast_double_renormalizations.o
   --   M:\projects\PHCpack\obj\multprec_natural_coefficients.o
   --   M:\projects\PHCpack\obj\multprec_natural_numbers.o
   --   M:\projects\PHCpack\obj\multprec_integer_numbers.o
   --   M:\projects\PHCpack\obj\multprec_common_divisors.o
   --   M:\projects\PHCpack\obj\multprec_integer_ring.o
   --   M:\projects\PHCpack\obj\multprec_integer_vectors.o
   --   M:\projects\PHCpack\obj\multprec_integer_matrices.o
   --   M:\projects\PHCpack\obj\multprec_integer_linear_solvers.o
   --   M:\projects\PHCpack\obj\multprec_lattice_supports.o
   --   M:\projects\PHCpack\obj\multprec_integer_orthogonals.o
   --   M:\projects\PHCpack\obj\multprec_power_transformations.o
   --   M:\projects\PHCpack\obj\quad_double_renormalizations.o
   --   M:\projects\PHCpack\obj\standard_complex_numbers.o
   --   M:\projects\PHCpack\obj\standard_complex_ring.o
   --   M:\projects\PHCpack\obj\standard_complex_ring-ffield.o
   --   M:\projects\PHCpack\obj\standard_complex_vectors.o
   --   M:\projects\PHCpack\obj\polyhedral_coefficient_predictors.o
   --   M:\projects\PHCpack\obj\standard_complex_matrices.o
   --   M:\projects\PHCpack\obj\complex_osculating_planes.o
   --   M:\projects\PHCpack\obj\matrix_homotopies.o
   --   M:\projects\PHCpack\obj\standard_complex_nesvecs.o
   --   M:\projects\PHCpack\obj\standard_complex_series.o
   --   M:\projects\PHCpack\obj\standard_complex_series_ring.o
   --   M:\projects\PHCpack\obj\standard_complex_series_vectors.o
   --   M:\projects\PHCpack\obj\standard_complex_series_matrices.o
   --   M:\projects\PHCpack\obj\standard_complex_series_vecvecs.o
   --   M:\projects\PHCpack\obj\standard_complex_vecmats.o
   --   M:\projects\PHCpack\obj\standard_complex_vecvecs.o
   --   M:\projects\PHCpack\obj\dcmplx_vecvecs_container.o
   --   M:\projects\PHCpack\obj\standard_central_projections.o
   --   M:\projects\PHCpack\obj\standard_complex_veclists.o
   --   M:\projects\PHCpack\obj\standard_complex_vector_series.o
   --   M:\projects\PHCpack\obj\standard_complex_matrix_series.o
   --   M:\projects\PHCpack\obj\standard_complex_vecvecvecs.o
   --   M:\projects\PHCpack\obj\standard_extrapolators.o
   --   M:\projects\PHCpack\obj\standard_floating_numbers_io.o
   --   M:\projects\PHCpack\obj\standard_complex_numbers_io.o
   --   M:\projects\PHCpack\obj\standard_complex_ring_io.o
   --   M:\projects\PHCpack\obj\standard_complex_matrices_io.o
   --   M:\projects\PHCpack\obj\standard_complex_vectors_io.o
   --   M:\projects\PHCpack\obj\standard_complex_vecvecs_io.o
   --   M:\projects\PHCpack\obj\standard_floating_ring.o
   --   M:\projects\PHCpack\obj\standard_floating_ring-ffield.o
   --   M:\projects\PHCpack\obj\standard_floating_ring_io.o
   --   M:\projects\PHCpack\obj\standard_floating_vectors.o
   --   M:\projects\PHCpack\obj\pruning_statistics.o
   --   M:\projects\PHCpack\obj\standard_floating_matrices.o
   --   M:\projects\PHCpack\obj\complex_polynomial_matrices.o
   --   M:\projects\PHCpack\obj\dictionaries.o
   --   M:\projects\PHCpack\obj\floating_linear_inequality_solvers.o
   --   M:\projects\PHCpack\obj\linear_programming.o
   --   M:\projects\PHCpack\obj\simplex_pivoting.o
   --   M:\projects\PHCpack\obj\standard_floating_matrices_io.o
   --   M:\projects\PHCpack\obj\standard_floating_norms_equals.o
   --   M:\projects\PHCpack\obj\standard_floating_vecmats.o
   --   M:\projects\PHCpack\obj\standard_floating_vectors_io.o
   --   M:\projects\PHCpack\obj\standard_floating_vecvecs.o
   --   M:\projects\PHCpack\obj\double_vecvecs_container.o
   --   M:\projects\PHCpack\obj\lists_of_floating_vectors.o
   --   M:\projects\PHCpack\obj\arrays_of_floating_vector_lists.o
   --   M:\projects\PHCpack\obj\floating_support_functions.o
   --   M:\projects\PHCpack\obj\lists_of_floating_vectors_io.o
   --   M:\projects\PHCpack\obj\standard_floating_vecvecs_io.o
   --   M:\projects\PHCpack\obj\standard_floating_vecvecvecs.o
   --   M:\projects\PHCpack\obj\standard_hessian_updaters.o
   --   M:\projects\PHCpack\obj\standard_inlined_linear_solvers.o
   --   M:\projects\PHCpack\obj\standard_integer64_linear_solvers.o
   --   M:\projects\PHCpack\obj\standard_integer_linear_solvers.o
   --   M:\projects\PHCpack\obj\face_enumerators_utilities.o
   --   M:\projects\PHCpack\obj\lists_of_vectors32_utilities.o
   --   M:\projects\PHCpack\obj\standard_integer32_transformations.o
   --   M:\projects\PHCpack\obj\integer32_vectors_utilities.o
   --   M:\projects\PHCpack\obj\standard_integer32_simplices.o
   --   M:\projects\PHCpack\obj\standard_integer_kernel.o
   --   M:\projects\PHCpack\obj\standard_integer64_kernel.o
   --   M:\projects\PHCpack\obj\standard_integer_matrix_inverse.o
   --   M:\projects\PHCpack\obj\standard_integer_numbers_io.o
   --   M:\projects\PHCpack\obj\complex_polynomial_matrices_io.o
   --   M:\projects\PHCpack\obj\demics_ftest.o
   --   M:\projects\PHCpack\obj\double_laurent_series.o
   --   M:\projects\PHCpack\obj\double_linear_laurent_solvers.o
   --   M:\projects\PHCpack\obj\filtered_points.o
   --   M:\projects\PHCpack\obj\index_tree_lp.o
   --   M:\projects\PHCpack\obj\main_output_feedback.o
   --   M:\projects\PHCpack\obj\standard_complex_row_reduction.o
   --   M:\projects\PHCpack\obj\standard_complex_series_io.o
   --   M:\projects\PHCpack\obj\standard_complex_series_ring_io.o
   --   M:\projects\PHCpack\obj\standard_complex_series_vectors_io.o
   --   M:\projects\PHCpack\obj\standard_integer64_ring_io.o
   --   M:\projects\PHCpack\obj\standard_integer64_matrices_io.o
   --   M:\projects\PHCpack\obj\standard_integer64_vectors_io.o
   --   M:\projects\PHCpack\obj\standard_integer_ring_io.o
   --   M:\projects\PHCpack\obj\standard_integer_matrices_io.o
   --   M:\projects\PHCpack\obj\standard_integer_vectors_io.o
   --   M:\projects\PHCpack\obj\lists_of_integer_vectors_io.o
   --   M:\projects\PHCpack\obj\one_level_lp.o
   --   M:\projects\PHCpack\obj\standard_echelon_forms.o
   --   M:\projects\PHCpack\obj\standard_integer_vecvecs_io.o
   --   M:\projects\PHCpack\obj\standard_mathematical_functions.o
   --   M:\projects\PHCpack\obj\chebychev_polynomials.o
   --   M:\projects\PHCpack\obj\double_double_numbers.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_numbers.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_ring.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_ring-ffield.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_vectors.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_equality_tests.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_matrices.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_nesvecs.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_series.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_series_ring.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_series_vectors.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_series_matrices.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_series_vecvecs.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_vecmats.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_vecvecs.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_veclists.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_vector_series.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_matrix_series.o
   --   M:\projects\PHCpack\obj\dobldobl_echelon_forms.o
   --   M:\projects\PHCpack\obj\dobldobl_extrapolators.o
   --   M:\projects\PHCpack\obj\dobldobl_point_coordinates.o
   --   M:\projects\PHCpack\obj\dobldobl_power_traces.o
   --   M:\projects\PHCpack\obj\dobldobl_speelpenning_convolutions.o
   --   M:\projects\PHCpack\obj\dobldobl_univariate_interpolators.o
   --   M:\projects\PHCpack\obj\dobldobl_vector_splitters.o
   --   M:\projects\PHCpack\obj\double_double_constants.o
   --   M:\projects\PHCpack\obj\dobldobl_mathematical_functions.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_numbers_polar.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_qr_least_squares.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_singular_values.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_vector_norms.o
   --   M:\projects\PHCpack\obj\dobldobl_durand_kerner.o
   --   M:\projects\PHCpack\obj\double_double_numbers_io.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_numbers_io.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_ring_io.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_matrices_io.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_row_reduction.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_vectors_io.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_series_io.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_algebraic_series.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_series_norms.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_series_ring_io.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_series_vectors_io.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_vecvecs_io.o
   --   M:\projects\PHCpack\obj\dobldobl_cseries_vector_norms.o
   --   M:\projects\PHCpack\obj\dobldobl_numerical_rank.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_newton_steps.o
   --   M:\projects\PHCpack\obj\dobldobl_rescaling_coordinates.o
   --   M:\projects\PHCpack\obj\double_double_ring.o
   --   M:\projects\PHCpack\obj\double_double_ring-ffield.o
   --   M:\projects\PHCpack\obj\double_double_ring_io.o
   --   M:\projects\PHCpack\obj\double_double_vectors.o
   --   M:\projects\PHCpack\obj\double_double_matrices.o
   --   M:\projects\PHCpack\obj\dobldobl_vlprs_tables.o
   --   M:\projects\PHCpack\obj\dobldobl_vlprs_algorithm.o
   --   M:\projects\PHCpack\obj\double_double_eigenvalues.o
   --   M:\projects\PHCpack\obj\double_double_matrices_io.o
   --   M:\projects\PHCpack\obj\double_double_qr_least_squares.o
   --   M:\projects\PHCpack\obj\double_double_vector_norms.o
   --   M:\projects\PHCpack\obj\double_double_vectors_io.o
   --   M:\projects\PHCpack\obj\double_double_vecvecs.o
   --   M:\projects\PHCpack\obj\directions_of_dobldobl_paths.o
   --   M:\projects\PHCpack\obj\double_double_two_norms.o
   --   M:\projects\PHCpack\obj\givens_rotations.o
   --   M:\projects\PHCpack\obj\multprec_floating_numbers.o
   --   M:\projects\PHCpack\obj\multprec_floating_ring.o
   --   M:\projects\PHCpack\obj\multprec_floating_ring-ffield.o
   --   M:\projects\PHCpack\obj\multprec_complex_numbers.o
   --   M:\projects\PHCpack\obj\multprec_complex_number_tools.o
   --   M:\projects\PHCpack\obj\multprec_complex_ring.o
   --   M:\projects\PHCpack\obj\multprec_complex_ring-ffield.o
   --   M:\projects\PHCpack\obj\multprec_complex_vectors.o
   --   M:\projects\PHCpack\obj\multprec_complex_matrices.o
   --   M:\projects\PHCpack\obj\multprec_complex_nesvecs.o
   --   M:\projects\PHCpack\obj\multprec_complex_vecmats.o
   --   M:\projects\PHCpack\obj\multprec_complex_vecvecs.o
   --   M:\projects\PHCpack\obj\multprec_central_projections.o
   --   M:\projects\PHCpack\obj\multprec_complex_vector_tools.o
   --   M:\projects\PHCpack\obj\multprec_extrapolators.o
   --   M:\projects\PHCpack\obj\multprec_floating_vectors.o
   --   M:\projects\PHCpack\obj\multprec_floating_matrices.o
   --   M:\projects\PHCpack\obj\multprec_floating_vecvecs.o
   --   M:\projects\PHCpack\obj\multprec_mathematical_functions.o
   --   M:\projects\PHCpack\obj\multprec_complex_norms_equals.o
   --   M:\projects\PHCpack\obj\multprec_complex_qr_least_squares.o
   --   M:\projects\PHCpack\obj\multprec_complex_singular_values.o
   --   M:\projects\PHCpack\obj\multprec_durand_kerner.o
   --   M:\projects\PHCpack\obj\multprec_floating_qr_least_squares.o
   --   M:\projects\PHCpack\obj\multprec_power_traces.o
   --   M:\projects\PHCpack\obj\multprec_univariate_interpolators.o
   --   M:\projects\PHCpack\obj\octo_double_numbers.o
   --   M:\projects\PHCpack\obj\octo_double_constants.o
   --   M:\projects\PHCpack\obj\octo_double_numbers_io.o
   --   M:\projects\PHCpack\obj\octo_double_ring.o
   --   M:\projects\PHCpack\obj\octo_double_ring-ffield.o
   --   M:\projects\PHCpack\obj\octo_double_ring_io.o
   --   M:\projects\PHCpack\obj\octo_double_vectors.o
   --   M:\projects\PHCpack\obj\octo_double_vectors_io.o
   --   M:\projects\PHCpack\obj\octodobl_complex_numbers.o
   --   M:\projects\PHCpack\obj\octodobl_complex_numbers_io.o
   --   M:\projects\PHCpack\obj\octodobl_complex_ring.o
   --   M:\projects\PHCpack\obj\octodobl_complex_ring_io.o
   --   M:\projects\PHCpack\obj\octodobl_complex_vectors.o
   --   M:\projects\PHCpack\obj\octodobl_complex_matrices.o
   --   M:\projects\PHCpack\obj\octodobl_complex_matrices_io.o
   --   M:\projects\PHCpack\obj\octodobl_complex_series.o
   --   M:\projects\PHCpack\obj\octodobl_complex_series_ring.o
   --   M:\projects\PHCpack\obj\octodobl_complex_series_vectors.o
   --   M:\projects\PHCpack\obj\octodobl_complex_series_matrices.o
   --   M:\projects\PHCpack\obj\octodobl_complex_series_vecvecs.o
   --   M:\projects\PHCpack\obj\octodobl_complex_vecmats.o
   --   M:\projects\PHCpack\obj\octodobl_complex_vectors_io.o
   --   M:\projects\PHCpack\obj\octodobl_complex_series_io.o
   --   M:\projects\PHCpack\obj\octodobl_complex_vecvecs.o
   --   M:\projects\PHCpack\obj\octodobl_complex_vector_series.o
   --   M:\projects\PHCpack\obj\octodobl_complex_matrix_series.o
   --   M:\projects\PHCpack\obj\octodobl_complex_vecvecs_io.o
   --   M:\projects\PHCpack\obj\octodobl_echelon_forms.o
   --   M:\projects\PHCpack\obj\octodobl_mathematical_functions.o
   --   M:\projects\PHCpack\obj\octodobl_complex_numbers_polar.o
   --   M:\projects\PHCpack\obj\octodobl_complex_algebraic_series.o
   --   M:\projects\PHCpack\obj\octodobl_complex_qr_least_squares.o
   --   M:\projects\PHCpack\obj\octodobl_complex_series_norms.o
   --   M:\projects\PHCpack\obj\octodobl_complex_singular_values.o
   --   M:\projects\PHCpack\obj\octodobl_complex_vector_norms.o
   --   M:\projects\PHCpack\obj\octodobl_cseries_vector_norms.o
   --   M:\projects\PHCpack\obj\octodobl_speelpenning_convolutions.o
   --   M:\projects\PHCpack\obj\penta_double_numbers.o
   --   M:\projects\PHCpack\obj\penta_double_constants.o
   --   M:\projects\PHCpack\obj\penta_double_numbers_io.o
   --   M:\projects\PHCpack\obj\penta_double_ring.o
   --   M:\projects\PHCpack\obj\penta_double_ring-ffield.o
   --   M:\projects\PHCpack\obj\penta_double_ring_io.o
   --   M:\projects\PHCpack\obj\penta_double_vectors.o
   --   M:\projects\PHCpack\obj\penta_double_vectors_io.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_numbers.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_numbers_io.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_ring.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_ring_io.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_vectors.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_matrices.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_matrices_io.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_series.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_series_ring.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_series_vectors.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_series_matrices.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_series_vecvecs.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_vecmats.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_vectors_io.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_series_io.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_vecvecs.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_vector_series.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_matrix_series.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_vecvecs_io.o
   --   M:\projects\PHCpack\obj\pentdobl_echelon_forms.o
   --   M:\projects\PHCpack\obj\pentdobl_mathematical_functions.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_numbers_polar.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_algebraic_series.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_qr_least_squares.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_series_norms.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_singular_values.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_vector_norms.o
   --   M:\projects\PHCpack\obj\pentdobl_cseries_vector_norms.o
   --   M:\projects\PHCpack\obj\pentdobl_speelpenning_convolutions.o
   --   M:\projects\PHCpack\obj\standard_complex_blas_helpers.o
   --   M:\projects\PHCpack\obj\standard_complex_norms_equals.o
   --   M:\projects\PHCpack\obj\standard_complex_numbers_polar.o
   --   M:\projects\PHCpack\obj\multprec_complex_numbers_polar.o
   --   M:\projects\PHCpack\obj\standard_complex_algebraic_series.o
   --   M:\projects\PHCpack\obj\standard_complex_qr_least_squares.o
   --   M:\projects\PHCpack\obj\standard_complex_series_norms.o
   --   M:\projects\PHCpack\obj\standard_complex_singular_values.o
   --   M:\projects\PHCpack\obj\standard_coefficient_circuits.o
   --   M:\projects\PHCpack\obj\standard_complex_circuits.o
   --   M:\projects\PHCpack\obj\standard_complex_solutions.o
   --   M:\projects\PHCpack\obj\multprec_complex_solutions.o
   --   M:\projects\PHCpack\obj\multprec_linear_projections.o
   --   M:\projects\PHCpack\obj\multprec_solution_diagnostics.o
   --   M:\projects\PHCpack\obj\multprec_solutions_container.o
   --   M:\projects\PHCpack\obj\solutions_pool.o
   --   M:\projects\PHCpack\obj\standard_complex_vector_norms.o
   --   M:\projects\PHCpack\obj\standard_continuation_data.o
   --   M:\projects\PHCpack\obj\multprec_continuation_data.o
   --   M:\projects\PHCpack\obj\standard_cseries_vector_norms.o
   --   M:\projects\PHCpack\obj\standard_diagonal_solutions.o
   --   M:\projects\PHCpack\obj\standard_durand_kerner.o
   --   M:\projects\PHCpack\obj\hybrid_durand_kerner.o
   --   M:\projects\PHCpack\obj\standard_floating_eigenvalues.o
   --   M:\projects\PHCpack\obj\standard_floating_qr_least_squares.o
   --   M:\projects\PHCpack\obj\standard_floating_two_norms.o
   --   M:\projects\PHCpack\obj\standard_floating_vector_norms.o
   --   M:\projects\PHCpack\obj\standard_inlined_blas_helpers.o
   --   M:\projects\PHCpack\obj\standard_linear_projections.o
   --   M:\projects\PHCpack\obj\standard_matrix_splitters.o
   --   M:\projects\PHCpack\obj\standard_natural64_ring.o
   --   M:\projects\PHCpack\obj\standard_natural64_vectors.o
   --   M:\projects\PHCpack\obj\standard_natural64_vecvecs.o
   --   M:\projects\PHCpack\obj\standard_natural_numbers_io.o
   --   M:\projects\PHCpack\obj\generic_nesvecs_io.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_nesvecs_io.o
   --   M:\projects\PHCpack\obj\generic_vecmats_io.o
   --   M:\projects\PHCpack\obj\matrix_homotopies_io.o
   --   M:\projects\PHCpack\obj\multprec_natural64_coefficients.o
   --   M:\projects\PHCpack\obj\multprec_natural64_numbers.o
   --   M:\projects\PHCpack\obj\multprec_integer64_numbers.o
   --   M:\projects\PHCpack\obj\multprec_floating64_numbers.o
   --   M:\projects\PHCpack\obj\multprec_integer64_ring.o
   --   M:\projects\PHCpack\obj\multprec_integer64_vectors.o
   --   M:\projects\PHCpack\obj\multprec_integer64_matrices.o
   --   M:\projects\PHCpack\obj\multprec_natural_numbers_io.o
   --   M:\projects\PHCpack\obj\multprec_integer_numbers_io.o
   --   M:\projects\PHCpack\obj\multprec_integer_ring_io.o
   --   M:\projects\PHCpack\obj\multprec_integer_matrices_io.o
   --   M:\projects\PHCpack\obj\multprec_integer_vectors_io.o
   --   M:\projects\PHCpack\obj\multprec_lattice_polygons.o
   --   M:\projects\PHCpack\obj\multprec_lattice_polytopes.o
   --   M:\projects\PHCpack\obj\multprec_lattice_3d_facets.o
   --   M:\projects\PHCpack\obj\multprec_lattice_4d_facets.o
   --   M:\projects\PHCpack\obj\facets_and_strings.o
   --   M:\projects\PHCpack\obj\pack_continuation_parameters.o
   --   M:\projects\PHCpack\obj\point_lists_and_strings.o
   --   M:\projects\PHCpack\obj\standard_complex_nesvecs_io.o
   --   M:\projects\PHCpack\obj\standard_complex_vecmats_io.o
   --   M:\projects\PHCpack\obj\standard_integer32_simplices_io.o
   --   M:\projects\PHCpack\obj\standard_lattice_polygons.o
   --   M:\projects\PHCpack\obj\standard_natural_ring.o
   --   M:\projects\PHCpack\obj\standard_natural_ring_io.o
   --   M:\projects\PHCpack\obj\standard_natural_vectors.o
   --   M:\projects\PHCpack\obj\brackets.o
   --   M:\projects\PHCpack\obj\bracket_monomials.o
   --   M:\projects\PHCpack\obj\brackets_io.o
   --   M:\projects\PHCpack\obj\bracket_monomials_io.o
   --   M:\projects\PHCpack\obj\checker_boards.o
   --   M:\projects\PHCpack\obj\checker_moves.o
   --   M:\projects\PHCpack\obj\generic_bracket_polynomials.o
   --   M:\projects\PHCpack\obj\dobldobl_bracket_polynomials.o
   --   M:\projects\PHCpack\obj\dobldobl_bracket_systems.o
   --   M:\projects\PHCpack\obj\generic_polynomials.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_polynomials.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_poly_ring.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_poly_vectors.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_poly_matrices.o
   --   M:\projects\PHCpack\obj\dobldobl_cseries_polynomials.o
   --   M:\projects\PHCpack\obj\dobldobl_nvariate_interpolators.o
   --   M:\projects\PHCpack\obj\double_double_polynomials.o
   --   M:\projects\PHCpack\obj\generic_lists_of_terms.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_term_lists.o
   --   M:\projects\PHCpack\obj\generic_polynomial_systems.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_poly_systems.o
   --   M:\projects\PHCpack\obj\dobldobl_cseries_poly_systems.o
   --   M:\projects\PHCpack\obj\double_double_poly_systems.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_to_real_poly.o
   --   M:\projects\PHCpack\obj\graded_lexicographic_order.o
   --   M:\projects\PHCpack\obj\generic_laurent_polynomials.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_laurentials.o
   --   M:\projects\PHCpack\obj\generic_laur_poly_functions.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_laur_functions.o
   --   M:\projects\PHCpack\obj\generic_laur_poly_systems.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_laur_systems.o
   --   M:\projects\PHCpack\obj\dobldobl_embed_laurentials.o
   --   M:\projects\PHCpack\obj\dobldobl_laur_poly_convertors.o
   --   M:\projects\PHCpack\obj\dobldobl_poly_laur_convertors.o
   --   M:\projects\PHCpack\obj\generic_laur_system_functions.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_laur_sysfun.o
   --   M:\projects\PHCpack\obj\generic_laur_jaco_matrices.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_laur_jacomats.o
   --   M:\projects\PHCpack\obj\dobldobl_laurent_homotopy.o
   --   M:\projects\PHCpack\obj\dobldobl_laursys_container.o
   --   M:\projects\PHCpack\obj\integer_support_functions.o
   --   M:\projects\PHCpack\obj\integer_mixed_subdivisions.o
   --   M:\projects\PHCpack\obj\flatten_mixed_subdivisions.o
   --   M:\projects\PHCpack\obj\lexicographic_root_enumeration.o
   --   M:\projects\PHCpack\obj\localization_posets.o
   --   M:\projects\PHCpack\obj\localization_poset_strings.o
   --   M:\projects\PHCpack\obj\monomial_hashing.o
   --   M:\projects\PHCpack\obj\multprec_complex_laurentials.o
   --   M:\projects\PHCpack\obj\multprec_complex_laur_functions.o
   --   M:\projects\PHCpack\obj\multprec_complex_laur_systems.o
   --   M:\projects\PHCpack\obj\multprec_complex_laur_sysfun.o
   --   M:\projects\PHCpack\obj\multprec_complex_laur_jacomats.o
   --   M:\projects\PHCpack\obj\multprec_complex_polynomials.o
   --   M:\projects\PHCpack\obj\multprec_complex_poly_systems.o
   --   M:\projects\PHCpack\obj\multprec_complex_term_lists.o
   --   M:\projects\PHCpack\obj\multprec_floating_polynomials.o
   --   M:\projects\PHCpack\obj\multprec_floating_poly_systems.o
   --   M:\projects\PHCpack\obj\multprec_laursys_container.o
   --   M:\projects\PHCpack\obj\octo_double_polynomials.o
   --   M:\projects\PHCpack\obj\octo_double_poly_systems.o
   --   M:\projects\PHCpack\obj\octodobl_complex_laurentials.o
   --   M:\projects\PHCpack\obj\octodobl_complex_laur_systems.o
   --   M:\projects\PHCpack\obj\octodobl_complex_polynomials.o
   --   M:\projects\PHCpack\obj\octodobl_complex_poly_systems.o
   --   M:\projects\PHCpack\obj\octodobl_cseries_polynomials.o
   --   M:\projects\PHCpack\obj\octodobl_cseries_poly_systems.o
   --   M:\projects\PHCpack\obj\penta_double_polynomials.o
   --   M:\projects\PHCpack\obj\penta_double_poly_systems.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_laurentials.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_laur_systems.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_polynomials.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_poly_systems.o
   --   M:\projects\PHCpack\obj\pentdobl_cseries_polynomials.o
   --   M:\projects\PHCpack\obj\pentdobl_cseries_poly_systems.o
   --   M:\projects\PHCpack\obj\pieri_root_count.o
   --   M:\projects\PHCpack\obj\pivot_selection.o
   --   M:\projects\PHCpack\obj\set_structure.o
   --   M:\projects\PHCpack\obj\degree_sets_tables.o
   --   M:\projects\PHCpack\obj\standard_bracket_polynomials.o
   --   M:\projects\PHCpack\obj\standard_bracket_polynomials_io.o
   --   M:\projects\PHCpack\obj\standard_complex_laurentials.o
   --   M:\projects\PHCpack\obj\standard_complex_laur_functions.o
   --   M:\projects\PHCpack\obj\standard_complex_laur_systems.o
   --   M:\projects\PHCpack\obj\integer_lifting_utilities.o
   --   M:\projects\PHCpack\obj\real_powered_homotopy.o
   --   M:\projects\PHCpack\obj\standard_affine_binomials.o
   --   M:\projects\PHCpack\obj\standard_complex_laur_sysfun.o
   --   M:\projects\PHCpack\obj\standard_complex_laur_jacomats.o
   --   M:\projects\PHCpack\obj\standard_complex_polynomials.o
   --   M:\projects\PHCpack\obj\reduction_of_polynomials.o
   --   M:\projects\PHCpack\obj\standard_complex_poly_lists.o
   --   M:\projects\PHCpack\obj\standard_complex_poly_ring.o
   --   M:\projects\PHCpack\obj\standard_complex_poly_systems.o
   --   M:\projects\PHCpack\obj\multprec_to_standard_convertors.o
   --   M:\projects\PHCpack\obj\standard_complex_poly_vectors.o
   --   M:\projects\PHCpack\obj\standard_complex_poly_matrices.o
   --   M:\projects\PHCpack\obj\standard_complex_prod_systems.o
   --   M:\projects\PHCpack\obj\standard_complex_substitutors.o
   --   M:\projects\PHCpack\obj\standard_complex_term_lists.o
   --   M:\projects\PHCpack\obj\standard_cseries_polynomials.o
   --   M:\projects\PHCpack\obj\standard_cseries_poly_systems.o
   --   M:\projects\PHCpack\obj\standard_embed_laurentials.o
   --   M:\projects\PHCpack\obj\standard_floating_polynomials.o
   --   M:\projects\PHCpack\obj\standard_floating_poly_systems.o
   --   M:\projects\PHCpack\obj\standard_complex_to_real_poly.o
   --   M:\projects\PHCpack\obj\standard_initial_forms.o
   --   M:\projects\PHCpack\obj\standard_laur_poly_convertors.o
   --   M:\projects\PHCpack\obj\standard_laurent_homotopy.o
   --   M:\projects\PHCpack\obj\standard_laursys_container.o
   --   M:\projects\PHCpack\obj\standard_natural_matrices.o
   --   M:\projects\PHCpack\obj\bracket_expansions.o
   --   M:\projects\PHCpack\obj\curves_into_grassmannian.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_linear_solvers.o
   --   M:\projects\PHCpack\obj\dobldobl_linear_reduction.o
   --   M:\projects\PHCpack\obj\dobldobl_rational_approximations.o
   --   M:\projects\PHCpack\obj\dobldobl_pade_approximants.o
   --   M:\projects\PHCpack\obj\flow_tables.o
   --   M:\projects\PHCpack\obj\generic_floating_linear_solvers.o
   --   M:\projects\PHCpack\obj\double_double_linear_solvers.o
   --   M:\projects\PHCpack\obj\dobldobl_matrix_inversion.o
   --   M:\projects\PHCpack\obj\generic_polynomial_functions.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_poly_functions.o
   --   M:\projects\PHCpack\obj\dobldobl_cseries_poly_functions.o
   --   M:\projects\PHCpack\obj\double_double_poly_functions.o
   --   M:\projects\PHCpack\obj\generic_hessian_matrices.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_hessians.o
   --   M:\projects\PHCpack\obj\generic_poly_system_functions.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_poly_sysfun.o
   --   M:\projects\PHCpack\obj\dobldobl_cseries_poly_sysfun.o
   --   M:\projects\PHCpack\obj\dobldobl_mixed_residuals.o
   --   M:\projects\PHCpack\obj\double_double_poly_sysfun.o
   --   M:\projects\PHCpack\obj\generic_jacobian_matrices.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_jaco_matrices.o
   --   M:\projects\PHCpack\obj\dobldobl_coefficient_homotopy.o
   --   M:\projects\PHCpack\obj\dobldobl_cseries_jaco_matrices.o
   --   M:\projects\PHCpack\obj\dobldobl_embed_polynomials.o
   --   M:\projects\PHCpack\obj\dobldobl_homotopy.o
   --   M:\projects\PHCpack\obj\dobldobl_jacobian_trees.o
   --   M:\projects\PHCpack\obj\dobldobl_polysys_container.o
   --   M:\projects\PHCpack\obj\dobldobl_systems_pool.o
   --   M:\projects\PHCpack\obj\double_double_jaco_matrices.o
   --   M:\projects\PHCpack\obj\multprec_complex_poly_functions.o
   --   M:\projects\PHCpack\obj\multprec_complex_poly_sysfun.o
   --   M:\projects\PHCpack\obj\multprec_complex_jaco_matrices.o
   --   M:\projects\PHCpack\obj\multprec_embed_polynomials.o
   --   M:\projects\PHCpack\obj\multprec_homotopy.o
   --   M:\projects\PHCpack\obj\multprec_jacobian_trees.o
   --   M:\projects\PHCpack\obj\multprec_polysys_container.o
   --   M:\projects\PHCpack\obj\octodobl_complex_linear_solvers.o
   --   M:\projects\PHCpack\obj\octodobl_complex_poly_functions.o
   --   M:\projects\PHCpack\obj\octodobl_complex_poly_sysfun.o
   --   M:\projects\PHCpack\obj\octodobl_complex_jaco_matrices.o
   --   M:\projects\PHCpack\obj\octodobl_coefficient_homotopy.o
   --   M:\projects\PHCpack\obj\octodobl_cseries_poly_functions.o
   --   M:\projects\PHCpack\obj\octodobl_cseries_poly_sysfun.o
   --   M:\projects\PHCpack\obj\octodobl_cseries_jaco_matrices.o
   --   M:\projects\PHCpack\obj\octodobl_homotopy.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_linear_solvers.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_poly_functions.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_poly_sysfun.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_jaco_matrices.o
   --   M:\projects\PHCpack\obj\pentdobl_coefficient_homotopy.o
   --   M:\projects\PHCpack\obj\pentdobl_cseries_poly_functions.o
   --   M:\projects\PHCpack\obj\pentdobl_cseries_poly_sysfun.o
   --   M:\projects\PHCpack\obj\pentdobl_cseries_jaco_matrices.o
   --   M:\projects\PHCpack\obj\pentdobl_homotopy.o
   --   M:\projects\PHCpack\obj\plane_representations.o
   --   M:\projects\PHCpack\obj\standard_complex_linear_solvers.o
   --   M:\projects\PHCpack\obj\polyhedral_coefficient_correctors.o
   --   M:\projects\PHCpack\obj\standard_cascading_planes.o
   --   M:\projects\PHCpack\obj\standard_complex_poly_functions.o
   --   M:\projects\PHCpack\obj\standard_complex_hessians.o
   --   M:\projects\PHCpack\obj\standard_complex_poly_sysfun.o
   --   M:\projects\PHCpack\obj\standard_complex_jaco_matrices.o
   --   M:\projects\PHCpack\obj\standard_coefficient_homotopy.o
   --   M:\projects\PHCpack\obj\standard_cseries_poly_functions.o
   --   M:\projects\PHCpack\obj\standard_cseries_poly_sysfun.o
   --   M:\projects\PHCpack\obj\standard_cseries_jaco_matrices.o
   --   M:\projects\PHCpack\obj\standard_embed_polynomials.o
   --   M:\projects\PHCpack\obj\standard_floating_linear_solvers.o
   --   M:\projects\PHCpack\obj\basis_exchanges.o
   --   M:\projects\PHCpack\obj\floating_lifting_utilities.o
   --   M:\projects\PHCpack\obj\floating_mixed_subdivisions.o
   --   M:\projects\PHCpack\obj\demics_output_cells.o
   --   M:\projects\PHCpack\obj\demics_output_convertors.o
   --   M:\projects\PHCpack\obj\floating_integer_convertors.o
   --   M:\projects\PHCpack\obj\linear_minimization.o
   --   M:\projects\PHCpack\obj\mixed_cells_queue.o
   --   M:\projects\PHCpack\obj\standard_floating_poly_functions.o
   --   M:\projects\PHCpack\obj\standard_floating_poly_sysfun.o
   --   M:\projects\PHCpack\obj\standard_floating_jaco_matrices.o
   --   M:\projects\PHCpack\obj\standard_homotopy.o
   --   M:\projects\PHCpack\obj\standard_jacobian_trees.o
   --   M:\projects\PHCpack\obj\standard_linear_poly_solvers.o
   --   M:\projects\PHCpack\obj\standard_linear_reduction.o
   --   M:\projects\PHCpack\obj\standard_linear_spaces.o
   --   M:\projects\PHCpack\obj\standard_matrix_inversion.o
   --   M:\projects\PHCpack\obj\standard_mixed_residuals.o
   --   M:\projects\PHCpack\obj\standard_natural_matrices_io.o
   --   M:\projects\PHCpack\obj\standard_natural_vectors_io.o
   --   M:\projects\PHCpack\obj\checker_boards_io.o
   --   M:\projects\PHCpack\obj\dobldobl_nullity_polynomials.o
   --   M:\projects\PHCpack\obj\dobldobl_nullity_matrices.o
   --   M:\projects\PHCpack\obj\generic_arrays_of_vector_lists_io.o
   --   M:\projects\PHCpack\obj\arrays_of_floating_vector_lists_io.o
   --   M:\projects\PHCpack\obj\arrays_of_integer_vector_lists_io.o
   --   M:\projects\PHCpack\obj\localization_posets_io.o
   --   M:\projects\PHCpack\obj\standard_complex_term_lists_io.o
   --   M:\projects\PHCpack\obj\standard_condition_tables.o
   --   M:\projects\PHCpack\obj\multprec_condition_tables.o
   --   M:\projects\PHCpack\obj\standard_natural_vecvecs.o
   --   M:\projects\PHCpack\obj\dobldobl_deflation_matrices.o
   --   M:\projects\PHCpack\obj\dobldobl_evaluate_deflation_io.o
   --   M:\projects\PHCpack\obj\dobldobl_evaluate_deflation.o
   --   M:\projects\PHCpack\obj\monodromy_group_actions.o
   --   M:\projects\PHCpack\obj\monodromy_group_actions_io.o
   --   M:\projects\PHCpack\obj\multprec_deflation_matrices.o
   --   M:\projects\PHCpack\obj\multprec_evaluate_deflation_io.o
   --   M:\projects\PHCpack\obj\multprec_evaluate_deflation.o
   --   M:\projects\PHCpack\obj\standard_deflation_matrices.o
   --   M:\projects\PHCpack\obj\standard_evaluate_deflation_io.o
   --   M:\projects\PHCpack\obj\standard_evaluate_deflation.o
   --   M:\projects\PHCpack\obj\standard_linear_product_system.o
   --   M:\projects\PHCpack\obj\standard_complex_prod_planes.o
   --   M:\projects\PHCpack\obj\standard_monomial_evaluations.o
   --   M:\projects\PHCpack\obj\dobldobl_monomial_evaluations.o
   --   M:\projects\PHCpack\obj\standard_nullity_polynomials.o
   --   M:\projects\PHCpack\obj\standard_nullity_matrices.o
   --   M:\projects\PHCpack\obj\standard_numerical_rank.o
   --   M:\projects\PHCpack\obj\standard_complex_newton_steps.o
   --   M:\projects\PHCpack\obj\standard_nvariate_interpolators.o
   --   M:\projects\PHCpack\obj\standard_parameter_solutions.o
   --   M:\projects\PHCpack\obj\standard_parse_numbers.o
   --   M:\projects\PHCpack\obj\multprec_parse_numbers.o
   --   M:\projects\PHCpack\obj\multprec_floating_constants.o
   --   M:\projects\PHCpack\obj\multprec_floating_numbers_io.o
   --   M:\projects\PHCpack\obj\multprec_complex_numbers_io.o
   --   M:\projects\PHCpack\obj\multprec_complex_linear_solvers.o
   --   M:\projects\PHCpack\obj\multprec_complex_ring_io.o
   --   M:\projects\PHCpack\obj\multprec_complex_matrices_io.o
   --   M:\projects\PHCpack\obj\multprec_complex_vectors_io.o
   --   M:\projects\PHCpack\obj\multprec_complex_nesvecs_io.o
   --   M:\projects\PHCpack\obj\multprec_complex_vecvecs_io.o
   --   M:\projects\PHCpack\obj\multprec_dobldobl_convertors.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_numbers_cv.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_vectors_cv.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_solutions.o
   --   M:\projects\PHCpack\obj\dobldobl_condition_tables.o
   --   M:\projects\PHCpack\obj\dobldobl_continuation_data.o
   --   M:\projects\PHCpack\obj\dobldobl_diagonal_solutions.o
   --   M:\projects\PHCpack\obj\dobldobl_intrinsic_solutions.o
   --   M:\projects\PHCpack\obj\dobldobl_linear_poly_solvers.o
   --   M:\projects\PHCpack\obj\dobldobl_linear_product_system.o
   --   M:\projects\PHCpack\obj\dobldobl_parameter_solutions.o
   --   M:\projects\PHCpack\obj\dobldobl_point_lists.o
   --   M:\projects\PHCpack\obj\dobldobl_polynomial_convertors.o
   --   M:\projects\PHCpack\obj\dobldobl_predictors.o
   --   M:\projects\PHCpack\obj\dobldobl_dispatch_predictors.o
   --   M:\projects\PHCpack\obj\dobldobl_quad_trees.o
   --   M:\projects\PHCpack\obj\dobldobl_radial_solvers.o
   --   M:\projects\PHCpack\obj\dobldobl_scaling.o
   --   M:\projects\PHCpack\obj\dobldobl_solution_diagnostics.o
   --   M:\projects\PHCpack\obj\dobldobl_solution_manipulators.o
   --   M:\projects\PHCpack\obj\dobldobl_solutions_container.o
   --   M:\projects\PHCpack\obj\dobldobl_solutions_queue.o
   --   M:\projects\PHCpack\obj\dobldobl_stable_homotopies.o
   --   M:\projects\PHCpack\obj\dobldobl_witness_solutions.o
   --   M:\projects\PHCpack\obj\multprec_floating_ring_io.o
   --   M:\projects\PHCpack\obj\multprec_floating_matrices_io.o
   --   M:\projects\PHCpack\obj\multprec_floating_vectors_io.o
   --   M:\projects\PHCpack\obj\multprec_data_on_path.o
   --   M:\projects\PHCpack\obj\multprec_linear_spaces.o
   --   M:\projects\PHCpack\obj\multprec_numerical_rank.o
   --   M:\projects\PHCpack\obj\multprec_complex_newton_steps.o
   --   M:\projects\PHCpack\obj\multprec_nvariate_interpolators.o
   --   M:\projects\PHCpack\obj\multprec_octodobl_convertors.o
   --   M:\projects\PHCpack\obj\multprec_pentdobl_convertors.o
   --   M:\projects\PHCpack\obj\multprec_predictors.o
   --   M:\projects\PHCpack\obj\multprec_dispatch_predictors.o
   --   M:\projects\PHCpack\obj\multprec_residual_evaluations.o
   --   M:\projects\PHCpack\obj\multprec_scaling.o
   --   M:\projects\PHCpack\obj\multprec_write_numbers.o
   --   M:\projects\PHCpack\obj\octodobl_complex_numbers_cv.o
   --   M:\projects\PHCpack\obj\octodobl_complex_vectors_cv.o
   --   M:\projects\PHCpack\obj\octodobl_complex_solutions.o
   --   M:\projects\PHCpack\obj\octodobl_polynomial_convertors.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_numbers_cv.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_vectors_cv.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_solutions.o
   --   M:\projects\PHCpack\obj\pentdobl_polynomial_convertors.o
   --   M:\projects\PHCpack\obj\standard_point_coordinates.o
   --   M:\projects\PHCpack\obj\standard_intrinsic_solutions.o
   --   M:\projects\PHCpack\obj\standard_point_lists.o
   --   M:\projects\PHCpack\obj\standard_poly_laur_convertors.o
   --   M:\projects\PHCpack\obj\standard_polysys_container.o
   --   M:\projects\PHCpack\obj\standard_power_traces.o
   --   M:\projects\PHCpack\obj\standard_power_transformations.o
   --   M:\projects\PHCpack\obj\standard_predictors.o
   --   M:\projects\PHCpack\obj\standard_dispatch_predictors.o
   --   M:\projects\PHCpack\obj\standard_quad_trees.o
   --   M:\projects\PHCpack\obj\standard_radial_solvers.o
   --   M:\projects\PHCpack\obj\standard_rational_approximations.o
   --   M:\projects\PHCpack\obj\standard_pade_approximants.o
   --   M:\projects\PHCpack\obj\standard_rescaling_coordinates.o
   --   M:\projects\PHCpack\obj\standard_scaling.o
   --   M:\projects\PHCpack\obj\standard_smith_normal_form.o
   --   M:\projects\PHCpack\obj\standard_solution_diagnostics.o
   --   M:\projects\PHCpack\obj\standard_solution_manipulators.o
   --   M:\projects\PHCpack\obj\standard_solutions_queue.o
   --   M:\projects\PHCpack\obj\standard_speelpenning_convolutions.o
   --   M:\projects\PHCpack\obj\standard_speelpenning_products.o
   --   M:\projects\PHCpack\obj\dobldobl_speelpenning_products.o
   --   M:\projects\PHCpack\obj\dobldobl_gradient_evaluations.o
   --   M:\projects\PHCpack\obj\standard_gradient_evaluations.o
   --   M:\projects\PHCpack\obj\standard_stable_homotopies.o
   --   M:\projects\PHCpack\obj\standard_systems_pool.o
   --   M:\projects\PHCpack\obj\standard_to_multprec_convertors.o
   --   M:\projects\PHCpack\obj\standard_univariate_interpolators.o
   --   M:\projects\PHCpack\obj\standard_vector_splitters.o
   --   M:\projects\PHCpack\obj\standard_coefficient_convolutions.o
   --   M:\projects\PHCpack\obj\dobldobl_coefficient_convolutions.o
   --   M:\projects\PHCpack\obj\standard_coefficient_storage.o
   --   M:\projects\PHCpack\obj\standard_convolution_splitters.o
   --   M:\projects\PHCpack\obj\standard_inlined_linearization.o
   --   M:\projects\PHCpack\obj\standard_inlined_newton_circuits.o
   --   M:\projects\PHCpack\obj\standard_inlined_singular_values.o
   --   M:\projects\PHCpack\obj\standard_newton_circuits.o
   --   M:\projects\PHCpack\obj\standard_vlprs_tables.o
   --   M:\projects\PHCpack\obj\standard_vlprs_algorithm.o
   --   M:\projects\PHCpack\obj\directions_of_standard_paths.o
   --   M:\projects\PHCpack\obj\standard_data_on_path.o
   --   M:\projects\PHCpack\obj\dobldobl_data_on_path.o
   --   M:\projects\PHCpack\obj\standard_witness_solutions.o
   --   M:\projects\PHCpack\obj\standard_write_numbers.o
   --   M:\projects\PHCpack\obj\straightening_syzygies.o
   --   M:\projects\PHCpack\obj\standard_bracket_systems.o
   --   M:\projects\PHCpack\obj\string_parsing.o
   --   M:\projects\PHCpack\obj\string_splitters.o
   --   M:\projects\PHCpack\obj\actions_and_options.o
   --   M:\projects\PHCpack\obj\communications_with_user.o
   --   M:\projects\PHCpack\obj\demics_input_data.o
   --   M:\projects\PHCpack\obj\demics_itest.o
   --   M:\projects\PHCpack\obj\file_management.o
   --   M:\projects\PHCpack\obj\lists_of_strings.o
   --   M:\projects\PHCpack\obj\demics_output_data.o
   --   M:\projects\PHCpack\obj\main_pieri_count.o
   --   M:\projects\PHCpack\obj\multprec_giftwrap_container.o
   --   M:\projects\PHCpack\obj\standard_complex_vector_strings.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_vector_strings.o
   --   M:\projects\PHCpack\obj\multprec_complex_vector_strings.o
   --   M:\projects\PHCpack\obj\string_system_readers.o
   --   M:\projects\PHCpack\obj\strings_and_numbers.o
   --   M:\projects\PHCpack\obj\real_powered_series_io.o
   --   M:\projects\PHCpack\obj\supporting_set_structure.o
   --   M:\projects\PHCpack\obj\symbol_table.o
   --   M:\projects\PHCpack\obj\curves_into_grassmannian_io.o
   --   M:\projects\PHCpack\obj\line_breaks.o
   --   M:\projects\PHCpack\obj\lists_of_symbols.o
   --   M:\projects\PHCpack\obj\set_structure_strings.o
   --   M:\projects\PHCpack\obj\sets_of_unknowns_strings.o
   --   M:\projects\PHCpack\obj\partitions_of_sets_strings.o
   --   M:\projects\PHCpack\obj\standard_solution_strings.o
   --   M:\projects\PHCpack\obj\dobldobl_solution_strings.o
   --   M:\projects\PHCpack\obj\multprec_solution_strings.o
   --   M:\projects\PHCpack\obj\solution_string_splitters.o
   --   M:\projects\PHCpack\obj\standard_solutions_container.o
   --   M:\projects\PHCpack\obj\symbol_table_io.o
   --   M:\projects\PHCpack\obj\dobldobl_quad_turn_points_io.o
   --   M:\projects\PHCpack\obj\multprec_complex_laurentials_io.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_laurentials_io.o
   --   M:\projects\PHCpack\obj\multprec_maple_solutions_io.o
   --   M:\projects\PHCpack\obj\octodobl_complex_laurentials_io.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_laurentials_io.o
   --   M:\projects\PHCpack\obj\set_structure_io.o
   --   M:\projects\PHCpack\obj\sets_of_unknowns_io.o
   --   M:\projects\PHCpack\obj\standard_complex_laur_readers.o
   --   M:\projects\PHCpack\obj\standard_complex_laurentials_io.o
   --   M:\projects\PHCpack\obj\standard_complex_poly_strings.o
   --   M:\projects\PHCpack\obj\multprec_complex_laur_strings.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_laur_strings.o
   --   M:\projects\PHCpack\obj\multprec_complex_poly_strings.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_poly_strings.o
   --   M:\projects\PHCpack\obj\standard_complex_laur_strings.o
   --   M:\projects\PHCpack\obj\parse_dimensions.o
   --   M:\projects\PHCpack\obj\real_powered_homotopy_io.o
   --   M:\projects\PHCpack\obj\standard_dictionary_solutions_io.o
   --   M:\projects\PHCpack\obj\standard_pade_approximants_io.o
   --   M:\projects\PHCpack\obj\dobldobl_pade_approximants_io.o
   --   M:\projects\PHCpack\obj\standard_quad_turn_points_io.o
   --   M:\projects\PHCpack\obj\symbols_io.o
   --   M:\projects\PHCpack\obj\standard_complex_solutions_io.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_solutions_io.o
   --   M:\projects\PHCpack\obj\dobldobl_continuation_data_io.o
   --   M:\projects\PHCpack\obj\dobldobl_multiplicity_structure.o
   --   M:\projects\PHCpack\obj\dobldobl_solution_filters.o
   --   M:\projects\PHCpack\obj\dobldobl_solution_splitters.o
   --   M:\projects\PHCpack\obj\main_dictionary_solutions.o
   --   M:\projects\PHCpack\obj\multprec_complex_solutions_io.o
   --   M:\projects\PHCpack\obj\main_maple_solutions.o
   --   M:\projects\PHCpack\obj\multprec_root_refiners.o
   --   M:\projects\PHCpack\obj\octodobl_complex_solutions_io.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_solutions_io.o
   --   M:\projects\PHCpack\obj\standard_continuation_data_io.o
   --   M:\projects\PHCpack\obj\standard_multiplicity_structure.o
   --   M:\projects\PHCpack\obj\standard_solution_filters.o
   --   M:\projects\PHCpack\obj\standard_solution_splitters.o
   --   M:\projects\PHCpack\obj\symmetry_group.o
   --   M:\projects\PHCpack\obj\symbolic_symmetry_group_io.o
   --   M:\projects\PHCpack\obj\symmetry_group_io.o
   --   M:\projects\PHCpack\obj\system_call.o
   --   M:\projects\PHCpack\obj\machines.o
   --   M:\projects\PHCpack\obj\standard_random_numbers.o
   --   M:\projects\PHCpack\obj\demics_simplex.o
   --   M:\projects\PHCpack\obj\demics_reltab.o
   --   M:\projects\PHCpack\obj\demics_mvc.o
   --   M:\projects\PHCpack\obj\dobldobl_random_numbers.o
   --   M:\projects\PHCpack\obj\dobldobl_lined_hypersurfaces.o
   --   M:\projects\PHCpack\obj\dobldobl_random_matrices.o
   --   M:\projects\PHCpack\obj\dobldobl_random_polynomials.o
   --   M:\projects\PHCpack\obj\dobldobl_random_vectors.o
   --   M:\projects\PHCpack\obj\dobldobl_deflate_singularities.o
   --   M:\projects\PHCpack\obj\dobldobl_deflation_trees.o
   --   M:\projects\PHCpack\obj\dobldobl_hypersurface_witsets.o
   --   M:\projects\PHCpack\obj\dobldobl_interpolating_cseries.o
   --   M:\projects\PHCpack\obj\dobldobl_multiple_solutions.o
   --   M:\projects\PHCpack\obj\dobldobl_plane_representations.o
   --   M:\projects\PHCpack\obj\dobldobl_moving_planes.o
   --   M:\projects\PHCpack\obj\dobldobl_polynomial_flatteners.o
   --   M:\projects\PHCpack\obj\dobldobl_series_matrix_solvers.o
   --   M:\projects\PHCpack\obj\extended_random_numbers.o
   --   M:\projects\PHCpack\obj\facet_vertex_enumeration.o
   --   M:\projects\PHCpack\obj\floating_linear_inequalities.o
   --   M:\projects\PHCpack\obj\floating_face_enumerators.o
   --   M:\projects\PHCpack\obj\floating_faces_of_polytope.o
   --   M:\projects\PHCpack\obj\floating_pruning_methods.o
   --   M:\projects\PHCpack\obj\homotopy_continuation_parameters.o
   --   M:\projects\PHCpack\obj\integer_lifting_functions.o
   --   M:\projects\PHCpack\obj\integer_linear_inequalities.o
   --   M:\projects\PHCpack\obj\integer_face_enumerators.o
   --   M:\projects\PHCpack\obj\integer_faces_of_polytope.o
   --   M:\projects\PHCpack\obj\common_faces_of_polytope.o
   --   M:\projects\PHCpack\obj\integer_pruning_methods.o
   --   M:\projects\PHCpack\obj\multprec_random_numbers.o
   --   M:\projects\PHCpack\obj\multprec_random_matrices.o
   --   M:\projects\PHCpack\obj\multprec_random_vectors.o
   --   M:\projects\PHCpack\obj\multprec_deflate_singularities.o
   --   M:\projects\PHCpack\obj\multprec_deflation_trees.o
   --   M:\projects\PHCpack\obj\multprec_polynomial_interpolators.o
   --   M:\projects\PHCpack\obj\octodobl_random_numbers.o
   --   M:\projects\PHCpack\obj\octodobl_random_vectors.o
   --   M:\projects\PHCpack\obj\octodobl_interpolating_cseries.o
   --   M:\projects\PHCpack\obj\octodobl_series_matrix_solvers.o
   --   M:\projects\PHCpack\obj\octodobl_newton_convolutions.o
   --   M:\projects\PHCpack\obj\octodobl_newton_convolution_steps.o
   --   M:\projects\PHCpack\obj\osculating_planes.o
   --   M:\projects\PHCpack\obj\pentdobl_random_numbers.o
   --   M:\projects\PHCpack\obj\pentdobl_random_vectors.o
   --   M:\projects\PHCpack\obj\pentdobl_interpolating_cseries.o
   --   M:\projects\PHCpack\obj\pentdobl_series_matrix_solvers.o
   --   M:\projects\PHCpack\obj\pentdobl_newton_convolutions.o
   --   M:\projects\PHCpack\obj\pentdobl_newton_convolution_steps.o
   --   M:\projects\PHCpack\obj\prepare_for_mv.o
   --   M:\projects\PHCpack\obj\random_product_start_systems.o
   --   M:\projects\PHCpack\obj\reduction_of_nonsquare_systems.o
   --   M:\projects\PHCpack\obj\span_of_supports.o
   --   M:\projects\PHCpack\obj\specialization_of_planes.o
   --   M:\projects\PHCpack\obj\standard_complex_laur_randomizers.o
   --   M:\projects\PHCpack\obj\standard_complex_poly_randomizers.o
   --   M:\projects\PHCpack\obj\standard_integer32_triangulations.o
   --   M:\projects\PHCpack\obj\cayley_embedding.o
   --   M:\projects\PHCpack\obj\dynamic32_lifting_functions.o
   --   M:\projects\PHCpack\obj\enumerate_faces_of_polytope.o
   --   M:\projects\PHCpack\obj\standard_integer32_triangulations_io.o
   --   M:\projects\PHCpack\obj\standard_lined_hypersurfaces.o
   --   M:\projects\PHCpack\obj\standard_random_matrices.o
   --   M:\projects\PHCpack\obj\standard_random_polynomials.o
   --   M:\projects\PHCpack\obj\standard_random_vectors.o
   --   M:\projects\PHCpack\obj\double_real_powered_series.o
   --   M:\projects\PHCpack\obj\double_leading_evaluations.o
   --   M:\projects\PHCpack\obj\double_ordered_evaluations.o
   --   M:\projects\PHCpack\obj\random_laurent_series.o
   --   M:\projects\PHCpack\obj\double_lseries_polynomials.o
   --   M:\projects\PHCpack\obj\standard_deflate_singularities.o
   --   M:\projects\PHCpack\obj\standard_deflation_trees.o
   --   M:\projects\PHCpack\obj\standard_hypersurface_witsets.o
   --   M:\projects\PHCpack\obj\standard_interpolating_cseries.o
   --   M:\projects\PHCpack\obj\standard_multiple_solutions.o
   --   M:\projects\PHCpack\obj\standard_plane_representations.o
   --   M:\projects\PHCpack\obj\standard_moving_planes.o
   --   M:\projects\PHCpack\obj\standard_plane_operations.o
   --   M:\projects\PHCpack\obj\standard_polynomial_interpolators.o
   --   M:\projects\PHCpack\obj\standard_series_matrix_solvers.o
   --   M:\projects\PHCpack\obj\dobldobl_newton_convolutions.o
   --   M:\projects\PHCpack\obj\dobldobl_newton_convolution_steps.o
   --   M:\projects\PHCpack\obj\standard_newton_convolutions.o
   --   M:\projects\PHCpack\obj\newton_coefficient_convolutions.o
   --   M:\projects\PHCpack\obj\staggered_newton_convolutions.o
   --   M:\projects\PHCpack\obj\standard_newton_convolution_steps.o
   --   M:\projects\PHCpack\obj\standard_solutions_heap.o
   --   M:\projects\PHCpack\obj\templates.o
   --   M:\projects\PHCpack\obj\test_double_lseries_matrices.o
   --   M:\projects\PHCpack\obj\double_lseries_newton_steps.o
   --   M:\projects\PHCpack\obj\time_stamps.o
   --   M:\projects\PHCpack\obj\timing_package.o
   --   M:\projects\PHCpack\obj\multitasking_volume_computation.o
   --   M:\projects\PHCpack\obj\path_counts_table.o
   --   M:\projects\PHCpack\obj\transformation_of_supports.o
   --   M:\projects\PHCpack\obj\transforming_integer32_vector_lists.o
   --   M:\projects\PHCpack\obj\arrays_of_lists_utilities.o
   --   M:\projects\PHCpack\obj\mixed_volume_computation.o
   --   M:\projects\PHCpack\obj\integer_mixed_subdivisions_io.o
   --   M:\projects\PHCpack\obj\floating_mixed_subdivisions_io.o
   --   M:\projects\PHCpack\obj\minkowski_polynomials.o
   --   M:\projects\PHCpack\obj\driver_for_minkowski_polynomials.o
   --   M:\projects\PHCpack\obj\standard_integer32_vertices.o
   --   M:\projects\PHCpack\obj\global_dynamic32_triangulation.o
   --   M:\projects\PHCpack\obj\initial_mixed_cell.o
   --   M:\projects\PHCpack\obj\inner_normal_cones.o
   --   M:\projects\PHCpack\obj\normal_cone_intersections.o
   --   M:\projects\PHCpack\obj\contributions_to_mixed_volume.o
   --   M:\projects\PHCpack\obj\drivers_for_mixed_contributions.o
   --   M:\projects\PHCpack\obj\dynamic_mixed_subdivisions.o
   --   M:\projects\PHCpack\obj\standard_dynamic32_triangulations.o
   --   M:\projects\PHCpack\obj\cayley_trick.o
   --   M:\projects\PHCpack\obj\transforming_solutions.o
   --   M:\projects\PHCpack\obj\trees_of_vectors.o
   --   M:\projects\PHCpack\obj\trees_of_vectors_io.o
   --   M:\projects\PHCpack\obj\triple_double_numbers.o
   --   M:\projects\PHCpack\obj\quad_double_numbers.o
   --   M:\projects\PHCpack\obj\deca_double_numbers.o
   --   M:\projects\PHCpack\obj\deca_double_constants.o
   --   M:\projects\PHCpack\obj\deca_double_numbers_io.o
   --   M:\projects\PHCpack\obj\deca_double_ring.o
   --   M:\projects\PHCpack\obj\deca_double_polynomials.o
   --   M:\projects\PHCpack\obj\deca_double_poly_systems.o
   --   M:\projects\PHCpack\obj\deca_double_ring-ffield.o
   --   M:\projects\PHCpack\obj\deca_double_ring_io.o
   --   M:\projects\PHCpack\obj\deca_double_vectors.o
   --   M:\projects\PHCpack\obj\deca_double_vectors_io.o
   --   M:\projects\PHCpack\obj\decadobl_complex_numbers.o
   --   M:\projects\PHCpack\obj\decadobl_complex_numbers_io.o
   --   M:\projects\PHCpack\obj\decadobl_complex_ring.o
   --   M:\projects\PHCpack\obj\decadobl_complex_laurentials.o
   --   M:\projects\PHCpack\obj\decadobl_complex_laur_systems.o
   --   M:\projects\PHCpack\obj\decadobl_complex_polynomials.o
   --   M:\projects\PHCpack\obj\decadobl_complex_poly_systems.o
   --   M:\projects\PHCpack\obj\decadobl_complex_ring_io.o
   --   M:\projects\PHCpack\obj\decadobl_complex_vectors.o
   --   M:\projects\PHCpack\obj\decadobl_complex_matrices.o
   --   M:\projects\PHCpack\obj\decadobl_complex_matrices_io.o
   --   M:\projects\PHCpack\obj\decadobl_complex_poly_functions.o
   --   M:\projects\PHCpack\obj\decadobl_complex_series.o
   --   M:\projects\PHCpack\obj\decadobl_complex_series_ring.o
   --   M:\projects\PHCpack\obj\decadobl_complex_series_vectors.o
   --   M:\projects\PHCpack\obj\decadobl_complex_series_matrices.o
   --   M:\projects\PHCpack\obj\decadobl_complex_series_vecvecs.o
   --   M:\projects\PHCpack\obj\decadobl_complex_vecmats.o
   --   M:\projects\PHCpack\obj\decadobl_complex_vectors_io.o
   --   M:\projects\PHCpack\obj\decadobl_complex_series_io.o
   --   M:\projects\PHCpack\obj\decadobl_complex_vecvecs.o
   --   M:\projects\PHCpack\obj\decadobl_complex_linear_solvers.o
   --   M:\projects\PHCpack\obj\decadobl_complex_poly_sysfun.o
   --   M:\projects\PHCpack\obj\decadobl_complex_jaco_matrices.o
   --   M:\projects\PHCpack\obj\decadobl_coefficient_homotopy.o
   --   M:\projects\PHCpack\obj\decadobl_complex_vector_series.o
   --   M:\projects\PHCpack\obj\decadobl_complex_matrix_series.o
   --   M:\projects\PHCpack\obj\decadobl_complex_vecvecs_io.o
   --   M:\projects\PHCpack\obj\decadobl_cseries_polynomials.o
   --   M:\projects\PHCpack\obj\decadobl_cseries_poly_functions.o
   --   M:\projects\PHCpack\obj\decadobl_cseries_poly_systems.o
   --   M:\projects\PHCpack\obj\decadobl_cseries_poly_sysfun.o
   --   M:\projects\PHCpack\obj\decadobl_cseries_jaco_matrices.o
   --   M:\projects\PHCpack\obj\decadobl_echelon_forms.o
   --   M:\projects\PHCpack\obj\decadobl_homotopy.o
   --   M:\projects\PHCpack\obj\decadobl_mathematical_functions.o
   --   M:\projects\PHCpack\obj\decadobl_complex_numbers_polar.o
   --   M:\projects\PHCpack\obj\decadobl_complex_algebraic_series.o
   --   M:\projects\PHCpack\obj\decadobl_complex_qr_least_squares.o
   --   M:\projects\PHCpack\obj\decadobl_complex_series_norms.o
   --   M:\projects\PHCpack\obj\decadobl_complex_singular_values.o
   --   M:\projects\PHCpack\obj\decadobl_complex_vector_norms.o
   --   M:\projects\PHCpack\obj\decadobl_cseries_vector_norms.o
   --   M:\projects\PHCpack\obj\decadobl_random_numbers.o
   --   M:\projects\PHCpack\obj\decadobl_random_vectors.o
   --   M:\projects\PHCpack\obj\decadobl_interpolating_cseries.o
   --   M:\projects\PHCpack\obj\decadobl_series_matrix_solvers.o
   --   M:\projects\PHCpack\obj\decadobl_speelpenning_convolutions.o
   --   M:\projects\PHCpack\obj\decadobl_newton_convolutions.o
   --   M:\projects\PHCpack\obj\decadobl_newton_convolution_steps.o
   --   M:\projects\PHCpack\obj\hexa_double_numbers.o
   --   M:\projects\PHCpack\obj\binomial_coefficients.o
   --   M:\projects\PHCpack\obj\decadobl_complex_series_functions.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_series_functions.o
   --   M:\projects\PHCpack\obj\dobldobl_cseries_vector_functions.o
   --   M:\projects\PHCpack\obj\hexa_double_constants.o
   --   M:\projects\PHCpack\obj\hexa_double_numbers_io.o
   --   M:\projects\PHCpack\obj\hexa_double_ring.o
   --   M:\projects\PHCpack\obj\hexa_double_polynomials.o
   --   M:\projects\PHCpack\obj\hexa_double_poly_systems.o
   --   M:\projects\PHCpack\obj\hexa_double_ring-ffield.o
   --   M:\projects\PHCpack\obj\hexa_double_ring_io.o
   --   M:\projects\PHCpack\obj\hexa_double_vectors.o
   --   M:\projects\PHCpack\obj\hexa_double_vectors_io.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_numbers.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_numbers_io.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_ring.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_laurentials.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_laur_systems.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_polynomials.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_poly_systems.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_ring_io.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_vectors.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_matrices.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_matrices_io.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_poly_functions.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_series.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_series_ring.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_series_vectors.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_series_matrices.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_series_vecvecs.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_vecmats.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_vectors_io.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_series_io.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_vecvecs.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_linear_solvers.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_poly_sysfun.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_jaco_matrices.o
   --   M:\projects\PHCpack\obj\hexadobl_coefficient_homotopy.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_vector_series.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_matrix_series.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_vecvecs_io.o
   --   M:\projects\PHCpack\obj\hexadobl_cseries_polynomials.o
   --   M:\projects\PHCpack\obj\hexadobl_cseries_poly_functions.o
   --   M:\projects\PHCpack\obj\hexadobl_cseries_poly_systems.o
   --   M:\projects\PHCpack\obj\hexadobl_cseries_poly_sysfun.o
   --   M:\projects\PHCpack\obj\hexadobl_cseries_jaco_matrices.o
   --   M:\projects\PHCpack\obj\hexadobl_echelon_forms.o
   --   M:\projects\PHCpack\obj\hexadobl_homotopy.o
   --   M:\projects\PHCpack\obj\hexadobl_mathematical_functions.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_numbers_polar.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_qr_least_squares.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_series_functions.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_singular_values.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_vector_norms.o
   --   M:\projects\PHCpack\obj\hexadobl_random_numbers.o
   --   M:\projects\PHCpack\obj\hexadobl_random_vectors.o
   --   M:\projects\PHCpack\obj\hexadobl_interpolating_cseries.o
   --   M:\projects\PHCpack\obj\hexadobl_series_matrix_solvers.o
   --   M:\projects\PHCpack\obj\hexadobl_speelpenning_convolutions.o
   --   M:\projects\PHCpack\obj\hexadobl_newton_convolutions.o
   --   M:\projects\PHCpack\obj\hexadobl_newton_convolution_steps.o
   --   M:\projects\PHCpack\obj\multprec_decadobl_convertors.o
   --   M:\projects\PHCpack\obj\multprec_hexadobl_convertors.o
   --   M:\projects\PHCpack\obj\octodobl_complex_series_functions.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_series_functions.o
   --   M:\projects\PHCpack\obj\quad_double_constants.o
   --   M:\projects\PHCpack\obj\quad_double_numbers_io.o
   --   M:\projects\PHCpack\obj\multprec_quaddobl_convertors.o
   --   M:\projects\PHCpack\obj\numbers_io.o
   --   M:\projects\PHCpack\obj\continuation_parameters_io.o
   --   M:\projects\PHCpack\obj\dobldobl_quad_parameters.o
   --   M:\projects\PHCpack\obj\dobldobl_quad_turn_points.o
   --   M:\projects\PHCpack\obj\drivers_for_symmetry_group_io.o
   --   M:\projects\PHCpack\obj\homotopy_continuation_parameters_io.o
   --   M:\projects\PHCpack\obj\make_input_planes.o
   --   M:\projects\PHCpack\obj\multprec_complex_laur_systems_io.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_laur_systems_io.o
   --   M:\projects\PHCpack\obj\octodobl_complex_laur_systems_io.o
   --   M:\projects\PHCpack\obj\partitions_of_sets_of_unknowns_io.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_laur_systems_io.o
   --   M:\projects\PHCpack\obj\polyhedral_coefficient_parameters.o
   --   M:\projects\PHCpack\obj\quad_double_ring.o
   --   M:\projects\PHCpack\obj\quad_double_polynomials.o
   --   M:\projects\PHCpack\obj\quad_double_poly_systems.o
   --   M:\projects\PHCpack\obj\quad_double_ring-ffield.o
   --   M:\projects\PHCpack\obj\quad_double_ring_io.o
   --   M:\projects\PHCpack\obj\quad_double_vectors.o
   --   M:\projects\PHCpack\obj\quad_double_matrices.o
   --   M:\projects\PHCpack\obj\quad_double_linear_solvers.o
   --   M:\projects\PHCpack\obj\quad_double_matrices_io.o
   --   M:\projects\PHCpack\obj\quad_double_poly_functions.o
   --   M:\projects\PHCpack\obj\quad_double_vectors_io.o
   --   M:\projects\PHCpack\obj\quad_double_vecvecs.o
   --   M:\projects\PHCpack\obj\numerical_tropisms_container.o
   --   M:\projects\PHCpack\obj\quad_double_poly_sysfun.o
   --   M:\projects\PHCpack\obj\quad_double_jaco_matrices.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_numbers.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_numbers_io.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_ring.o
   --   M:\projects\PHCpack\obj\quaddobl_bracket_polynomials.o
   --   M:\projects\PHCpack\obj\quaddobl_bracket_systems.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_laurentials.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_laur_systems.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_polynomials.o
   --   M:\projects\PHCpack\obj\matrix_indeterminates.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_poly_ring.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_poly_systems.o
   --   M:\projects\PHCpack\obj\exponent_vectors.o
   --   M:\projects\PHCpack\obj\floating_lifting_functions.o
   --   M:\projects\PHCpack\obj\induced_permutations.o
   --   M:\projects\PHCpack\obj\polynomial_drops.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_poly_vectors.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_poly_matrices.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_ring-ffield.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_ring_io.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_term_lists.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_to_real_poly.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_vectors.o
   --   M:\projects\PHCpack\obj\assignments_in_ada_and_c.o
   --   M:\projects\PHCpack\obj\c_to_ada_arrays.o
   --   M:\projects\PHCpack\obj\coefficient_supported_polynomials.o
   --   M:\projects\PHCpack\obj\dcmplx_vecvecs_interface.o
   --   M:\projects\PHCpack\obj\dobldobl_syspool_interface.o
   --   M:\projects\PHCpack\obj\double_vecvecs_interface.o
   --   M:\projects\PHCpack\obj\factored_witness_vectors.o
   --   M:\projects\PHCpack\obj\handle_underflow_gracefully.o
   --   M:\projects\PHCpack\obj\monodromy_partitions.o
   --   M:\projects\PHCpack\obj\numerical_tropisms_interface.o
   --   M:\projects\PHCpack\obj\permute_operations.o
   --   M:\projects\PHCpack\obj\equivariant_polynomial_systems.o
   --   M:\projects\PHCpack\obj\generating_mixed_cells.o
   --   M:\projects\PHCpack\obj\linear_symmetric_reduction.o
   --   M:\projects\PHCpack\obj\orbits_of_solutions.o
   --   M:\projects\PHCpack\obj\drivers_for_orbits_of_solutions.o
   --   M:\projects\PHCpack\obj\permutations_of_faces.o
   --   M:\projects\PHCpack\obj\faces_of_symmetric_polytopes.o
   --   M:\projects\PHCpack\obj\planes_and_polynomials.o
   --   M:\projects\PHCpack\obj\multprec_membership_tests.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_equality_tests.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_laur_functions.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_matrices.o
   --   M:\projects\PHCpack\obj\checker_localization_patterns.o
   --   M:\projects\PHCpack\obj\checker_posets.o
   --   M:\projects\PHCpack\obj\checker_posets_io.o
   --   M:\projects\PHCpack\obj\intersection_posets.o
   --   M:\projects\PHCpack\obj\dobldobl_solution_posets.o
   --   M:\projects\PHCpack\obj\intersection_posets_io.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_matrices_io.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_nesvecs.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_poly_functions.o
   --   M:\projects\PHCpack\obj\affine_transformations.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_hessians.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_row_reduction.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_series.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_series_ring.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_series_vectors.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_series_matrices.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_series_vecvecs.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_vecmats.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_vector_strings.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_vectors_io.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_nesvecs_io.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_series_io.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_series_ring_io.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_series_vectors_io.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_vecvecs.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_laur_sysfun.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_laur_jacomats.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_linear_solvers.o
   --   M:\projects\PHCpack\obj\evaluated_minors.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_poly_sysfun.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_jaco_matrices.o
   --   M:\projects\PHCpack\obj\quaddobl_coefficient_homotopy.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_veclists.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_vector_series.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_matrix_series.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_vecvecs_io.o
   --   M:\projects\PHCpack\obj\quaddobl_cseries_polynomials.o
   --   M:\projects\PHCpack\obj\quaddobl_cseries_poly_functions.o
   --   M:\projects\PHCpack\obj\quaddobl_cseries_poly_systems.o
   --   M:\projects\PHCpack\obj\quaddobl_cseries_poly_sysfun.o
   --   M:\projects\PHCpack\obj\quaddobl_cseries_jaco_matrices.o
   --   M:\projects\PHCpack\obj\quaddobl_echelon_forms.o
   --   M:\projects\PHCpack\obj\quaddobl_embed_laurentials.o
   --   M:\projects\PHCpack\obj\quaddobl_embed_polynomials.o
   --   M:\projects\PHCpack\obj\quaddobl_extrapolators.o
   --   M:\projects\PHCpack\obj\quaddobl_hessian_updaters.o
   --   M:\projects\PHCpack\obj\quaddobl_homotopy.o
   --   M:\projects\PHCpack\obj\quaddobl_jacobian_trees.o
   --   M:\projects\PHCpack\obj\quaddobl_deflation_matrices.o
   --   M:\projects\PHCpack\obj\quaddobl_evaluate_deflation_io.o
   --   M:\projects\PHCpack\obj\quaddobl_evaluate_deflation.o
   --   M:\projects\PHCpack\obj\quaddobl_laur_poly_convertors.o
   --   M:\projects\PHCpack\obj\quaddobl_laurent_homotopy.o
   --   M:\projects\PHCpack\obj\quaddobl_laursys_container.o
   --   M:\projects\PHCpack\obj\quaddobl_linear_reduction.o
   --   M:\projects\PHCpack\obj\quaddobl_mathematical_functions.o
   --   M:\projects\PHCpack\obj\polyhedral_coefficient_homotopies.o
   --   M:\projects\PHCpack\obj\quad_double_eigenvalues.o
   --   M:\projects\PHCpack\obj\quad_double_qr_least_squares.o
   --   M:\projects\PHCpack\obj\quad_double_two_norms.o
   --   M:\projects\PHCpack\obj\quad_double_vector_norms.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_numbers_polar.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_algebraic_series.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_qr_least_squares.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_series_functions.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_series_norms.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_singular_values.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_circuits.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_vector_norms.o
   --   M:\projects\PHCpack\obj\hyperplane_solution_scaling.o
   --   M:\projects\PHCpack\obj\quaddobl_cseries_vector_functions.o
   --   M:\projects\PHCpack\obj\quaddobl_cseries_vector_norms.o
   --   M:\projects\PHCpack\obj\quaddobl_durand_kerner.o
   --   M:\projects\PHCpack\obj\quaddobl_matrix_inversion.o
   --   M:\projects\PHCpack\obj\quaddobl_mixed_residuals.o
   --   M:\projects\PHCpack\obj\homotopy_mixed_residuals.o
   --   M:\projects\PHCpack\obj\quaddobl_monomial_evaluations.o
   --   M:\projects\PHCpack\obj\quaddobl_nullity_polynomials.o
   --   M:\projects\PHCpack\obj\quaddobl_nullity_matrices.o
   --   M:\projects\PHCpack\obj\quaddobl_numerical_rank.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_newton_steps.o
   --   M:\projects\PHCpack\obj\quaddobl_nvariate_interpolators.o
   --   M:\projects\PHCpack\obj\quaddobl_point_coordinates.o
   --   M:\projects\PHCpack\obj\quaddobl_poly_laur_convertors.o
   --   M:\projects\PHCpack\obj\quaddobl_polysys_container.o
   --   M:\projects\PHCpack\obj\quaddobl_power_traces.o
   --   M:\projects\PHCpack\obj\quaddobl_quad_parameters.o
   --   M:\projects\PHCpack\obj\quaddobl_random_numbers.o
   --   M:\projects\PHCpack\obj\quaddobl_lined_hypersurfaces.o
   --   M:\projects\PHCpack\obj\quaddobl_random_matrices.o
   --   M:\projects\PHCpack\obj\quaddobl_random_polynomials.o
   --   M:\projects\PHCpack\obj\quaddobl_random_vectors.o
   --   M:\projects\PHCpack\obj\monodromy_polynomial_breakup.o
   --   M:\projects\PHCpack\obj\quaddobl_hypersurface_witsets.o
   --   M:\projects\PHCpack\obj\quaddobl_interpolating_cseries.o
   --   M:\projects\PHCpack\obj\quaddobl_plane_representations.o
   --   M:\projects\PHCpack\obj\quaddobl_moving_planes.o
   --   M:\projects\PHCpack\obj\quaddobl_polynomial_flatteners.o
   --   M:\projects\PHCpack\obj\quaddobl_rational_approximations.o
   --   M:\projects\PHCpack\obj\quaddobl_pade_approximants.o
   --   M:\projects\PHCpack\obj\quaddobl_rescaling_coordinates.o
   --   M:\projects\PHCpack\obj\quaddobl_series_matrix_solvers.o
   --   M:\projects\PHCpack\obj\quaddobl_speelpenning_convolutions.o
   --   M:\projects\PHCpack\obj\hessian_convolution_circuits.o
   --   M:\projects\PHCpack\obj\hyperplane_convolution_scaling.o
   --   M:\projects\PHCpack\obj\jacobian_convolution_circuits.o
   --   M:\projects\PHCpack\obj\quaddobl_newton_convolutions.o
   --   M:\projects\PHCpack\obj\quaddobl_newton_convolution_steps.o
   --   M:\projects\PHCpack\obj\quaddobl_speelpenning_products.o
   --   M:\projects\PHCpack\obj\quaddobl_gradient_evaluations.o
   --   M:\projects\PHCpack\obj\quaddobl_systems_pool.o
   --   M:\projects\PHCpack\obj\quaddobl_syspool_interface.o
   --   M:\projects\PHCpack\obj\quaddobl_univariate_interpolators.o
   --   M:\projects\PHCpack\obj\quaddobl_vector_splitters.o
   --   M:\projects\PHCpack\obj\quaddobl_coefficient_convolutions.o
   --   M:\projects\PHCpack\obj\quaddobl_vlprs_tables.o
   --   M:\projects\PHCpack\obj\quaddobl_vlprs_algorithm.o
   --   M:\projects\PHCpack\obj\directions_of_quaddobl_paths.o
   --   M:\projects\PHCpack\obj\random_coefficient_systems.o
   --   M:\projects\PHCpack\obj\residual_convolution_circuits.o
   --   M:\projects\PHCpack\obj\root_counters_output.o
   --   M:\projects\PHCpack\obj\root_refining_parameters.o
   --   M:\projects\PHCpack\obj\sagbi_homotopies.o
   --   M:\projects\PHCpack\obj\shift_coefficient_convolutions.o
   --   M:\projects\PHCpack\obj\shift_convolution_circuits.o
   --   M:\projects\PHCpack\obj\shuffle_polynomials.o
   --   M:\projects\PHCpack\obj\standard_complex_exponentiation.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_exponentiation.o
   --   M:\projects\PHCpack\obj\dobldobl_binomial_systems.o
   --   M:\projects\PHCpack\obj\dobldobl_binomial_solvers.o
   --   M:\projects\PHCpack\obj\dobldobl_simplex_systems.o
   --   M:\projects\PHCpack\obj\dobldobl_simplex_solvers.o
   --   M:\projects\PHCpack\obj\dobldobl_simpomial_solvers.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_exponentiation.o
   --   M:\projects\PHCpack\obj\standard_binomial_systems.o
   --   M:\projects\PHCpack\obj\standard_binomial_solvers.o
   --   M:\projects\PHCpack\obj\standard_complex_laur_systems_io.o
   --   M:\projects\PHCpack\obj\double_puiseux_structures.o
   --   M:\projects\PHCpack\obj\laurent_homotopy_derivatives.o
   --   M:\projects\PHCpack\obj\double_newton_puiseux.o
   --   M:\projects\PHCpack\obj\double_puiseux_interface.o
   --   M:\projects\PHCpack\obj\parse_strings_to_polynomials.o
   --   M:\projects\PHCpack\obj\standard_complex_series_functions.o
   --   M:\projects\PHCpack\obj\standard_cseries_vector_functions.o
   --   M:\projects\PHCpack\obj\standard_exponent_transformations.o
   --   M:\projects\PHCpack\obj\standard_binomial_varieties_io.o
   --   M:\projects\PHCpack\obj\standard_binomial_varieties.o
   --   M:\projects\PHCpack\obj\dobldobl_monomial_maps.o
   --   M:\projects\PHCpack\obj\quaddobl_monomial_maps.o
   --   M:\projects\PHCpack\obj\standard_jacobian_evaluations.o
   --   M:\projects\PHCpack\obj\dobldobl_jacobian_evaluations.o
   --   M:\projects\PHCpack\obj\dobldobl_jacobian_circuits.o
   --   M:\projects\PHCpack\obj\quaddobl_jacobian_evaluations.o
   --   M:\projects\PHCpack\obj\quaddobl_jacobian_circuits.o
   --   M:\projects\PHCpack\obj\standard_membership_tests.o
   --   M:\projects\PHCpack\obj\standard_monomial_maps.o
   --   M:\projects\PHCpack\obj\monomial_maps_container.o
   --   M:\projects\PHCpack\obj\standard_monomial_maps_io.o
   --   M:\projects\PHCpack\obj\standard_monomial_map_filters.o
   --   M:\projects\PHCpack\obj\standard_monomial_map_solvers.o
   --   M:\projects\PHCpack\obj\standard_permanent_factors.o
   --   M:\projects\PHCpack\obj\black_box_binomial_solvers.o
   --   M:\projects\PHCpack\obj\monomial_maps_interface.o
   --   M:\projects\PHCpack\obj\standard_quad_parameters.o
   --   M:\projects\PHCpack\obj\standard_quad_turn_points.o
   --   M:\projects\PHCpack\obj\standard_simplex_systems.o
   --   M:\projects\PHCpack\obj\standard_simplex_solvers.o
   --   M:\projects\PHCpack\obj\standard_simpomial_solvers.o
   --   M:\projects\PHCpack\obj\standard_solution_posets.o
   --   M:\projects\PHCpack\obj\standard_subspace_restrictions.o
   --   M:\projects\PHCpack\obj\start_flag_homotopies.o
   --   M:\projects\PHCpack\obj\supports_of_polynomial_systems.o
   --   M:\projects\PHCpack\obj\demics_translated_setup.o
   --   M:\projects\PHCpack\obj\demics_translated.o
   --   M:\projects\PHCpack\obj\driver_to_rank_supports.o
   --   M:\projects\PHCpack\obj\generic_position.o
   --   M:\projects\PHCpack\obj\giftwrap_interface.o
   --   M:\projects\PHCpack\obj\pipelined_cell_indices.o
   --   M:\projects\PHCpack\obj\standard_binomial_factors.o
   --   M:\projects\PHCpack\obj\standard_binomial_factors_io.o
   --   M:\projects\PHCpack\obj\standard_puiseux_certificates.o
   --   M:\projects\PHCpack\obj\standard_puiseux_certificates_io.o
   --   M:\projects\PHCpack\obj\driver_for_common_factor.o
   --   M:\projects\PHCpack\obj\symbol_table_order.o
   --   M:\projects\PHCpack\obj\symbolic_minor_equations.o
   --   M:\projects\PHCpack\obj\numeric_minor_equations.o
   --   M:\projects\PHCpack\obj\determinantal_systems.o
   --   M:\projects\PHCpack\obj\pieri_homotopies.o
   --   M:\projects\PHCpack\obj\remember_numeric_minors.o
   --   M:\projects\PHCpack\obj\symbolic_schubert_conditions.o
   --   M:\projects\PHCpack\obj\setup_flag_homotopies.o
   --   M:\projects\PHCpack\obj\flag_transformations.o
   --   M:\projects\PHCpack\obj\symmetric_lifting_functions.o
   --   M:\projects\PHCpack\obj\symmetric_randomize.o
   --   M:\projects\PHCpack\obj\symmetric_set_structure.o
   --   M:\projects\PHCpack\obj\three_way_minima.o
   --   M:\projects\PHCpack\obj\transforming_laurent_systems.o
   --   M:\projects\PHCpack\obj\triple_double_constants.o
   --   M:\projects\PHCpack\obj\tripdobl_mathematical_functions.o
   --   M:\projects\PHCpack\obj\triple_double_numbers_io.o
   --   M:\projects\PHCpack\obj\multprec_tripdobl_convertors.o
   --   M:\projects\PHCpack\obj\triple_double_ring.o
   --   M:\projects\PHCpack\obj\triple_double_polynomials.o
   --   M:\projects\PHCpack\obj\triple_double_poly_systems.o
   --   M:\projects\PHCpack\obj\triple_double_ring-ffield.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_numbers.o
   --   M:\projects\PHCpack\obj\decadobl_complex_numbers_cv.o
   --   M:\projects\PHCpack\obj\decadobl_polynomial_convertors.o
   --   M:\projects\PHCpack\obj\decadobl_complex_laurentials_io.o
   --   M:\projects\PHCpack\obj\decadobl_complex_laur_systems_io.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_numbers_cv.o
   --   M:\projects\PHCpack\obj\hexadobl_polynomial_convertors.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_laurentials_io.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_laur_systems_io.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_numbers_cv.o
   --   M:\projects\PHCpack\obj\bracket_polynomial_convertors.o
   --   M:\projects\PHCpack\obj\homotopy_newton_steps.o
   --   M:\projects\PHCpack\obj\quaddobl_polynomial_convertors.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_laur_strings.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_laurentials_io.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_laur_systems_io.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_poly_strings.o
   --   M:\projects\PHCpack\obj\quaddobl_pade_approximants_io.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_numbers_cv.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_numbers_io.o
   --   M:\projects\PHCpack\obj\fabry_on_homotopy_helpers.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_numbers_polar.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_ring.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_laurentials.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_laur_systems.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_polynomials.o
   --   M:\projects\PHCpack\obj\degrees_in_sets_of_unknowns.o
   --   M:\projects\PHCpack\obj\degree_structure.o
   --   M:\projects\PHCpack\obj\interpolating_homotopies.o
   --   M:\projects\PHCpack\obj\interpolating_homotopies_driver.o
   --   M:\projects\PHCpack\obj\m_homogeneous_bezout_numbers.o
   --   M:\projects\PHCpack\obj\m_homogeneous_permanent_factors.o
   --   M:\projects\PHCpack\obj\m_homogeneous_start_systems.o
   --   M:\projects\PHCpack\obj\multi_homogeneous_start_systems.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_poly_systems.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_ring_io.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_vectors.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_matrices.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_matrices_io.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_poly_functions.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_qr_least_squares.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_series.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_series_functions.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_series_ring.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_series_vectors.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_series_matrices.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_series_vecvecs.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_singular_values.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_vecmats.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_vector_norms.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_vectors_cv.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_solutions.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_solutions_io.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_vectors_io.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_series_io.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_algebraic_series.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_series_norms.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_vecvecs.o
   --   M:\projects\PHCpack\obj\convergence_radius_estimates.o
   --   M:\projects\PHCpack\obj\decadobl_complex_vectors_cv.o
   --   M:\projects\PHCpack\obj\decadobl_complex_solutions.o
   --   M:\projects\PHCpack\obj\decadobl_complex_solutions_io.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_vectors_cv.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_solutions.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_solutions_io.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_vectors_cv.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_solutions.o
   --   M:\projects\PHCpack\obj\assignments_of_solutions.o
   --   M:\projects\PHCpack\obj\hypersurfaces_and_filters.o
   --   M:\projects\PHCpack\obj\projective_transformations.o
   --   M:\projects\PHCpack\obj\quaddobl_binomial_systems.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_solutions_io.o
   --   M:\projects\PHCpack\obj\black_box_helpers.o
   --   M:\projects\PHCpack\obj\process_io.o
   --   M:\projects\PHCpack\obj\dobldobl_correctors.o
   --   M:\projects\PHCpack\obj\dobldobl_intrinsic_newton.o
   --   M:\projects\PHCpack\obj\dobldobl_intrinsic_trackers.o
   --   M:\projects\PHCpack\obj\dobldobl_intrinsic_continuation.o
   --   M:\projects\PHCpack\obj\dobldobl_orthogonal_correctors.o
   --   M:\projects\PHCpack\obj\dobldobl_path_tracker.o
   --   M:\projects\PHCpack\obj\dobldobl_path_trackers.o
   --   M:\projects\PHCpack\obj\dobldobl_incfix_continuation.o
   --   M:\projects\PHCpack\obj\dobldobl_polyhedral_continuation.o
   --   M:\projects\PHCpack\obj\multprec_correctors.o
   --   M:\projects\PHCpack\obj\multprec_path_tracker.o
   --   M:\projects\PHCpack\obj\multprec_path_trackers.o
   --   M:\projects\PHCpack\obj\multprec_incfix_continuation.o
   --   M:\projects\PHCpack\obj\prompt_for_solutions.o
   --   M:\projects\PHCpack\obj\quaddobl_condition_tables.o
   --   M:\projects\PHCpack\obj\quaddobl_continuation_data.o
   --   M:\projects\PHCpack\obj\quaddobl_continuation_data_io.o
   --   M:\projects\PHCpack\obj\quaddobl_correctors.o
   --   M:\projects\PHCpack\obj\quaddobl_data_on_path.o
   --   M:\projects\PHCpack\obj\quaddobl_deflate_singularities.o
   --   M:\projects\PHCpack\obj\quaddobl_deflation_trees.o
   --   M:\projects\PHCpack\obj\quaddobl_diagonal_solutions.o
   --   M:\projects\PHCpack\obj\quaddobl_intrinsic_newton.o
   --   M:\projects\PHCpack\obj\quaddobl_intrinsic_solutions.o
   --   M:\projects\PHCpack\obj\quaddobl_intrinsic_trackers.o
   --   M:\projects\PHCpack\obj\quaddobl_intrinsic_continuation.o
   --   M:\projects\PHCpack\obj\quaddobl_linear_poly_solvers.o
   --   M:\projects\PHCpack\obj\quaddobl_linear_product_system.o
   --   M:\projects\PHCpack\obj\quaddobl_multiple_solutions.o
   --   M:\projects\PHCpack\obj\quaddobl_multiplicity_structure.o
   --   M:\projects\PHCpack\obj\quaddobl_orthogonal_correctors.o
   --   M:\projects\PHCpack\obj\quaddobl_parameter_solutions.o
   --   M:\projects\PHCpack\obj\quaddobl_point_lists.o
   --   M:\projects\PHCpack\obj\quaddobl_predictors.o
   --   M:\projects\PHCpack\obj\quaddobl_dispatch_predictors.o
   --   M:\projects\PHCpack\obj\quaddobl_path_tracker.o
   --   M:\projects\PHCpack\obj\quaddobl_path_trackers.o
   --   M:\projects\PHCpack\obj\quaddobl_incfix_continuation.o
   --   M:\projects\PHCpack\obj\quaddobl_quad_trees.o
   --   M:\projects\PHCpack\obj\quaddobl_quad_turn_points_io.o
   --   M:\projects\PHCpack\obj\quaddobl_quad_turn_points.o
   --   M:\projects\PHCpack\obj\quaddobl_radial_solvers.o
   --   M:\projects\PHCpack\obj\quaddobl_binomial_solvers.o
   --   M:\projects\PHCpack\obj\quaddobl_scaling.o
   --   M:\projects\PHCpack\obj\quaddobl_simplex_systems.o
   --   M:\projects\PHCpack\obj\quaddobl_simplex_solvers.o
   --   M:\projects\PHCpack\obj\quaddobl_simpomial_solvers.o
   --   M:\projects\PHCpack\obj\quaddobl_polyhedral_continuation.o
   --   M:\projects\PHCpack\obj\quaddobl_solution_diagnostics.o
   --   M:\projects\PHCpack\obj\quaddobl_solution_filters.o
   --   M:\projects\PHCpack\obj\quaddobl_solution_manipulators.o
   --   M:\projects\PHCpack\obj\quaddobl_solution_posets.o
   --   M:\projects\PHCpack\obj\quaddobl_solution_splitters.o
   --   M:\projects\PHCpack\obj\quaddobl_solution_strings.o
   --   M:\projects\PHCpack\obj\quaddobl_solutions_container.o
   --   M:\projects\PHCpack\obj\quaddobl_solutions_queue.o
   --   M:\projects\PHCpack\obj\quaddobl_stable_homotopies.o
   --   M:\projects\PHCpack\obj\quaddobl_witness_solutions.o
   --   M:\projects\PHCpack\obj\recondition_swap_homotopies.o
   --   M:\projects\PHCpack\obj\scaling_interface.o
   --   M:\projects\PHCpack\obj\series_and_solutions.o
   --   M:\projects\PHCpack\obj\homotopy_coefficient_scaling.o
   --   M:\projects\PHCpack\obj\singular_values_of_hessians.o
   --   M:\projects\PHCpack\obj\solution_drops.o
   --   M:\projects\PHCpack\obj\standard_circuit_makers.o
   --   M:\projects\PHCpack\obj\standard_correctors.o
   --   M:\projects\PHCpack\obj\standard_intrinsic_newton.o
   --   M:\projects\PHCpack\obj\standard_intrinsic_trackers.o
   --   M:\projects\PHCpack\obj\standard_intrinsic_continuation.o
   --   M:\projects\PHCpack\obj\standard_orthogonal_correctors.o
   --   M:\projects\PHCpack\obj\standard_path_tracker.o
   --   M:\projects\PHCpack\obj\standard_path_trackers.o
   --   M:\projects\PHCpack\obj\single_polyhedral_trackers.o
   --   M:\projects\PHCpack\obj\standard_solspool_interface.o
   --   M:\projects\PHCpack\obj\store_witness_solutions.o
   --   M:\projects\PHCpack\obj\total_degree_start_systems.o
   --   M:\projects\PHCpack\obj\reduction_of_polynomial_systems.o
   --   M:\projects\PHCpack\obj\reduction_interface.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_linear_solvers.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_poly_sysfun.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_jaco_matrices.o
   --   M:\projects\PHCpack\obj\tripdobl_coefficient_homotopy.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_vector_series.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_matrix_series.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_vecvecs_io.o
   --   M:\projects\PHCpack\obj\tripdobl_cseries_polynomials.o
   --   M:\projects\PHCpack\obj\tripdobl_cseries_poly_functions.o
   --   M:\projects\PHCpack\obj\tripdobl_cseries_poly_systems.o
   --   M:\projects\PHCpack\obj\tripdobl_cseries_poly_sysfun.o
   --   M:\projects\PHCpack\obj\tripdobl_cseries_jaco_matrices.o
   --   M:\projects\PHCpack\obj\complex_series_and_polynomials.o
   --   M:\projects\PHCpack\obj\series_and_homotopies.o
   --   M:\projects\PHCpack\obj\standard_newton_matrix_series.o
   --   M:\projects\PHCpack\obj\decadobl_newton_matrix_series.o
   --   M:\projects\PHCpack\obj\dobldobl_newton_matrix_series.o
   --   M:\projects\PHCpack\obj\octodobl_newton_matrix_series.o
   --   M:\projects\PHCpack\obj\pentdobl_newton_matrix_series.o
   --   M:\projects\PHCpack\obj\quaddobl_newton_matrix_series.o
   --   M:\projects\PHCpack\obj\tripdobl_cseries_vector_norms.o
   --   M:\projects\PHCpack\obj\tripdobl_echelon_forms.o
   --   M:\projects\PHCpack\obj\tripdobl_homotopy.o
   --   M:\projects\PHCpack\obj\tripdobl_polynomial_convertors.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_laurentials_io.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_laur_systems_io.o
   --   M:\projects\PHCpack\obj\tripdobl_random_numbers.o
   --   M:\projects\PHCpack\obj\homogenization.o
   --   M:\projects\PHCpack\obj\drivers_for_homotopy_creation.o
   --   M:\projects\PHCpack\obj\multi_projective_transformations.o
   --   M:\projects\PHCpack\obj\tripdobl_speelpenning_convolutions.o
   --   M:\projects\PHCpack\obj\multitasked_algodiff_convolutions.o
   --   M:\projects\PHCpack\obj\triple_double_ring_io.o
   --   M:\projects\PHCpack\obj\triple_double_vectors.o
   --   M:\projects\PHCpack\obj\tripdobl_random_vectors.o
   --   M:\projects\PHCpack\obj\triple_double_vectors_io.o
   --   M:\projects\PHCpack\obj\tripdobl_interpolating_cseries.o
   --   M:\projects\PHCpack\obj\tripdobl_series_matrix_solvers.o
   --   M:\projects\PHCpack\obj\multitasked_series_linearization.o
   --   M:\projects\PHCpack\obj\tripdobl_newton_convolutions.o
   --   M:\projects\PHCpack\obj\multitasked_newton_convolutions.o
   --   M:\projects\PHCpack\obj\multitasked_power_newton.o
   --   M:\projects\PHCpack\obj\tripdobl_newton_convolution_steps.o
   --   M:\projects\PHCpack\obj\tripdobl_newton_matrix_series.o
   --   M:\projects\PHCpack\obj\triple_double_vecvecs.o
   --   M:\projects\PHCpack\obj\unfolding_subdivisions.o
   --   M:\projects\PHCpack\obj\triangulations_and_subdivisions.o
   --   M:\projects\PHCpack\obj\unix_command_line.o
   --   M:\projects\PHCpack\obj\use_avvcon.o
   --   M:\projects\PHCpack\obj\use_giftwrap.o
   --   M:\projects\PHCpack\obj\use_mapcon.o
   --   M:\projects\PHCpack\obj\use_numbtrop.o
   --   M:\projects\PHCpack\obj\use_reduction.o
   --   M:\projects\PHCpack\obj\use_scaling.o
   --   M:\projects\PHCpack\obj\use_solpool.o
   --   M:\projects\PHCpack\obj\valid_vector_checks.o
   --   M:\projects\PHCpack\obj\standard_incfix_continuation.o
   --   M:\projects\PHCpack\obj\complex_convex_continuation.o
   --   M:\projects\PHCpack\obj\drivers_for_path_directions.o
   --   M:\projects\PHCpack\obj\varbprec_homotopy.o
   --   M:\projects\PHCpack\obj\varbprec_matrix_conversions.o
   --   M:\projects\PHCpack\obj\varbprec_polynomial_evaluations.o
   --   M:\projects\PHCpack\obj\varbprec_vecvec_conversions.o
   --   M:\projects\PHCpack\obj\system_convolution_circuits.o
   --   M:\projects\PHCpack\obj\varbprec_complex_linear_solvers.o
   --   M:\projects\PHCpack\obj\varbprec_complex_newton_steps.o
   --   M:\projects\PHCpack\obj\varbprec_corrector_steps.o
   --   M:\projects\PHCpack\obj\varbprec_path_tracker.o
   --   M:\projects\PHCpack\obj\verification_of_solutions.o
   --   M:\projects\PHCpack\obj\verify_solution_maps.o
   --   M:\projects\PHCpack\obj\volumes.o
   --   M:\projects\PHCpack\obj\witness_sets.o
   --   M:\projects\PHCpack\obj\dobldobl_diagonal_polynomials.o
   --   M:\projects\PHCpack\obj\homotopy_membership_target.o
   --   M:\projects\PHCpack\obj\quaddobl_diagonal_polynomials.o
   --   M:\projects\PHCpack\obj\standard_diagonal_polynomials.o
   --   M:\projects\PHCpack\obj\extrinsic_diagonal_homotopies.o
   --   M:\projects\PHCpack\obj\wrapped_solution_vectors.o
   --   M:\projects\PHCpack\obj\write_factors.o
   --   M:\projects\PHCpack\obj\standard_complex_polynomials_io.o
   --   M:\projects\PHCpack\obj\multprec_complex_polynomials_io.o
   --   M:\projects\PHCpack\obj\decadobl_complex_polynomials_io.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_polynomials_io.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_poly_ring_io.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_poly_matrices_io.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_polynomials_io.o
   --   M:\projects\PHCpack\obj\multprec_complex_poly_systems_io.o
   --   M:\projects\PHCpack\obj\decadobl_complex_poly_systems_io.o
   --   M:\projects\PHCpack\obj\decadobl_system_and_solutions_io.o
   --   M:\projects\PHCpack\obj\dobldobl_complex_poly_systems_io.o
   --   M:\projects\PHCpack\obj\dobldobl_system_and_solutions_io.o
   --   M:\projects\PHCpack\obj\dobldobl_system_readers.o
   --   M:\projects\PHCpack\obj\dobldobl_tableau_formats.o
   --   M:\projects\PHCpack\obj\dobldobl_tracked_solutions_io.o
   --   M:\projects\PHCpack\obj\double_double_poly_systems_io.o
   --   M:\projects\PHCpack\obj\dobldobl_quad_sweepers.o
   --   M:\projects\PHCpack\obj\hexadobl_complex_poly_systems_io.o
   --   M:\projects\PHCpack\obj\hexadobl_system_and_solutions_io.o
   --   M:\projects\PHCpack\obj\multprec_system_and_solutions_io.o
   --   M:\projects\PHCpack\obj\octodobl_complex_polynomials_io.o
   --   M:\projects\PHCpack\obj\octodobl_complex_poly_systems_io.o
   --   M:\projects\PHCpack\obj\octodobl_system_and_solutions_io.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_polynomials_io.o
   --   M:\projects\PHCpack\obj\pentdobl_complex_poly_systems_io.o
   --   M:\projects\PHCpack\obj\pentdobl_system_and_solutions_io.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_polynomials_io.o
   --   M:\projects\PHCpack\obj\black_box_univariate_solvers.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_poly_ring_io.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_poly_matrices_io.o
   --   M:\projects\PHCpack\obj\quaddobl_complex_poly_systems_io.o
   --   M:\projects\PHCpack\obj\quad_double_poly_systems_io.o
   --   M:\projects\PHCpack\obj\quaddobl_quad_sweepers.o
   --   M:\projects\PHCpack\obj\quaddobl_system_and_solutions_io.o
   --   M:\projects\PHCpack\obj\quaddobl_system_readers.o
   --   M:\projects\PHCpack\obj\quaddobl_tableau_formats.o
   --   M:\projects\PHCpack\obj\quaddobl_tracked_solutions_io.o
   --   M:\projects\PHCpack\obj\remember_symbolic_minors.o
   --   M:\projects\PHCpack\obj\numeric_schubert_conditions.o
   --   M:\projects\PHCpack\obj\standard_complex_poly_lists_io.o
   --   M:\projects\PHCpack\obj\standard_complex_poly_ring_io.o
   --   M:\projects\PHCpack\obj\standard_complex_poly_matrices_io.o
   --   M:\projects\PHCpack\obj\checker_homotopies.o
   --   M:\projects\PHCpack\obj\moving_flag_homotopies.o
   --   M:\projects\PHCpack\obj\standard_complex_poly_systems_io.o
   --   M:\projects\PHCpack\obj\black_box_linear_solvers.o
   --   M:\projects\PHCpack\obj\cascade_homotopies_io.o
   --   M:\projects\PHCpack\obj\driver_for_symmetric_set_structure.o
   --   M:\projects\PHCpack\obj\extrinsic_diagonal_homotopies_io.o
   --   M:\projects\PHCpack\obj\main_lifting_functions.o
   --   M:\projects\PHCpack\obj\main_poly_continuation.o
   --   M:\projects\PHCpack\obj\driver_for_own_start_system.o
   --   M:\projects\PHCpack\obj\driver_for_winding_numbers.o
   --   M:\projects\PHCpack\obj\drivers_for_coefficient_systems.o
   --   M:\projects\PHCpack\obj\main_vertex_points.o
   --   M:\projects\PHCpack\obj\driver_for_criterion.o
   --   M:\projects\PHCpack\obj\multprec_subspace_restrictions.o
   --   M:\projects\PHCpack\obj\polyhedral_coefficient_trackers.o
   --   M:\projects\PHCpack\obj\jumpstart_polyhedral_homotopies.o
   --   M:\projects\PHCpack\obj\prompt_for_systems.o
   --   M:\projects\PHCpack\obj\scaling_methods.o
   --   M:\projects\PHCpack\obj\main_scaling.o
   --   M:\projects\PHCpack\obj\standard_complex_prod_systems_io.o
   --   M:\projects\PHCpack\obj\drivers_to_track_dobldobl_paths.o
   --   M:\projects\PHCpack\obj\drivers_to_track_quaddobl_paths.o
   --   M:\projects\PHCpack\obj\drivers_to_track_standard_paths.o
   --   M:\projects\PHCpack\obj\main_m_homogenization.o
   --   M:\projects\PHCpack\obj\main_multi_homogenization.o
   --   M:\projects\PHCpack\obj\main_set_structures.o
   --   M:\projects\PHCpack\obj\standard_deflation_trees_io.o
   --   M:\projects\PHCpack\obj\dobldobl_deflation_trees_io.o
   --   M:\projects\PHCpack\obj\dobldobl_deflation_methods.o
   --   M:\projects\PHCpack\obj\jacobian_rabinowitsch_trick.o
   --   M:\projects\PHCpack\obj\multprec_deflation_trees_io.o
   --   M:\projects\PHCpack\obj\multprec_deflation_methods.o
   --   M:\projects\PHCpack\obj\quaddobl_deflation_trees_io.o
   --   M:\projects\PHCpack\obj\quaddobl_deflation_methods.o
   --   M:\projects\PHCpack\obj\standard_deflation_methods.o
   --   M:\projects\PHCpack\obj\deflation_interface.o
   --   M:\projects\PHCpack\obj\drivers_to_deflate_singularities.o
   --   M:\projects\PHCpack\obj\standard_floating_poly_systems_io.o
   --   M:\projects\PHCpack\obj\standard_parameter_systems.o
   --   M:\projects\PHCpack\obj\decadobl_parameter_systems.o
   --   M:\projects\PHCpack\obj\dobldobl_parameter_systems.o
   --   M:\projects\PHCpack\obj\hexadobl_parameter_systems.o
   --   M:\projects\PHCpack\obj\octodobl_parameter_systems.o
   --   M:\projects\PHCpack\obj\parameter_homotopy_state.o
   --   M:\projects\PHCpack\obj\pentdobl_parameter_systems.o
   --   M:\projects\PHCpack\obj\quaddobl_parameter_systems.o
   --   M:\projects\PHCpack\obj\standard_quad_sweepers.o
   --   M:\projects\PHCpack\obj\standard_system_and_solutions_io.o
   --   M:\projects\PHCpack\obj\main_laurent_series_newton.o
   --   M:\projects\PHCpack\obj\monodromy_homotopies_io.o
   --   M:\projects\PHCpack\obj\standard_refiner_circuits.o
   --   M:\projects\PHCpack\obj\standard_system_readers.o
   --   M:\projects\PHCpack\obj\main_reduction.o
   --   M:\projects\PHCpack\obj\standard_tableau_formats.o
   --   M:\projects\PHCpack\obj\polyhedral_start_systems.o
   --   M:\projects\PHCpack\obj\multitasking_polyhedral_trackers.o
   --   M:\projects\PHCpack\obj\pipelined_cell_trackers.o
   --   M:\projects\PHCpack\obj\pipelined_polyhedral_homotopies.o
   --   M:\projects\PHCpack\obj\standard_tracked_solutions_io.o
   --   M:\projects\PHCpack\obj\drivers_for_failed_paths.o
   --   M:\projects\PHCpack\obj\dobldobl_condition_report.o
   --   M:\projects\PHCpack\obj\quaddobl_condition_report.o
   --   M:\projects\PHCpack\obj\standard_select_solutions.o
   --   M:\projects\PHCpack\obj\dobldobl_select_solutions.o
   --   M:\projects\PHCpack\obj\drivers_for_condition_tables.o
   --   M:\projects\PHCpack\obj\quaddobl_select_solutions.o
   --   M:\projects\PHCpack\obj\standard_condition_report.o
   --   M:\projects\PHCpack\obj\dobldobl_root_refiners.o
   --   M:\projects\PHCpack\obj\dobldobl_sampling_laurent_machine.o
   --   M:\projects\PHCpack\obj\dobldobl_sampling_machine.o
   --   M:\projects\PHCpack\obj\dobldobl_sample_points.o
   --   M:\projects\PHCpack\obj\dobldobl_sample_lists.o
   --   M:\projects\PHCpack\obj\dobldobl_rectangular_sample_grids.o
   --   M:\projects\PHCpack\obj\dobldobl_sample_grids.o
   --   M:\projects\PHCpack\obj\dobldobl_sampling_operations.o
   --   M:\projects\PHCpack\obj\dobldobl_stacked_sample_grids.o
   --   M:\projects\PHCpack\obj\dobldobl_divided_differences.o
   --   M:\projects\PHCpack\obj\dobldobl_gridded_hypersurfaces.o
   --   M:\projects\PHCpack\obj\dobldobl_trace_interpolators.o
   --   M:\projects\PHCpack\obj\main_solution_filters.o
   --   M:\projects\PHCpack\obj\quaddobl_root_refiners.o
   --   M:\projects\PHCpack\obj\multitasked_dd_qd_refiners.o
   --   M:\projects\PHCpack\obj\drivers_to_dd_qd_root_refiners.o
   --   M:\projects\PHCpack\obj\quaddobl_sampling_laurent_machine.o
   --   M:\projects\PHCpack\obj\quaddobl_sampling_machine.o
   --   M:\projects\PHCpack\obj\quaddobl_sample_points.o
   --   M:\projects\PHCpack\obj\quaddobl_sample_lists.o
   --   M:\projects\PHCpack\obj\quaddobl_rectangular_sample_grids.o
   --   M:\projects\PHCpack\obj\quaddobl_sample_grids.o
   --   M:\projects\PHCpack\obj\quaddobl_sampling_operations.o
   --   M:\projects\PHCpack\obj\quaddobl_stacked_sample_grids.o
   --   M:\projects\PHCpack\obj\quaddobl_divided_differences.o
   --   M:\projects\PHCpack\obj\quaddobl_gridded_hypersurfaces.o
   --   M:\projects\PHCpack\obj\quaddobl_trace_interpolators.o
   --   M:\projects\PHCpack\obj\standard_root_refiners.o
   --   M:\projects\PHCpack\obj\black_box_root_refiners.o
   --   M:\projects\PHCpack\obj\black_box_simplex_solvers.o
   --   M:\projects\PHCpack\obj\black_box_solver_cases.o
   --   M:\projects\PHCpack\obj\driver_for_root_refining.o
   --   M:\projects\PHCpack\obj\mixed_homotopy_continuation.o
   --   M:\projects\PHCpack\obj\integer_polyhedral_continuation.o
   --   M:\projects\PHCpack\obj\bkk_bound_computations.o
   --   M:\projects\PHCpack\obj\dynamic_polyhedral_continuation.o
   --   M:\projects\PHCpack\obj\drivers_for_dynamic_lifting.o
   --   M:\projects\PHCpack\obj\floating_polyhedral_continuation.o
   --   M:\projects\PHCpack\obj\main_sagbi_homotopies.o
   --   M:\projects\PHCpack\obj\multitasking_root_refiners.o
   --   M:\projects\PHCpack\obj\dobldobl_blackbox_refiners.o
   --   M:\projects\PHCpack\obj\parameter_homotopy_continuation.o
   --   M:\projects\PHCpack\obj\quaddobl_blackbox_refiners.o
   --   M:\projects\PHCpack\obj\sampling_laurent_machine.o
   --   M:\projects\PHCpack\obj\sampling_machine.o
   --   M:\projects\PHCpack\obj\homotopy_membership_tests.o
   --   M:\projects\PHCpack\obj\sample_points.o
   --   M:\projects\PHCpack\obj\interpolation_points.o
   --   M:\projects\PHCpack\obj\sample_point_lists.o
   --   M:\projects\PHCpack\obj\interpolation_point_lists.o
   --   M:\projects\PHCpack\obj\projection_operators.o
   --   M:\projects\PHCpack\obj\interpolation_filters.o
   --   M:\projects\PHCpack\obj\interpolation_filters_io.o
   --   M:\projects\PHCpack\obj\rectangular_sample_grids.o
   --   M:\projects\PHCpack\obj\multprec_stacked_sample_grids.o
   --   M:\projects\PHCpack\obj\multprec_divided_differences.o
   --   M:\projects\PHCpack\obj\multprec_trace_interpolators.o
   --   M:\projects\PHCpack\obj\sample_point_grids.o
   --   M:\projects\PHCpack\obj\multprec_breakup_components.o
   --   M:\projects\PHCpack\obj\multprec_irreducible_decomp.o
   --   M:\projects\PHCpack\obj\multprec_irreducible_decomp_io.o
   --   M:\projects\PHCpack\obj\sample_points_io.o
   --   M:\projects\PHCpack\obj\sample_point_lists_io.o
   --   M:\projects\PHCpack\obj\monodromy_actions_breakup.o
   --   M:\projects\PHCpack\obj\set_structures_and_volumes.o
   --   M:\projects\PHCpack\obj\drivers_for_implicit_lifting.o
   --   M:\projects\PHCpack\obj\span_of_component.o
   --   M:\projects\PHCpack\obj\irreducible_components.o
   --   M:\projects\PHCpack\obj\span_of_component_creators.o
   --   M:\projects\PHCpack\obj\span_of_component_io.o
   --   M:\projects\PHCpack\obj\irreducible_components_io.o
   --   M:\projects\PHCpack\obj\stable_polyhedral_continuation.o
   --   M:\projects\PHCpack\obj\drivers_for_static_lifting.o
   --   M:\projects\PHCpack\obj\standard_blackbox_refiners.o
   --   M:\projects\PHCpack\obj\standard_breakup_components.o
   --   M:\projects\PHCpack\obj\standard_irreducible_decomp.o
   --   M:\projects\PHCpack\obj\standard_irreducible_decomp_io.o
   --   M:\projects\PHCpack\obj\standard_sampling_operations.o
   --   M:\projects\PHCpack\obj\standard_stacked_sample_grids.o
   --   M:\projects\PHCpack\obj\hypersurface_sample_grids.o
   --   M:\projects\PHCpack\obj\make_sample_grids.o
   --   M:\projects\PHCpack\obj\standard_divided_differences.o
   --   M:\projects\PHCpack\obj\standard_trace_interpolators.o
   --   M:\projects\PHCpack\obj\certify_factor_with_trace.o
   --   M:\projects\PHCpack\obj\combinatorial_factorization.o
   --   M:\projects\PHCpack\obj\interpolate_multivariate_factor.o
   --   M:\projects\PHCpack\obj\irreducible_component_creators.o
   --   M:\projects\PHCpack\obj\irreducible_component_lists.o
   --   M:\projects\PHCpack\obj\drivers_to_component_creators.o
   --   M:\projects\PHCpack\obj\irreducible_component_lists_io.o
   --   M:\projects\PHCpack\obj\monodromy_component_breakup.o
   --   M:\projects\PHCpack\obj\monodromy_homotopies.o
   --   M:\projects\PHCpack\obj\multivariate_factorization.o
   --   M:\projects\PHCpack\obj\drivers_to_factor_polynomials.o
   --   M:\projects\PHCpack\obj\black_box_factorization.o
   --   M:\projects\PHCpack\obj\black_box_single_solvers.o
   --   M:\projects\PHCpack\obj\sweep_interface.o
   --   M:\projects\PHCpack\obj\symmetric_polyhedral_continuation.o
   --   M:\projects\PHCpack\obj\symmetric_bkk_bound_solvers.o
   --   M:\projects\PHCpack\obj\drivers_for_symmetric_lifting.o
   --   M:\projects\PHCpack\obj\tableau_form_interface.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_polynomials_io.o
   --   M:\projects\PHCpack\obj\tripdobl_complex_poly_systems_io.o
   --   M:\projects\PHCpack\obj\complex_series_and_polynomials_io.o
   --   M:\projects\PHCpack\obj\power_series_methods.o
   --   M:\projects\PHCpack\obj\tripdobl_parameter_systems.o
   --   M:\projects\PHCpack\obj\tripdobl_system_and_solutions_io.o
   --   M:\projects\PHCpack\obj\artificial_parameter_homotopy_io.o
   --   M:\projects\PHCpack\obj\homotopy_pade_approximants.o
   --   M:\projects\PHCpack\obj\series_and_predictors.o
   --   M:\projects\PHCpack\obj\homotopy_series_readers.o
   --   M:\projects\PHCpack\obj\dobldobl_predictor_convolutions.o
   --   M:\projects\PHCpack\obj\power_series_interface.o
   --   M:\projects\PHCpack\obj\quaddobl_predictor_convolutions.o
   --   M:\projects\PHCpack\obj\run_power_series_methods.o
   --   M:\projects\PHCpack\obj\standard_pade_trackers.o
   --   M:\projects\PHCpack\obj\dobldobl_pade_trackers.o
   --   M:\projects\PHCpack\obj\dobldobl_seriespade_tracker.o
   --   M:\projects\PHCpack\obj\quaddobl_pade_trackers.o
   --   M:\projects\PHCpack\obj\quaddobl_seriespade_tracker.o
   --   M:\projects\PHCpack\obj\series_and_trackers.o
   --   M:\projects\PHCpack\obj\standard_predictor_convolutions.o
   --   M:\projects\PHCpack\obj\corrector_convolutions.o
   --   M:\projects\PHCpack\obj\predictor_corrector_loops.o
   --   M:\projects\PHCpack\obj\predictor_corrector_trackers.o
   --   M:\projects\PHCpack\obj\standard_seriespade_tracker.o
   --   M:\projects\PHCpack\obj\test_series_predictors.o
   --   M:\projects\PHCpack\obj\univariate_solvers_interface.o
   --   M:\projects\PHCpack\obj\unisolve.o
   --   M:\projects\PHCpack\obj\use_multip.o
   --   M:\projects\PHCpack\obj\use_series.o
   --   M:\projects\PHCpack\obj\use_sweep.o
   --   M:\projects\PHCpack\obj\use_tabform.o
   --   M:\projects\PHCpack\obj\valipoco.o
   --   M:\projects\PHCpack\obj\main_verification.o
   --   M:\projects\PHCpack\obj\verification_with_determinants.o
   --   M:\projects\PHCpack\obj\pieri_continuation.o
   --   M:\projects\PHCpack\obj\deformation_posets.o
   --   M:\projects\PHCpack\obj\main_pieri_homotopies.o
   --   M:\projects\PHCpack\obj\main_quantum_pieri.o
   --   M:\projects\PHCpack\obj\pieri_homotopy.o
   --   M:\projects\PHCpack\obj\pieri_interface.o
   --   M:\projects\PHCpack\obj\pieri_solver.o
   --   M:\projects\PHCpack\obj\use_c2pieri.o
   --   M:\projects\PHCpack\obj\witness_sets_io.o
   --   M:\projects\PHCpack\obj\drivers_to_breakup_components.o
   --   M:\projects\PHCpack\obj\drivers_to_factor_components.o
   --   M:\projects\PHCpack\obj\extrinsic_diagonal_continuation.o
   --   M:\projects\PHCpack\obj\extrinsic_diagonal_solvers.o
   --   M:\projects\PHCpack\obj\intrinsic_diagonal_continuation.o
   --   M:\projects\PHCpack\obj\drivers_to_intersect_varieties.o
   --   M:\projects\PHCpack\obj\intrinsic_witness_sets_io.o
   --   M:\projects\PHCpack\obj\equation_by_equation_solvers.o
   --   M:\projects\PHCpack\obj\jumpstart_diagonal_homotopies.o
   --   M:\projects\PHCpack\obj\main_eqn_by_eqn_solvers.o
   --   M:\projects\PHCpack\obj\bablsolve.o
   --   M:\projects\PHCpack\obj\main_hypersurface_witsets.o
   --   M:\projects\PHCpack\obj\main_intersection.o
   --   M:\projects\PHCpack\obj\main_samplers.o
   --   M:\projects\PHCpack\obj\main_trackers.o
   --   M:\projects\PHCpack\obj\phcpack_operations.o
   --   M:\projects\PHCpack\obj\multitasking_continuation.o
   --   M:\projects\PHCpack\obj\cascade_homotopy_interface.o
   --   M:\projects\PHCpack\obj\continuation_parameters_interface.o
   --   M:\projects\PHCpack\obj\crude_path_trackers.o
   --   M:\projects\PHCpack\obj\dobldobl_blackbox_continuations.o
   --   M:\projects\PHCpack\obj\dobldobl_laursys_interface.o
   --   M:\projects\PHCpack\obj\dobldobl_monodromy_permutations.o
   --   M:\projects\PHCpack\obj\dobldobl_solutions_interface.o
   --   M:\projects\PHCpack\obj\file_management_interface.o
   --   M:\projects\PHCpack\obj\job_containers.o
   --   M:\projects\PHCpack\obj\multitasking_membership_tests.o
   --   M:\projects\PHCpack\obj\homotopy_membership_filters.o
   --   M:\projects\PHCpack\obj\cascade_membership_filters.o
   --   M:\projects\PHCpack\obj\member_interface.o
   --   M:\projects\PHCpack\obj\multprec_laursys_interface.o
   --   M:\projects\PHCpack\obj\newton_interface.o
   --   M:\projects\PHCpack\obj\path_trackers_interface.o
   --   M:\projects\PHCpack\obj\phcpack_operations_io.o
   --   M:\projects\PHCpack\obj\c_to_phcpack.o
   --   M:\projects\PHCpack\obj\dobldobl_polysys_interface.o
   --   M:\projects\PHCpack\obj\linear_products_interface.o
   --   M:\projects\PHCpack\obj\multprec_polysys_interface.o
   --   M:\projects\PHCpack\obj\multprec_solutions_interface.o
   --   M:\projects\PHCpack\obj\quaddobl_blackbox_continuations.o
   --   M:\projects\PHCpack\obj\quaddobl_laursys_interface.o
   --   M:\projects\PHCpack\obj\quaddobl_monodromy_permutations.o
   --   M:\projects\PHCpack\obj\quaddobl_polysys_interface.o
   --   M:\projects\PHCpack\obj\quaddobl_solutions_interface.o
   --   M:\projects\PHCpack\obj\square_and_embed_systems.o
   --   M:\projects\PHCpack\obj\standard_blackbox_continuations.o
   --   M:\projects\PHCpack\obj\cascade_homotopy_steps.o
   --   M:\projects\PHCpack\obj\homotopy_cascade_filter.o
   --   M:\projects\PHCpack\obj\standard_laursys_interface.o
   --   M:\projects\PHCpack\obj\standard_monodromy_permutations.o
   --   M:\projects\PHCpack\obj\monodromy_interface.o
   --   M:\projects\PHCpack\obj\standard_polysys_interface.o
   --   M:\projects\PHCpack\obj\standard_solutions_interface.o
   --   M:\projects\PHCpack\obj\standard_syspool_interface.o
   --   M:\projects\PHCpack\obj\step_trackers_interface.o
   --   M:\projects\PHCpack\obj\symbol_table_interface.o
   --   M:\projects\PHCpack\obj\use_c2mbt.o
   --   M:\projects\PHCpack\obj\use_nxtsol.o
   --   M:\projects\PHCpack\obj\use_roco.o
   --   M:\projects\PHCpack\obj\use_solcon.o
   --   M:\projects\PHCpack\obj\use_syscon.o
   --   M:\projects\PHCpack\obj\use_syspool.o
   --   M:\projects\PHCpack\obj\witness_interface.o
   --   M:\projects\PHCpack\obj\use_c2fac.o
   --   M:\projects\PHCpack\obj\witness_sets_formats.o
   --   M:\projects\PHCpack\obj\dobldobl_hypersurface_witsets_io.o
   --   M:\projects\PHCpack\obj\dobldobl_hypersurface_witdrivers.o
   --   M:\projects\PHCpack\obj\quaddobl_hypersurface_witsets_io.o
   --   M:\projects\PHCpack\obj\quaddobl_hypersurface_witdrivers.o
   --   M:\projects\PHCpack\obj\standard_hypersurface_witsets_io.o
   --   M:\projects\PHCpack\obj\standard_hypersurface_witdrivers.o
   --   M:\projects\PHCpack\obj\diagonal_homotopy_interface.o
   --   M:\projects\PHCpack\obj\use_track.o
   --   M:\projects\PHCpack\obj\wrapped_path_trackers.o
   --   M:\projects\PHCpack\obj\write_number_of_tasks.o
   --   M:\projects\PHCpack\obj\write_seed_number.o
   --   M:\projects\PHCpack\obj\add_and_remove_embedding.o
   --   M:\projects\PHCpack\obj\cascade_homotopies.o
   --   M:\projects\PHCpack\obj\cascade_homotopy_filters.o
   --   M:\projects\PHCpack\obj\drivers_to_breakup_solutions.o
   --   M:\projects\PHCpack\obj\drivers_to_series_trackers.o
   --   M:\projects\PHCpack\obj\greetings_and_conclusions.o
   --   M:\projects\PHCpack\obj\main_factorization.o
   --   M:\projects\PHCpack\obj\main_homotopy_continuation.o
   --   M:\projects\PHCpack\obj\running_cascades.o
   --   M:\projects\PHCpack\obj\series_path_trackers.o
   --   M:\projects\PHCpack\obj\decadobl_homotopy_convolutions_io.o
   --   M:\projects\PHCpack\obj\decadobl_fabry_on_homotopy.o
   --   M:\projects\PHCpack\obj\dobldobl_homotopy_convolutions_io.o
   --   M:\projects\PHCpack\obj\dobldobl_fabry_on_homotopy.o
   --   M:\projects\PHCpack\obj\hexadobl_homotopy_convolutions_io.o
   --   M:\projects\PHCpack\obj\hexadobl_fabry_on_homotopy.o
   --   M:\projects\PHCpack\obj\interactive_pade_trackers.o
   --   M:\projects\PHCpack\obj\octodobl_homotopy_convolutions_io.o
   --   M:\projects\PHCpack\obj\octodobl_fabry_on_homotopy.o
   --   M:\projects\PHCpack\obj\pade_continuation_interface.o
   --   M:\projects\PHCpack\obj\pentdobl_homotopy_convolutions_io.o
   --   M:\projects\PHCpack\obj\pentdobl_fabry_on_homotopy.o
   --   M:\projects\PHCpack\obj\quaddobl_homotopy_convolutions_io.o
   --   M:\projects\PHCpack\obj\quaddobl_fabry_on_homotopy.o
   --   M:\projects\PHCpack\obj\standard_homotopy_convolutions_io.o
   --   M:\projects\PHCpack\obj\standard_fabry_on_homotopy.o
   --   M:\projects\PHCpack\obj\track_path_convolutions.o
   --   M:\projects\PHCpack\obj\multitasked_path_convolutions.o
   --   M:\projects\PHCpack\obj\tripdobl_homotopy_convolutions_io.o
   --   M:\projects\PHCpack\obj\tripdobl_fabry_on_homotopy.o
   --   M:\projects\PHCpack\obj\newton_fabry_on_homotopy.o
   --   M:\projects\PHCpack\obj\use_padcon.o
   --   M:\projects\PHCpack\obj\wrapped_pade_trackers.o
   --   M:\projects\PHCpack\obj\moving_flag_continuation.o
   --   M:\projects\PHCpack\obj\checker_poset_deformations.o
   --   M:\projects\PHCpack\obj\resolve_schubert_problems.o
   --   M:\projects\PHCpack\obj\main_schubert_induction.o
   --   M:\projects\PHCpack\obj\schubert_interface.o
   --   M:\projects\PHCpack\obj\use_c2lrhom.o
   --   M:\projects\PHCpack\obj\write_witness_solutions.o
   --   M:\projects\PHCpack\obj\zero_index_tree.o
   --   M:\projects\PHCpack\obj\relation_table.o
   --   M:\projects\PHCpack\obj\form_lp.o
   --   M:\projects\PHCpack\obj\mixed_volume.o
   --   M:\projects\PHCpack\obj\mixedvol_algorithm.o
   --   M:\projects\PHCpack\obj\pipelined_labeled_cells.o
   --   M:\projects\PHCpack\obj\pipelined_polyhedral_trackers.o
   --   M:\projects\PHCpack\obj\pipelined_polyhedral_drivers.o
   --   M:\projects\PHCpack\obj\drivers_for_mixedvol_algorithm.o
   --   M:\projects\PHCpack\obj\black_mixed_volume_computations.o
   --   M:\projects\PHCpack\obj\apply_induced_permutations.o
   --   M:\projects\PHCpack\obj\black_polyhedral_continuations.o
   --   M:\projects\PHCpack\obj\black_box_root_counters.o
   --   M:\projects\PHCpack\obj\black_box_mixed_volumes.o
   --   M:\projects\PHCpack\obj\black_box_polyhedral_solvers.o
   --   M:\projects\PHCpack\obj\black_box_solvers.o
   --   M:\projects\PHCpack\obj\black_box_square_solvers.o
   --   M:\projects\PHCpack\obj\dobldobl_blackbox_solvers.o
   --   M:\projects\PHCpack\obj\double_cells_container.o
   --   M:\projects\PHCpack\obj\drivers_for_demics_algorithm.o
   --   M:\projects\PHCpack\obj\drivers_to_witness_generate.o
   --   M:\projects\PHCpack\obj\embeddings_and_cascades.o
   --   M:\projects\PHCpack\obj\drivers_to_cascade_filtering.o
   --   M:\projects\PHCpack\obj\integer_cells_container.o
   --   M:\projects\PHCpack\obj\cells_interface.o
   --   M:\projects\PHCpack\obj\irreducible_components_interface.o
   --   M:\projects\PHCpack\obj\job_handlers.o
   --   M:\projects\PHCpack\obj\main_component_solvers.o
   --   M:\projects\PHCpack\obj\main_decomposition.o
   --   M:\projects\PHCpack\obj\main_root_counters.o
   --   M:\projects\PHCpack\obj\mixed_volume_calculator.o
   --   M:\projects\PHCpack\obj\polynomial_homotopy_continuation.o
   --   M:\projects\PHCpack\obj\quaddobl_blackbox_solvers.o
   --   M:\projects\PHCpack\obj\regular_solution_curves_series.o
   --   M:\projects\PHCpack\obj\regular_newton_puiseux.o
   --   M:\projects\PHCpack\obj\main_pade_trackers.o
   --   M:\projects\PHCpack\obj\standard_blackbox_solvers.o
   --   M:\projects\PHCpack\obj\option_handlers.o
   --   M:\projects\PHCpack\obj\use_celcon.o
   --   M:\projects\PHCpack\obj\use_outdata.o
   --   M:\projects\PHCpack\obj\use_witsols.o
   --   M:\projects\PHCpack\obj\use_c2phc4c.o
   --   M:\projects\PHCpack\obj\use_c2phc.o
   --   M:\projects\PHCpack\obj\phctop.o
   --   -L.\
   --   -LM:\projects\PHCpack\obj\
   --   -LC:\users\firda\appdata\local\alire\cache\toolchains\gnat_native_15.2.1_346e2e00\lib\gcc\x86_64-w64-mingw32\15.2.0\adalib\
   --   -LC:/users/firda/appdata/local/alire/cache/toolchains/gnat_native_15.2.1_346e2e00/lib/gcc/x86_64-w64-mingw32/15.2.0/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
   --   -Xlinker
   --   --stack=0x800000,0x1000
   --   -mthreads
   --   -lm
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
