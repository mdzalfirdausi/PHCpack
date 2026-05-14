pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (adamain, Spec_File_Name => "b__PHCpack.ads");
pragma Source_File_Name (adamain, Body_File_Name => "b__PHCpack.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;
with Ada.Exceptions;

package body adamain is

   E3944 : Short_Integer; pragma Import (Ada, E3944, "system__os_lib_E");
   E3880 : Short_Integer; pragma Import (Ada, E3880, "ada__exceptions_E");
   E3885 : Short_Integer; pragma Import (Ada, E3885, "system__soft_links_E");
   E3894 : Short_Integer; pragma Import (Ada, E3894, "system__exception_table_E");
   E3910 : Short_Integer; pragma Import (Ada, E3910, "ada__containers_E");
   E3940 : Short_Integer; pragma Import (Ada, E3940, "ada__io_exceptions_E");
   E3901 : Short_Integer; pragma Import (Ada, E3901, "ada__numerics_E");
   E3925 : Short_Integer; pragma Import (Ada, E3925, "ada__strings_E");
   E3927 : Short_Integer; pragma Import (Ada, E3927, "ada__strings__maps_E");
   E3930 : Short_Integer; pragma Import (Ada, E3930, "ada__strings__maps__constants_E");
   E3915 : Short_Integer; pragma Import (Ada, E3915, "interfaces__c_E");
   E3895 : Short_Integer; pragma Import (Ada, E3895, "system__exceptions_E");
   E3955 : Short_Integer; pragma Import (Ada, E3955, "system__object_reader_E");
   E3920 : Short_Integer; pragma Import (Ada, E3920, "system__dwarf_lines_E");
   E3887 : Short_Integer; pragma Import (Ada, E3887, "system__soft_links__initialize_E");
   E3909 : Short_Integer; pragma Import (Ada, E3909, "system__traceback__symbolic_E");
   E3979 : Short_Integer; pragma Import (Ada, E3979, "ada__strings__utf_encoding_E");
   E3987 : Short_Integer; pragma Import (Ada, E3987, "ada__tags_E");
   E3977 : Short_Integer; pragma Import (Ada, E3977, "ada__strings__text_buffers_E");
   E3975 : Short_Integer; pragma Import (Ada, E3975, "interfaces__c__strings_E");
   E3996 : Short_Integer; pragma Import (Ada, E3996, "ada__streams_E");
   E4011 : Short_Integer; pragma Import (Ada, E4011, "system__file_control_block_E");
   E4007 : Short_Integer; pragma Import (Ada, E4007, "system__finalization_root_E");
   E4005 : Short_Integer; pragma Import (Ada, E4005, "ada__finalization_E");
   E4004 : Short_Integer; pragma Import (Ada, E4004, "system__file_io_E");
   E4029 : Short_Integer; pragma Import (Ada, E4029, "system__storage_pools_E");
   E4059 : Short_Integer; pragma Import (Ada, E4059, "system__task_info_E");
   E4015 : Short_Integer; pragma Import (Ada, E4015, "ada__calendar_E");
   E4098 : Short_Integer; pragma Import (Ada, E4098, "ada__calendar__delays_E");
   E4047 : Short_Integer; pragma Import (Ada, E4047, "ada__real_time_E");
   E3994 : Short_Integer; pragma Import (Ada, E3994, "ada__text_io_E");
   E4025 : Short_Integer; pragma Import (Ada, E4025, "system__pool_global_E");
   E4075 : Short_Integer; pragma Import (Ada, E4075, "system__tasking__initialization_E");
   E4085 : Short_Integer; pragma Import (Ada, E4085, "system__tasking__protected_objects_E");
   E4087 : Short_Integer; pragma Import (Ada, E4087, "system__tasking__protected_objects__entries_E");
   E4083 : Short_Integer; pragma Import (Ada, E4083, "system__tasking__queuing_E");
   E4069 : Short_Integer; pragma Import (Ada, E4069, "system__tasking__stages_E");
   E890 : Short_Integer; pragma Import (Ada, E890, "boolean_numbers_E");
   E879 : Short_Integer; pragma Import (Ada, E879, "bye_bye_message_E");
   E002 : Short_Integer; pragma Import (Ada, E002, "c_double_arrays_E");
   E003 : Short_Integer; pragma Import (Ada, E003, "c_integer_arrays_E");
   E321 : Short_Integer; pragma Import (Ada, E321, "file_scanning_E");
   E2606 : Short_Integer; pragma Import (Ada, E2606, "greatest_common_divisors_E");
   E393 : Short_Integer; pragma Import (Ada, E393, "greeting_banners_E");
   E1768 : Short_Integer; pragma Import (Ada, E1768, "parse_polynomial_exceptions_E");
   E2544 : Short_Integer; pragma Import (Ada, E2544, "semaphore_E");
   E007 : Short_Integer; pragma Import (Ada, E007, "standard_integer_numbers_E");
   E383 : Short_Integer; pragma Import (Ada, E383, "generic_vectors_E");
   E690 : Short_Integer; pragma Import (Ada, E690, "generic_dense_series_E");
   E369 : Short_Integer; pragma Import (Ada, E369, "generic_matrices_E");
   E2864 : Short_Integer; pragma Import (Ada, E2864, "generic_norms_equals_E");
   E381 : Short_Integer; pragma Import (Ada, E381, "generic_vecmats_E");
   E387 : Short_Integer; pragma Import (Ada, E387, "generic_vecvecs_E");
   E015 : Short_Integer; pragma Import (Ada, E015, "number_of_cores_E");
   E303 : Short_Integer; pragma Import (Ada, E303, "cell_stack_E");
   E1915 : Short_Integer; pragma Import (Ada, E1915, "permutations_E");
   E2952 : Short_Integer; pragma Import (Ada, E2952, "standard_integer_linear_equalities_E");
   E2962 : Short_Integer; pragma Import (Ada, E2962, "standard_integer_norms_E");
   E3104 : Short_Integer; pragma Import (Ada, E3104, "affine_binomial_iterator_E");
   E1171 : Short_Integer; pragma Import (Ada, E1171, "exponent_indices_E");
   E1169 : Short_Integer; pragma Import (Ada, E1169, "generic_speelpenning_convolutions_E");
   E3665 : Short_Integer; pragma Import (Ada, E3665, "standard_lattice_supports_E");
   E3048 : Short_Integer; pragma Import (Ada, E3048, "standard_natural_numbers_E");
   E963 : Short_Integer; pragma Import (Ada, E963, "generate_unions_E");
   E504 : Short_Integer; pragma Import (Ada, E504, "generic_complex_numbers_E");
   E2939 : Short_Integer; pragma Import (Ada, E2939, "generic_integer_linear_solvers_E");
   E365 : Short_Integer; pragma Import (Ada, E365, "generic_lists_E");
   E367 : Short_Integer; pragma Import (Ada, E367, "generic_lists_of_vectors_E");
   E351 : Short_Integer; pragma Import (Ada, E351, "generic_arrays_of_vector_lists_E");
   E371 : Short_Integer; pragma Import (Ada, E371, "generic_matrices_io_E");
   E463 : Short_Integer; pragma Import (Ada, E463, "generic_nesvecs_E");
   E385 : Short_Integer; pragma Import (Ada, E385, "generic_vectors_io_E");
   E481 : Short_Integer; pragma Import (Ada, E481, "generic_lists_of_vectors_io_E");
   E467 : Short_Integer; pragma Import (Ada, E467, "generic_vecvecs_io_E");
   E3645 : Short_Integer; pragma Import (Ada, E3645, "lists_of_integer64_vectors_E");
   E483 : Short_Integer; pragma Import (Ada, E483, "lists_of_integer_vectors_E");
   E949 : Short_Integer; pragma Import (Ada, E949, "frequency_graph_E");
   E471 : Short_Integer; pragma Import (Ada, E471, "lexicographical_supports_E");
   E1939 : Short_Integer; pragma Import (Ada, E1939, "mixed_labels_queue_E");
   E1179 : Short_Integer; pragma Import (Ada, E1179, "multitasking_E");
   E2568 : Short_Integer; pragma Import (Ada, E2568, "sets_of_unknowns_E");
   E1772 : Short_Integer; pragma Import (Ada, E1772, "partitions_of_sets_of_unknowns_E");
   E2866 : Short_Integer; pragma Import (Ada, E2866, "standard_floating_numbers_E");
   E013 : Short_Integer; pragma Import (Ada, E013, "characters_and_numbers_E");
   E039 : Short_Integer; pragma Import (Ada, E039, "continuation_parameters_E");
   E281 : Short_Integer; pragma Import (Ada, E281, "double_double_basics_E");
   E502 : Short_Integer; pragma Import (Ada, E502, "fast_double_renormalizations_E");
   E1345 : Short_Integer; pragma Import (Ada, E1345, "multprec_natural_coefficients_E");
   E1347 : Short_Integer; pragma Import (Ada, E1347, "multprec_natural_numbers_E");
   E1319 : Short_Integer; pragma Import (Ada, E1319, "multprec_integer_numbers_E");
   E1313 : Short_Integer; pragma Import (Ada, E1313, "multprec_common_divisors_E");
   E1322 : Short_Integer; pragma Import (Ada, E1322, "multprec_integer_ring_E");
   E1311 : Short_Integer; pragma Import (Ada, E1311, "multprec_integer_linear_solvers_E");
   E3657 : Short_Integer; pragma Import (Ada, E3657, "multprec_lattice_supports_E");
   E3649 : Short_Integer; pragma Import (Ada, E3649, "multprec_integer_orthogonals_E");
   E3659 : Short_Integer; pragma Import (Ada, E3659, "multprec_power_transformations_E");
   E2014 : Short_Integer; pragma Import (Ada, E2014, "quad_double_renormalizations_E");
   E2691 : Short_Integer; pragma Import (Ada, E2691, "standard_complex_numbers_E");
   E2732 : Short_Integer; pragma Import (Ada, E2732, "standard_complex_ring_E");
   E1965 : Short_Integer; pragma Import (Ada, E1965, "polyhedral_coefficient_predictors_E");
   E1087 : Short_Integer; pragma Import (Ada, E1087, "complex_osculating_planes_E");
   E1091 : Short_Integer; pragma Import (Ada, E1091, "matrix_homotopies_E");
   E2743 : Short_Integer; pragma Import (Ada, E2743, "standard_complex_series_ring_E");
   E3563 : Short_Integer; pragma Import (Ada, E3563, "dcmplx_vecvecs_container_E");
   E2635 : Short_Integer; pragma Import (Ada, E2635, "standard_central_projections_E");
   E2768 : Short_Integer; pragma Import (Ada, E2768, "standard_complex_veclists_E");
   E3068 : Short_Integer; pragma Import (Ada, E3068, "standard_complex_vector_series_E");
   E3066 : Short_Integer; pragma Import (Ada, E3066, "standard_complex_matrix_series_E");
   E2786 : Short_Integer; pragma Import (Ada, E2786, "standard_complex_vecvecvecs_E");
   E3134 : Short_Integer; pragma Import (Ada, E3134, "standard_extrapolators_E");
   E2868 : Short_Integer; pragma Import (Ada, E2868, "standard_floating_numbers_io_E");
   E2693 : Short_Integer; pragma Import (Ada, E2693, "standard_complex_numbers_io_E");
   E1993 : Short_Integer; pragma Import (Ada, E1993, "pruning_statistics_E");
   E1933 : Short_Integer; pragma Import (Ada, E1933, "complex_polynomial_matrices_E");
   E2931 : Short_Integer; pragma Import (Ada, E2931, "dictionaries_E");
   E421 : Short_Integer; pragma Import (Ada, E421, "floating_linear_inequality_solvers_E");
   E2933 : Short_Integer; pragma Import (Ada, E2933, "linear_programming_E");
   E2582 : Short_Integer; pragma Import (Ada, E2582, "simplex_pivoting_E");
   E3577 : Short_Integer; pragma Import (Ada, E3577, "double_vecvecs_container_E");
   E477 : Short_Integer; pragma Import (Ada, E477, "lists_of_floating_vectors_E");
   E349 : Short_Integer; pragma Import (Ada, E349, "floating_support_functions_E");
   E2897 : Short_Integer; pragma Import (Ada, E2897, "standard_floating_vecvecvecs_E");
   E2901 : Short_Integer; pragma Import (Ada, E2901, "standard_hessian_updaters_E");
   E2913 : Short_Integer; pragma Import (Ada, E2913, "standard_inlined_linear_solvers_E");
   E407 : Short_Integer; pragma Import (Ada, E407, "face_enumerators_utilities_E");
   E487 : Short_Integer; pragma Import (Ada, E487, "lists_of_vectors32_utilities_E");
   E2921 : Short_Integer; pragma Import (Ada, E2921, "standard_integer32_transformations_E");
   E401 : Short_Integer; pragma Import (Ada, E401, "integer32_vectors_utilities_E");
   E2919 : Short_Integer; pragma Import (Ada, E2919, "standard_integer32_simplices_E");
   E2950 : Short_Integer; pragma Import (Ada, E2950, "standard_integer_kernel_E");
   E2935 : Short_Integer; pragma Import (Ada, E2935, "standard_integer64_kernel_E");
   E2960 : Short_Integer; pragma Import (Ada, E2960, "standard_integer_matrix_inverse_E");
   E2964 : Short_Integer; pragma Import (Ada, E2964, "standard_integer_numbers_io_E");
   E1935 : Short_Integer; pragma Import (Ada, E1935, "complex_polynomial_matrices_io_E");
   E904 : Short_Integer; pragma Import (Ada, E904, "demics_ftest_E");
   E857 : Short_Integer; pragma Import (Ada, E857, "double_laurent_series_E");
   E855 : Short_Integer; pragma Import (Ada, E855, "double_linear_laurent_solvers_E");
   E563 : Short_Integer; pragma Import (Ada, E563, "filtered_points_E");
   E1113 : Short_Integer; pragma Import (Ada, E1113, "index_tree_lp_E");
   E647 : Short_Integer; pragma Import (Ada, E647, "main_output_feedback_E");
   E3005 : Short_Integer; pragma Import (Ada, E3005, "standard_complex_row_reduction_E");
   E2740 : Short_Integer; pragma Import (Ada, E2740, "standard_complex_series_io_E");
   E1735 : Short_Integer; pragma Import (Ada, E1735, "one_level_lp_E");
   E2836 : Short_Integer; pragma Import (Ada, E2836, "standard_echelon_forms_E");
   E3015 : Short_Integer; pragma Import (Ada, E3015, "standard_mathematical_functions_E");
   E1741 : Short_Integer; pragma Import (Ada, E1741, "chebychev_polynomials_E");
   E279 : Short_Integer; pragma Import (Ada, E279, "double_double_numbers_E");
   E087 : Short_Integer; pragma Import (Ada, E087, "dobldobl_complex_numbers_E");
   E102 : Short_Integer; pragma Import (Ada, E102, "dobldobl_complex_ring_E");
   E151 : Short_Integer; pragma Import (Ada, E151, "dobldobl_complex_equality_tests_E");
   E658 : Short_Integer; pragma Import (Ada, E658, "dobldobl_complex_series_ring_E");
   E1201 : Short_Integer; pragma Import (Ada, E1201, "dobldobl_complex_veclists_E");
   E1161 : Short_Integer; pragma Import (Ada, E1161, "dobldobl_complex_vector_series_E");
   E1159 : Short_Integer; pragma Import (Ada, E1159, "dobldobl_complex_matrix_series_E");
   E1163 : Short_Integer; pragma Import (Ada, E1163, "dobldobl_echelon_forms_E");
   E173 : Short_Integer; pragma Import (Ada, E173, "dobldobl_extrapolators_E");
   E571 : Short_Integer; pragma Import (Ada, E571, "dobldobl_point_coordinates_E");
   E457 : Short_Integer; pragma Import (Ada, E457, "dobldobl_power_traces_E");
   E459 : Short_Integer; pragma Import (Ada, E459, "dobldobl_univariate_interpolators_E");
   E1578 : Short_Integer; pragma Import (Ada, E1578, "dobldobl_vector_splitters_E");
   E275 : Short_Integer; pragma Import (Ada, E275, "double_double_constants_E");
   E143 : Short_Integer; pragma Import (Ada, E143, "dobldobl_mathematical_functions_E");
   E222 : Short_Integer; pragma Import (Ada, E222, "dobldobl_complex_numbers_polar_E");
   E161 : Short_Integer; pragma Import (Ada, E161, "dobldobl_complex_qr_least_squares_E");
   E163 : Short_Integer; pragma Import (Ada, E163, "dobldobl_complex_singular_values_E");
   E113 : Short_Integer; pragma Import (Ada, E113, "dobldobl_complex_vector_norms_E");
   E125 : Short_Integer; pragma Import (Ada, E125, "dobldobl_durand_kerner_E");
   E283 : Short_Integer; pragma Import (Ada, E283, "double_double_numbers_io_E");
   E089 : Short_Integer; pragma Import (Ada, E089, "dobldobl_complex_numbers_io_E");
   E1049 : Short_Integer; pragma Import (Ada, E1049, "dobldobl_complex_row_reduction_E");
   E699 : Short_Integer; pragma Import (Ada, E699, "dobldobl_complex_series_io_E");
   E2454 : Short_Integer; pragma Import (Ada, E2454, "dobldobl_complex_algebraic_series_E");
   E2456 : Short_Integer; pragma Import (Ada, E2456, "dobldobl_complex_series_norms_E");
   E2452 : Short_Integer; pragma Import (Ada, E2452, "dobldobl_cseries_vector_norms_E");
   E228 : Short_Integer; pragma Import (Ada, E228, "dobldobl_numerical_rank_E");
   E189 : Short_Integer; pragma Import (Ada, E189, "dobldobl_complex_newton_steps_E");
   E975 : Short_Integer; pragma Import (Ada, E975, "dobldobl_rescaling_coordinates_E");
   E290 : Short_Integer; pragma Import (Ada, E290, "double_double_ring_E");
   E274 : Short_Integer; pragma Import (Ada, E274, "dobldobl_vlprs_tables_E");
   E272 : Short_Integer; pragma Import (Ada, E272, "dobldobl_vlprs_algorithm_E");
   E1757 : Short_Integer; pragma Import (Ada, E1757, "double_double_eigenvalues_E");
   E289 : Short_Integer; pragma Import (Ada, E289, "double_double_qr_least_squares_E");
   E292 : Short_Integer; pragma Import (Ada, E292, "double_double_vector_norms_E");
   E149 : Short_Integer; pragma Import (Ada, E149, "directions_of_dobldobl_paths_E");
   E1767 : Short_Integer; pragma Import (Ada, E1767, "double_double_two_norms_E");
   E389 : Short_Integer; pragma Import (Ada, E389, "givens_rotations_E");
   E1295 : Short_Integer; pragma Import (Ada, E1295, "multprec_floating_numbers_E");
   E1298 : Short_Integer; pragma Import (Ada, E1298, "multprec_floating_ring_E");
   E1221 : Short_Integer; pragma Import (Ada, E1221, "multprec_complex_number_tools_E");
   E1240 : Short_Integer; pragma Import (Ada, E1240, "multprec_complex_ring_E");
   E1205 : Short_Integer; pragma Import (Ada, E1205, "multprec_central_projections_E");
   E1248 : Short_Integer; pragma Import (Ada, E1248, "multprec_complex_vector_tools_E");
   E1374 : Short_Integer; pragma Import (Ada, E1374, "multprec_extrapolators_E");
   E1341 : Short_Integer; pragma Import (Ada, E1341, "multprec_mathematical_functions_E");
   E1219 : Short_Integer; pragma Import (Ada, E1219, "multprec_complex_norms_equals_E");
   E1263 : Short_Integer; pragma Import (Ada, E1263, "multprec_complex_qr_least_squares_E");
   E1269 : Short_Integer; pragma Import (Ada, E1269, "multprec_complex_singular_values_E");
   E1281 : Short_Integer; pragma Import (Ada, E1281, "multprec_durand_kerner_E");
   E1380 : Short_Integer; pragma Import (Ada, E1380, "multprec_floating_qr_least_squares_E");
   E1438 : Short_Integer; pragma Import (Ada, E1438, "multprec_power_traces_E");
   E1440 : Short_Integer; pragma Import (Ada, E1440, "multprec_univariate_interpolators_E");
   E1598 : Short_Integer; pragma Import (Ada, E1598, "octo_double_numbers_E");
   E1617 : Short_Integer; pragma Import (Ada, E1617, "octo_double_constants_E");
   E1600 : Short_Integer; pragma Import (Ada, E1600, "octo_double_numbers_io_E");
   E1611 : Short_Integer; pragma Import (Ada, E1611, "octo_double_ring_E");
   E1614 : Short_Integer; pragma Import (Ada, E1614, "octodobl_complex_numbers_io_E");
   E1632 : Short_Integer; pragma Import (Ada, E1632, "octodobl_complex_ring_E");
   E1641 : Short_Integer; pragma Import (Ada, E1641, "octodobl_complex_series_ring_E");
   E1638 : Short_Integer; pragma Import (Ada, E1638, "octodobl_complex_series_io_E");
   E1712 : Short_Integer; pragma Import (Ada, E1712, "octodobl_complex_vector_series_E");
   E1710 : Short_Integer; pragma Import (Ada, E1710, "octodobl_complex_matrix_series_E");
   E1714 : Short_Integer; pragma Import (Ada, E1714, "octodobl_echelon_forms_E");
   E1686 : Short_Integer; pragma Import (Ada, E1686, "octodobl_mathematical_functions_E");
   E1616 : Short_Integer; pragma Import (Ada, E1616, "octodobl_complex_numbers_polar_E");
   E2500 : Short_Integer; pragma Import (Ada, E2500, "octodobl_complex_algebraic_series_E");
   E1631 : Short_Integer; pragma Import (Ada, E1631, "octodobl_complex_qr_least_squares_E");
   E2502 : Short_Integer; pragma Import (Ada, E2502, "octodobl_complex_series_norms_E");
   E1647 : Short_Integer; pragma Import (Ada, E1647, "octodobl_complex_singular_values_E");
   E1657 : Short_Integer; pragma Import (Ada, E1657, "octodobl_complex_vector_norms_E");
   E2498 : Short_Integer; pragma Import (Ada, E2498, "octodobl_cseries_vector_norms_E");
   E1778 : Short_Integer; pragma Import (Ada, E1778, "penta_double_numbers_E");
   E1797 : Short_Integer; pragma Import (Ada, E1797, "penta_double_constants_E");
   E1780 : Short_Integer; pragma Import (Ada, E1780, "penta_double_numbers_io_E");
   E1791 : Short_Integer; pragma Import (Ada, E1791, "penta_double_ring_E");
   E1794 : Short_Integer; pragma Import (Ada, E1794, "pentdobl_complex_numbers_io_E");
   E1812 : Short_Integer; pragma Import (Ada, E1812, "pentdobl_complex_ring_E");
   E1821 : Short_Integer; pragma Import (Ada, E1821, "pentdobl_complex_series_ring_E");
   E1818 : Short_Integer; pragma Import (Ada, E1818, "pentdobl_complex_series_io_E");
   E1892 : Short_Integer; pragma Import (Ada, E1892, "pentdobl_complex_vector_series_E");
   E1890 : Short_Integer; pragma Import (Ada, E1890, "pentdobl_complex_matrix_series_E");
   E1894 : Short_Integer; pragma Import (Ada, E1894, "pentdobl_echelon_forms_E");
   E1866 : Short_Integer; pragma Import (Ada, E1866, "pentdobl_mathematical_functions_E");
   E1796 : Short_Integer; pragma Import (Ada, E1796, "pentdobl_complex_numbers_polar_E");
   E2508 : Short_Integer; pragma Import (Ada, E2508, "pentdobl_complex_algebraic_series_E");
   E1811 : Short_Integer; pragma Import (Ada, E1811, "pentdobl_complex_qr_least_squares_E");
   E2510 : Short_Integer; pragma Import (Ada, E2510, "pentdobl_complex_series_norms_E");
   E1827 : Short_Integer; pragma Import (Ada, E1827, "pentdobl_complex_singular_values_E");
   E1837 : Short_Integer; pragma Import (Ada, E1837, "pentdobl_complex_vector_norms_E");
   E2506 : Short_Integer; pragma Import (Ada, E2506, "pentdobl_cseries_vector_norms_E");
   E2754 : Short_Integer; pragma Import (Ada, E2754, "standard_complex_blas_helpers_E");
   E2689 : Short_Integer; pragma Import (Ada, E2689, "standard_complex_norms_equals_E");
   E2695 : Short_Integer; pragma Import (Ada, E2695, "standard_complex_numbers_polar_E");
   E2432 : Short_Integer; pragma Import (Ada, E2432, "multprec_complex_numbers_polar_E");
   E3072 : Short_Integer; pragma Import (Ada, E3072, "standard_complex_algebraic_series_E");
   E2731 : Short_Integer; pragma Import (Ada, E2731, "standard_complex_qr_least_squares_E");
   E3074 : Short_Integer; pragma Import (Ada, E3074, "standard_complex_series_norms_E");
   E2752 : Short_Integer; pragma Import (Ada, E2752, "standard_complex_singular_values_E");
   E2643 : Short_Integer; pragma Import (Ada, E2643, "standard_coefficient_circuits_E");
   E2653 : Short_Integer; pragma Import (Ada, E2653, "standard_complex_circuits_E");
   E2756 : Short_Integer; pragma Import (Ada, E2756, "standard_complex_solutions_E");
   E1242 : Short_Integer; pragma Import (Ada, E1242, "multprec_complex_solutions_E");
   E1335 : Short_Integer; pragma Import (Ada, E1335, "multprec_linear_projections_E");
   E1412 : Short_Integer; pragma Import (Ada, E1412, "multprec_solution_diagnostics_E");
   E3509 : Short_Integer; pragma Import (Ada, E3509, "multprec_solutions_container_E");
   E3535 : Short_Integer; pragma Import (Ada, E3535, "solutions_pool_E");
   E2776 : Short_Integer; pragma Import (Ada, E2776, "standard_complex_vector_norms_E");
   E2792 : Short_Integer; pragma Import (Ada, E2792, "standard_continuation_data_E");
   E1309 : Short_Integer; pragma Import (Ada, E1309, "multprec_continuation_data_E");
   E3070 : Short_Integer; pragma Import (Ada, E3070, "standard_cseries_vector_norms_E");
   E2826 : Short_Integer; pragma Import (Ada, E2826, "standard_diagonal_solutions_E");
   E2832 : Short_Integer; pragma Import (Ada, E2832, "standard_durand_kerner_E");
   E1430 : Short_Integer; pragma Import (Ada, E1430, "hybrid_durand_kerner_E");
   E3150 : Short_Integer; pragma Import (Ada, E3150, "standard_floating_eigenvalues_E");
   E2878 : Short_Integer; pragma Import (Ada, E2878, "standard_floating_qr_least_squares_E");
   E2883 : Short_Integer; pragma Import (Ada, E2883, "standard_floating_two_norms_E");
   E2887 : Short_Integer; pragma Import (Ada, E2887, "standard_floating_vector_norms_E");
   E3128 : Short_Integer; pragma Import (Ada, E3128, "standard_inlined_blas_helpers_E");
   E3007 : Short_Integer; pragma Import (Ada, E3007, "standard_linear_projections_E");
   E3019 : Short_Integer; pragma Import (Ada, E3019, "standard_matrix_splitters_E");
   E3050 : Short_Integer; pragma Import (Ada, E3050, "standard_natural_numbers_io_E");
   E465 : Short_Integer; pragma Import (Ada, E465, "generic_nesvecs_io_E");
   E2774 : Short_Integer; pragma Import (Ada, E2774, "generic_vecmats_io_E");
   E1093 : Short_Integer; pragma Import (Ada, E1093, "matrix_homotopies_io_E");
   E1389 : Short_Integer; pragma Import (Ada, E1389, "multprec_natural64_coefficients_E");
   E1391 : Short_Integer; pragma Import (Ada, E1391, "multprec_natural64_numbers_E");
   E1385 : Short_Integer; pragma Import (Ada, E1385, "multprec_integer64_numbers_E");
   E1395 : Short_Integer; pragma Import (Ada, E1395, "multprec_floating64_numbers_E");
   E1383 : Short_Integer; pragma Import (Ada, E1383, "multprec_integer64_ring_E");
   E1349 : Short_Integer; pragma Import (Ada, E1349, "multprec_natural_numbers_io_E");
   E1321 : Short_Integer; pragma Import (Ada, E1321, "multprec_integer_numbers_io_E");
   E3651 : Short_Integer; pragma Import (Ada, E3651, "multprec_lattice_polygons_E");
   E3643 : Short_Integer; pragma Import (Ada, E3643, "multprec_lattice_3d_facets_E");
   E3655 : Short_Integer; pragma Import (Ada, E3655, "multprec_lattice_polytopes_E");
   E3647 : Short_Integer; pragma Import (Ada, E3647, "multprec_lattice_4d_facets_E");
   E3639 : Short_Integer; pragma Import (Ada, E3639, "facets_and_strings_E");
   E3521 : Short_Integer; pragma Import (Ada, E3521, "pack_continuation_parameters_E");
   E3661 : Short_Integer; pragma Import (Ada, E3661, "point_lists_and_strings_E");
   E2927 : Short_Integer; pragma Import (Ada, E2927, "standard_integer32_simplices_io_E");
   E2993 : Short_Integer; pragma Import (Ada, E2993, "standard_lattice_polygons_E");
   E867 : Short_Integer; pragma Import (Ada, E867, "brackets_E");
   E981 : Short_Integer; pragma Import (Ada, E981, "bracket_monomials_E");
   E985 : Short_Integer; pragma Import (Ada, E985, "brackets_io_E");
   E983 : Short_Integer; pragma Import (Ada, E983, "bracket_monomials_io_E");
   E989 : Short_Integer; pragma Import (Ada, E989, "checker_boards_E");
   E993 : Short_Integer; pragma Import (Ada, E993, "checker_moves_E");
   E1596 : Short_Integer; pragma Import (Ada, E1596, "generic_bracket_polynomials_E");
   E1592 : Short_Integer; pragma Import (Ada, E1592, "dobldobl_bracket_polynomials_E");
   E1594 : Short_Integer; pragma Import (Ada, E1594, "dobldobl_bracket_systems_E");
   E379 : Short_Integer; pragma Import (Ada, E379, "generic_polynomials_E");
   E099 : Short_Integer; pragma Import (Ada, E099, "dobldobl_complex_polynomials_E");
   E200 : Short_Integer; pragma Import (Ada, E200, "dobldobl_complex_poly_ring_E");
   E674 : Short_Integer; pragma Import (Ada, E674, "dobldobl_cseries_polynomials_E");
   E455 : Short_Integer; pragma Import (Ada, E455, "dobldobl_nvariate_interpolators_E");
   E287 : Short_Integer; pragma Import (Ada, E287, "double_double_polynomials_E");
   E631 : Short_Integer; pragma Import (Ada, E631, "generic_lists_of_terms_E");
   E625 : Short_Integer; pragma Import (Ada, E625, "dobldobl_complex_term_lists_E");
   E377 : Short_Integer; pragma Import (Ada, E377, "generic_polynomial_systems_E");
   E627 : Short_Integer; pragma Import (Ada, E627, "dobldobl_complex_to_real_poly_E");
   E391 : Short_Integer; pragma Import (Ada, E391, "graded_lexicographic_order_E");
   E363 : Short_Integer; pragma Import (Ada, E363, "generic_laurent_polynomials_E");
   E081 : Short_Integer; pragma Import (Ada, E081, "dobldobl_complex_laurentials_E");
   E357 : Short_Integer; pragma Import (Ada, E357, "generic_laur_poly_functions_E");
   E359 : Short_Integer; pragma Import (Ada, E359, "generic_laur_poly_systems_E");
   E3849 : Short_Integer; pragma Import (Ada, E3849, "dobldobl_embed_laurentials_E");
   E135 : Short_Integer; pragma Import (Ada, E135, "dobldobl_laur_poly_convertors_E");
   E165 : Short_Integer; pragma Import (Ada, E165, "dobldobl_poly_laur_convertors_E");
   E361 : Short_Integer; pragma Import (Ada, E361, "generic_laur_system_functions_E");
   E355 : Short_Integer; pragma Import (Ada, E355, "generic_laur_jaco_matrices_E");
   E137 : Short_Integer; pragma Import (Ada, E137, "dobldobl_laurent_homotopy_E");
   E3493 : Short_Integer; pragma Import (Ada, E3493, "dobldobl_laursys_container_E");
   E423 : Short_Integer; pragma Import (Ada, E423, "integer_support_functions_E");
   E413 : Short_Integer; pragma Import (Ada, E413, "integer_mixed_subdivisions_E");
   E323 : Short_Integer; pragma Import (Ada, E323, "flatten_mixed_subdivisions_E");
   E1059 : Short_Integer; pragma Import (Ada, E1059, "lexicographic_root_enumeration_E");
   E865 : Short_Integer; pragma Import (Ada, E865, "localization_posets_E");
   E3621 : Short_Integer; pragma Import (Ada, E3621, "localization_poset_strings_E");
   E1129 : Short_Integer; pragma Import (Ada, E1129, "monomial_hashing_E");
   E1213 : Short_Integer; pragma Import (Ada, E1213, "multprec_complex_laurentials_E");
   E1237 : Short_Integer; pragma Import (Ada, E1237, "multprec_complex_polynomials_E");
   E1246 : Short_Integer; pragma Import (Ada, E1246, "multprec_complex_term_lists_E");
   E3224 : Short_Integer; pragma Import (Ada, E3224, "multprec_floating_polynomials_E");
   E3519 : Short_Integer; pragma Import (Ada, E3519, "multprec_laursys_container_E");
   E1700 : Short_Integer; pragma Import (Ada, E1700, "octo_double_polynomials_E");
   E1704 : Short_Integer; pragma Import (Ada, E1704, "octodobl_complex_laurentials_E");
   E1627 : Short_Integer; pragma Import (Ada, E1627, "octodobl_complex_polynomials_E");
   E1676 : Short_Integer; pragma Import (Ada, E1676, "octodobl_cseries_polynomials_E");
   E1880 : Short_Integer; pragma Import (Ada, E1880, "penta_double_polynomials_E");
   E1884 : Short_Integer; pragma Import (Ada, E1884, "pentdobl_complex_laurentials_E");
   E1807 : Short_Integer; pragma Import (Ada, E1807, "pentdobl_complex_polynomials_E");
   E1856 : Short_Integer; pragma Import (Ada, E1856, "pentdobl_cseries_polynomials_E");
   E3625 : Short_Integer; pragma Import (Ada, E3625, "pieri_root_count_E");
   E1951 : Short_Integer; pragma Import (Ada, E1951, "pivot_selection_E");
   E2560 : Short_Integer; pragma Import (Ada, E2560, "set_structure_E");
   E885 : Short_Integer; pragma Import (Ada, E885, "degree_sets_tables_E");
   E2627 : Short_Integer; pragma Import (Ada, E2627, "standard_bracket_polynomials_E");
   E3627 : Short_Integer; pragma Import (Ada, E3627, "standard_bracket_polynomials_io_E");
   E2675 : Short_Integer; pragma Import (Ada, E2675, "standard_complex_laurentials_E");
   E409 : Short_Integer; pragma Import (Ada, E409, "integer_lifting_utilities_E");
   E3583 : Short_Integer; pragma Import (Ada, E3583, "real_powered_homotopy_E");
   E3106 : Short_Integer; pragma Import (Ada, E3106, "standard_affine_binomials_E");
   E2719 : Short_Integer; pragma Import (Ada, E2719, "standard_complex_polynomials_E");
   E2442 : Short_Integer; pragma Import (Ada, E2442, "reduction_of_polynomials_E");
   E2699 : Short_Integer; pragma Import (Ada, E2699, "standard_complex_poly_lists_E");
   E2706 : Short_Integer; pragma Import (Ada, E2706, "standard_complex_poly_ring_E");
   E1426 : Short_Integer; pragma Import (Ada, E1426, "multprec_to_standard_convertors_E");
   E2725 : Short_Integer; pragma Import (Ada, E2725, "standard_complex_prod_systems_E");
   E2760 : Short_Integer; pragma Import (Ada, E2760, "standard_complex_substitutors_E");
   E2762 : Short_Integer; pragma Import (Ada, E2762, "standard_complex_term_lists_E");
   E2806 : Short_Integer; pragma Import (Ada, E2806, "standard_cseries_polynomials_E");
   E3853 : Short_Integer; pragma Import (Ada, E3853, "standard_embed_laurentials_E");
   E2876 : Short_Integer; pragma Import (Ada, E2876, "standard_floating_polynomials_E");
   E2766 : Short_Integer; pragma Import (Ada, E2766, "standard_complex_to_real_poly_E");
   E2911 : Short_Integer; pragma Import (Ada, E2911, "standard_initial_forms_E");
   E2997 : Short_Integer; pragma Import (Ada, E2997, "standard_laur_poly_convertors_E");
   E2999 : Short_Integer; pragma Import (Ada, E2999, "standard_laurent_homotopy_E");
   E3537 : Short_Integer; pragma Import (Ada, E3537, "standard_laursys_container_E");
   E1037 : Short_Integer; pragma Import (Ada, E1037, "bracket_expansions_E");
   E1023 : Short_Integer; pragma Import (Ada, E1023, "curves_into_grassmannian_E");
   E141 : Short_Integer; pragma Import (Ada, E141, "dobldobl_complex_linear_solvers_E");
   E2438 : Short_Integer; pragma Import (Ada, E2438, "dobldobl_linear_reduction_E");
   E688 : Short_Integer; pragma Import (Ada, E688, "dobldobl_rational_approximations_E");
   E682 : Short_Integer; pragma Import (Ada, E682, "dobldobl_pade_approximants_E");
   E579 : Short_Integer; pragma Import (Ada, E579, "flow_tables_E");
   E1013 : Short_Integer; pragma Import (Ada, E1013, "generic_floating_linear_solvers_E");
   E1006 : Short_Integer; pragma Import (Ada, E1006, "dobldobl_matrix_inversion_E");
   E375 : Short_Integer; pragma Import (Ada, E375, "generic_polynomial_functions_E");
   E692 : Short_Integer; pragma Import (Ada, E692, "generic_hessian_matrices_E");
   E373 : Short_Integer; pragma Import (Ada, E373, "generic_poly_system_functions_E");
   E220 : Short_Integer; pragma Import (Ada, E220, "dobldobl_mixed_residuals_E");
   E353 : Short_Integer; pragma Import (Ada, E353, "generic_jacobian_matrices_E");
   E067 : Short_Integer; pragma Import (Ada, E067, "dobldobl_coefficient_homotopy_E");
   E197 : Short_Integer; pragma Import (Ada, E197, "dobldobl_embed_polynomials_E");
   E127 : Short_Integer; pragma Import (Ada, E127, "dobldobl_homotopy_E");
   E218 : Short_Integer; pragma Import (Ada, E218, "dobldobl_jacobian_trees_E");
   E3483 : Short_Integer; pragma Import (Ada, E3483, "dobldobl_polysys_container_E");
   E3719 : Short_Integer; pragma Import (Ada, E3719, "dobldobl_systems_pool_E");
   E1283 : Short_Integer; pragma Import (Ada, E1283, "multprec_embed_polynomials_E");
   E1305 : Short_Integer; pragma Import (Ada, E1305, "multprec_homotopy_E");
   E1333 : Short_Integer; pragma Import (Ada, E1333, "multprec_jacobian_trees_E");
   E3505 : Short_Integer; pragma Import (Ada, E3505, "multprec_polysys_container_E");
   E1606 : Short_Integer; pragma Import (Ada, E1606, "octodobl_complex_linear_solvers_E");
   E1602 : Short_Integer; pragma Import (Ada, E1602, "octodobl_coefficient_homotopy_E");
   E1682 : Short_Integer; pragma Import (Ada, E1682, "octodobl_homotopy_E");
   E1786 : Short_Integer; pragma Import (Ada, E1786, "pentdobl_complex_linear_solvers_E");
   E1782 : Short_Integer; pragma Import (Ada, E1782, "pentdobl_coefficient_homotopy_E");
   E1862 : Short_Integer; pragma Import (Ada, E1862, "pentdobl_homotopy_E");
   E1953 : Short_Integer; pragma Import (Ada, E1953, "plane_representations_E");
   E2683 : Short_Integer; pragma Import (Ada, E2683, "standard_complex_linear_solvers_E");
   E1963 : Short_Integer; pragma Import (Ada, E1963, "polyhedral_coefficient_correctors_E");
   E2633 : Short_Integer; pragma Import (Ada, E2633, "standard_cascading_planes_E");
   E2647 : Short_Integer; pragma Import (Ada, E2647, "standard_coefficient_homotopy_E");
   E2838 : Short_Integer; pragma Import (Ada, E2838, "standard_embed_polynomials_E");
   E475 : Short_Integer; pragma Import (Ada, E475, "basis_exchanges_E");
   E339 : Short_Integer; pragma Import (Ada, E339, "floating_mixed_subdivisions_E");
   E335 : Short_Integer; pragma Import (Ada, E335, "floating_lifting_utilities_E");
   E896 : Short_Integer; pragma Import (Ada, E896, "demics_output_cells_E");
   E909 : Short_Integer; pragma Import (Ada, E909, "demics_output_convertors_E");
   E331 : Short_Integer; pragma Import (Ada, E331, "floating_integer_convertors_E");
   E473 : Short_Integer; pragma Import (Ada, E473, "linear_minimization_E");
   E1187 : Short_Integer; pragma Import (Ada, E1187, "mixed_cells_queue_E");
   E2903 : Short_Integer; pragma Import (Ada, E2903, "standard_homotopy_E");
   E2991 : Short_Integer; pragma Import (Ada, E2991, "standard_jacobian_trees_E");
   E3001 : Short_Integer; pragma Import (Ada, E3001, "standard_linear_poly_solvers_E");
   E3009 : Short_Integer; pragma Import (Ada, E3009, "standard_linear_reduction_E");
   E3011 : Short_Integer; pragma Import (Ada, E3011, "standard_linear_spaces_E");
   E3017 : Short_Integer; pragma Import (Ada, E3017, "standard_matrix_inversion_E");
   E3023 : Short_Integer; pragma Import (Ada, E3023, "standard_mixed_residuals_E");
   E987 : Short_Integer; pragma Import (Ada, E987, "checker_boards_io_E");
   E1067 : Short_Integer; pragma Import (Ada, E1067, "dobldobl_nullity_polynomials_E");
   E1065 : Short_Integer; pragma Import (Ada, E1065, "dobldobl_nullity_matrices_E");
   E641 : Short_Integer; pragma Import (Ada, E641, "generic_arrays_of_vector_lists_io_E");
   E1031 : Short_Integer; pragma Import (Ada, E1031, "localization_posets_io_E");
   E2764 : Short_Integer; pragma Import (Ada, E2764, "standard_complex_term_lists_io_E");
   E2790 : Short_Integer; pragma Import (Ada, E2790, "standard_condition_tables_E");
   E1410 : Short_Integer; pragma Import (Ada, E1410, "multprec_condition_tables_E");
   E206 : Short_Integer; pragma Import (Ada, E206, "dobldobl_deflation_matrices_E");
   E204 : Short_Integer; pragma Import (Ada, E204, "dobldobl_evaluate_deflation_E");
   E208 : Short_Integer; pragma Import (Ada, E208, "dobldobl_evaluate_deflation_io_E");
   E1123 : Short_Integer; pragma Import (Ada, E1123, "monodromy_group_actions_E");
   E1125 : Short_Integer; pragma Import (Ada, E1125, "monodromy_group_actions_io_E");
   E1287 : Short_Integer; pragma Import (Ada, E1287, "multprec_deflation_matrices_E");
   E1285 : Short_Integer; pragma Import (Ada, E1285, "multprec_evaluate_deflation_E");
   E1289 : Short_Integer; pragma Import (Ada, E1289, "multprec_evaluate_deflation_io_E");
   E2842 : Short_Integer; pragma Import (Ada, E2842, "standard_deflation_matrices_E");
   E2840 : Short_Integer; pragma Import (Ada, E2840, "standard_evaluate_deflation_E");
   E2844 : Short_Integer; pragma Import (Ada, E2844, "standard_evaluate_deflation_io_E");
   E3003 : Short_Integer; pragma Import (Ada, E3003, "standard_linear_product_system_E");
   E2723 : Short_Integer; pragma Import (Ada, E2723, "standard_complex_prod_planes_E");
   E3025 : Short_Integer; pragma Import (Ada, E3025, "standard_monomial_evaluations_E");
   E224 : Short_Integer; pragma Import (Ada, E224, "dobldobl_monomial_evaluations_E");
   E3078 : Short_Integer; pragma Import (Ada, E3078, "standard_nullity_polynomials_E");
   E3076 : Short_Integer; pragma Import (Ada, E3076, "standard_nullity_matrices_E");
   E3080 : Short_Integer; pragma Import (Ada, E3080, "standard_numerical_rank_E");
   E2818 : Short_Integer; pragma Import (Ada, E2818, "standard_complex_newton_steps_E");
   E3232 : Short_Integer; pragma Import (Ada, E3232, "standard_nvariate_interpolators_E");
   E3088 : Short_Integer; pragma Import (Ada, E3088, "standard_parameter_solutions_E");
   E3092 : Short_Integer; pragma Import (Ada, E3092, "standard_parse_numbers_E");
   E1353 : Short_Integer; pragma Import (Ada, E1353, "multprec_parse_numbers_E");
   E1291 : Short_Integer; pragma Import (Ada, E1291, "multprec_floating_constants_E");
   E1297 : Short_Integer; pragma Import (Ada, E1297, "multprec_floating_numbers_io_E");
   E1225 : Short_Integer; pragma Import (Ada, E1225, "multprec_complex_numbers_io_E");
   E1359 : Short_Integer; pragma Import (Ada, E1359, "multprec_complex_linear_solvers_E");
   E1279 : Short_Integer; pragma Import (Ada, E1279, "multprec_dobldobl_convertors_E");
   E109 : Short_Integer; pragma Import (Ada, E109, "dobldobl_complex_numbers_cv_E");
   E117 : Short_Integer; pragma Import (Ada, E117, "dobldobl_complex_vectors_cv_E");
   E107 : Short_Integer; pragma Import (Ada, E107, "dobldobl_complex_solutions_E");
   E185 : Short_Integer; pragma Import (Ada, E185, "dobldobl_condition_tables_E");
   E131 : Short_Integer; pragma Import (Ada, E131, "dobldobl_continuation_data_E");
   E555 : Short_Integer; pragma Import (Ada, E555, "dobldobl_diagonal_solutions_E");
   E569 : Short_Integer; pragma Import (Ada, E569, "dobldobl_intrinsic_solutions_E");
   E139 : Short_Integer; pragma Import (Ada, E139, "dobldobl_linear_poly_solvers_E");
   E1047 : Short_Integer; pragma Import (Ada, E1047, "dobldobl_linear_product_system_E");
   E1747 : Short_Integer; pragma Import (Ada, E1747, "dobldobl_parameter_solutions_E");
   E230 : Short_Integer; pragma Import (Ada, E230, "dobldobl_point_lists_E");
   E169 : Short_Integer; pragma Import (Ada, E169, "dobldobl_polynomial_convertors_E");
   E171 : Short_Integer; pragma Import (Ada, E171, "dobldobl_predictors_E");
   E157 : Short_Integer; pragma Import (Ada, E157, "dobldobl_dispatch_predictors_E");
   E234 : Short_Integer; pragma Import (Ada, E234, "dobldobl_quad_trees_E");
   E254 : Short_Integer; pragma Import (Ada, E254, "dobldobl_radial_solvers_E");
   E238 : Short_Integer; pragma Import (Ada, E238, "dobldobl_scaling_E");
   E258 : Short_Integer; pragma Import (Ada, E258, "dobldobl_solution_diagnostics_E");
   E262 : Short_Integer; pragma Import (Ada, E262, "dobldobl_solution_manipulators_E");
   E3485 : Short_Integer; pragma Import (Ada, E3485, "dobldobl_solutions_container_E");
   E1141 : Short_Integer; pragma Import (Ada, E1141, "dobldobl_solutions_queue_E");
   E268 : Short_Integer; pragma Import (Ada, E268, "dobldobl_stable_homotopies_E");
   E3799 : Short_Integer; pragma Import (Ada, E3799, "dobldobl_witness_solutions_E");
   E1361 : Short_Integer; pragma Import (Ada, E1361, "multprec_data_on_path_E");
   E1422 : Short_Integer; pragma Import (Ada, E1422, "multprec_linear_spaces_E");
   E1351 : Short_Integer; pragma Import (Ada, E1351, "multprec_numerical_rank_E");
   E1267 : Short_Integer; pragma Import (Ada, E1267, "multprec_complex_newton_steps_E");
   E1436 : Short_Integer; pragma Import (Ada, E1436, "multprec_nvariate_interpolators_E");
   E1651 : Short_Integer; pragma Import (Ada, E1651, "multprec_octodobl_convertors_E");
   E1831 : Short_Integer; pragma Import (Ada, E1831, "multprec_pentdobl_convertors_E");
   E1372 : Short_Integer; pragma Import (Ada, E1372, "multprec_predictors_E");
   E1363 : Short_Integer; pragma Import (Ada, E1363, "multprec_dispatch_predictors_E");
   E1399 : Short_Integer; pragma Import (Ada, E1399, "multprec_residual_evaluations_E");
   E2542 : Short_Integer; pragma Import (Ada, E2542, "multprec_scaling_E");
   E1442 : Short_Integer; pragma Import (Ada, E1442, "multprec_write_numbers_E");
   E1653 : Short_Integer; pragma Import (Ada, E1653, "octodobl_complex_numbers_cv_E");
   E1661 : Short_Integer; pragma Import (Ada, E1661, "octodobl_complex_vectors_cv_E");
   E1649 : Short_Integer; pragma Import (Ada, E1649, "octodobl_complex_solutions_E");
   E1696 : Short_Integer; pragma Import (Ada, E1696, "octodobl_polynomial_convertors_E");
   E1833 : Short_Integer; pragma Import (Ada, E1833, "pentdobl_complex_numbers_cv_E");
   E1841 : Short_Integer; pragma Import (Ada, E1841, "pentdobl_complex_vectors_cv_E");
   E1829 : Short_Integer; pragma Import (Ada, E1829, "pentdobl_complex_solutions_E");
   E1876 : Short_Integer; pragma Import (Ada, E1876, "pentdobl_polynomial_convertors_E");
   E3114 : Short_Integer; pragma Import (Ada, E3114, "standard_point_coordinates_E");
   E2981 : Short_Integer; pragma Import (Ada, E2981, "standard_intrinsic_solutions_E");
   E3116 : Short_Integer; pragma Import (Ada, E3116, "standard_point_lists_E");
   E3118 : Short_Integer; pragma Import (Ada, E3118, "standard_poly_laur_convertors_E");
   E3539 : Short_Integer; pragma Import (Ada, E3539, "standard_polysys_container_E");
   E3234 : Short_Integer; pragma Import (Ada, E3234, "standard_power_traces_E");
   E3122 : Short_Integer; pragma Import (Ada, E3122, "standard_power_transformations_E");
   E3132 : Short_Integer; pragma Import (Ada, E3132, "standard_predictors_E");
   E3098 : Short_Integer; pragma Import (Ada, E3098, "standard_dispatch_predictors_E");
   E3146 : Short_Integer; pragma Import (Ada, E3146, "standard_quad_trees_E");
   E3154 : Short_Integer; pragma Import (Ada, E3154, "standard_radial_solvers_E");
   E3164 : Short_Integer; pragma Import (Ada, E3164, "standard_rational_approximations_E");
   E3082 : Short_Integer; pragma Import (Ada, E3082, "standard_pade_approximants_E");
   E3168 : Short_Integer; pragma Import (Ada, E3168, "standard_rescaling_coordinates_E");
   E3172 : Short_Integer; pragma Import (Ada, E3172, "standard_scaling_E");
   E3188 : Short_Integer; pragma Import (Ada, E3188, "standard_smith_normal_form_E");
   E3190 : Short_Integer; pragma Import (Ada, E3190, "standard_solution_diagnostics_E");
   E3194 : Short_Integer; pragma Import (Ada, E3194, "standard_solution_manipulators_E");
   E3202 : Short_Integer; pragma Import (Ada, E3202, "standard_solutions_queue_E");
   E3206 : Short_Integer; pragma Import (Ada, E3206, "standard_speelpenning_products_E");
   E266 : Short_Integer; pragma Import (Ada, E266, "dobldobl_speelpenning_products_E");
   E216 : Short_Integer; pragma Import (Ada, E216, "dobldobl_gradient_evaluations_E");
   E2899 : Short_Integer; pragma Import (Ada, E2899, "standard_gradient_evaluations_E");
   E3208 : Short_Integer; pragma Import (Ada, E3208, "standard_stable_homotopies_E");
   E3547 : Short_Integer; pragma Import (Ada, E3547, "standard_systems_pool_E");
   E3220 : Short_Integer; pragma Import (Ada, E3220, "standard_to_multprec_convertors_E");
   E3238 : Short_Integer; pragma Import (Ada, E3238, "standard_univariate_interpolators_E");
   E3240 : Short_Integer; pragma Import (Ada, E3240, "standard_vector_splitters_E");
   E2645 : Short_Integer; pragma Import (Ada, E2645, "standard_coefficient_convolutions_E");
   E1576 : Short_Integer; pragma Import (Ada, E1576, "dobldobl_coefficient_convolutions_E");
   E2649 : Short_Integer; pragma Import (Ada, E2649, "standard_coefficient_storage_E");
   E2796 : Short_Integer; pragma Import (Ada, E2796, "standard_convolution_splitters_E");
   E2915 : Short_Integer; pragma Import (Ada, E2915, "standard_inlined_linearization_E");
   E2917 : Short_Integer; pragma Import (Ada, E2917, "standard_inlined_newton_circuits_E");
   E3126 : Short_Integer; pragma Import (Ada, E3126, "standard_inlined_singular_values_E");
   E3060 : Short_Integer; pragma Import (Ada, E3060, "standard_newton_circuits_E");
   E3244 : Short_Integer; pragma Import (Ada, E3244, "standard_vlprs_tables_E");
   E3242 : Short_Integer; pragma Import (Ada, E3242, "standard_vlprs_algorithm_E");
   E2812 : Short_Integer; pragma Import (Ada, E2812, "directions_of_standard_paths_E");
   E2810 : Short_Integer; pragma Import (Ada, E2810, "standard_data_on_path_E");
   E155 : Short_Integer; pragma Import (Ada, E155, "dobldobl_data_on_path_E");
   E3803 : Short_Integer; pragma Import (Ada, E3803, "standard_witness_solutions_E");
   E3246 : Short_Integer; pragma Import (Ada, E3246, "standard_write_numbers_E");
   E3250 : Short_Integer; pragma Import (Ada, E3250, "straightening_syzygies_E");
   E2629 : Short_Integer; pragma Import (Ada, E2629, "standard_bracket_systems_E");
   E3549 : Short_Integer; pragma Import (Ada, E3549, "string_parsing_E");
   E3252 : Short_Integer; pragma Import (Ada, E3252, "string_splitters_E");
   E011 : Short_Integer; pragma Import (Ada, E011, "actions_and_options_E");
   E037 : Short_Integer; pragma Import (Ada, E037, "communications_with_user_E");
   E900 : Short_Integer; pragma Import (Ada, E900, "demics_input_data_E");
   E907 : Short_Integer; pragma Import (Ada, E907, "demics_itest_E");
   E3489 : Short_Integer; pragma Import (Ada, E3489, "file_management_E");
   E3695 : Short_Integer; pragma Import (Ada, E3695, "lists_of_strings_E");
   E3693 : Short_Integer; pragma Import (Ada, E3693, "demics_output_data_E");
   E863 : Short_Integer; pragma Import (Ada, E863, "main_pieri_count_E");
   E3641 : Short_Integer; pragma Import (Ada, E3641, "multprec_giftwrap_container_E");
   E3543 : Short_Integer; pragma Import (Ada, E3543, "standard_complex_vector_strings_E");
   E3817 : Short_Integer; pragma Import (Ada, E3817, "dobldobl_complex_vector_strings_E");
   E3819 : Short_Integer; pragma Import (Ada, E3819, "multprec_complex_vector_strings_E");
   E3254 : Short_Integer; pragma Import (Ada, E3254, "string_system_readers_E");
   E3256 : Short_Integer; pragma Import (Ada, E3256, "strings_and_numbers_E");
   E3587 : Short_Integer; pragma Import (Ada, E3587, "real_powered_series_io_E");
   E3709 : Short_Integer; pragma Import (Ada, E3709, "supporting_set_structure_E");
   E3260 : Short_Integer; pragma Import (Ada, E3260, "symbol_table_E");
   E1025 : Short_Integer; pragma Import (Ada, E1025, "curves_into_grassmannian_io_E");
   E2679 : Short_Integer; pragma Import (Ada, E2679, "line_breaks_E");
   E1339 : Short_Integer; pragma Import (Ada, E1339, "lists_of_symbols_E");
   E2564 : Short_Integer; pragma Import (Ada, E2564, "set_structure_strings_E");
   E2572 : Short_Integer; pragma Import (Ada, E2572, "sets_of_unknowns_strings_E");
   E2480 : Short_Integer; pragma Import (Ada, E2480, "partitions_of_sets_strings_E");
   E3541 : Short_Integer; pragma Import (Ada, E3541, "standard_solution_strings_E");
   E3613 : Short_Integer; pragma Import (Ada, E3613, "dobldobl_solution_strings_E");
   E3513 : Short_Integer; pragma Import (Ada, E3513, "multprec_solution_strings_E");
   E3813 : Short_Integer; pragma Import (Ada, E3813, "solution_string_splitters_E");
   E3545 : Short_Integer; pragma Import (Ada, E3545, "standard_solutions_container_E");
   E3262 : Short_Integer; pragma Import (Ada, E3262, "symbol_table_io_E");
   E1755 : Short_Integer; pragma Import (Ada, E1755, "dobldobl_quad_turn_points_io_E");
   E1215 : Short_Integer; pragma Import (Ada, E1215, "multprec_complex_laurentials_io_E");
   E083 : Short_Integer; pragma Import (Ada, E083, "dobldobl_complex_laurentials_io_E");
   E1337 : Short_Integer; pragma Import (Ada, E1337, "multprec_maple_solutions_io_E");
   E1733 : Short_Integer; pragma Import (Ada, E1733, "octodobl_complex_laurentials_io_E");
   E1913 : Short_Integer; pragma Import (Ada, E1913, "pentdobl_complex_laurentials_io_E");
   E2562 : Short_Integer; pragma Import (Ada, E2562, "set_structure_io_E");
   E2570 : Short_Integer; pragma Import (Ada, E2570, "sets_of_unknowns_io_E");
   E2681 : Short_Integer; pragma Import (Ada, E2681, "standard_complex_laur_readers_E");
   E2677 : Short_Integer; pragma Import (Ada, E2677, "standard_complex_laurentials_io_E");
   E2709 : Short_Integer; pragma Import (Ada, E2709, "standard_complex_poly_strings_E");
   E1207 : Short_Integer; pragma Import (Ada, E1207, "multprec_complex_laur_strings_E");
   E621 : Short_Integer; pragma Import (Ada, E621, "dobldobl_complex_laur_strings_E");
   E1229 : Short_Integer; pragma Import (Ada, E1229, "multprec_complex_poly_strings_E");
   E623 : Short_Integer; pragma Import (Ada, E623, "dobldobl_complex_poly_strings_E");
   E2667 : Short_Integer; pragma Import (Ada, E2667, "standard_complex_laur_strings_E");
   E3553 : Short_Integer; pragma Import (Ada, E3553, "parse_dimensions_E");
   E3585 : Short_Integer; pragma Import (Ada, E3585, "real_powered_homotopy_io_E");
   E2828 : Short_Integer; pragma Import (Ada, E2828, "standard_dictionary_solutions_io_E");
   E3084 : Short_Integer; pragma Import (Ada, E3084, "standard_pade_approximants_io_E");
   E684 : Short_Integer; pragma Import (Ada, E684, "dobldobl_pade_approximants_io_E");
   E3152 : Short_Integer; pragma Import (Ada, E3152, "standard_quad_turn_points_io_E");
   E3272 : Short_Integer; pragma Import (Ada, E3272, "symbols_io_E");
   E2758 : Short_Integer; pragma Import (Ada, E2758, "standard_complex_solutions_io_E");
   E111 : Short_Integer; pragma Import (Ada, E111, "dobldobl_complex_solutions_io_E");
   E133 : Short_Integer; pragma Import (Ada, E133, "dobldobl_continuation_data_io_E");
   E1063 : Short_Integer; pragma Import (Ada, E1063, "dobldobl_multiplicity_structure_E");
   E260 : Short_Integer; pragma Import (Ada, E260, "dobldobl_solution_filters_E");
   E264 : Short_Integer; pragma Import (Ada, E264, "dobldobl_solution_splitters_E");
   E573 : Short_Integer; pragma Import (Ada, E573, "main_dictionary_solutions_E");
   E1244 : Short_Integer; pragma Import (Ada, E1244, "multprec_complex_solutions_io_E");
   E645 : Short_Integer; pragma Import (Ada, E645, "main_maple_solutions_E");
   E1401 : Short_Integer; pragma Import (Ada, E1401, "multprec_root_refiners_E");
   E1694 : Short_Integer; pragma Import (Ada, E1694, "octodobl_complex_solutions_io_E");
   E1874 : Short_Integer; pragma Import (Ada, E1874, "pentdobl_complex_solutions_io_E");
   E2794 : Short_Integer; pragma Import (Ada, E2794, "standard_continuation_data_io_E");
   E3037 : Short_Integer; pragma Import (Ada, E3037, "standard_multiplicity_structure_E");
   E3192 : Short_Integer; pragma Import (Ada, E3192, "standard_solution_filters_E");
   E3198 : Short_Integer; pragma Import (Ada, E3198, "standard_solution_splitters_E");
   E3284 : Short_Integer; pragma Import (Ada, E3284, "symmetry_group_E");
   E3270 : Short_Integer; pragma Import (Ada, E3270, "symbolic_symmetry_group_io_E");
   E3286 : Short_Integer; pragma Import (Ada, E3286, "symmetry_group_io_E");
   E3288 : Short_Integer; pragma Import (Ada, E3288, "system_call_E");
   E3160 : Short_Integer; pragma Import (Ada, E3160, "machines_E");
   E3158 : Short_Integer; pragma Import (Ada, E3158, "standard_random_numbers_E");
   E913 : Short_Integer; pragma Import (Ada, E913, "demics_simplex_E");
   E911 : Short_Integer; pragma Import (Ada, E911, "demics_reltab_E");
   E902 : Short_Integer; pragma Import (Ada, E902, "demics_mvc_E");
   E175 : Short_Integer; pragma Import (Ada, E175, "dobldobl_random_numbers_E");
   E431 : Short_Integer; pragma Import (Ada, E431, "dobldobl_lined_hypersurfaces_E");
   E236 : Short_Integer; pragma Import (Ada, E236, "dobldobl_random_matrices_E");
   E3747 : Short_Integer; pragma Import (Ada, E3747, "dobldobl_random_polynomials_E");
   E177 : Short_Integer; pragma Import (Ada, E177, "dobldobl_random_vectors_E");
   E191 : Short_Integer; pragma Import (Ada, E191, "dobldobl_deflate_singularities_E");
   E193 : Short_Integer; pragma Import (Ada, E193, "dobldobl_deflation_trees_E");
   E583 : Short_Integer; pragma Import (Ada, E583, "dobldobl_hypersurface_witsets_E");
   E1165 : Short_Integer; pragma Import (Ada, E1165, "dobldobl_interpolating_cseries_E");
   E226 : Short_Integer; pragma Import (Ada, E226, "dobldobl_multiple_solutions_E");
   E433 : Short_Integer; pragma Import (Ada, E433, "dobldobl_plane_representations_E");
   E973 : Short_Integer; pragma Import (Ada, E973, "dobldobl_moving_planes_E");
   E232 : Short_Integer; pragma Import (Ada, E232, "dobldobl_polynomial_flatteners_E");
   E1157 : Short_Integer; pragma Import (Ada, E1157, "dobldobl_series_matrix_solvers_E");
   E2430 : Short_Integer; pragma Import (Ada, E2430, "extended_random_numbers_E");
   E327 : Short_Integer; pragma Import (Ada, E327, "facet_vertex_enumeration_E");
   E337 : Short_Integer; pragma Import (Ada, E337, "floating_linear_inequalities_E");
   E329 : Short_Integer; pragma Import (Ada, E329, "floating_face_enumerators_E");
   E325 : Short_Integer; pragma Import (Ada, E325, "floating_faces_of_polytope_E");
   E347 : Short_Integer; pragma Import (Ada, E347, "floating_pruning_methods_E");
   E701 : Short_Integer; pragma Import (Ada, E701, "homotopy_continuation_parameters_E");
   E643 : Short_Integer; pragma Import (Ada, E643, "integer_lifting_functions_E");
   E411 : Short_Integer; pragma Import (Ada, E411, "integer_linear_inequalities_E");
   E405 : Short_Integer; pragma Import (Ada, E405, "integer_face_enumerators_E");
   E403 : Short_Integer; pragma Import (Ada, E403, "integer_faces_of_polytope_E");
   E929 : Short_Integer; pragma Import (Ada, E929, "common_faces_of_polytope_E");
   E419 : Short_Integer; pragma Import (Ada, E419, "integer_pruning_methods_E");
   E1393 : Short_Integer; pragma Import (Ada, E1393, "multprec_random_numbers_E");
   E1378 : Short_Integer; pragma Import (Ada, E1378, "multprec_random_matrices_E");
   E1397 : Short_Integer; pragma Import (Ada, E1397, "multprec_random_vectors_E");
   E1259 : Short_Integer; pragma Import (Ada, E1259, "multprec_deflate_singularities_E");
   E1273 : Short_Integer; pragma Import (Ada, E1273, "multprec_deflation_trees_E");
   E1370 : Short_Integer; pragma Import (Ada, E1370, "multprec_polynomial_interpolators_E");
   E1706 : Short_Integer; pragma Import (Ada, E1706, "octodobl_random_numbers_E");
   E1725 : Short_Integer; pragma Import (Ada, E1725, "octodobl_random_vectors_E");
   E1716 : Short_Integer; pragma Import (Ada, E1716, "octodobl_interpolating_cseries_E");
   E1708 : Short_Integer; pragma Import (Ada, E1708, "octodobl_series_matrix_solvers_E");
   E1690 : Short_Integer; pragma Import (Ada, E1690, "octodobl_newton_convolutions_E");
   E1688 : Short_Integer; pragma Import (Ada, E1688, "octodobl_newton_convolution_steps_E");
   E1739 : Short_Integer; pragma Import (Ada, E1739, "osculating_planes_E");
   E1886 : Short_Integer; pragma Import (Ada, E1886, "pentdobl_random_numbers_E");
   E1905 : Short_Integer; pragma Import (Ada, E1905, "pentdobl_random_vectors_E");
   E1896 : Short_Integer; pragma Import (Ada, E1896, "pentdobl_interpolating_cseries_E");
   E1888 : Short_Integer; pragma Import (Ada, E1888, "pentdobl_series_matrix_solvers_E");
   E1870 : Short_Integer; pragma Import (Ada, E1870, "pentdobl_newton_convolutions_E");
   E1868 : Short_Integer; pragma Import (Ada, E1868, "pentdobl_newton_convolution_steps_E");
   E1981 : Short_Integer; pragma Import (Ada, E1981, "prepare_for_mv_E");
   E2424 : Short_Integer; pragma Import (Ada, E2424, "random_product_start_systems_E");
   E2434 : Short_Integer; pragma Import (Ada, E2434, "reduction_of_nonsquare_systems_E");
   E2596 : Short_Integer; pragma Import (Ada, E2596, "span_of_supports_E");
   E2598 : Short_Integer; pragma Import (Ada, E2598, "specialization_of_planes_E");
   E2665 : Short_Integer; pragma Import (Ada, E2665, "standard_complex_laur_randomizers_E");
   E2705 : Short_Integer; pragma Import (Ada, E2705, "standard_complex_poly_randomizers_E");
   E2923 : Short_Integer; pragma Import (Ada, E2923, "standard_integer32_triangulations_E");
   E035 : Short_Integer; pragma Import (Ada, E035, "cayley_embedding_E");
   E931 : Short_Integer; pragma Import (Ada, E931, "dynamic32_lifting_functions_E");
   E935 : Short_Integer; pragma Import (Ada, E935, "enumerate_faces_of_polytope_E");
   E2925 : Short_Integer; pragma Import (Ada, E2925, "standard_integer32_triangulations_io_E");
   E3013 : Short_Integer; pragma Import (Ada, E3013, "standard_lined_hypersurfaces_E");
   E3156 : Short_Integer; pragma Import (Ada, E3156, "standard_random_matrices_E");
   E3763 : Short_Integer; pragma Import (Ada, E3763, "standard_random_polynomials_E");
   E3162 : Short_Integer; pragma Import (Ada, E3162, "standard_random_vectors_E");
   E3575 : Short_Integer; pragma Import (Ada, E3575, "double_real_powered_series_E");
   E3569 : Short_Integer; pragma Import (Ada, E3569, "double_leading_evaluations_E");
   E3571 : Short_Integer; pragma Import (Ada, E3571, "double_ordered_evaluations_E");
   E2422 : Short_Integer; pragma Import (Ada, E2422, "random_laurent_series_E");
   E861 : Short_Integer; pragma Import (Ada, E861, "double_lseries_polynomials_E");
   E2814 : Short_Integer; pragma Import (Ada, E2814, "standard_deflate_singularities_E");
   E2820 : Short_Integer; pragma Import (Ada, E2820, "standard_deflation_trees_E");
   E2907 : Short_Integer; pragma Import (Ada, E2907, "standard_hypersurface_witsets_E");
   E3178 : Short_Integer; pragma Import (Ada, E3178, "standard_interpolating_cseries_E");
   E3035 : Short_Integer; pragma Import (Ada, E3035, "standard_multiple_solutions_E");
   E3112 : Short_Integer; pragma Import (Ada, E3112, "standard_plane_representations_E");
   E3033 : Short_Integer; pragma Import (Ada, E3033, "standard_moving_planes_E");
   E3110 : Short_Integer; pragma Import (Ada, E3110, "standard_plane_operations_E");
   E3120 : Short_Integer; pragma Import (Ada, E3120, "standard_polynomial_interpolators_E");
   E3176 : Short_Integer; pragma Import (Ada, E3176, "standard_series_matrix_solvers_E");
   E1155 : Short_Integer; pragma Import (Ada, E1155, "dobldobl_newton_convolutions_E");
   E1153 : Short_Integer; pragma Import (Ada, E1153, "dobldobl_newton_convolution_steps_E");
   E3062 : Short_Integer; pragma Import (Ada, E3062, "standard_newton_convolutions_E");
   E2852 : Short_Integer; pragma Import (Ada, E2852, "newton_coefficient_convolutions_E");
   E2850 : Short_Integer; pragma Import (Ada, E2850, "staggered_newton_convolutions_E");
   E3130 : Short_Integer; pragma Import (Ada, E3130, "standard_newton_convolution_steps_E");
   E3200 : Short_Integer; pragma Import (Ada, E3200, "standard_solutions_heap_E");
   E3292 : Short_Integer; pragma Import (Ada, E3292, "templates_E");
   E3294 : Short_Integer; pragma Import (Ada, E3294, "test_double_lseries_matrices_E");
   E859 : Short_Integer; pragma Import (Ada, E859, "double_lseries_newton_steps_E");
   E3300 : Short_Integer; pragma Import (Ada, E3300, "time_stamps_E");
   E3304 : Short_Integer; pragma Import (Ada, E3304, "timing_package_E");
   E1191 : Short_Integer; pragma Import (Ada, E1191, "multitasking_volume_computation_E");
   E1776 : Short_Integer; pragma Import (Ada, E1776, "path_counts_table_E");
   E3310 : Short_Integer; pragma Import (Ada, E3310, "transformation_of_supports_E");
   E3312 : Short_Integer; pragma Import (Ada, E3312, "transforming_integer32_vector_lists_E");
   E1101 : Short_Integer; pragma Import (Ada, E1101, "arrays_of_lists_utilities_E");
   E415 : Short_Integer; pragma Import (Ada, E415, "integer_mixed_subdivisions_io_E");
   E1105 : Short_Integer; pragma Import (Ada, E1105, "mixed_volume_computation_E");
   E341 : Short_Integer; pragma Import (Ada, E341, "floating_mixed_subdivisions_io_E");
   E1097 : Short_Integer; pragma Import (Ada, E1097, "minkowski_polynomials_E");
   E919 : Short_Integer; pragma Import (Ada, E919, "driver_for_minkowski_polynomials_E");
   E2929 : Short_Integer; pragma Import (Ada, E2929, "standard_integer32_vertices_E");
   E945 : Short_Integer; pragma Import (Ada, E945, "global_dynamic32_triangulation_E");
   E947 : Short_Integer; pragma Import (Ada, E947, "initial_mixed_cell_E");
   E399 : Short_Integer; pragma Import (Ada, E399, "inner_normal_cones_E");
   E1582 : Short_Integer; pragma Import (Ada, E1582, "normal_cone_intersections_E");
   E315 : Short_Integer; pragma Import (Ada, E315, "contributions_to_mixed_volume_E");
   E313 : Short_Integer; pragma Import (Ada, E313, "drivers_for_mixed_contributions_E");
   E927 : Short_Integer; pragma Import (Ada, E927, "dynamic_mixed_subdivisions_E");
   E2834 : Short_Integer; pragma Import (Ada, E2834, "standard_dynamic32_triangulations_E");
   E033 : Short_Integer; pragma Import (Ada, E033, "cayley_trick_E");
   E3316 : Short_Integer; pragma Import (Ada, E3316, "transforming_solutions_E");
   E3318 : Short_Integer; pragma Import (Ada, E3318, "trees_of_vectors_E");
   E3320 : Short_Integer; pragma Import (Ada, E3320, "trees_of_vectors_io_E");
   E3454 : Short_Integer; pragma Import (Ada, E3454, "triple_double_numbers_E");
   E2002 : Short_Integer; pragma Import (Ada, E2002, "quad_double_numbers_E");
   E499 : Short_Integer; pragma Import (Ada, E499, "deca_double_numbers_E");
   E771 : Short_Integer; pragma Import (Ada, E771, "deca_double_constants_E");
   E731 : Short_Integer; pragma Import (Ada, E731, "deca_double_numbers_io_E");
   E497 : Short_Integer; pragma Import (Ada, E497, "deca_double_ring_E");
   E764 : Short_Integer; pragma Import (Ada, E764, "deca_double_polynomials_E");
   E758 : Short_Integer; pragma Import (Ada, E758, "decadobl_complex_numbers_io_E");
   E494 : Short_Integer; pragma Import (Ada, E494, "decadobl_complex_ring_E");
   E768 : Short_Integer; pragma Import (Ada, E768, "decadobl_complex_laurentials_E");
   E493 : Short_Integer; pragma Import (Ada, E493, "decadobl_complex_polynomials_E");
   E734 : Short_Integer; pragma Import (Ada, E734, "decadobl_complex_series_ring_E");
   E1459 : Short_Integer; pragma Import (Ada, E1459, "decadobl_complex_series_io_E");
   E1477 : Short_Integer; pragma Import (Ada, E1477, "decadobl_complex_linear_solvers_E");
   E715 : Short_Integer; pragma Import (Ada, E715, "decadobl_coefficient_homotopy_E");
   E1487 : Short_Integer; pragma Import (Ada, E1487, "decadobl_complex_vector_series_E");
   E1479 : Short_Integer; pragma Import (Ada, E1479, "decadobl_complex_matrix_series_E");
   E750 : Short_Integer; pragma Import (Ada, E750, "decadobl_cseries_polynomials_E");
   E1489 : Short_Integer; pragma Import (Ada, E1489, "decadobl_echelon_forms_E");
   E752 : Short_Integer; pragma Import (Ada, E752, "decadobl_homotopy_E");
   E773 : Short_Integer; pragma Import (Ada, E773, "decadobl_mathematical_functions_E");
   E1151 : Short_Integer; pragma Import (Ada, E1151, "decadobl_complex_numbers_polar_E");
   E2492 : Short_Integer; pragma Import (Ada, E2492, "decadobl_complex_algebraic_series_E");
   E1481 : Short_Integer; pragma Import (Ada, E1481, "decadobl_complex_qr_least_squares_E");
   E2494 : Short_Integer; pragma Import (Ada, E2494, "decadobl_complex_series_norms_E");
   E1483 : Short_Integer; pragma Import (Ada, E1483, "decadobl_complex_singular_values_E");
   E1500 : Short_Integer; pragma Import (Ada, E1500, "decadobl_complex_vector_norms_E");
   E2490 : Short_Integer; pragma Import (Ada, E2490, "decadobl_cseries_vector_norms_E");
   E770 : Short_Integer; pragma Import (Ada, E770, "decadobl_random_numbers_E");
   E1502 : Short_Integer; pragma Import (Ada, E1502, "decadobl_random_vectors_E");
   E1491 : Short_Integer; pragma Import (Ada, E1491, "decadobl_interpolating_cseries_E");
   E1475 : Short_Integer; pragma Import (Ada, E1475, "decadobl_series_matrix_solvers_E");
   E1473 : Short_Integer; pragma Import (Ada, E1473, "decadobl_newton_convolutions_E");
   E1471 : Short_Integer; pragma Import (Ada, E1471, "decadobl_newton_convolution_steps_E");
   E512 : Short_Integer; pragma Import (Ada, E512, "hexa_double_numbers_E");
   E680 : Short_Integer; pragma Import (Ada, E680, "binomial_coefficients_E");
   E1457 : Short_Integer; pragma Import (Ada, E1457, "decadobl_complex_series_functions_E");
   E678 : Short_Integer; pragma Import (Ada, E678, "dobldobl_complex_series_functions_E");
   E676 : Short_Integer; pragma Import (Ada, E676, "dobldobl_cseries_vector_functions_E");
   E837 : Short_Integer; pragma Import (Ada, E837, "hexa_double_constants_E");
   E797 : Short_Integer; pragma Import (Ada, E797, "hexa_double_numbers_io_E");
   E510 : Short_Integer; pragma Import (Ada, E510, "hexa_double_ring_E");
   E830 : Short_Integer; pragma Import (Ada, E830, "hexa_double_polynomials_E");
   E824 : Short_Integer; pragma Import (Ada, E824, "hexadobl_complex_numbers_io_E");
   E507 : Short_Integer; pragma Import (Ada, E507, "hexadobl_complex_ring_E");
   E834 : Short_Integer; pragma Import (Ada, E834, "hexadobl_complex_laurentials_E");
   E506 : Short_Integer; pragma Import (Ada, E506, "hexadobl_complex_polynomials_E");
   E800 : Short_Integer; pragma Import (Ada, E800, "hexadobl_complex_series_ring_E");
   E1514 : Short_Integer; pragma Import (Ada, E1514, "hexadobl_complex_series_io_E");
   E1541 : Short_Integer; pragma Import (Ada, E1541, "hexadobl_complex_linear_solvers_E");
   E781 : Short_Integer; pragma Import (Ada, E781, "hexadobl_coefficient_homotopy_E");
   E1551 : Short_Integer; pragma Import (Ada, E1551, "hexadobl_complex_vector_series_E");
   E1543 : Short_Integer; pragma Import (Ada, E1543, "hexadobl_complex_matrix_series_E");
   E816 : Short_Integer; pragma Import (Ada, E816, "hexadobl_cseries_polynomials_E");
   E1553 : Short_Integer; pragma Import (Ada, E1553, "hexadobl_echelon_forms_E");
   E818 : Short_Integer; pragma Import (Ada, E818, "hexadobl_homotopy_E");
   E839 : Short_Integer; pragma Import (Ada, E839, "hexadobl_mathematical_functions_E");
   E1175 : Short_Integer; pragma Import (Ada, E1175, "hexadobl_complex_numbers_polar_E");
   E1545 : Short_Integer; pragma Import (Ada, E1545, "hexadobl_complex_qr_least_squares_E");
   E1512 : Short_Integer; pragma Import (Ada, E1512, "hexadobl_complex_series_functions_E");
   E1547 : Short_Integer; pragma Import (Ada, E1547, "hexadobl_complex_singular_values_E");
   E1564 : Short_Integer; pragma Import (Ada, E1564, "hexadobl_complex_vector_norms_E");
   E836 : Short_Integer; pragma Import (Ada, E836, "hexadobl_random_numbers_E");
   E1566 : Short_Integer; pragma Import (Ada, E1566, "hexadobl_random_vectors_E");
   E1555 : Short_Integer; pragma Import (Ada, E1555, "hexadobl_interpolating_cseries_E");
   E1539 : Short_Integer; pragma Import (Ada, E1539, "hexadobl_series_matrix_solvers_E");
   E1537 : Short_Integer; pragma Import (Ada, E1537, "hexadobl_newton_convolutions_E");
   E1535 : Short_Integer; pragma Import (Ada, E1535, "hexadobl_newton_convolution_steps_E");
   E1257 : Short_Integer; pragma Import (Ada, E1257, "multprec_decadobl_convertors_E");
   E1303 : Short_Integer; pragma Import (Ada, E1303, "multprec_hexadobl_convertors_E");
   E1636 : Short_Integer; pragma Import (Ada, E1636, "octodobl_complex_series_functions_E");
   E1816 : Short_Integer; pragma Import (Ada, E1816, "pentdobl_complex_series_functions_E");
   E1994 : Short_Integer; pragma Import (Ada, E1994, "quad_double_constants_E");
   E2004 : Short_Integer; pragma Import (Ada, E2004, "quad_double_numbers_io_E");
   E1376 : Short_Integer; pragma Import (Ada, E1376, "multprec_quaddobl_convertors_E");
   E1584 : Short_Integer; pragma Import (Ada, E1584, "numbers_io_E");
   E043 : Short_Integer; pragma Import (Ada, E043, "continuation_parameters_io_E");
   E1749 : Short_Integer; pragma Import (Ada, E1749, "dobldobl_quad_parameters_E");
   E1753 : Short_Integer; pragma Import (Ada, E1753, "dobldobl_quad_turn_points_E");
   E925 : Short_Integer; pragma Import (Ada, E925, "drivers_for_symmetry_group_io_E");
   E703 : Short_Integer; pragma Import (Ada, E703, "homotopy_continuation_parameters_io_E");
   E1085 : Short_Integer; pragma Import (Ada, E1085, "make_input_planes_E");
   E1211 : Short_Integer; pragma Import (Ada, E1211, "multprec_complex_laur_systems_io_E");
   E079 : Short_Integer; pragma Import (Ada, E079, "dobldobl_complex_laur_systems_io_E");
   E1731 : Short_Integer; pragma Import (Ada, E1731, "octodobl_complex_laur_systems_io_E");
   E1774 : Short_Integer; pragma Import (Ada, E1774, "partitions_of_sets_of_unknowns_io_E");
   E1911 : Short_Integer; pragma Import (Ada, E1911, "pentdobl_complex_laur_systems_io_E");
   E1959 : Short_Integer; pragma Import (Ada, E1959, "polyhedral_coefficient_parameters_E");
   E2015 : Short_Integer; pragma Import (Ada, E2015, "quad_double_ring_E");
   E2012 : Short_Integer; pragma Import (Ada, E2012, "quad_double_polynomials_E");
   E1923 : Short_Integer; pragma Import (Ada, E1923, "numerical_tropisms_container_E");
   E2073 : Short_Integer; pragma Import (Ada, E2073, "quaddobl_complex_numbers_io_E");
   E2100 : Short_Integer; pragma Import (Ada, E2100, "quaddobl_complex_ring_E");
   E2035 : Short_Integer; pragma Import (Ada, E2035, "quaddobl_bracket_polynomials_E");
   E2037 : Short_Integer; pragma Import (Ada, E2037, "quaddobl_bracket_systems_E");
   E2059 : Short_Integer; pragma Import (Ada, E2059, "quaddobl_complex_laurentials_E");
   E2095 : Short_Integer; pragma Import (Ada, E2095, "quaddobl_complex_polynomials_E");
   E1095 : Short_Integer; pragma Import (Ada, E1095, "matrix_indeterminates_E");
   E2082 : Short_Integer; pragma Import (Ada, E2082, "quaddobl_complex_poly_ring_E");
   E319 : Short_Integer; pragma Import (Ada, E319, "exponent_vectors_E");
   E333 : Short_Integer; pragma Import (Ada, E333, "floating_lifting_functions_E");
   E397 : Short_Integer; pragma Import (Ada, E397, "induced_permutations_E");
   E3751 : Short_Integer; pragma Import (Ada, E3751, "polynomial_drops_E");
   E2126 : Short_Integer; pragma Import (Ada, E2126, "quaddobl_complex_term_lists_E");
   E2128 : Short_Integer; pragma Import (Ada, E2128, "quaddobl_complex_to_real_poly_E");
   E3479 : Short_Integer; pragma Import (Ada, E3479, "assignments_in_ada_and_c_E");
   E1931 : Short_Integer; pragma Import (Ada, E1931, "c_to_ada_arrays_E");
   E212 : Short_Integer; pragma Import (Ada, E212, "coefficient_supported_polynomials_E");
   E3561 : Short_Integer; pragma Import (Ada, E3561, "dcmplx_vecvecs_interface_E");
   E3767 : Short_Integer; pragma Import (Ada, E3767, "dobldobl_syspool_interface_E");
   E3579 : Short_Integer; pragma Import (Ada, E3579, "double_vecvecs_interface_E");
   E1197 : Short_Integer; pragma Import (Ada, E1197, "factored_witness_vectors_E");
   E395 : Short_Integer; pragma Import (Ada, E395, "handle_underflow_gracefully_E");
   E1127 : Short_Integer; pragma Import (Ada, E1127, "monodromy_partitions_E");
   E3677 : Short_Integer; pragma Import (Ada, E3677, "numerical_tropisms_interface_E");
   E1919 : Short_Integer; pragma Import (Ada, E1919, "permute_operations_E");
   E937 : Short_Integer; pragma Import (Ada, E937, "equivariant_polynomial_systems_E");
   E941 : Short_Integer; pragma Import (Ada, E941, "generating_mixed_cells_E");
   E951 : Short_Integer; pragma Import (Ada, E951, "linear_symmetric_reduction_E");
   E1737 : Short_Integer; pragma Import (Ada, E1737, "orbits_of_solutions_E");
   E1077 : Short_Integer; pragma Import (Ada, E1077, "drivers_for_orbits_of_solutions_E");
   E1917 : Short_Integer; pragma Import (Ada, E1917, "permutations_of_faces_E");
   E939 : Short_Integer; pragma Import (Ada, E939, "faces_of_symmetric_polytopes_E");
   E1955 : Short_Integer; pragma Import (Ada, E1955, "planes_and_polynomials_E");
   E1343 : Short_Integer; pragma Import (Ada, E1343, "multprec_membership_tests_E");
   E2264 : Short_Integer; pragma Import (Ada, E2264, "quaddobl_complex_equality_tests_E");
   E991 : Short_Integer; pragma Import (Ada, E991, "checker_localization_patterns_E");
   E999 : Short_Integer; pragma Import (Ada, E999, "checker_posets_E");
   E1001 : Short_Integer; pragma Import (Ada, E1001, "checker_posets_io_E");
   E1015 : Short_Integer; pragma Import (Ada, E1015, "intersection_posets_E");
   E1008 : Short_Integer; pragma Import (Ada, E1008, "dobldobl_solution_posets_E");
   E1017 : Short_Integer; pragma Import (Ada, E1017, "intersection_posets_io_E");
   E2558 : Short_Integer; pragma Import (Ada, E2558, "affine_transformations_E");
   E2222 : Short_Integer; pragma Import (Ada, E2222, "quaddobl_complex_row_reduction_E");
   E2111 : Short_Integer; pragma Import (Ada, E2111, "quaddobl_complex_series_ring_E");
   E3821 : Short_Integer; pragma Import (Ada, E3821, "quaddobl_complex_vector_strings_E");
   E2108 : Short_Integer; pragma Import (Ada, E2108, "quaddobl_complex_series_io_E");
   E2063 : Short_Integer; pragma Import (Ada, E2063, "quaddobl_complex_linear_solvers_E");
   E1029 : Short_Integer; pragma Import (Ada, E1029, "evaluated_minors_E");
   E2041 : Short_Integer; pragma Import (Ada, E2041, "quaddobl_coefficient_homotopy_E");
   E2130 : Short_Integer; pragma Import (Ada, E2130, "quaddobl_complex_veclists_E");
   E2354 : Short_Integer; pragma Import (Ada, E2354, "quaddobl_complex_vector_series_E");
   E2352 : Short_Integer; pragma Import (Ada, E2352, "quaddobl_complex_matrix_series_E");
   E2162 : Short_Integer; pragma Import (Ada, E2162, "quaddobl_cseries_polynomials_E");
   E2356 : Short_Integer; pragma Import (Ada, E2356, "quaddobl_echelon_forms_E");
   E3851 : Short_Integer; pragma Import (Ada, E3851, "quaddobl_embed_laurentials_E");
   E2184 : Short_Integer; pragma Import (Ada, E2184, "quaddobl_embed_polynomials_E");
   E2290 : Short_Integer; pragma Import (Ada, E2290, "quaddobl_extrapolators_E");
   E2641 : Short_Integer; pragma Import (Ada, E2641, "quaddobl_hessian_updaters_E");
   E2196 : Short_Integer; pragma Import (Ada, E2196, "quaddobl_homotopy_E");
   E2212 : Short_Integer; pragma Import (Ada, E2212, "quaddobl_jacobian_trees_E");
   E2188 : Short_Integer; pragma Import (Ada, E2188, "quaddobl_deflation_matrices_E");
   E2186 : Short_Integer; pragma Import (Ada, E2186, "quaddobl_evaluate_deflation_E");
   E2190 : Short_Integer; pragma Import (Ada, E2190, "quaddobl_evaluate_deflation_io_E");
   E2214 : Short_Integer; pragma Import (Ada, E2214, "quaddobl_laur_poly_convertors_E");
   E2216 : Short_Integer; pragma Import (Ada, E2216, "quaddobl_laurent_homotopy_E");
   E3529 : Short_Integer; pragma Import (Ada, E3529, "quaddobl_laursys_container_E");
   E2440 : Short_Integer; pragma Import (Ada, E2440, "quaddobl_linear_reduction_E");
   E2226 : Short_Integer; pragma Import (Ada, E2226, "quaddobl_mathematical_functions_E");
   E1957 : Short_Integer; pragma Import (Ada, E1957, "polyhedral_coefficient_homotopies_E");
   E2302 : Short_Integer; pragma Import (Ada, E2302, "quad_double_eigenvalues_E");
   E2312 : Short_Integer; pragma Import (Ada, E2312, "quad_double_qr_least_squares_E");
   E2304 : Short_Integer; pragma Import (Ada, E2304, "quad_double_two_norms_E");
   E2262 : Short_Integer; pragma Import (Ada, E2262, "quad_double_vector_norms_E");
   E2075 : Short_Integer; pragma Import (Ada, E2075, "quaddobl_complex_numbers_polar_E");
   E2462 : Short_Integer; pragma Import (Ada, E2462, "quaddobl_complex_algebraic_series_E");
   E2099 : Short_Integer; pragma Import (Ada, E2099, "quaddobl_complex_qr_least_squares_E");
   E2106 : Short_Integer; pragma Import (Ada, E2106, "quaddobl_complex_series_functions_E");
   E2464 : Short_Integer; pragma Import (Ada, E2464, "quaddobl_complex_series_norms_E");
   E2120 : Short_Integer; pragma Import (Ada, E2120, "quaddobl_complex_singular_values_E");
   E2639 : Short_Integer; pragma Import (Ada, E2639, "quaddobl_complex_circuits_E");
   E2134 : Short_Integer; pragma Import (Ada, E2134, "quaddobl_complex_vector_norms_E");
   E849 : Short_Integer; pragma Import (Ada, E849, "hyperplane_solution_scaling_E");
   E2164 : Short_Integer; pragma Import (Ada, E2164, "quaddobl_cseries_vector_functions_E");
   E2460 : Short_Integer; pragma Import (Ada, E2460, "quaddobl_cseries_vector_norms_E");
   E2182 : Short_Integer; pragma Import (Ada, E2182, "quaddobl_durand_kerner_E");
   E2228 : Short_Integer; pragma Import (Ada, E2228, "quaddobl_matrix_inversion_E");
   E2230 : Short_Integer; pragma Import (Ada, E2230, "quaddobl_mixed_residuals_E");
   E705 : Short_Integer; pragma Import (Ada, E705, "homotopy_mixed_residuals_E");
   E2332 : Short_Integer; pragma Import (Ada, E2332, "quaddobl_monomial_evaluations_E");
   E2246 : Short_Integer; pragma Import (Ada, E2246, "quaddobl_nullity_polynomials_E");
   E2244 : Short_Integer; pragma Import (Ada, E2244, "quaddobl_nullity_matrices_E");
   E2248 : Short_Integer; pragma Import (Ada, E2248, "quaddobl_numerical_rank_E");
   E2170 : Short_Integer; pragma Import (Ada, E2170, "quaddobl_complex_newton_steps_E");
   E2406 : Short_Integer; pragma Import (Ada, E2406, "quaddobl_nvariate_interpolators_E");
   E2276 : Short_Integer; pragma Import (Ada, E2276, "quaddobl_point_coordinates_E");
   E2280 : Short_Integer; pragma Import (Ada, E2280, "quaddobl_poly_laur_convertors_E");
   E3531 : Short_Integer; pragma Import (Ada, E3531, "quaddobl_polysys_container_E");
   E2408 : Short_Integer; pragma Import (Ada, E2408, "quaddobl_power_traces_E");
   E2292 : Short_Integer; pragma Import (Ada, E2292, "quaddobl_quad_parameters_E");
   E2314 : Short_Integer; pragma Import (Ada, E2314, "quaddobl_random_numbers_E");
   E2224 : Short_Integer; pragma Import (Ada, E2224, "quaddobl_lined_hypersurfaces_E");
   E2310 : Short_Integer; pragma Import (Ada, E2310, "quaddobl_random_matrices_E");
   E3757 : Short_Integer; pragma Import (Ada, E3757, "quaddobl_random_polynomials_E");
   E2316 : Short_Integer; pragma Import (Ada, E2316, "quaddobl_random_vectors_E");
   E1199 : Short_Integer; pragma Import (Ada, E1199, "monodromy_polynomial_breakup_E");
   E2200 : Short_Integer; pragma Import (Ada, E2200, "quaddobl_hypersurface_witsets_E");
   E2358 : Short_Integer; pragma Import (Ada, E2358, "quaddobl_interpolating_cseries_E");
   E2274 : Short_Integer; pragma Import (Ada, E2274, "quaddobl_plane_representations_E");
   E2234 : Short_Integer; pragma Import (Ada, E2234, "quaddobl_moving_planes_E");
   E2334 : Short_Integer; pragma Import (Ada, E2334, "quaddobl_polynomial_flatteners_E");
   E2318 : Short_Integer; pragma Import (Ada, E2318, "quaddobl_rational_approximations_E");
   E2250 : Short_Integer; pragma Import (Ada, E2250, "quaddobl_pade_approximants_E");
   E2322 : Short_Integer; pragma Import (Ada, E2322, "quaddobl_rescaling_coordinates_E");
   E2350 : Short_Integer; pragma Import (Ada, E2350, "quaddobl_series_matrix_solvers_E");
   E1173 : Short_Integer; pragma Import (Ada, E1173, "hessian_convolution_circuits_E");
   E1979 : Short_Integer; pragma Import (Ada, E1979, "hyperplane_convolution_scaling_E");
   E1177 : Short_Integer; pragma Import (Ada, E1177, "jacobian_convolution_circuits_E");
   E2242 : Short_Integer; pragma Import (Ada, E2242, "quaddobl_newton_convolutions_E");
   E2240 : Short_Integer; pragma Import (Ada, E2240, "quaddobl_newton_convolution_steps_E");
   E2388 : Short_Integer; pragma Import (Ada, E2388, "quaddobl_speelpenning_products_E");
   E2330 : Short_Integer; pragma Import (Ada, E2330, "quaddobl_gradient_evaluations_E");
   E3721 : Short_Integer; pragma Import (Ada, E3721, "quaddobl_systems_pool_E");
   E3769 : Short_Integer; pragma Import (Ada, E3769, "quaddobl_syspool_interface_E");
   E2412 : Short_Integer; pragma Import (Ada, E2412, "quaddobl_univariate_interpolators_E");
   E2414 : Short_Integer; pragma Import (Ada, E2414, "quaddobl_vector_splitters_E");
   E2039 : Short_Integer; pragma Import (Ada, E2039, "quaddobl_coefficient_convolutions_E");
   E2418 : Short_Integer; pragma Import (Ada, E2418, "quaddobl_vlprs_tables_E");
   E2416 : Short_Integer; pragma Import (Ada, E2416, "quaddobl_vlprs_algorithm_E");
   E2258 : Short_Integer; pragma Import (Ada, E2258, "directions_of_quaddobl_paths_E");
   E2420 : Short_Integer; pragma Import (Ada, E2420, "random_coefficient_systems_E");
   E2472 : Short_Integer; pragma Import (Ada, E2472, "residual_convolution_circuits_E");
   E2478 : Short_Integer; pragma Import (Ada, E2478, "root_counters_output_E");
   E2482 : Short_Integer; pragma Import (Ada, E2482, "root_refining_parameters_E");
   E2524 : Short_Integer; pragma Import (Ada, E2524, "sagbi_homotopies_E");
   E2576 : Short_Integer; pragma Import (Ada, E2576, "shift_coefficient_convolutions_E");
   E2578 : Short_Integer; pragma Import (Ada, E2578, "shift_convolution_circuits_E");
   E2580 : Short_Integer; pragma Import (Ada, E2580, "shuffle_polynomials_E");
   E2655 : Short_Integer; pragma Import (Ada, E2655, "standard_complex_exponentiation_E");
   E250 : Short_Integer; pragma Import (Ada, E250, "dobldobl_complex_exponentiation_E");
   E248 : Short_Integer; pragma Import (Ada, E248, "dobldobl_binomial_systems_E");
   E246 : Short_Integer; pragma Import (Ada, E246, "dobldobl_binomial_solvers_E");
   E256 : Short_Integer; pragma Import (Ada, E256, "dobldobl_simplex_systems_E");
   E244 : Short_Integer; pragma Import (Ada, E244, "dobldobl_simplex_solvers_E");
   E242 : Short_Integer; pragma Import (Ada, E242, "dobldobl_simpomial_solvers_E");
   E2043 : Short_Integer; pragma Import (Ada, E2043, "quaddobl_complex_exponentiation_E");
   E2615 : Short_Integer; pragma Import (Ada, E2615, "standard_binomial_systems_E");
   E2613 : Short_Integer; pragma Import (Ada, E2613, "standard_binomial_solvers_E");
   E2673 : Short_Integer; pragma Import (Ada, E2673, "standard_complex_laur_systems_io_E");
   E3573 : Short_Integer; pragma Import (Ada, E3573, "double_puiseux_structures_E");
   E3581 : Short_Integer; pragma Import (Ada, E3581, "laurent_homotopy_derivatives_E");
   E3567 : Short_Integer; pragma Import (Ada, E3567, "double_newton_puiseux_E");
   E3565 : Short_Integer; pragma Import (Ada, E3565, "double_puiseux_interface_E");
   E1770 : Short_Integer; pragma Import (Ada, E1770, "parse_strings_to_polynomials_E");
   E2738 : Short_Integer; pragma Import (Ada, E2738, "standard_complex_series_functions_E");
   E2808 : Short_Integer; pragma Import (Ada, E2808, "standard_cseries_vector_functions_E");
   E2846 : Short_Integer; pragma Import (Ada, E2846, "standard_exponent_transformations_E");
   E2617 : Short_Integer; pragma Import (Ada, E2617, "standard_binomial_varieties_E");
   E2619 : Short_Integer; pragma Import (Ada, E2619, "standard_binomial_varieties_io_E");
   E145 : Short_Integer; pragma Import (Ada, E145, "dobldobl_monomial_maps_E");
   E2232 : Short_Integer; pragma Import (Ada, E2232, "quaddobl_monomial_maps_E");
   E2989 : Short_Integer; pragma Import (Ada, E2989, "standard_jacobian_evaluations_E");
   E214 : Short_Integer; pragma Import (Ada, E214, "dobldobl_jacobian_evaluations_E");
   E210 : Short_Integer; pragma Import (Ada, E210, "dobldobl_jacobian_circuits_E");
   E2328 : Short_Integer; pragma Import (Ada, E2328, "quaddobl_jacobian_evaluations_E");
   E2326 : Short_Integer; pragma Import (Ada, E2326, "quaddobl_jacobian_circuits_E");
   E3021 : Short_Integer; pragma Import (Ada, E3021, "standard_membership_tests_E");
   E3029 : Short_Integer; pragma Import (Ada, E3029, "standard_monomial_maps_E");
   E3671 : Short_Integer; pragma Import (Ada, E3671, "monomial_maps_container_E");
   E3027 : Short_Integer; pragma Import (Ada, E3027, "standard_monomial_map_filters_E");
   E3031 : Short_Integer; pragma Import (Ada, E3031, "standard_monomial_maps_io_E");
   E3108 : Short_Integer; pragma Import (Ada, E3108, "standard_monomial_map_solvers_E");
   E3102 : Short_Integer; pragma Import (Ada, E3102, "standard_permanent_factors_E");
   E061 : Short_Integer; pragma Import (Ada, E061, "black_box_binomial_solvers_E");
   E3669 : Short_Integer; pragma Import (Ada, E3669, "monomial_maps_interface_E");
   E3140 : Short_Integer; pragma Import (Ada, E3140, "standard_quad_parameters_E");
   E3148 : Short_Integer; pragma Import (Ada, E3148, "standard_quad_turn_points_E");
   E3186 : Short_Integer; pragma Import (Ada, E3186, "standard_simplex_systems_E");
   E3184 : Short_Integer; pragma Import (Ada, E3184, "standard_simplex_solvers_E");
   E3182 : Short_Integer; pragma Import (Ada, E3182, "standard_simpomial_solvers_E");
   E3196 : Short_Integer; pragma Import (Ada, E3196, "standard_solution_posets_E");
   E3212 : Short_Integer; pragma Import (Ada, E3212, "standard_subspace_restrictions_E");
   E3248 : Short_Integer; pragma Import (Ada, E3248, "start_flag_homotopies_E");
   E3258 : Short_Integer; pragma Import (Ada, E3258, "supports_of_polynomial_systems_E");
   E915 : Short_Integer; pragma Import (Ada, E915, "demics_translated_setup_E");
   E898 : Short_Integer; pragma Import (Ada, E898, "demics_translated_E");
   E533 : Short_Integer; pragma Import (Ada, E533, "driver_to_rank_supports_E");
   E943 : Short_Integer; pragma Import (Ada, E943, "generic_position_E");
   E3637 : Short_Integer; pragma Import (Ada, E3637, "giftwrap_interface_E");
   E1945 : Short_Integer; pragma Import (Ada, E1945, "pipelined_cell_indices_E");
   E2609 : Short_Integer; pragma Import (Ada, E2609, "standard_binomial_factors_E");
   E2611 : Short_Integer; pragma Import (Ada, E2611, "standard_binomial_factors_io_E");
   E3136 : Short_Integer; pragma Import (Ada, E3136, "standard_puiseux_certificates_E");
   E3138 : Short_Integer; pragma Import (Ada, E3138, "standard_puiseux_certificates_io_E");
   E587 : Short_Integer; pragma Import (Ada, E587, "driver_for_common_factor_E");
   E3264 : Short_Integer; pragma Import (Ada, E3264, "symbol_table_order_E");
   E3266 : Short_Integer; pragma Import (Ada, E3266, "symbolic_minor_equations_E");
   E1586 : Short_Integer; pragma Import (Ada, E1586, "numeric_minor_equations_E");
   E1027 : Short_Integer; pragma Import (Ada, E1027, "determinantal_systems_E");
   E1927 : Short_Integer; pragma Import (Ada, E1927, "pieri_homotopies_E");
   E2468 : Short_Integer; pragma Import (Ada, E2468, "remember_numeric_minors_E");
   E3268 : Short_Integer; pragma Import (Ada, E3268, "symbolic_schubert_conditions_E");
   E2574 : Short_Integer; pragma Import (Ada, E2574, "setup_flag_homotopies_E");
   E2476 : Short_Integer; pragma Import (Ada, E2476, "flag_transformations_E");
   E3274 : Short_Integer; pragma Import (Ada, E3274, "symmetric_lifting_functions_E");
   E3280 : Short_Integer; pragma Import (Ada, E3280, "symmetric_randomize_E");
   E3282 : Short_Integer; pragma Import (Ada, E3282, "symmetric_set_structure_E");
   E3298 : Short_Integer; pragma Import (Ada, E3298, "three_way_minima_E");
   E3314 : Short_Integer; pragma Import (Ada, E3314, "transforming_laurent_systems_E");
   E3452 : Short_Integer; pragma Import (Ada, E3452, "triple_double_constants_E");
   E3407 : Short_Integer; pragma Import (Ada, E3407, "tripdobl_mathematical_functions_E");
   E3456 : Short_Integer; pragma Import (Ada, E3456, "triple_double_numbers_io_E");
   E3336 : Short_Integer; pragma Import (Ada, E3336, "multprec_tripdobl_convertors_E");
   E3461 : Short_Integer; pragma Import (Ada, E3461, "triple_double_ring_E");
   E3460 : Short_Integer; pragma Import (Ada, E3460, "triple_double_polynomials_E");
   E740 : Short_Integer; pragma Import (Ada, E740, "decadobl_complex_numbers_cv_E");
   E760 : Short_Integer; pragma Import (Ada, E760, "decadobl_polynomial_convertors_E");
   E779 : Short_Integer; pragma Import (Ada, E779, "decadobl_complex_laurentials_io_E");
   E777 : Short_Integer; pragma Import (Ada, E777, "decadobl_complex_laur_systems_io_E");
   E806 : Short_Integer; pragma Import (Ada, E806, "hexadobl_complex_numbers_cv_E");
   E826 : Short_Integer; pragma Import (Ada, E826, "hexadobl_polynomial_convertors_E");
   E845 : Short_Integer; pragma Import (Ada, E845, "hexadobl_complex_laurentials_io_E");
   E843 : Short_Integer; pragma Import (Ada, E843, "hexadobl_complex_laur_systems_io_E");
   E2071 : Short_Integer; pragma Import (Ada, E2071, "quaddobl_complex_numbers_cv_E");
   E1590 : Short_Integer; pragma Import (Ada, E1590, "bracket_polynomial_convertors_E");
   E707 : Short_Integer; pragma Import (Ada, E707, "homotopy_newton_steps_E");
   E2284 : Short_Integer; pragma Import (Ada, E2284, "quaddobl_polynomial_convertors_E");
   E2051 : Short_Integer; pragma Import (Ada, E2051, "quaddobl_complex_laur_strings_E");
   E2061 : Short_Integer; pragma Import (Ada, E2061, "quaddobl_complex_laurentials_io_E");
   E2057 : Short_Integer; pragma Import (Ada, E2057, "quaddobl_complex_laur_systems_io_E");
   E2085 : Short_Integer; pragma Import (Ada, E2085, "quaddobl_complex_poly_strings_E");
   E2364 : Short_Integer; pragma Import (Ada, E2364, "quaddobl_pade_approximants_io_E");
   E3334 : Short_Integer; pragma Import (Ada, E3334, "tripdobl_complex_numbers_cv_E");
   E3338 : Short_Integer; pragma Import (Ada, E3338, "tripdobl_complex_numbers_io_E");
   E1510 : Short_Integer; pragma Import (Ada, E1510, "fabry_on_homotopy_helpers_E");
   E3340 : Short_Integer; pragma Import (Ada, E3340, "tripdobl_complex_numbers_polar_E");
   E3355 : Short_Integer; pragma Import (Ada, E3355, "tripdobl_complex_ring_E");
   E3431 : Short_Integer; pragma Import (Ada, E3431, "tripdobl_complex_laurentials_E");
   E3350 : Short_Integer; pragma Import (Ada, E3350, "tripdobl_complex_polynomials_E");
   E491 : Short_Integer; pragma Import (Ada, E491, "degrees_in_sets_of_unknowns_E");
   E961 : Short_Integer; pragma Import (Ada, E961, "degree_structure_E");
   E957 : Short_Integer; pragma Import (Ada, E957, "interpolating_homotopies_E");
   E955 : Short_Integer; pragma Import (Ada, E955, "interpolating_homotopies_driver_E");
   E489 : Short_Integer; pragma Import (Ada, E489, "m_homogeneous_bezout_numbers_E");
   E517 : Short_Integer; pragma Import (Ada, E517, "m_homogeneous_permanent_factors_E");
   E515 : Short_Integer; pragma Import (Ada, E515, "m_homogeneous_start_systems_E");
   E1135 : Short_Integer; pragma Import (Ada, E1135, "multi_homogeneous_start_systems_E");
   E3354 : Short_Integer; pragma Import (Ada, E3354, "tripdobl_complex_qr_least_squares_E");
   E3359 : Short_Integer; pragma Import (Ada, E3359, "tripdobl_complex_series_functions_E");
   E3364 : Short_Integer; pragma Import (Ada, E3364, "tripdobl_complex_series_ring_E");
   E3370 : Short_Integer; pragma Import (Ada, E3370, "tripdobl_complex_singular_values_E");
   E3378 : Short_Integer; pragma Import (Ada, E3378, "tripdobl_complex_vector_norms_E");
   E3382 : Short_Integer; pragma Import (Ada, E3382, "tripdobl_complex_vectors_cv_E");
   E3372 : Short_Integer; pragma Import (Ada, E3372, "tripdobl_complex_solutions_E");
   E3374 : Short_Integer; pragma Import (Ada, E3374, "tripdobl_complex_solutions_io_E");
   E3361 : Short_Integer; pragma Import (Ada, E3361, "tripdobl_complex_series_io_E");
   E3421 : Short_Integer; pragma Import (Ada, E3421, "tripdobl_complex_algebraic_series_E");
   E3423 : Short_Integer; pragma Import (Ada, E3423, "tripdobl_complex_series_norms_E");
   E1149 : Short_Integer; pragma Import (Ada, E1149, "convergence_radius_estimates_E");
   E744 : Short_Integer; pragma Import (Ada, E744, "decadobl_complex_vectors_cv_E");
   E738 : Short_Integer; pragma Import (Ada, E738, "decadobl_complex_solutions_E");
   E756 : Short_Integer; pragma Import (Ada, E756, "decadobl_complex_solutions_io_E");
   E810 : Short_Integer; pragma Import (Ada, E810, "hexadobl_complex_vectors_cv_E");
   E804 : Short_Integer; pragma Import (Ada, E804, "hexadobl_complex_solutions_E");
   E822 : Short_Integer; pragma Import (Ada, E822, "hexadobl_complex_solutions_io_E");
   E2138 : Short_Integer; pragma Import (Ada, E2138, "quaddobl_complex_vectors_cv_E");
   E2122 : Short_Integer; pragma Import (Ada, E2122, "quaddobl_complex_solutions_E");
   E3517 : Short_Integer; pragma Import (Ada, E3517, "assignments_of_solutions_E");
   E581 : Short_Integer; pragma Import (Ada, E581, "hypersurfaces_and_filters_E");
   E1987 : Short_Integer; pragma Import (Ada, E1987, "projective_transformations_E");
   E2027 : Short_Integer; pragma Import (Ada, E2027, "quaddobl_binomial_systems_E");
   E2124 : Short_Integer; pragma Import (Ada, E2124, "quaddobl_complex_solutions_io_E");
   E053 : Short_Integer; pragma Import (Ada, E053, "black_box_helpers_E");
   E1983 : Short_Integer; pragma Import (Ada, E1983, "process_io_E");
   E153 : Short_Integer; pragma Import (Ada, E153, "dobldobl_correctors_E");
   E969 : Short_Integer; pragma Import (Ada, E969, "dobldobl_intrinsic_newton_E");
   E971 : Short_Integer; pragma Import (Ada, E971, "dobldobl_intrinsic_trackers_E");
   E967 : Short_Integer; pragma Import (Ada, E967, "dobldobl_intrinsic_continuation_E");
   E159 : Short_Integer; pragma Import (Ada, E159, "dobldobl_orthogonal_correctors_E");
   E3683 : Short_Integer; pragma Import (Ada, E3683, "dobldobl_path_tracker_E");
   E147 : Short_Integer; pragma Import (Ada, E147, "dobldobl_path_trackers_E");
   E129 : Short_Integer; pragma Import (Ada, E129, "dobldobl_incfix_continuation_E");
   E167 : Short_Integer; pragma Import (Ada, E167, "dobldobl_polyhedral_continuation_E");
   E1357 : Short_Integer; pragma Import (Ada, E1357, "multprec_correctors_E");
   E3685 : Short_Integer; pragma Import (Ada, E3685, "multprec_path_tracker_E");
   E1355 : Short_Integer; pragma Import (Ada, E1355, "multprec_path_trackers_E");
   E1307 : Short_Integer; pragma Import (Ada, E1307, "multprec_incfix_continuation_E");
   E1989 : Short_Integer; pragma Import (Ada, E1989, "prompt_for_solutions_E");
   E2148 : Short_Integer; pragma Import (Ada, E2148, "quaddobl_condition_tables_E");
   E2150 : Short_Integer; pragma Import (Ada, E2150, "quaddobl_continuation_data_E");
   E2152 : Short_Integer; pragma Import (Ada, E2152, "quaddobl_continuation_data_io_E");
   E2266 : Short_Integer; pragma Import (Ada, E2266, "quaddobl_correctors_E");
   E2268 : Short_Integer; pragma Import (Ada, E2268, "quaddobl_data_on_path_E");
   E2166 : Short_Integer; pragma Import (Ada, E2166, "quaddobl_deflate_singularities_E");
   E2172 : Short_Integer; pragma Import (Ada, E2172, "quaddobl_deflation_trees_E");
   E2178 : Short_Integer; pragma Import (Ada, E2178, "quaddobl_diagonal_solutions_E");
   E2206 : Short_Integer; pragma Import (Ada, E2206, "quaddobl_intrinsic_newton_E");
   E2208 : Short_Integer; pragma Import (Ada, E2208, "quaddobl_intrinsic_solutions_E");
   E2210 : Short_Integer; pragma Import (Ada, E2210, "quaddobl_intrinsic_trackers_E");
   E2204 : Short_Integer; pragma Import (Ada, E2204, "quaddobl_intrinsic_continuation_E");
   E2218 : Short_Integer; pragma Import (Ada, E2218, "quaddobl_linear_poly_solvers_E");
   E2220 : Short_Integer; pragma Import (Ada, E2220, "quaddobl_linear_product_system_E");
   E2236 : Short_Integer; pragma Import (Ada, E2236, "quaddobl_multiple_solutions_E");
   E2238 : Short_Integer; pragma Import (Ada, E2238, "quaddobl_multiplicity_structure_E");
   E2272 : Short_Integer; pragma Import (Ada, E2272, "quaddobl_orthogonal_correctors_E");
   E2252 : Short_Integer; pragma Import (Ada, E2252, "quaddobl_parameter_solutions_E");
   E2278 : Short_Integer; pragma Import (Ada, E2278, "quaddobl_point_lists_E");
   E2288 : Short_Integer; pragma Import (Ada, E2288, "quaddobl_predictors_E");
   E2270 : Short_Integer; pragma Import (Ada, E2270, "quaddobl_dispatch_predictors_E");
   E3687 : Short_Integer; pragma Import (Ada, E3687, "quaddobl_path_tracker_E");
   E2256 : Short_Integer; pragma Import (Ada, E2256, "quaddobl_path_trackers_E");
   E2202 : Short_Integer; pragma Import (Ada, E2202, "quaddobl_incfix_continuation_E");
   E2298 : Short_Integer; pragma Import (Ada, E2298, "quaddobl_quad_trees_E");
   E2306 : Short_Integer; pragma Import (Ada, E2306, "quaddobl_quad_turn_points_io_E");
   E2300 : Short_Integer; pragma Import (Ada, E2300, "quaddobl_quad_turn_points_E");
   E2308 : Short_Integer; pragma Import (Ada, E2308, "quaddobl_radial_solvers_E");
   E2025 : Short_Integer; pragma Import (Ada, E2025, "quaddobl_binomial_solvers_E");
   E2346 : Short_Integer; pragma Import (Ada, E2346, "quaddobl_scaling_E");
   E2372 : Short_Integer; pragma Import (Ada, E2372, "quaddobl_simplex_systems_E");
   E2370 : Short_Integer; pragma Import (Ada, E2370, "quaddobl_simplex_solvers_E");
   E2368 : Short_Integer; pragma Import (Ada, E2368, "quaddobl_simpomial_solvers_E");
   E2282 : Short_Integer; pragma Import (Ada, E2282, "quaddobl_polyhedral_continuation_E");
   E2374 : Short_Integer; pragma Import (Ada, E2374, "quaddobl_solution_diagnostics_E");
   E2376 : Short_Integer; pragma Import (Ada, E2376, "quaddobl_solution_filters_E");
   E2378 : Short_Integer; pragma Import (Ada, E2378, "quaddobl_solution_manipulators_E");
   E2380 : Short_Integer; pragma Import (Ada, E2380, "quaddobl_solution_posets_E");
   E2382 : Short_Integer; pragma Import (Ada, E2382, "quaddobl_solution_splitters_E");
   E3615 : Short_Integer; pragma Import (Ada, E3615, "quaddobl_solution_strings_E");
   E3533 : Short_Integer; pragma Import (Ada, E3533, "quaddobl_solutions_container_E");
   E2384 : Short_Integer; pragma Import (Ada, E2384, "quaddobl_solutions_queue_E");
   E2390 : Short_Integer; pragma Import (Ada, E2390, "quaddobl_stable_homotopies_E");
   E3801 : Short_Integer; pragma Import (Ada, E3801, "quaddobl_witness_solutions_E");
   E2426 : Short_Integer; pragma Import (Ada, E2426, "recondition_swap_homotopies_E");
   E3713 : Short_Integer; pragma Import (Ada, E3713, "scaling_interface_E");
   E2550 : Short_Integer; pragma Import (Ada, E2550, "series_and_solutions_E");
   E694 : Short_Integer; pragma Import (Ada, E694, "homotopy_coefficient_scaling_E");
   E2586 : Short_Integer; pragma Import (Ada, E2586, "singular_values_of_hessians_E");
   E2588 : Short_Integer; pragma Import (Ada, E2588, "solution_drops_E");
   E2637 : Short_Integer; pragma Import (Ada, E2637, "standard_circuit_makers_E");
   E3096 : Short_Integer; pragma Import (Ada, E3096, "standard_correctors_E");
   E2979 : Short_Integer; pragma Import (Ada, E2979, "standard_intrinsic_newton_E");
   E2983 : Short_Integer; pragma Import (Ada, E2983, "standard_intrinsic_trackers_E");
   E2977 : Short_Integer; pragma Import (Ada, E2977, "standard_intrinsic_continuation_E");
   E3100 : Short_Integer; pragma Import (Ada, E3100, "standard_orthogonal_correctors_E");
   E3689 : Short_Integer; pragma Import (Ada, E3689, "standard_path_tracker_E");
   E3094 : Short_Integer; pragma Import (Ada, E3094, "standard_path_trackers_E");
   E2584 : Short_Integer; pragma Import (Ada, E2584, "single_polyhedral_trackers_E");
   E3733 : Short_Integer; pragma Import (Ada, E3733, "standard_solspool_interface_E");
   E3805 : Short_Integer; pragma Import (Ada, E3805, "store_witness_solutions_E");
   E3306 : Short_Integer; pragma Import (Ada, E3306, "total_degree_start_systems_E");
   E2436 : Short_Integer; pragma Import (Ada, E2436, "reduction_of_polynomial_systems_E");
   E3703 : Short_Integer; pragma Import (Ada, E3703, "reduction_interface_E");
   E3328 : Short_Integer; pragma Import (Ada, E3328, "tripdobl_complex_linear_solvers_E");
   E3324 : Short_Integer; pragma Import (Ada, E3324, "tripdobl_coefficient_homotopy_E");
   E3417 : Short_Integer; pragma Import (Ada, E3417, "tripdobl_complex_vector_series_E");
   E3415 : Short_Integer; pragma Import (Ada, E3415, "tripdobl_complex_matrix_series_E");
   E3397 : Short_Integer; pragma Import (Ada, E3397, "tripdobl_cseries_polynomials_E");
   E1455 : Short_Integer; pragma Import (Ada, E1455, "complex_series_and_polynomials_E");
   E2546 : Short_Integer; pragma Import (Ada, E2546, "series_and_homotopies_E");
   E3064 : Short_Integer; pragma Import (Ada, E3064, "standard_newton_matrix_series_E");
   E2488 : Short_Integer; pragma Import (Ada, E2488, "decadobl_newton_matrix_series_E");
   E2450 : Short_Integer; pragma Import (Ada, E2450, "dobldobl_newton_matrix_series_E");
   E2496 : Short_Integer; pragma Import (Ada, E2496, "octodobl_newton_matrix_series_E");
   E2504 : Short_Integer; pragma Import (Ada, E2504, "pentdobl_newton_matrix_series_E");
   E2458 : Short_Integer; pragma Import (Ada, E2458, "quaddobl_newton_matrix_series_E");
   E3419 : Short_Integer; pragma Import (Ada, E3419, "tripdobl_cseries_vector_norms_E");
   E3437 : Short_Integer; pragma Import (Ada, E3437, "tripdobl_echelon_forms_E");
   E3403 : Short_Integer; pragma Import (Ada, E3403, "tripdobl_homotopy_E");
   E3427 : Short_Integer; pragma Import (Ada, E3427, "tripdobl_polynomial_convertors_E");
   E3451 : Short_Integer; pragma Import (Ada, E3451, "tripdobl_complex_laurentials_io_E");
   E3449 : Short_Integer; pragma Import (Ada, E3449, "tripdobl_complex_laur_systems_io_E");
   E3433 : Short_Integer; pragma Import (Ada, E3433, "tripdobl_random_numbers_E");
   E847 : Short_Integer; pragma Import (Ada, E847, "homogenization_E");
   E871 : Short_Integer; pragma Import (Ada, E871, "drivers_for_homotopy_creation_E");
   E1137 : Short_Integer; pragma Import (Ada, E1137, "multi_projective_transformations_E");
   E1574 : Short_Integer; pragma Import (Ada, E1574, "multitasked_algodiff_convolutions_E");
   E3443 : Short_Integer; pragma Import (Ada, E3443, "tripdobl_random_vectors_E");
   E3439 : Short_Integer; pragma Import (Ada, E3439, "tripdobl_interpolating_cseries_E");
   E3435 : Short_Integer; pragma Import (Ada, E3435, "tripdobl_series_matrix_solvers_E");
   E1580 : Short_Integer; pragma Import (Ada, E1580, "multitasked_series_linearization_E");
   E3411 : Short_Integer; pragma Import (Ada, E3411, "tripdobl_newton_convolutions_E");
   E1572 : Short_Integer; pragma Import (Ada, E1572, "multitasked_newton_convolutions_E");
   E1570 : Short_Integer; pragma Import (Ada, E1570, "multitasked_power_newton_E");
   E3409 : Short_Integer; pragma Import (Ada, E3409, "tripdobl_newton_convolution_steps_E");
   E3413 : Short_Integer; pragma Import (Ada, E3413, "tripdobl_newton_matrix_series_E");
   E3469 : Short_Integer; pragma Import (Ada, E3469, "unfolding_subdivisions_E");
   E3322 : Short_Integer; pragma Import (Ada, E3322, "triangulations_and_subdivisions_E");
   E3471 : Short_Integer; pragma Import (Ada, E3471, "unix_command_line_E");
   E3559 : Short_Integer; pragma Import (Ada, E3559, "use_avvcon_E");
   E3635 : Short_Integer; pragma Import (Ada, E3635, "use_giftwrap_E");
   E3667 : Short_Integer; pragma Import (Ada, E3667, "use_mapcon_E");
   E3675 : Short_Integer; pragma Import (Ada, E3675, "use_numbtrop_E");
   E3701 : Short_Integer; pragma Import (Ada, E3701, "use_reduction_E");
   E3711 : Short_Integer; pragma Import (Ada, E3711, "use_scaling_E");
   E3731 : Short_Integer; pragma Import (Ada, E3731, "use_solpool_E");
   E3807 : Short_Integer; pragma Import (Ada, E3807, "valid_vector_checks_E");
   E2909 : Short_Integer; pragma Import (Ada, E2909, "standard_incfix_continuation_E");
   E1745 : Short_Integer; pragma Import (Ada, E1745, "complex_convex_continuation_E");
   E873 : Short_Integer; pragma Import (Ada, E873, "drivers_for_path_directions_E");
   E3827 : Short_Integer; pragma Import (Ada, E3827, "varbprec_homotopy_E");
   E3829 : Short_Integer; pragma Import (Ada, E3829, "varbprec_matrix_conversions_E");
   E3831 : Short_Integer; pragma Import (Ada, E3831, "varbprec_polynomial_evaluations_E");
   E3833 : Short_Integer; pragma Import (Ada, E3833, "varbprec_vecvec_conversions_E");
   E3290 : Short_Integer; pragma Import (Ada, E3290, "system_convolution_circuits_E");
   E3823 : Short_Integer; pragma Import (Ada, E3823, "varbprec_complex_linear_solvers_E");
   E3825 : Short_Integer; pragma Import (Ada, E3825, "varbprec_complex_newton_steps_E");
   E3815 : Short_Integer; pragma Import (Ada, E3815, "varbprec_corrector_steps_E");
   E3811 : Short_Integer; pragma Import (Ada, E3811, "varbprec_path_tracker_E");
   E3837 : Short_Integer; pragma Import (Ada, E3837, "verification_of_solutions_E");
   E3841 : Short_Integer; pragma Import (Ada, E3841, "verify_solution_maps_E");
   E3843 : Short_Integer; pragma Import (Ada, E3843, "volumes_E");
   E3847 : Short_Integer; pragma Import (Ada, E3847, "witness_sets_E");
   E553 : Short_Integer; pragma Import (Ada, E553, "dobldobl_diagonal_polynomials_E");
   E599 : Short_Integer; pragma Import (Ada, E599, "homotopy_membership_target_E");
   E2176 : Short_Integer; pragma Import (Ada, E2176, "quaddobl_diagonal_polynomials_E");
   E2824 : Short_Integer; pragma Import (Ada, E2824, "standard_diagonal_polynomials_E");
   E551 : Short_Integer; pragma Import (Ada, E551, "extrinsic_diagonal_homotopies_E");
   E3863 : Short_Integer; pragma Import (Ada, E3863, "wrapped_solution_vectors_E");
   E3865 : Short_Integer; pragma Import (Ada, E3865, "write_factors_E");
   E2721 : Short_Integer; pragma Import (Ada, E2721, "standard_complex_polynomials_io_E");
   E1239 : Short_Integer; pragma Import (Ada, E1239, "multprec_complex_polynomials_io_E");
   E729 : Short_Integer; pragma Import (Ada, E729, "decadobl_complex_polynomials_io_E");
   E101 : Short_Integer; pragma Import (Ada, E101, "dobldobl_complex_polynomials_io_E");
   E795 : Short_Integer; pragma Import (Ada, E795, "hexadobl_complex_polynomials_io_E");
   E1235 : Short_Integer; pragma Import (Ada, E1235, "multprec_complex_poly_systems_io_E");
   E727 : Short_Integer; pragma Import (Ada, E727, "decadobl_complex_poly_systems_io_E");
   E775 : Short_Integer; pragma Import (Ada, E775, "decadobl_system_and_solutions_io_E");
   E097 : Short_Integer; pragma Import (Ada, E097, "dobldobl_complex_poly_systems_io_E");
   E305 : Short_Integer; pragma Import (Ada, E305, "dobldobl_system_and_solutions_io_E");
   E270 : Short_Integer; pragma Import (Ada, E270, "dobldobl_system_readers_E");
   E1969 : Short_Integer; pragma Import (Ada, E1969, "dobldobl_tableau_formats_E");
   E1075 : Short_Integer; pragma Import (Ada, E1075, "dobldobl_tracked_solutions_io_E");
   E1765 : Short_Integer; pragma Import (Ada, E1765, "double_double_poly_systems_io_E");
   E1751 : Short_Integer; pragma Import (Ada, E1751, "dobldobl_quad_sweepers_E");
   E793 : Short_Integer; pragma Import (Ada, E793, "hexadobl_complex_poly_systems_io_E");
   E841 : Short_Integer; pragma Import (Ada, E841, "hexadobl_system_and_solutions_io_E");
   E1424 : Short_Integer; pragma Import (Ada, E1424, "multprec_system_and_solutions_io_E");
   E1629 : Short_Integer; pragma Import (Ada, E1629, "octodobl_complex_polynomials_io_E");
   E1625 : Short_Integer; pragma Import (Ada, E1625, "octodobl_complex_poly_systems_io_E");
   E1729 : Short_Integer; pragma Import (Ada, E1729, "octodobl_system_and_solutions_io_E");
   E1809 : Short_Integer; pragma Import (Ada, E1809, "pentdobl_complex_polynomials_io_E");
   E1805 : Short_Integer; pragma Import (Ada, E1805, "pentdobl_complex_poly_systems_io_E");
   E1909 : Short_Integer; pragma Import (Ada, E1909, "pentdobl_system_and_solutions_io_E");
   E2097 : Short_Integer; pragma Import (Ada, E2097, "quaddobl_complex_polynomials_io_E");
   E065 : Short_Integer; pragma Import (Ada, E065, "black_box_univariate_solvers_E");
   E2091 : Short_Integer; pragma Import (Ada, E2091, "quaddobl_complex_poly_systems_io_E");
   E2296 : Short_Integer; pragma Import (Ada, E2296, "quad_double_poly_systems_io_E");
   E2294 : Short_Integer; pragma Import (Ada, E2294, "quaddobl_quad_sweepers_E");
   E2394 : Short_Integer; pragma Import (Ada, E2394, "quaddobl_system_and_solutions_io_E");
   E2396 : Short_Integer; pragma Import (Ada, E2396, "quaddobl_system_readers_E");
   E2398 : Short_Integer; pragma Import (Ada, E2398, "quaddobl_tableau_formats_E");
   E2410 : Short_Integer; pragma Import (Ada, E2410, "quaddobl_tracked_solutions_io_E");
   E2470 : Short_Integer; pragma Import (Ada, E2470, "remember_symbolic_minors_E");
   E1588 : Short_Integer; pragma Import (Ada, E1588, "numeric_schubert_conditions_E");
   E2729 : Short_Integer; pragma Import (Ada, E2729, "standard_complex_poly_lists_io_E");
   E997 : Short_Integer; pragma Import (Ada, E997, "checker_homotopies_E");
   E1133 : Short_Integer; pragma Import (Ada, E1133, "moving_flag_homotopies_E");
   E2715 : Short_Integer; pragma Import (Ada, E2715, "standard_complex_poly_systems_io_E");
   E051 : Short_Integer; pragma Import (Ada, E051, "black_box_linear_solvers_E");
   E539 : Short_Integer; pragma Import (Ada, E539, "cascade_homotopies_io_E");
   E883 : Short_Integer; pragma Import (Ada, E883, "driver_for_symmetric_set_structure_E");
   E557 : Short_Integer; pragma Import (Ada, E557, "extrinsic_diagonal_homotopies_io_E");
   E637 : Short_Integer; pragma Import (Ada, E637, "main_lifting_functions_E");
   E869 : Short_Integer; pragma Import (Ada, E869, "main_poly_continuation_E");
   E881 : Short_Integer; pragma Import (Ada, E881, "driver_for_own_start_system_E");
   E1069 : Short_Integer; pragma Import (Ada, E1069, "driver_for_winding_numbers_E");
   E311 : Short_Integer; pragma Import (Ada, E311, "drivers_for_coefficient_systems_E");
   E1083 : Short_Integer; pragma Import (Ada, E1083, "main_vertex_points_E");
   E309 : Short_Integer; pragma Import (Ada, E309, "driver_for_criterion_E");
   E1418 : Short_Integer; pragma Import (Ada, E1418, "multprec_subspace_restrictions_E");
   E1961 : Short_Integer; pragma Import (Ada, E1961, "polyhedral_coefficient_trackers_E");
   E1057 : Short_Integer; pragma Import (Ada, E1057, "jumpstart_polyhedral_homotopies_E");
   E1991 : Short_Integer; pragma Import (Ada, E1991, "prompt_for_systems_E");
   E2540 : Short_Integer; pragma Import (Ada, E2540, "scaling_methods_E");
   E977 : Short_Integer; pragma Import (Ada, E977, "main_scaling_E");
   E2727 : Short_Integer; pragma Import (Ada, E2727, "standard_complex_prod_systems_io_E");
   E1045 : Short_Integer; pragma Import (Ada, E1045, "drivers_to_track_dobldobl_paths_E");
   E1051 : Short_Integer; pragma Import (Ada, E1051, "drivers_to_track_quaddobl_paths_E");
   E1053 : Short_Integer; pragma Import (Ada, E1053, "drivers_to_track_standard_paths_E");
   E953 : Short_Integer; pragma Import (Ada, E953, "main_m_homogenization_E");
   E959 : Short_Integer; pragma Import (Ada, E959, "main_multi_homogenization_E");
   E1039 : Short_Integer; pragma Import (Ada, E1039, "main_set_structures_E");
   E2822 : Short_Integer; pragma Import (Ada, E2822, "standard_deflation_trees_io_E");
   E195 : Short_Integer; pragma Import (Ada, E195, "dobldobl_deflation_trees_io_E");
   E187 : Short_Integer; pragma Import (Ada, E187, "dobldobl_deflation_methods_E");
   E851 : Short_Integer; pragma Import (Ada, E851, "jacobian_rabinowitsch_trick_E");
   E1275 : Short_Integer; pragma Import (Ada, E1275, "multprec_deflation_trees_io_E");
   E1265 : Short_Integer; pragma Import (Ada, E1265, "multprec_deflation_methods_E");
   E2174 : Short_Integer; pragma Import (Ada, E2174, "quaddobl_deflation_trees_io_E");
   E2168 : Short_Integer; pragma Import (Ada, E2168, "quaddobl_deflation_methods_E");
   E2816 : Short_Integer; pragma Import (Ada, E2816, "standard_deflation_methods_E");
   E3481 : Short_Integer; pragma Import (Ada, E3481, "deflation_interface_E");
   E1081 : Short_Integer; pragma Import (Ada, E1081, "drivers_to_deflate_singularities_E");
   E3144 : Short_Integer; pragma Import (Ada, E3144, "standard_floating_poly_systems_io_E");
   E3090 : Short_Integer; pragma Import (Ada, E3090, "standard_parameter_systems_E");
   E754 : Short_Integer; pragma Import (Ada, E754, "decadobl_parameter_systems_E");
   E629 : Short_Integer; pragma Import (Ada, E629, "dobldobl_parameter_systems_E");
   E820 : Short_Integer; pragma Import (Ada, E820, "hexadobl_parameter_systems_E");
   E1692 : Short_Integer; pragma Import (Ada, E1692, "octodobl_parameter_systems_E");
   E3739 : Short_Integer; pragma Import (Ada, E3739, "parameter_homotopy_state_E");
   E1872 : Short_Integer; pragma Import (Ada, E1872, "pentdobl_parameter_systems_E");
   E2254 : Short_Integer; pragma Import (Ada, E2254, "quaddobl_parameter_systems_E");
   E3142 : Short_Integer; pragma Import (Ada, E3142, "standard_quad_sweepers_E");
   E3214 : Short_Integer; pragma Import (Ada, E3214, "standard_system_and_solutions_io_E");
   E853 : Short_Integer; pragma Import (Ada, E853, "main_laurent_series_newton_E");
   E2522 : Short_Integer; pragma Import (Ada, E2522, "monodromy_homotopies_io_E");
   E3166 : Short_Integer; pragma Import (Ada, E3166, "standard_refiner_circuits_E");
   E3216 : Short_Integer; pragma Import (Ada, E3216, "standard_system_readers_E");
   E875 : Short_Integer; pragma Import (Ada, E875, "main_reduction_E");
   E3218 : Short_Integer; pragma Import (Ada, E3218, "standard_tableau_formats_E");
   E1967 : Short_Integer; pragma Import (Ada, E1967, "polyhedral_start_systems_E");
   E1185 : Short_Integer; pragma Import (Ada, E1185, "multitasking_polyhedral_trackers_E");
   E1947 : Short_Integer; pragma Import (Ada, E1947, "pipelined_cell_trackers_E");
   E1943 : Short_Integer; pragma Import (Ada, E1943, "pipelined_polyhedral_homotopies_E");
   E3236 : Short_Integer; pragma Import (Ada, E3236, "standard_tracked_solutions_io_E");
   E1073 : Short_Integer; pragma Import (Ada, E1073, "drivers_for_failed_paths_E");
   E183 : Short_Integer; pragma Import (Ada, E183, "dobldobl_condition_report_E");
   E240 : Short_Integer; pragma Import (Ada, E240, "dobldobl_select_solutions_E");
   E1071 : Short_Integer; pragma Import (Ada, E1071, "drivers_for_condition_tables_E");
   E2146 : Short_Integer; pragma Import (Ada, E2146, "quaddobl_condition_report_E");
   E2348 : Short_Integer; pragma Import (Ada, E2348, "quaddobl_select_solutions_E");
   E2788 : Short_Integer; pragma Import (Ada, E2788, "standard_condition_report_E");
   E3174 : Short_Integer; pragma Import (Ada, E3174, "standard_select_solutions_E");
   E179 : Short_Integer; pragma Import (Ada, E179, "dobldobl_root_refiners_E");
   E441 : Short_Integer; pragma Import (Ada, E441, "dobldobl_sampling_laurent_machine_E");
   E443 : Short_Integer; pragma Import (Ada, E443, "dobldobl_sampling_machine_E");
   E439 : Short_Integer; pragma Import (Ada, E439, "dobldobl_sample_points_E");
   E437 : Short_Integer; pragma Import (Ada, E437, "dobldobl_sample_lists_E");
   E435 : Short_Integer; pragma Import (Ada, E435, "dobldobl_rectangular_sample_grids_E");
   E1121 : Short_Integer; pragma Import (Ada, E1121, "dobldobl_sample_grids_E");
   E3595 : Short_Integer; pragma Import (Ada, E3595, "dobldobl_sampling_operations_E");
   E445 : Short_Integer; pragma Import (Ada, E445, "dobldobl_stacked_sample_grids_E");
   E427 : Short_Integer; pragma Import (Ada, E427, "dobldobl_divided_differences_E");
   E429 : Short_Integer; pragma Import (Ada, E429, "dobldobl_gridded_hypersurfaces_E");
   E447 : Short_Integer; pragma Import (Ada, E447, "dobldobl_trace_interpolators_E");
   E1041 : Short_Integer; pragma Import (Ada, E1041, "main_solution_filters_E");
   E2324 : Short_Integer; pragma Import (Ada, E2324, "quaddobl_root_refiners_E");
   E1139 : Short_Integer; pragma Import (Ada, E1139, "multitasked_dd_qd_refiners_E");
   E1079 : Short_Integer; pragma Import (Ada, E1079, "drivers_to_dd_qd_root_refiners_E");
   E2342 : Short_Integer; pragma Import (Ada, E2342, "quaddobl_sampling_laurent_machine_E");
   E2344 : Short_Integer; pragma Import (Ada, E2344, "quaddobl_sampling_machine_E");
   E2340 : Short_Integer; pragma Import (Ada, E2340, "quaddobl_sample_points_E");
   E2338 : Short_Integer; pragma Import (Ada, E2338, "quaddobl_sample_lists_E");
   E2320 : Short_Integer; pragma Import (Ada, E2320, "quaddobl_rectangular_sample_grids_E");
   E2336 : Short_Integer; pragma Import (Ada, E2336, "quaddobl_sample_grids_E");
   E3599 : Short_Integer; pragma Import (Ada, E3599, "quaddobl_sampling_operations_E");
   E2392 : Short_Integer; pragma Import (Ada, E2392, "quaddobl_stacked_sample_grids_E");
   E2180 : Short_Integer; pragma Import (Ada, E2180, "quaddobl_divided_differences_E");
   E2194 : Short_Integer; pragma Import (Ada, E2194, "quaddobl_gridded_hypersurfaces_E");
   E2400 : Short_Integer; pragma Import (Ada, E2400, "quaddobl_trace_interpolators_E");
   E3170 : Short_Integer; pragma Import (Ada, E3170, "standard_root_refiners_E");
   E027 : Short_Integer; pragma Import (Ada, E027, "black_box_root_refiners_E");
   E063 : Short_Integer; pragma Import (Ada, E063, "black_box_simplex_solvers_E");
   E525 : Short_Integer; pragma Import (Ada, E525, "black_box_solver_cases_E");
   E1973 : Short_Integer; pragma Import (Ada, E1973, "driver_for_root_refining_E");
   E1099 : Short_Integer; pragma Import (Ada, E1099, "mixed_homotopy_continuation_E");
   E345 : Short_Integer; pragma Import (Ada, E345, "bkk_bound_computations_E");
   E417 : Short_Integer; pragma Import (Ada, E417, "integer_polyhedral_continuation_E");
   E933 : Short_Integer; pragma Import (Ada, E933, "dynamic_polyhedral_continuation_E");
   E917 : Short_Integer; pragma Import (Ada, E917, "drivers_for_dynamic_lifting_E");
   E343 : Short_Integer; pragma Import (Ada, E343, "floating_polyhedral_continuation_E");
   E1035 : Short_Integer; pragma Import (Ada, E1035, "main_sagbi_homotopies_E");
   E1189 : Short_Integer; pragma Import (Ada, E1189, "multitasking_root_refiners_E");
   E045 : Short_Integer; pragma Import (Ada, E045, "dobldobl_blackbox_refiners_E");
   E1743 : Short_Integer; pragma Import (Ada, E1743, "parameter_homotopy_continuation_E");
   E2031 : Short_Integer; pragma Import (Ada, E2031, "quaddobl_blackbox_refiners_E");
   E2536 : Short_Integer; pragma Import (Ada, E2536, "sampling_laurent_machine_E");
   E2538 : Short_Integer; pragma Import (Ada, E2538, "sampling_machine_E");
   E597 : Short_Integer; pragma Import (Ada, E597, "homotopy_membership_tests_E");
   E2532 : Short_Integer; pragma Import (Ada, E2532, "sample_points_E");
   E605 : Short_Integer; pragma Import (Ada, E605, "interpolation_points_E");
   E2528 : Short_Integer; pragma Import (Ada, E2528, "sample_point_lists_E");
   E603 : Short_Integer; pragma Import (Ada, E603, "interpolation_point_lists_E");
   E1985 : Short_Integer; pragma Import (Ada, E1985, "projection_operators_E");
   E601 : Short_Integer; pragma Import (Ada, E601, "interpolation_filters_E");
   E617 : Short_Integer; pragma Import (Ada, E617, "interpolation_filters_io_E");
   E2428 : Short_Integer; pragma Import (Ada, E2428, "rectangular_sample_grids_E");
   E1414 : Short_Integer; pragma Import (Ada, E1414, "multprec_stacked_sample_grids_E");
   E1277 : Short_Integer; pragma Import (Ada, E1277, "multprec_divided_differences_E");
   E1428 : Short_Integer; pragma Import (Ada, E1428, "multprec_trace_interpolators_E");
   E2526 : Short_Integer; pragma Import (Ada, E2526, "sample_point_grids_E");
   E1203 : Short_Integer; pragma Import (Ada, E1203, "multprec_breakup_components_E");
   E1327 : Short_Integer; pragma Import (Ada, E1327, "multprec_irreducible_decomp_E");
   E1329 : Short_Integer; pragma Import (Ada, E1329, "multprec_irreducible_decomp_io_E");
   E2534 : Short_Integer; pragma Import (Ada, E2534, "sample_points_io_E");
   E2530 : Short_Integer; pragma Import (Ada, E2530, "sample_point_lists_io_E");
   E1117 : Short_Integer; pragma Import (Ada, E1117, "monodromy_actions_breakup_E");
   E2566 : Short_Integer; pragma Import (Ada, E2566, "set_structures_and_volumes_E");
   E921 : Short_Integer; pragma Import (Ada, E921, "drivers_for_implicit_lifting_E");
   E2590 : Short_Integer; pragma Import (Ada, E2590, "span_of_component_E");
   E613 : Short_Integer; pragma Import (Ada, E613, "irreducible_components_E");
   E2592 : Short_Integer; pragma Import (Ada, E2592, "span_of_component_creators_E");
   E2594 : Short_Integer; pragma Import (Ada, E2594, "span_of_component_io_E");
   E615 : Short_Integer; pragma Import (Ada, E615, "irreducible_components_io_E");
   E2602 : Short_Integer; pragma Import (Ada, E2602, "stable_polyhedral_continuation_E");
   E307 : Short_Integer; pragma Import (Ada, E307, "drivers_for_static_lifting_E");
   E2623 : Short_Integer; pragma Import (Ada, E2623, "standard_blackbox_refiners_E");
   E2631 : Short_Integer; pragma Import (Ada, E2631, "standard_breakup_components_E");
   E2985 : Short_Integer; pragma Import (Ada, E2985, "standard_irreducible_decomp_E");
   E2987 : Short_Integer; pragma Import (Ada, E2987, "standard_irreducible_decomp_io_E");
   E3603 : Short_Integer; pragma Import (Ada, E3603, "standard_sampling_operations_E");
   E3210 : Short_Integer; pragma Import (Ada, E3210, "standard_stacked_sample_grids_E");
   E469 : Short_Integer; pragma Import (Ada, E469, "hypersurface_sample_grids_E");
   E1089 : Short_Integer; pragma Import (Ada, E1089, "make_sample_grids_E");
   E2830 : Short_Integer; pragma Import (Ada, E2830, "standard_divided_differences_E");
   E3226 : Short_Integer; pragma Import (Ada, E3226, "standard_trace_interpolators_E");
   E1195 : Short_Integer; pragma Import (Ada, E1195, "certify_factor_with_trace_E");
   E591 : Short_Integer; pragma Import (Ada, E591, "combinatorial_factorization_E");
   E425 : Short_Integer; pragma Import (Ada, E425, "interpolate_multivariate_factor_E");
   E609 : Short_Integer; pragma Import (Ada, E609, "irreducible_component_creators_E");
   E607 : Short_Integer; pragma Import (Ada, E607, "irreducible_component_lists_E");
   E595 : Short_Integer; pragma Import (Ada, E595, "drivers_to_component_creators_E");
   E611 : Short_Integer; pragma Import (Ada, E611, "irreducible_component_lists_io_E");
   E1119 : Short_Integer; pragma Import (Ada, E1119, "monodromy_component_breakup_E");
   E2520 : Short_Integer; pragma Import (Ada, E2520, "monodromy_homotopies_E");
   E1193 : Short_Integer; pragma Import (Ada, E1193, "multivariate_factorization_E");
   E317 : Short_Integer; pragma Import (Ada, E317, "drivers_to_factor_polynomials_E");
   E057 : Short_Integer; pragma Import (Ada, E057, "black_box_factorization_E");
   E055 : Short_Integer; pragma Import (Ada, E055, "black_box_single_solvers_E");
   E3737 : Short_Integer; pragma Import (Ada, E3737, "sweep_interface_E");
   E3278 : Short_Integer; pragma Import (Ada, E3278, "symmetric_bkk_bound_solvers_E");
   E3276 : Short_Integer; pragma Import (Ada, E3276, "symmetric_polyhedral_continuation_E");
   E923 : Short_Integer; pragma Import (Ada, E923, "drivers_for_symmetric_lifting_E");
   E3775 : Short_Integer; pragma Import (Ada, E3775, "tableau_form_interface_E");
   E3352 : Short_Integer; pragma Import (Ada, E3352, "tripdobl_complex_polynomials_io_E");
   E3348 : Short_Integer; pragma Import (Ada, E3348, "tripdobl_complex_poly_systems_io_E");
   E2446 : Short_Integer; pragma Import (Ada, E2446, "complex_series_and_polynomials_io_E");
   E2486 : Short_Integer; pragma Import (Ada, E2486, "power_series_methods_E");
   E3425 : Short_Integer; pragma Import (Ada, E3425, "tripdobl_parameter_systems_E");
   E3447 : Short_Integer; pragma Import (Ada, E3447, "tripdobl_system_and_solutions_io_E");
   E713 : Short_Integer; pragma Import (Ada, E713, "artificial_parameter_homotopy_io_E");
   E709 : Short_Integer; pragma Import (Ada, E709, "homotopy_pade_approximants_E");
   E711 : Short_Integer; pragma Import (Ada, E711, "homotopy_series_readers_E");
   E2548 : Short_Integer; pragma Import (Ada, E2548, "series_and_predictors_E");
   E1147 : Short_Integer; pragma Import (Ada, E1147, "dobldobl_predictor_convolutions_E");
   E3717 : Short_Integer; pragma Import (Ada, E3717, "power_series_interface_E");
   E2286 : Short_Integer; pragma Import (Ada, E2286, "quaddobl_predictor_convolutions_E");
   E2484 : Short_Integer; pragma Import (Ada, E2484, "run_power_series_methods_E");
   E3086 : Short_Integer; pragma Import (Ada, E3086, "standard_pade_trackers_E");
   E686 : Short_Integer; pragma Import (Ada, E686, "dobldobl_pade_trackers_E");
   E653 : Short_Integer; pragma Import (Ada, E653, "dobldobl_seriespade_tracker_E");
   E2366 : Short_Integer; pragma Import (Ada, E2366, "quaddobl_pade_trackers_E");
   E2360 : Short_Integer; pragma Import (Ada, E2360, "quaddobl_seriespade_tracker_E");
   E2552 : Short_Integer; pragma Import (Ada, E2552, "series_and_trackers_E");
   E3124 : Short_Integer; pragma Import (Ada, E3124, "standard_predictor_convolutions_E");
   E1145 : Short_Integer; pragma Import (Ada, E1145, "corrector_convolutions_E");
   E1977 : Short_Integer; pragma Import (Ada, E1977, "predictor_corrector_loops_E");
   E1975 : Short_Integer; pragma Import (Ada, E1975, "predictor_corrector_trackers_E");
   E3180 : Short_Integer; pragma Import (Ada, E3180, "standard_seriespade_tracker_E");
   E3296 : Short_Integer; pragma Import (Ada, E3296, "test_series_predictors_E");
   E3557 : Short_Integer; pragma Import (Ada, E3557, "univariate_solvers_interface_E");
   E3555 : Short_Integer; pragma Import (Ada, E3555, "unisolve_E");
   E3673 : Short_Integer; pragma Import (Ada, E3673, "use_multip_E");
   E3715 : Short_Integer; pragma Import (Ada, E3715, "use_series_E");
   E3735 : Short_Integer; pragma Import (Ada, E3735, "use_sweep_E");
   E3773 : Short_Integer; pragma Import (Ada, E3773, "use_tabform_E");
   E3809 : Short_Integer; pragma Import (Ada, E3809, "valipoco_E");
   E1061 : Short_Integer; pragma Import (Ada, E1061, "main_verification_E");
   E3839 : Short_Integer; pragma Import (Ada, E3839, "verification_with_determinants_E");
   E1925 : Short_Integer; pragma Import (Ada, E1925, "pieri_continuation_E");
   E1021 : Short_Integer; pragma Import (Ada, E1021, "deformation_posets_E");
   E1019 : Short_Integer; pragma Import (Ada, E1019, "main_pieri_homotopies_E");
   E1033 : Short_Integer; pragma Import (Ada, E1033, "main_quantum_pieri_E");
   E3623 : Short_Integer; pragma Import (Ada, E3623, "pieri_homotopy_E");
   E3619 : Short_Integer; pragma Import (Ada, E3619, "pieri_interface_E");
   E1929 : Short_Integer; pragma Import (Ada, E1929, "pieri_solver_E");
   E3617 : Short_Integer; pragma Import (Ada, E3617, "use_c2pieri_E");
   E3857 : Short_Integer; pragma Import (Ada, E3857, "witness_sets_io_E");
   E547 : Short_Integer; pragma Import (Ada, E547, "drivers_to_breakup_components_E");
   E593 : Short_Integer; pragma Import (Ada, E593, "drivers_to_factor_components_E");
   E549 : Short_Integer; pragma Import (Ada, E549, "extrinsic_diagonal_continuation_E");
   E559 : Short_Integer; pragma Import (Ada, E559, "extrinsic_diagonal_solvers_E");
   E565 : Short_Integer; pragma Import (Ada, E565, "intrinsic_diagonal_continuation_E");
   E543 : Short_Integer; pragma Import (Ada, E543, "drivers_to_intersect_varieties_E");
   E567 : Short_Integer; pragma Import (Ada, E567, "intrinsic_witness_sets_io_E");
   E577 : Short_Integer; pragma Import (Ada, E577, "equation_by_equation_solvers_E");
   E1055 : Short_Integer; pragma Import (Ada, E1055, "jumpstart_diagonal_homotopies_E");
   E575 : Short_Integer; pragma Import (Ada, E575, "main_eqn_by_eqn_solvers_E");
   E049 : Short_Integer; pragma Import (Ada, E049, "bablsolve_E");
   E633 : Short_Integer; pragma Import (Ada, E633, "main_hypersurface_witsets_E");
   E635 : Short_Integer; pragma Import (Ada, E635, "main_intersection_E");
   E965 : Short_Integer; pragma Import (Ada, E965, "main_samplers_E");
   E1043 : Short_Integer; pragma Import (Ada, E1043, "main_trackers_E");
   E1181 : Short_Integer; pragma Import (Ada, E1181, "multitasking_continuation_E");
   E1921 : Short_Integer; pragma Import (Ada, E1921, "phcpack_operations_E");
   E3779 : Short_Integer; pragma Import (Ada, E3779, "cascade_homotopy_interface_E");
   E3477 : Short_Integer; pragma Import (Ada, E3477, "continuation_parameters_interface_E");
   E3525 : Short_Integer; pragma Import (Ada, E3525, "crude_path_trackers_E");
   E041 : Short_Integer; pragma Import (Ada, E041, "dobldobl_blackbox_continuations_E");
   E3743 : Short_Integer; pragma Import (Ada, E3743, "dobldobl_laursys_interface_E");
   E3593 : Short_Integer; pragma Import (Ada, E3593, "dobldobl_monodromy_permutations_E");
   E3725 : Short_Integer; pragma Import (Ada, E3725, "dobldobl_solutions_interface_E");
   E3487 : Short_Integer; pragma Import (Ada, E3487, "file_management_interface_E");
   E3491 : Short_Integer; pragma Import (Ada, E3491, "job_containers_E");
   E1183 : Short_Integer; pragma Import (Ada, E1183, "multitasking_membership_tests_E");
   E2518 : Short_Integer; pragma Import (Ada, E2518, "homotopy_membership_filters_E");
   E2516 : Short_Integer; pragma Import (Ada, E2516, "cascade_membership_filters_E");
   E3611 : Short_Integer; pragma Import (Ada, E3611, "member_interface_E");
   E3749 : Short_Integer; pragma Import (Ada, E3749, "multprec_laursys_interface_E");
   E3515 : Short_Integer; pragma Import (Ada, E3515, "newton_interface_E");
   E3523 : Short_Integer; pragma Import (Ada, E3523, "path_trackers_interface_E");
   E3527 : Short_Integer; pragma Import (Ada, E3527, "phcpack_operations_io_E");
   E3475 : Short_Integer; pragma Import (Ada, E3475, "c_to_phcpack_E");
   E3745 : Short_Integer; pragma Import (Ada, E3745, "dobldobl_polysys_interface_E");
   E3707 : Short_Integer; pragma Import (Ada, E3707, "linear_products_interface_E");
   E3507 : Short_Integer; pragma Import (Ada, E3507, "multprec_polysys_interface_E");
   E3511 : Short_Integer; pragma Import (Ada, E3511, "multprec_solutions_interface_E");
   E2029 : Short_Integer; pragma Import (Ada, E2029, "quaddobl_blackbox_continuations_E");
   E3753 : Short_Integer; pragma Import (Ada, E3753, "quaddobl_laursys_interface_E");
   E3597 : Short_Integer; pragma Import (Ada, E3597, "quaddobl_monodromy_permutations_E");
   E3755 : Short_Integer; pragma Import (Ada, E3755, "quaddobl_polysys_interface_E");
   E3727 : Short_Integer; pragma Import (Ada, E3727, "quaddobl_solutions_interface_E");
   E2600 : Short_Integer; pragma Import (Ada, E2600, "square_and_embed_systems_E");
   E2621 : Short_Integer; pragma Import (Ada, E2621, "standard_blackbox_continuations_E");
   E541 : Short_Integer; pragma Import (Ada, E541, "cascade_homotopy_steps_E");
   E561 : Short_Integer; pragma Import (Ada, E561, "homotopy_cascade_filter_E");
   E3759 : Short_Integer; pragma Import (Ada, E3759, "standard_laursys_interface_E");
   E3601 : Short_Integer; pragma Import (Ada, E3601, "standard_monodromy_permutations_E");
   E3591 : Short_Integer; pragma Import (Ada, E3591, "monodromy_interface_E");
   E3761 : Short_Integer; pragma Import (Ada, E3761, "standard_polysys_interface_E");
   E3729 : Short_Integer; pragma Import (Ada, E3729, "standard_solutions_interface_E");
   E3771 : Short_Integer; pragma Import (Ada, E3771, "standard_syspool_interface_E");
   E3681 : Short_Integer; pragma Import (Ada, E3681, "step_trackers_interface_E");
   E3551 : Short_Integer; pragma Import (Ada, E3551, "symbol_table_interface_E");
   E3609 : Short_Integer; pragma Import (Ada, E3609, "use_c2mbt_E");
   E3679 : Short_Integer; pragma Import (Ada, E3679, "use_nxtsol_E");
   E3705 : Short_Integer; pragma Import (Ada, E3705, "use_roco_E");
   E3723 : Short_Integer; pragma Import (Ada, E3723, "use_solcon_E");
   E3741 : Short_Integer; pragma Import (Ada, E3741, "use_syscon_E");
   E3765 : Short_Integer; pragma Import (Ada, E3765, "use_syspool_E");
   E3845 : Short_Integer; pragma Import (Ada, E3845, "witness_interface_E");
   E3589 : Short_Integer; pragma Import (Ada, E3589, "use_c2fac_E");
   E3855 : Short_Integer; pragma Import (Ada, E3855, "witness_sets_formats_E");
   E3785 : Short_Integer; pragma Import (Ada, E3785, "dobldobl_hypersurface_witsets_io_E");
   E3783 : Short_Integer; pragma Import (Ada, E3783, "dobldobl_hypersurface_witdrivers_E");
   E3789 : Short_Integer; pragma Import (Ada, E3789, "quaddobl_hypersurface_witsets_io_E");
   E3787 : Short_Integer; pragma Import (Ada, E3787, "quaddobl_hypersurface_witdrivers_E");
   E3793 : Short_Integer; pragma Import (Ada, E3793, "standard_hypersurface_witsets_io_E");
   E3791 : Short_Integer; pragma Import (Ada, E3791, "standard_hypersurface_witdrivers_E");
   E3781 : Short_Integer; pragma Import (Ada, E3781, "diagonal_homotopy_interface_E");
   E3777 : Short_Integer; pragma Import (Ada, E3777, "use_track_E");
   E3861 : Short_Integer; pragma Import (Ada, E3861, "wrapped_path_trackers_E");
   E3867 : Short_Integer; pragma Import (Ada, E3867, "write_number_of_tasks_E");
   E3869 : Short_Integer; pragma Import (Ada, E3869, "write_seed_number_E");
   E531 : Short_Integer; pragma Import (Ada, E531, "add_and_remove_embedding_E");
   E537 : Short_Integer; pragma Import (Ada, E537, "cascade_homotopies_E");
   E2514 : Short_Integer; pragma Import (Ada, E2514, "cascade_homotopy_filters_E");
   E589 : Short_Integer; pragma Import (Ada, E589, "drivers_to_breakup_solutions_E");
   E2556 : Short_Integer; pragma Import (Ada, E2556, "drivers_to_series_trackers_E");
   E527 : Short_Integer; pragma Import (Ada, E527, "greetings_and_conclusions_E");
   E585 : Short_Integer; pragma Import (Ada, E585, "main_factorization_E");
   E619 : Short_Integer; pragma Import (Ada, E619, "main_homotopy_continuation_E");
   E2512 : Short_Integer; pragma Import (Ada, E2512, "running_cascades_E");
   E2554 : Short_Integer; pragma Import (Ada, E2554, "series_path_trackers_E");
   E1453 : Short_Integer; pragma Import (Ada, E1453, "decadobl_homotopy_convolutions_io_E");
   E1446 : Short_Integer; pragma Import (Ada, E1446, "decadobl_fabry_on_homotopy_E");
   E1508 : Short_Integer; pragma Import (Ada, E1508, "dobldobl_homotopy_convolutions_io_E");
   E1506 : Short_Integer; pragma Import (Ada, E1506, "dobldobl_fabry_on_homotopy_E");
   E1533 : Short_Integer; pragma Import (Ada, E1533, "hexadobl_homotopy_convolutions_io_E");
   E1529 : Short_Integer; pragma Import (Ada, E1529, "hexadobl_fabry_on_homotopy_E");
   E651 : Short_Integer; pragma Import (Ada, E651, "interactive_pade_trackers_E");
   E1684 : Short_Integer; pragma Import (Ada, E1684, "octodobl_homotopy_convolutions_io_E");
   E1678 : Short_Integer; pragma Import (Ada, E1678, "octodobl_fabry_on_homotopy_E");
   E3699 : Short_Integer; pragma Import (Ada, E3699, "pade_continuation_interface_E");
   E1864 : Short_Integer; pragma Import (Ada, E1864, "pentdobl_homotopy_convolutions_io_E");
   E1858 : Short_Integer; pragma Import (Ada, E1858, "pentdobl_fabry_on_homotopy_E");
   E2198 : Short_Integer; pragma Import (Ada, E2198, "quaddobl_homotopy_convolutions_io_E");
   E2192 : Short_Integer; pragma Import (Ada, E2192, "quaddobl_fabry_on_homotopy_E");
   E2905 : Short_Integer; pragma Import (Ada, E2905, "standard_homotopy_convolutions_io_E");
   E2848 : Short_Integer; pragma Import (Ada, E2848, "standard_fabry_on_homotopy_E");
   E3308 : Short_Integer; pragma Import (Ada, E3308, "track_path_convolutions_E");
   E1143 : Short_Integer; pragma Import (Ada, E1143, "multitasked_path_convolutions_E");
   E3405 : Short_Integer; pragma Import (Ada, E3405, "tripdobl_homotopy_convolutions_io_E");
   E3399 : Short_Integer; pragma Import (Ada, E3399, "tripdobl_fabry_on_homotopy_E");
   E1444 : Short_Integer; pragma Import (Ada, E1444, "newton_fabry_on_homotopy_E");
   E3697 : Short_Integer; pragma Import (Ada, E3697, "use_padcon_E");
   E3859 : Short_Integer; pragma Import (Ada, E3859, "wrapped_pade_trackers_E");
   E1131 : Short_Integer; pragma Import (Ada, E1131, "moving_flag_continuation_E");
   E995 : Short_Integer; pragma Import (Ada, E995, "checker_poset_deformations_E");
   E2474 : Short_Integer; pragma Import (Ada, E2474, "resolve_schubert_problems_E");
   E979 : Short_Integer; pragma Import (Ada, E979, "main_schubert_induction_E");
   E3607 : Short_Integer; pragma Import (Ada, E3607, "schubert_interface_E");
   E3605 : Short_Integer; pragma Import (Ada, E3605, "use_c2lrhom_E");
   E3871 : Short_Integer; pragma Import (Ada, E3871, "write_witness_solutions_E");
   E3873 : Short_Integer; pragma Import (Ada, E3873, "zero_index_tree_E");
   E2466 : Short_Integer; pragma Import (Ada, E2466, "relation_table_E");
   E1111 : Short_Integer; pragma Import (Ada, E1111, "form_lp_E");
   E1109 : Short_Integer; pragma Import (Ada, E1109, "mixed_volume_E");
   E1107 : Short_Integer; pragma Import (Ada, E1107, "mixedvol_algorithm_E");
   E1937 : Short_Integer; pragma Import (Ada, E1937, "pipelined_labeled_cells_E");
   E1949 : Short_Integer; pragma Import (Ada, E1949, "pipelined_polyhedral_trackers_E");
   E1941 : Short_Integer; pragma Import (Ada, E1941, "pipelined_polyhedral_drivers_E");
   E301 : Short_Integer; pragma Import (Ada, E301, "drivers_for_mixedvol_algorithm_E");
   E029 : Short_Integer; pragma Import (Ada, E029, "black_mixed_volume_computations_E");
   E021 : Short_Integer; pragma Import (Ada, E021, "apply_induced_permutations_E");
   E031 : Short_Integer; pragma Import (Ada, E031, "black_polyhedral_continuations_E");
   E019 : Short_Integer; pragma Import (Ada, E019, "black_box_root_counters_E");
   E3499 : Short_Integer; pragma Import (Ada, E3499, "black_box_mixed_volumes_E");
   E3497 : Short_Integer; pragma Import (Ada, E3497, "black_box_polyhedral_solvers_E");
   E523 : Short_Integer; pragma Import (Ada, E523, "black_box_solvers_E");
   E059 : Short_Integer; pragma Import (Ada, E059, "black_box_square_solvers_E");
   E047 : Short_Integer; pragma Import (Ada, E047, "dobldobl_blackbox_solvers_E");
   E3501 : Short_Integer; pragma Import (Ada, E3501, "double_cells_container_E");
   E894 : Short_Integer; pragma Import (Ada, E894, "drivers_for_demics_algorithm_E");
   E545 : Short_Integer; pragma Import (Ada, E545, "drivers_to_witness_generate_E");
   E521 : Short_Integer; pragma Import (Ada, E521, "embeddings_and_cascades_E");
   E535 : Short_Integer; pragma Import (Ada, E535, "drivers_to_cascade_filtering_E");
   E3633 : Short_Integer; pragma Import (Ada, E3633, "integer_cells_container_E");
   E3631 : Short_Integer; pragma Import (Ada, E3631, "cells_interface_E");
   E3797 : Short_Integer; pragma Import (Ada, E3797, "irreducible_components_interface_E");
   E3495 : Short_Integer; pragma Import (Ada, E3495, "job_handlers_E");
   E519 : Short_Integer; pragma Import (Ada, E519, "main_component_solvers_E");
   E529 : Short_Integer; pragma Import (Ada, E529, "main_decomposition_E");
   E877 : Short_Integer; pragma Import (Ada, E877, "main_root_counters_E");
   E1103 : Short_Integer; pragma Import (Ada, E1103, "mixed_volume_calculator_E");
   E1971 : Short_Integer; pragma Import (Ada, E1971, "polynomial_homotopy_continuation_E");
   E2033 : Short_Integer; pragma Import (Ada, E2033, "quaddobl_blackbox_solvers_E");
   E2448 : Short_Integer; pragma Import (Ada, E2448, "regular_solution_curves_series_E");
   E2444 : Short_Integer; pragma Import (Ada, E2444, "regular_newton_puiseux_E");
   E649 : Short_Integer; pragma Import (Ada, E649, "main_pade_trackers_E");
   E2625 : Short_Integer; pragma Import (Ada, E2625, "standard_blackbox_solvers_E");
   E017 : Short_Integer; pragma Import (Ada, E017, "option_handlers_E");
   E3629 : Short_Integer; pragma Import (Ada, E3629, "use_celcon_E");
   E3691 : Short_Integer; pragma Import (Ada, E3691, "use_outdata_E");
   E3795 : Short_Integer; pragma Import (Ada, E3795, "use_witsols_E");
   E3473 : Short_Integer; pragma Import (Ada, E3473, "use_c2phc4c_E");
   E009 : Short_Integer; pragma Import (Ada, E009, "use_c2phc_E");
   E005 : Short_Integer; pragma Import (Ada, E005, "phctop_E");

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
         E2384 := E2384 - 1;
         if E2384 = 0 then
            F1;
         end if;
      end;
      declare
         procedure F2;
         pragma Import (Ada, F2, "standard_solutions_queue__finalize_body");
      begin
         E3202 := E3202 - 1;
         if E3202 = 0 then
            F2;
         end if;
      end;
      declare
         procedure F3;
         pragma Import (Ada, F3, "dobldobl_solutions_queue__finalize_body");
      begin
         E1141 := E1141 - 1;
         if E1141 = 0 then
            F3;
         end if;
      end;
      declare
         procedure F4;
         pragma Import (Ada, F4, "mixed_cells_queue__finalize_body");
      begin
         E1187 := E1187 - 1;
         if E1187 = 0 then
            F4;
         end if;
      end;
      declare
         procedure F5;
         pragma Import (Ada, F5, "mixed_labels_queue__finalize_body");
      begin
         E1939 := E1939 - 1;
         if E1939 = 0 then
            F5;
         end if;
      end;
      E4087 := E4087 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         if E4087 = 0 then
            F6;
         end if;
      end;
      E4025 := E4025 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "system__pool_global__finalize_spec");
      begin
         if E4025 = 0 then
            F7;
         end if;
      end;
      E3994 := E3994 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "ada__text_io__finalize_spec");
      begin
         if E3994 = 0 then
            F8;
         end if;
      end;
      declare
         procedure F9;
         pragma Import (Ada, F9, "system__file_io__finalize_body");
      begin
         E4004 := E4004 - 1;
         if E4004 = 0 then
            F9;
         end if;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      finalize_library;
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

      adamain'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);
      Tasking_Runtime_Initialize;

      if E3880 = 0 then
         Ada.Exceptions'Elab_Spec;
      end if;
      if E3885 = 0 then
         System.Soft_Links'Elab_Spec;
      end if;
      if E3894 = 0 then
         System.Exception_Table'Elab_Body;
      end if;
      E3894 := E3894 + 1;
      if E3910 = 0 then
         Ada.Containers'Elab_Spec;
      end if;
      E3910 := E3910 + 1;
      if E3940 = 0 then
         Ada.Io_Exceptions'Elab_Spec;
      end if;
      E3940 := E3940 + 1;
      if E3901 = 0 then
         Ada.Numerics'Elab_Spec;
      end if;
      E3901 := E3901 + 1;
      if E3925 = 0 then
         Ada.Strings'Elab_Spec;
      end if;
      E3925 := E3925 + 1;
      if E3927 = 0 then
         Ada.Strings.Maps'Elab_Spec;
      end if;
      E3927 := E3927 + 1;
      if E3930 = 0 then
         Ada.Strings.Maps.Constants'Elab_Spec;
      end if;
      E3930 := E3930 + 1;
      if E3915 = 0 then
         Interfaces.C'Elab_Spec;
      end if;
      E3915 := E3915 + 1;
      if E3895 = 0 then
         System.Exceptions'Elab_Spec;
      end if;
      E3895 := E3895 + 1;
      if E3955 = 0 then
         System.Object_Reader'Elab_Spec;
      end if;
      E3955 := E3955 + 1;
      if E3920 = 0 then
         System.Dwarf_Lines'Elab_Spec;
      end if;
      E3920 := E3920 + 1;
      if E3944 = 0 then
         System.Os_Lib'Elab_Body;
      end if;
      E3944 := E3944 + 1;
      if E3887 = 0 then
         System.Soft_Links.Initialize'Elab_Body;
      end if;
      E3887 := E3887 + 1;
      E3885 := E3885 + 1;
      if E3909 = 0 then
         System.Traceback.Symbolic'Elab_Body;
      end if;
      E3909 := E3909 + 1;
      E3880 := E3880 + 1;
      if E3979 = 0 then
         Ada.Strings.Utf_Encoding'Elab_Spec;
      end if;
      E3979 := E3979 + 1;
      if E3987 = 0 then
         Ada.Tags'Elab_Spec;
      end if;
      if E3987 = 0 then
         Ada.Tags'Elab_Body;
      end if;
      E3987 := E3987 + 1;
      if E3977 = 0 then
         Ada.Strings.Text_Buffers'Elab_Spec;
      end if;
      E3977 := E3977 + 1;
      if E3975 = 0 then
         Interfaces.C.Strings'Elab_Spec;
      end if;
      E3975 := E3975 + 1;
      if E3996 = 0 then
         Ada.Streams'Elab_Spec;
      end if;
      E3996 := E3996 + 1;
      if E4011 = 0 then
         System.File_Control_Block'Elab_Spec;
      end if;
      E4011 := E4011 + 1;
      if E4007 = 0 then
         System.Finalization_Root'Elab_Spec;
      end if;
      E4007 := E4007 + 1;
      if E4005 = 0 then
         Ada.Finalization'Elab_Spec;
      end if;
      E4005 := E4005 + 1;
      if E4004 = 0 then
         System.File_Io'Elab_Body;
      end if;
      E4004 := E4004 + 1;
      if E4029 = 0 then
         System.Storage_Pools'Elab_Spec;
      end if;
      E4029 := E4029 + 1;
      if E4059 = 0 then
         System.Task_Info'Elab_Spec;
      end if;
      E4059 := E4059 + 1;
      if E4015 = 0 then
         Ada.Calendar'Elab_Spec;
      end if;
      if E4015 = 0 then
         Ada.Calendar'Elab_Body;
      end if;
      E4015 := E4015 + 1;
      if E4098 = 0 then
         Ada.Calendar.Delays'Elab_Body;
      end if;
      E4098 := E4098 + 1;
      if E4047 = 0 then
         Ada.Real_Time'Elab_Spec;
      end if;
      if E4047 = 0 then
         Ada.Real_Time'Elab_Body;
      end if;
      E4047 := E4047 + 1;
      if E3994 = 0 then
         Ada.Text_Io'Elab_Spec;
      end if;
      if E3994 = 0 then
         Ada.Text_Io'Elab_Body;
      end if;
      E3994 := E3994 + 1;
      if E4025 = 0 then
         System.Pool_Global'Elab_Spec;
      end if;
      E4025 := E4025 + 1;
      if E4075 = 0 then
         System.Tasking.Initialization'Elab_Body;
      end if;
      E4075 := E4075 + 1;
      if E4085 = 0 then
         System.Tasking.Protected_Objects'Elab_Body;
      end if;
      E4085 := E4085 + 1;
      if E4087 = 0 then
         System.Tasking.Protected_Objects.Entries'Elab_Spec;
      end if;
      E4087 := E4087 + 1;
      if E4083 = 0 then
         System.Tasking.Queuing'Elab_Body;
      end if;
      E4083 := E4083 + 1;
      if E4069 = 0 then
         System.Tasking.Stages'Elab_Body;
      end if;
      E4069 := E4069 + 1;
      E890 := E890 + 1;
      E879 := E879 + 1;
      if E002 = 0 then
         C_Double_Arrays'Elab_Spec;
      end if;
      E002 := E002 + 1;
      if E003 = 0 then
         C_Integer_Arrays'Elab_Spec;
      end if;
      E003 := E003 + 1;
      E321 := E321 + 1;
      E2606 := E2606 + 1;
      E393 := E393 + 1;
      if E1768 = 0 then
         Parse_Polynomial_Exceptions'Elab_Spec;
      end if;
      E1768 := E1768 + 1;
      E2544 := E2544 + 1;
      E007 := E007 + 1;
      E383 := E383 + 1;
      E690 := E690 + 1;
      E369 := E369 + 1;
      E2864 := E2864 + 1;
      E381 := E381 + 1;
      E387 := E387 + 1;
      E015 := E015 + 1;
      E303 := E303 + 1;
      E1915 := E1915 + 1;
      E2952 := E2952 + 1;
      E2962 := E2962 + 1;
      E3104 := E3104 + 1;
      E1171 := E1171 + 1;
      E1169 := E1169 + 1;
      E3665 := E3665 + 1;
      E3048 := E3048 + 1;
      E963 := E963 + 1;
      E504 := E504 + 1;
      E2939 := E2939 + 1;
      E365 := E365 + 1;
      E367 := E367 + 1;
      E351 := E351 + 1;
      E371 := E371 + 1;
      E463 := E463 + 1;
      E385 := E385 + 1;
      E481 := E481 + 1;
      E467 := E467 + 1;
      if E3645 = 0 then
         Lists_Of_Integer64_Vectors'Elab_Spec;
      end if;
      E3645 := E3645 + 1;
      if E483 = 0 then
         Lists_Of_Integer_Vectors'Elab_Spec;
      end if;
      E483 := E483 + 1;
      E949 := E949 + 1;
      E471 := E471 + 1;
      if E1939 = 0 then
         Mixed_Labels_Queue'Elab_Body;
      end if;
      E1939 := E1939 + 1;
      E1179 := E1179 + 1;
      if E2568 = 0 then
         Sets_Of_Unknowns'Elab_Spec;
      end if;
      E2568 := E2568 + 1;
      E1772 := E1772 + 1;
      E2866 := E2866 + 1;
      E013 := E013 + 1;
      E039 := E039 + 1;
      E281 := E281 + 1;
      E502 := E502 + 1;
      if E1345 = 0 then
         Multprec_Natural_Coefficients'Elab_Body;
      end if;
      E1345 := E1345 + 1;
      if E1347 = 0 then
         Multprec_Natural_Numbers'Elab_Spec;
      end if;
      if E1347 = 0 then
         Multprec_Natural_Numbers'Elab_Body;
      end if;
      E1347 := E1347 + 1;
      if E1319 = 0 then
         Multprec_Integer_Numbers'Elab_Spec;
      end if;
      E1319 := E1319 + 1;
      E1313 := E1313 + 1;
      if E1322 = 0 then
         Multprec_Integer_Ring'Elab_Spec;
      end if;
      E1322 := E1322 + 1;
      E1311 := E1311 + 1;
      E3657 := E3657 + 1;
      E3649 := E3649 + 1;
      E3659 := E3659 + 1;
      E2014 := E2014 + 1;
      E2691 := E2691 + 1;
      if E2732 = 0 then
         Standard_Complex_Ring'Elab_Spec;
      end if;
      E2732 := E2732 + 1;
      E1965 := E1965 + 1;
      E1087 := E1087 + 1;
      E1091 := E1091 + 1;
      if E2743 = 0 then
         Standard_Complex_Series_Ring'Elab_Spec;
      end if;
      E2743 := E2743 + 1;
      if E3563 = 0 then
         Dcmplx_Vecvecs_Container'Elab_Body;
      end if;
      E3563 := E3563 + 1;
      E2635 := E2635 + 1;
      if E2768 = 0 then
         Standard_Complex_Veclists'Elab_Spec;
      end if;
      E2768 := E2768 + 1;
      E3068 := E3068 + 1;
      E3066 := E3066 + 1;
      E2786 := E2786 + 1;
      E3134 := E3134 + 1;
      E2868 := E2868 + 1;
      E2693 := E2693 + 1;
      E1993 := E1993 + 1;
      E1933 := E1933 + 1;
      E2931 := E2931 + 1;
      E421 := E421 + 1;
      E2933 := E2933 + 1;
      if E2582 = 0 then
         Simplex_Pivoting'Elab_Spec;
      end if;
      E2582 := E2582 + 1;
      if E3577 = 0 then
         Double_Vecvecs_Container'Elab_Body;
      end if;
      E3577 := E3577 + 1;
      if E477 = 0 then
         Lists_Of_Floating_Vectors'Elab_Spec;
      end if;
      E477 := E477 + 1;
      E349 := E349 + 1;
      E2897 := E2897 + 1;
      E2901 := E2901 + 1;
      E2913 := E2913 + 1;
      E407 := E407 + 1;
      E487 := E487 + 1;
      E2921 := E2921 + 1;
      E401 := E401 + 1;
      if E2919 = 0 then
         Standard_Integer32_Simplices'Elab_Spec;
      end if;
      E2919 := E2919 + 1;
      E2950 := E2950 + 1;
      E2935 := E2935 + 1;
      E2960 := E2960 + 1;
      E2964 := E2964 + 1;
      E1935 := E1935 + 1;
      E904 := E904 + 1;
      E857 := E857 + 1;
      E855 := E855 + 1;
      E563 := E563 + 1;
      E1113 := E1113 + 1;
      E647 := E647 + 1;
      E3005 := E3005 + 1;
      E2740 := E2740 + 1;
      E1735 := E1735 + 1;
      E2836 := E2836 + 1;
      E3015 := E3015 + 1;
      E1741 := E1741 + 1;
      E279 := E279 + 1;
      E087 := E087 + 1;
      if E102 = 0 then
         Dobldobl_Complex_Ring'Elab_Spec;
      end if;
      E102 := E102 + 1;
      E151 := E151 + 1;
      if E658 = 0 then
         Dobldobl_Complex_Series_Ring'Elab_Spec;
      end if;
      E658 := E658 + 1;
      if E1201 = 0 then
         Dobldobl_Complex_Veclists'Elab_Spec;
      end if;
      E1201 := E1201 + 1;
      E1161 := E1161 + 1;
      E1159 := E1159 + 1;
      E1163 := E1163 + 1;
      E173 := E173 + 1;
      E571 := E571 + 1;
      E457 := E457 + 1;
      E459 := E459 + 1;
      E1578 := E1578 + 1;
      if E275 = 0 then
         Double_Double_Constants'Elab_Spec;
      end if;
      E275 := E275 + 1;
      E143 := E143 + 1;
      E222 := E222 + 1;
      E161 := E161 + 1;
      E163 := E163 + 1;
      E113 := E113 + 1;
      E125 := E125 + 1;
      E283 := E283 + 1;
      E089 := E089 + 1;
      E1049 := E1049 + 1;
      E699 := E699 + 1;
      E2454 := E2454 + 1;
      E2456 := E2456 + 1;
      E2452 := E2452 + 1;
      E228 := E228 + 1;
      E189 := E189 + 1;
      E975 := E975 + 1;
      if E290 = 0 then
         Double_Double_Ring'Elab_Spec;
      end if;
      E290 := E290 + 1;
      E274 := E274 + 1;
      E272 := E272 + 1;
      E1757 := E1757 + 1;
      E289 := E289 + 1;
      E292 := E292 + 1;
      E149 := E149 + 1;
      E1767 := E1767 + 1;
      E389 := E389 + 1;
      if E1295 = 0 then
         Multprec_Floating_Numbers'Elab_Body;
      end if;
      E1295 := E1295 + 1;
      if E1298 = 0 then
         Multprec_Floating_Ring'Elab_Spec;
      end if;
      E1298 := E1298 + 1;
      E1221 := E1221 + 1;
      if E1240 = 0 then
         Multprec_Complex_Ring'Elab_Spec;
      end if;
      E1240 := E1240 + 1;
      E1205 := E1205 + 1;
      E1248 := E1248 + 1;
      E1374 := E1374 + 1;
      E1341 := E1341 + 1;
      E1219 := E1219 + 1;
      E1263 := E1263 + 1;
      E1269 := E1269 + 1;
      E1281 := E1281 + 1;
      E1380 := E1380 + 1;
      E1438 := E1438 + 1;
      E1440 := E1440 + 1;
      E1598 := E1598 + 1;
      if E1617 = 0 then
         Octo_Double_Constants'Elab_Spec;
      end if;
      E1617 := E1617 + 1;
      E1600 := E1600 + 1;
      if E1611 = 0 then
         Octo_Double_Ring'Elab_Spec;
      end if;
      E1611 := E1611 + 1;
      E1614 := E1614 + 1;
      if E1632 = 0 then
         Octodobl_Complex_Ring'Elab_Spec;
      end if;
      E1632 := E1632 + 1;
      if E1641 = 0 then
         Octodobl_Complex_Series_Ring'Elab_Spec;
      end if;
      E1641 := E1641 + 1;
      E1638 := E1638 + 1;
      E1712 := E1712 + 1;
      E1710 := E1710 + 1;
      E1714 := E1714 + 1;
      E1686 := E1686 + 1;
      E1616 := E1616 + 1;
      E2500 := E2500 + 1;
      E1631 := E1631 + 1;
      E2502 := E2502 + 1;
      E1647 := E1647 + 1;
      E1657 := E1657 + 1;
      E2498 := E2498 + 1;
      E1778 := E1778 + 1;
      if E1797 = 0 then
         Penta_Double_Constants'Elab_Spec;
      end if;
      E1797 := E1797 + 1;
      E1780 := E1780 + 1;
      if E1791 = 0 then
         Penta_Double_Ring'Elab_Spec;
      end if;
      E1791 := E1791 + 1;
      E1794 := E1794 + 1;
      if E1812 = 0 then
         Pentdobl_Complex_Ring'Elab_Spec;
      end if;
      E1812 := E1812 + 1;
      if E1821 = 0 then
         Pentdobl_Complex_Series_Ring'Elab_Spec;
      end if;
      E1821 := E1821 + 1;
      E1818 := E1818 + 1;
      E1892 := E1892 + 1;
      E1890 := E1890 + 1;
      E1894 := E1894 + 1;
      E1866 := E1866 + 1;
      E1796 := E1796 + 1;
      E2508 := E2508 + 1;
      E1811 := E1811 + 1;
      E2510 := E2510 + 1;
      E1827 := E1827 + 1;
      E1837 := E1837 + 1;
      E2506 := E2506 + 1;
      E2754 := E2754 + 1;
      E2689 := E2689 + 1;
      E2695 := E2695 + 1;
      E2432 := E2432 + 1;
      E3072 := E3072 + 1;
      E2731 := E2731 + 1;
      E3074 := E3074 + 1;
      E2752 := E2752 + 1;
      E2643 := E2643 + 1;
      E2653 := E2653 + 1;
      if E2756 = 0 then
         Standard_Complex_Solutions'Elab_Spec;
      end if;
      E2756 := E2756 + 1;
      if E1242 = 0 then
         Multprec_Complex_Solutions'Elab_Spec;
      end if;
      E1242 := E1242 + 1;
      E1335 := E1335 + 1;
      E1412 := E1412 + 1;
      E3509 := E3509 + 1;
      if E3535 = 0 then
         Solutions_Pool'Elab_Body;
      end if;
      E3535 := E3535 + 1;
      E2776 := E2776 + 1;
      if E2792 = 0 then
         Standard_Continuation_Data'Elab_Spec;
      end if;
      E2792 := E2792 + 1;
      E1309 := E1309 + 1;
      E3070 := E3070 + 1;
      E2826 := E2826 + 1;
      E2832 := E2832 + 1;
      E1430 := E1430 + 1;
      E3150 := E3150 + 1;
      E2878 := E2878 + 1;
      E2883 := E2883 + 1;
      E2887 := E2887 + 1;
      E3128 := E3128 + 1;
      E3007 := E3007 + 1;
      E3019 := E3019 + 1;
      E3050 := E3050 + 1;
      E465 := E465 + 1;
      E2774 := E2774 + 1;
      E1093 := E1093 + 1;
      if E1389 = 0 then
         Multprec_Natural64_Coefficients'Elab_Body;
      end if;
      E1389 := E1389 + 1;
      if E1391 = 0 then
         Multprec_Natural64_Numbers'Elab_Spec;
      end if;
      if E1391 = 0 then
         Multprec_Natural64_Numbers'Elab_Body;
      end if;
      E1391 := E1391 + 1;
      if E1385 = 0 then
         Multprec_Integer64_Numbers'Elab_Spec;
      end if;
      E1385 := E1385 + 1;
      if E1395 = 0 then
         Multprec_Floating64_Numbers'Elab_Body;
      end if;
      E1395 := E1395 + 1;
      if E1383 = 0 then
         Multprec_Integer64_Ring'Elab_Spec;
      end if;
      E1383 := E1383 + 1;
      if E1349 = 0 then
         Multprec_Natural_Numbers_Io'Elab_Body;
      end if;
      E1349 := E1349 + 1;
      E1321 := E1321 + 1;
      E3651 := E3651 + 1;
      if E3643 = 0 then
         Multprec_Lattice_3d_Facets'Elab_Spec;
      end if;
      E3655 := E3655 + 1;
      E3643 := E3643 + 1;
      if E3647 = 0 then
         Multprec_Lattice_4d_Facets'Elab_Spec;
      end if;
      E3647 := E3647 + 1;
      E3639 := E3639 + 1;
      E3521 := E3521 + 1;
      E3661 := E3661 + 1;
      E2927 := E2927 + 1;
      E2993 := E2993 + 1;
      E867 := E867 + 1;
      if E981 = 0 then
         Bracket_Monomials'Elab_Spec;
      end if;
      E981 := E981 + 1;
      E985 := E985 + 1;
      E983 := E983 + 1;
      E989 := E989 + 1;
      E993 := E993 + 1;
      E1596 := E1596 + 1;
      if E1592 = 0 then
         Dobldobl_Bracket_Polynomials'Elab_Spec;
      end if;
      E1592 := E1592 + 1;
      E1594 := E1594 + 1;
      E379 := E379 + 1;
      if E099 = 0 then
         Dobldobl_Complex_Polynomials'Elab_Spec;
      end if;
      E099 := E099 + 1;
      if E200 = 0 then
         Dobldobl_Complex_Poly_Ring'Elab_Spec;
      end if;
      E200 := E200 + 1;
      if E674 = 0 then
         Dobldobl_Cseries_Polynomials'Elab_Spec;
      end if;
      E674 := E674 + 1;
      E455 := E455 + 1;
      if E287 = 0 then
         Double_Double_Polynomials'Elab_Spec;
      end if;
      E287 := E287 + 1;
      E631 := E631 + 1;
      if E625 = 0 then
         Dobldobl_Complex_Term_Lists'Elab_Spec;
      end if;
      E625 := E625 + 1;
      E377 := E377 + 1;
      E627 := E627 + 1;
      E391 := E391 + 1;
      E363 := E363 + 1;
      if E081 = 0 then
         Dobldobl_Complex_Laurentials'Elab_Spec;
      end if;
      E081 := E081 + 1;
      E357 := E357 + 1;
      E359 := E359 + 1;
      E3849 := E3849 + 1;
      E135 := E135 + 1;
      E165 := E165 + 1;
      E361 := E361 + 1;
      E355 := E355 + 1;
      E137 := E137 + 1;
      if E3493 = 0 then
         Dobldobl_Laursys_Container'Elab_Body;
      end if;
      E3493 := E3493 + 1;
      E423 := E423 + 1;
      if E413 = 0 then
         Integer_Mixed_Subdivisions'Elab_Spec;
      end if;
      E413 := E413 + 1;
      E323 := E323 + 1;
      E1059 := E1059 + 1;
      E865 := E865 + 1;
      E3621 := E3621 + 1;
      E1129 := E1129 + 1;
      if E1213 = 0 then
         Multprec_Complex_Laurentials'Elab_Spec;
      end if;
      E1213 := E1213 + 1;
      if E1237 = 0 then
         Multprec_Complex_Polynomials'Elab_Spec;
      end if;
      E1237 := E1237 + 1;
      if E1246 = 0 then
         Multprec_Complex_Term_Lists'Elab_Spec;
      end if;
      E1246 := E1246 + 1;
      if E3224 = 0 then
         Multprec_Floating_Polynomials'Elab_Spec;
      end if;
      E3224 := E3224 + 1;
      if E3519 = 0 then
         Multprec_Laursys_Container'Elab_Body;
      end if;
      E3519 := E3519 + 1;
      if E1700 = 0 then
         Octo_Double_Polynomials'Elab_Spec;
      end if;
      E1700 := E1700 + 1;
      if E1704 = 0 then
         Octodobl_Complex_Laurentials'Elab_Spec;
      end if;
      E1704 := E1704 + 1;
      if E1627 = 0 then
         Octodobl_Complex_Polynomials'Elab_Spec;
      end if;
      E1627 := E1627 + 1;
      if E1676 = 0 then
         Octodobl_Cseries_Polynomials'Elab_Spec;
      end if;
      E1676 := E1676 + 1;
      if E1880 = 0 then
         Penta_Double_Polynomials'Elab_Spec;
      end if;
      E1880 := E1880 + 1;
      if E1884 = 0 then
         Pentdobl_Complex_Laurentials'Elab_Spec;
      end if;
      E1884 := E1884 + 1;
      if E1807 = 0 then
         Pentdobl_Complex_Polynomials'Elab_Spec;
      end if;
      E1807 := E1807 + 1;
      if E1856 = 0 then
         Pentdobl_Cseries_Polynomials'Elab_Spec;
      end if;
      E1856 := E1856 + 1;
      E3625 := E3625 + 1;
      E1951 := E1951 + 1;
      E2560 := E2560 + 1;
      E885 := E885 + 1;
      if E2627 = 0 then
         Standard_Bracket_Polynomials'Elab_Spec;
      end if;
      E2627 := E2627 + 1;
      E3627 := E3627 + 1;
      if E2675 = 0 then
         Standard_Complex_Laurentials'Elab_Spec;
      end if;
      E2675 := E2675 + 1;
      E409 := E409 + 1;
      E3583 := E3583 + 1;
      E3106 := E3106 + 1;
      if E2719 = 0 then
         Standard_Complex_Polynomials'Elab_Spec;
      end if;
      E2719 := E2719 + 1;
      E2442 := E2442 + 1;
      if E2699 = 0 then
         Standard_Complex_Poly_Lists'Elab_Spec;
      end if;
      E2699 := E2699 + 1;
      if E2706 = 0 then
         Standard_Complex_Poly_Ring'Elab_Spec;
      end if;
      E2706 := E2706 + 1;
      E1426 := E1426 + 1;
      E2725 := E2725 + 1;
      E2760 := E2760 + 1;
      if E2762 = 0 then
         Standard_Complex_Term_Lists'Elab_Spec;
      end if;
      E2762 := E2762 + 1;
      if E2806 = 0 then
         Standard_Cseries_Polynomials'Elab_Spec;
      end if;
      E2806 := E2806 + 1;
      E3853 := E3853 + 1;
      if E2876 = 0 then
         Standard_Floating_Polynomials'Elab_Spec;
      end if;
      E2876 := E2876 + 1;
      E2766 := E2766 + 1;
      E2911 := E2911 + 1;
      E2997 := E2997 + 1;
      E2999 := E2999 + 1;
      if E3537 = 0 then
         Standard_Laursys_Container'Elab_Body;
      end if;
      E3537 := E3537 + 1;
      E1037 := E1037 + 1;
      E1023 := E1023 + 1;
      E141 := E141 + 1;
      E2438 := E2438 + 1;
      E688 := E688 + 1;
      E682 := E682 + 1;
      E579 := E579 + 1;
      E1013 := E1013 + 1;
      E1006 := E1006 + 1;
      E375 := E375 + 1;
      E692 := E692 + 1;
      E373 := E373 + 1;
      E220 := E220 + 1;
      E353 := E353 + 1;
      E067 := E067 + 1;
      E197 := E197 + 1;
      E127 := E127 + 1;
      E218 := E218 + 1;
      if E3483 = 0 then
         Dobldobl_Polysys_Container'Elab_Body;
      end if;
      E3483 := E3483 + 1;
      if E3719 = 0 then
         Dobldobl_Systems_Pool'Elab_Body;
      end if;
      E3719 := E3719 + 1;
      E1283 := E1283 + 1;
      E1305 := E1305 + 1;
      E1333 := E1333 + 1;
      if E3505 = 0 then
         Multprec_Polysys_Container'Elab_Body;
      end if;
      E3505 := E3505 + 1;
      E1606 := E1606 + 1;
      E1602 := E1602 + 1;
      E1682 := E1682 + 1;
      E1786 := E1786 + 1;
      E1782 := E1782 + 1;
      E1862 := E1862 + 1;
      E1953 := E1953 + 1;
      E2683 := E2683 + 1;
      E1963 := E1963 + 1;
      E2633 := E2633 + 1;
      E2647 := E2647 + 1;
      E2838 := E2838 + 1;
      E475 := E475 + 1;
      if E339 = 0 then
         Floating_Mixed_Subdivisions'Elab_Spec;
      end if;
      E335 := E335 + 1;
      E339 := E339 + 1;
      if E896 = 0 then
         Demics_Output_Cells'Elab_Body;
      end if;
      E896 := E896 + 1;
      E909 := E909 + 1;
      E331 := E331 + 1;
      E473 := E473 + 1;
      if E1187 = 0 then
         Mixed_Cells_Queue'Elab_Body;
      end if;
      E1187 := E1187 + 1;
      E2903 := E2903 + 1;
      E2991 := E2991 + 1;
      E3001 := E3001 + 1;
      E3009 := E3009 + 1;
      E3011 := E3011 + 1;
      E3017 := E3017 + 1;
      E3023 := E3023 + 1;
      E987 := E987 + 1;
      E1067 := E1067 + 1;
      E1065 := E1065 + 1;
      E641 := E641 + 1;
      E1031 := E1031 + 1;
      E2764 := E2764 + 1;
      E2790 := E2790 + 1;
      E1410 := E1410 + 1;
      E206 := E206 + 1;
      if E204 = 0 then
         Dobldobl_Evaluate_Deflation'Elab_Spec;
      end if;
      E208 := E208 + 1;
      E204 := E204 + 1;
      if E1123 = 0 then
         Monodromy_Group_Actions'Elab_Spec;
      end if;
      E1123 := E1123 + 1;
      E1125 := E1125 + 1;
      E1287 := E1287 + 1;
      if E1285 = 0 then
         Multprec_Evaluate_Deflation'Elab_Spec;
      end if;
      E1289 := E1289 + 1;
      E1285 := E1285 + 1;
      E2842 := E2842 + 1;
      if E2840 = 0 then
         Standard_Evaluate_Deflation'Elab_Spec;
      end if;
      E2844 := E2844 + 1;
      E2840 := E2840 + 1;
      if E3003 = 0 then
         Standard_Linear_Product_System'Elab_Body;
      end if;
      E3003 := E3003 + 1;
      E2723 := E2723 + 1;
      E3025 := E3025 + 1;
      E224 := E224 + 1;
      E3078 := E3078 + 1;
      E3076 := E3076 + 1;
      E3080 := E3080 + 1;
      E2818 := E2818 + 1;
      E3232 := E3232 + 1;
      E3088 := E3088 + 1;
      if E3092 = 0 then
         Standard_Parse_Numbers'Elab_Spec;
      end if;
      E3092 := E3092 + 1;
      if E1353 = 0 then
         Multprec_Parse_Numbers'Elab_Spec;
      end if;
      E1353 := E1353 + 1;
      E1291 := E1291 + 1;
      E1297 := E1297 + 1;
      E1225 := E1225 + 1;
      E1359 := E1359 + 1;
      E1279 := E1279 + 1;
      E109 := E109 + 1;
      E117 := E117 + 1;
      if E107 = 0 then
         Dobldobl_Complex_Solutions'Elab_Spec;
      end if;
      E107 := E107 + 1;
      E185 := E185 + 1;
      if E131 = 0 then
         Dobldobl_Continuation_Data'Elab_Spec;
      end if;
      E131 := E131 + 1;
      E555 := E555 + 1;
      E569 := E569 + 1;
      E139 := E139 + 1;
      if E1047 = 0 then
         Dobldobl_Linear_Product_System'Elab_Body;
      end if;
      E1047 := E1047 + 1;
      E1747 := E1747 + 1;
      if E230 = 0 then
         Dobldobl_Point_Lists'Elab_Spec;
      end if;
      E230 := E230 + 1;
      E169 := E169 + 1;
      E171 := E171 + 1;
      E157 := E157 + 1;
      E234 := E234 + 1;
      E254 := E254 + 1;
      E238 := E238 + 1;
      E258 := E258 + 1;
      E262 := E262 + 1;
      E3485 := E3485 + 1;
      if E1141 = 0 then
         Dobldobl_Solutions_Queue'Elab_Body;
      end if;
      E1141 := E1141 + 1;
      E268 := E268 + 1;
      E3799 := E3799 + 1;
      E1361 := E1361 + 1;
      E1422 := E1422 + 1;
      E1351 := E1351 + 1;
      E1267 := E1267 + 1;
      E1436 := E1436 + 1;
      E1651 := E1651 + 1;
      E1831 := E1831 + 1;
      E1372 := E1372 + 1;
      E1363 := E1363 + 1;
      E1399 := E1399 + 1;
      E2542 := E2542 + 1;
      E1442 := E1442 + 1;
      E1653 := E1653 + 1;
      E1661 := E1661 + 1;
      if E1649 = 0 then
         Octodobl_Complex_Solutions'Elab_Spec;
      end if;
      E1649 := E1649 + 1;
      E1696 := E1696 + 1;
      E1833 := E1833 + 1;
      E1841 := E1841 + 1;
      if E1829 = 0 then
         Pentdobl_Complex_Solutions'Elab_Spec;
      end if;
      E1829 := E1829 + 1;
      E1876 := E1876 + 1;
      E3114 := E3114 + 1;
      E2981 := E2981 + 1;
      if E3116 = 0 then
         Standard_Point_Lists'Elab_Spec;
      end if;
      E3116 := E3116 + 1;
      E3118 := E3118 + 1;
      if E3539 = 0 then
         Standard_Polysys_Container'Elab_Body;
      end if;
      E3539 := E3539 + 1;
      E3234 := E3234 + 1;
      E3122 := E3122 + 1;
      E3132 := E3132 + 1;
      E3098 := E3098 + 1;
      E3146 := E3146 + 1;
      E3154 := E3154 + 1;
      E3164 := E3164 + 1;
      E3082 := E3082 + 1;
      E3168 := E3168 + 1;
      E3172 := E3172 + 1;
      E3188 := E3188 + 1;
      E3190 := E3190 + 1;
      E3194 := E3194 + 1;
      if E3202 = 0 then
         Standard_Solutions_Queue'Elab_Body;
      end if;
      E3202 := E3202 + 1;
      E3206 := E3206 + 1;
      E266 := E266 + 1;
      E216 := E216 + 1;
      E2899 := E2899 + 1;
      E3208 := E3208 + 1;
      if E3547 = 0 then
         Standard_Systems_Pool'Elab_Body;
      end if;
      E3547 := E3547 + 1;
      E3220 := E3220 + 1;
      E3238 := E3238 + 1;
      E3240 := E3240 + 1;
      E2645 := E2645 + 1;
      E1576 := E1576 + 1;
      E2649 := E2649 + 1;
      E2796 := E2796 + 1;
      E2915 := E2915 + 1;
      E2917 := E2917 + 1;
      E3126 := E3126 + 1;
      E3060 := E3060 + 1;
      E3244 := E3244 + 1;
      E3242 := E3242 + 1;
      E2812 := E2812 + 1;
      E2810 := E2810 + 1;
      E155 := E155 + 1;
      E3803 := E3803 + 1;
      E3246 := E3246 + 1;
      E3250 := E3250 + 1;
      E2629 := E2629 + 1;
      E3549 := E3549 + 1;
      E3252 := E3252 + 1;
      E011 := E011 + 1;
      E037 := E037 + 1;
      E900 := E900 + 1;
      E907 := E907 + 1;
      E3489 := E3489 + 1;
      if E3695 = 0 then
         Lists_Of_Strings'Elab_Spec;
      end if;
      E3695 := E3695 + 1;
      if E3693 = 0 then
         Demics_Output_Data'Elab_Body;
      end if;
      E3693 := E3693 + 1;
      E863 := E863 + 1;
      E3641 := E3641 + 1;
      E3543 := E3543 + 1;
      E3817 := E3817 + 1;
      E3819 := E3819 + 1;
      E3254 := E3254 + 1;
      E3256 := E3256 + 1;
      E3587 := E3587 + 1;
      E3709 := E3709 + 1;
      if E3260 = 0 then
         Symbol_Table'Elab_Spec;
      end if;
      E3260 := E3260 + 1;
      E1025 := E1025 + 1;
      E2679 := E2679 + 1;
      if E1339 = 0 then
         Lists_Of_Symbols'Elab_Spec;
      end if;
      E1339 := E1339 + 1;
      E2564 := E2564 + 1;
      E2572 := E2572 + 1;
      E2480 := E2480 + 1;
      E3541 := E3541 + 1;
      E3613 := E3613 + 1;
      E3513 := E3513 + 1;
      E3813 := E3813 + 1;
      E3545 := E3545 + 1;
      E3262 := E3262 + 1;
      E1755 := E1755 + 1;
      E1215 := E1215 + 1;
      E083 := E083 + 1;
      if E1337 = 0 then
         Multprec_Maple_Solutions_Io'Elab_Body;
      end if;
      E1337 := E1337 + 1;
      E1733 := E1733 + 1;
      E1913 := E1913 + 1;
      E2562 := E2562 + 1;
      E2570 := E2570 + 1;
      E2681 := E2681 + 1;
      E2677 := E2677 + 1;
      E2709 := E2709 + 1;
      E1207 := E1207 + 1;
      E621 := E621 + 1;
      E1229 := E1229 + 1;
      E623 := E623 + 1;
      E2667 := E2667 + 1;
      E3553 := E3553 + 1;
      E3585 := E3585 + 1;
      if E2828 = 0 then
         Standard_Dictionary_Solutions_Io'Elab_Body;
      end if;
      E2828 := E2828 + 1;
      E3084 := E3084 + 1;
      E684 := E684 + 1;
      E3152 := E3152 + 1;
      E3272 := E3272 + 1;
      E2758 := E2758 + 1;
      E111 := E111 + 1;
      E133 := E133 + 1;
      E1063 := E1063 + 1;
      E260 := E260 + 1;
      E264 := E264 + 1;
      E573 := E573 + 1;
      E1244 := E1244 + 1;
      E645 := E645 + 1;
      E1401 := E1401 + 1;
      E1694 := E1694 + 1;
      E1874 := E1874 + 1;
      E2794 := E2794 + 1;
      E3037 := E3037 + 1;
      E3192 := E3192 + 1;
      E3198 := E3198 + 1;
      if E3284 = 0 then
         Symmetry_Group'Elab_Spec;
      end if;
      E3284 := E3284 + 1;
      E3270 := E3270 + 1;
      E3286 := E3286 + 1;
      if E3288 = 0 then
         System_Call'Elab_Spec;
      end if;
      E3288 := E3288 + 1;
      E3160 := E3160 + 1;
      if E3158 = 0 then
         Standard_Random_Numbers'Elab_Body;
      end if;
      E3158 := E3158 + 1;
      E913 := E913 + 1;
      E911 := E911 + 1;
      E902 := E902 + 1;
      E175 := E175 + 1;
      E431 := E431 + 1;
      E236 := E236 + 1;
      E3747 := E3747 + 1;
      E177 := E177 + 1;
      E191 := E191 + 1;
      E193 := E193 + 1;
      E583 := E583 + 1;
      E1165 := E1165 + 1;
      E226 := E226 + 1;
      E433 := E433 + 1;
      E973 := E973 + 1;
      E232 := E232 + 1;
      E1157 := E1157 + 1;
      E2430 := E2430 + 1;
      E327 := E327 + 1;
      E337 := E337 + 1;
      E329 := E329 + 1;
      if E325 = 0 then
         Floating_Faces_Of_Polytope'Elab_Spec;
      end if;
      E325 := E325 + 1;
      E347 := E347 + 1;
      E701 := E701 + 1;
      E643 := E643 + 1;
      E411 := E411 + 1;
      E405 := E405 + 1;
      if E403 = 0 then
         Integer_Faces_Of_Polytope'Elab_Spec;
      end if;
      E403 := E403 + 1;
      E929 := E929 + 1;
      E419 := E419 + 1;
      E1393 := E1393 + 1;
      E1378 := E1378 + 1;
      E1397 := E1397 + 1;
      E1259 := E1259 + 1;
      E1273 := E1273 + 1;
      E1370 := E1370 + 1;
      E1706 := E1706 + 1;
      E1725 := E1725 + 1;
      E1716 := E1716 + 1;
      E1708 := E1708 + 1;
      E1690 := E1690 + 1;
      E1688 := E1688 + 1;
      E1739 := E1739 + 1;
      E1886 := E1886 + 1;
      E1905 := E1905 + 1;
      E1896 := E1896 + 1;
      E1888 := E1888 + 1;
      E1870 := E1870 + 1;
      E1868 := E1868 + 1;
      E1981 := E1981 + 1;
      E2424 := E2424 + 1;
      E2434 := E2434 + 1;
      E2596 := E2596 + 1;
      E2598 := E2598 + 1;
      E2665 := E2665 + 1;
      E2705 := E2705 + 1;
      if E2923 = 0 then
         Standard_Integer32_Triangulations'Elab_Spec;
      end if;
      E2923 := E2923 + 1;
      E035 := E035 + 1;
      E931 := E931 + 1;
      E935 := E935 + 1;
      E2925 := E2925 + 1;
      E3013 := E3013 + 1;
      E3156 := E3156 + 1;
      E3763 := E3763 + 1;
      E3162 := E3162 + 1;
      E3575 := E3575 + 1;
      E3569 := E3569 + 1;
      E3571 := E3571 + 1;
      E2422 := E2422 + 1;
      E861 := E861 + 1;
      E2814 := E2814 + 1;
      E2820 := E2820 + 1;
      E2907 := E2907 + 1;
      E3178 := E3178 + 1;
      E3035 := E3035 + 1;
      E3112 := E3112 + 1;
      E3033 := E3033 + 1;
      E3110 := E3110 + 1;
      E3120 := E3120 + 1;
      E3176 := E3176 + 1;
      E1155 := E1155 + 1;
      E1153 := E1153 + 1;
      E3062 := E3062 + 1;
      E2852 := E2852 + 1;
      E2850 := E2850 + 1;
      E3130 := E3130 + 1;
      if E3200 = 0 then
         Standard_Solutions_Heap'Elab_Spec;
      end if;
      E3200 := E3200 + 1;
      if E3292 = 0 then
         Templates'Elab_Body;
      end if;
      E3292 := E3292 + 1;
      E3294 := E3294 + 1;
      E859 := E859 + 1;
      E3300 := E3300 + 1;
      if E3304 = 0 then
         Timing_Package'Elab_Spec;
      end if;
      if E3304 = 0 then
         Timing_Package'Elab_Body;
      end if;
      E3304 := E3304 + 1;
      E1191 := E1191 + 1;
      E1776 := E1776 + 1;
      E3310 := E3310 + 1;
      E3312 := E3312 + 1;
      E1101 := E1101 + 1;
      E1105 := E1105 + 1;
      E415 := E415 + 1;
      E341 := E341 + 1;
      E1097 := E1097 + 1;
      E919 := E919 + 1;
      E2929 := E2929 + 1;
      E945 := E945 + 1;
      E947 := E947 + 1;
      E399 := E399 + 1;
      E1582 := E1582 + 1;
      E315 := E315 + 1;
      E313 := E313 + 1;
      E927 := E927 + 1;
      E2834 := E2834 + 1;
      E033 := E033 + 1;
      E3316 := E3316 + 1;
      if E3318 = 0 then
         Trees_Of_Vectors'Elab_Spec;
      end if;
      E3318 := E3318 + 1;
      if E3320 = 0 then
         trees_of_vectors_io'elab_body;
      end if;
      E3320 := E3320 + 1;
      E3454 := E3454 + 1;
      E2002 := E2002 + 1;
      E499 := E499 + 1;
      if E771 = 0 then
         Deca_Double_Constants'Elab_Spec;
      end if;
      E771 := E771 + 1;
      E731 := E731 + 1;
      if E497 = 0 then
         Deca_Double_Ring'Elab_Spec;
      end if;
      E497 := E497 + 1;
      if E764 = 0 then
         Deca_Double_Polynomials'Elab_Spec;
      end if;
      E764 := E764 + 1;
      E758 := E758 + 1;
      if E494 = 0 then
         Decadobl_Complex_Ring'Elab_Spec;
      end if;
      E494 := E494 + 1;
      if E768 = 0 then
         Decadobl_Complex_Laurentials'Elab_Spec;
      end if;
      E768 := E768 + 1;
      if E493 = 0 then
         Decadobl_Complex_Polynomials'Elab_Spec;
      end if;
      E493 := E493 + 1;
      if E734 = 0 then
         Decadobl_Complex_Series_Ring'Elab_Spec;
      end if;
      E734 := E734 + 1;
      E1459 := E1459 + 1;
      E1477 := E1477 + 1;
      E715 := E715 + 1;
      E1487 := E1487 + 1;
      E1479 := E1479 + 1;
      if E750 = 0 then
         Decadobl_Cseries_Polynomials'Elab_Spec;
      end if;
      E750 := E750 + 1;
      E1489 := E1489 + 1;
      E752 := E752 + 1;
      E773 := E773 + 1;
      E1151 := E1151 + 1;
      E2492 := E2492 + 1;
      E1481 := E1481 + 1;
      E2494 := E2494 + 1;
      E1483 := E1483 + 1;
      E1500 := E1500 + 1;
      E2490 := E2490 + 1;
      E770 := E770 + 1;
      E1502 := E1502 + 1;
      E1491 := E1491 + 1;
      E1475 := E1475 + 1;
      E1473 := E1473 + 1;
      E1471 := E1471 + 1;
      E512 := E512 + 1;
      E680 := E680 + 1;
      E1457 := E1457 + 1;
      E678 := E678 + 1;
      E676 := E676 + 1;
      if E837 = 0 then
         Hexa_Double_Constants'Elab_Spec;
      end if;
      E837 := E837 + 1;
      E797 := E797 + 1;
      if E510 = 0 then
         Hexa_Double_Ring'Elab_Spec;
      end if;
      E510 := E510 + 1;
      if E830 = 0 then
         Hexa_Double_Polynomials'Elab_Spec;
      end if;
      E830 := E830 + 1;
      E824 := E824 + 1;
      if E507 = 0 then
         Hexadobl_Complex_Ring'Elab_Spec;
      end if;
      E507 := E507 + 1;
      if E834 = 0 then
         Hexadobl_Complex_Laurentials'Elab_Spec;
      end if;
      E834 := E834 + 1;
      if E506 = 0 then
         Hexadobl_Complex_Polynomials'Elab_Spec;
      end if;
      E506 := E506 + 1;
      if E800 = 0 then
         Hexadobl_Complex_Series_Ring'Elab_Spec;
      end if;
      E800 := E800 + 1;
      E1514 := E1514 + 1;
      E1541 := E1541 + 1;
      E781 := E781 + 1;
      E1551 := E1551 + 1;
      E1543 := E1543 + 1;
      if E816 = 0 then
         Hexadobl_Cseries_Polynomials'Elab_Spec;
      end if;
      E816 := E816 + 1;
      E1553 := E1553 + 1;
      E818 := E818 + 1;
      E839 := E839 + 1;
      E1175 := E1175 + 1;
      E1545 := E1545 + 1;
      E1512 := E1512 + 1;
      E1547 := E1547 + 1;
      E1564 := E1564 + 1;
      E836 := E836 + 1;
      E1566 := E1566 + 1;
      E1555 := E1555 + 1;
      E1539 := E1539 + 1;
      E1537 := E1537 + 1;
      E1535 := E1535 + 1;
      E1257 := E1257 + 1;
      E1303 := E1303 + 1;
      E1636 := E1636 + 1;
      E1816 := E1816 + 1;
      if E1994 = 0 then
         Quad_Double_Constants'Elab_Spec;
      end if;
      E1994 := E1994 + 1;
      E2004 := E2004 + 1;
      E1376 := E1376 + 1;
      E1584 := E1584 + 1;
      E043 := E043 + 1;
      if E1749 = 0 then
         Dobldobl_Quad_Parameters'Elab_Spec;
      end if;
      E1749 := E1749 + 1;
      E1753 := E1753 + 1;
      E925 := E925 + 1;
      E703 := E703 + 1;
      E1085 := E1085 + 1;
      E1211 := E1211 + 1;
      E079 := E079 + 1;
      E1731 := E1731 + 1;
      E1774 := E1774 + 1;
      E1911 := E1911 + 1;
      E1959 := E1959 + 1;
      if E2015 = 0 then
         Quad_Double_Ring'Elab_Spec;
      end if;
      E2015 := E2015 + 1;
      if E2012 = 0 then
         Quad_Double_Polynomials'Elab_Spec;
      end if;
      E2012 := E2012 + 1;
      E1923 := E1923 + 1;
      E2073 := E2073 + 1;
      if E2100 = 0 then
         Quaddobl_Complex_Ring'Elab_Spec;
      end if;
      E2100 := E2100 + 1;
      if E2035 = 0 then
         Quaddobl_Bracket_Polynomials'Elab_Spec;
      end if;
      E2035 := E2035 + 1;
      E2037 := E2037 + 1;
      if E2059 = 0 then
         Quaddobl_Complex_Laurentials'Elab_Spec;
      end if;
      E2059 := E2059 + 1;
      if E2095 = 0 then
         Quaddobl_Complex_Polynomials'Elab_Spec;
      end if;
      E2095 := E2095 + 1;
      E1095 := E1095 + 1;
      if E2082 = 0 then
         Quaddobl_Complex_Poly_Ring'Elab_Spec;
      end if;
      E2082 := E2082 + 1;
      E319 := E319 + 1;
      E333 := E333 + 1;
      E397 := E397 + 1;
      E3751 := E3751 + 1;
      if E2126 = 0 then
         Quaddobl_Complex_Term_Lists'Elab_Spec;
      end if;
      E2126 := E2126 + 1;
      E2128 := E2128 + 1;
      E3479 := E3479 + 1;
      E1931 := E1931 + 1;
      E212 := E212 + 1;
      E3561 := E3561 + 1;
      E3767 := E3767 + 1;
      E3579 := E3579 + 1;
      E1197 := E1197 + 1;
      E395 := E395 + 1;
      E1127 := E1127 + 1;
      E3677 := E3677 + 1;
      E1919 := E1919 + 1;
      E937 := E937 + 1;
      E941 := E941 + 1;
      E951 := E951 + 1;
      if E1737 = 0 then
         Orbits_Of_Solutions'Elab_Spec;
      end if;
      E1737 := E1737 + 1;
      E1077 := E1077 + 1;
      E1917 := E1917 + 1;
      E939 := E939 + 1;
      E1955 := E1955 + 1;
      E1343 := E1343 + 1;
      E2264 := E2264 + 1;
      E991 := E991 + 1;
      E999 := E999 + 1;
      E1001 := E1001 + 1;
      if E1015 = 0 then
         Intersection_Posets'Elab_Spec;
      end if;
      E1015 := E1015 + 1;
      if E1008 = 0 then
         Dobldobl_Solution_Posets'Elab_Spec;
      end if;
      E1008 := E1008 + 1;
      E1017 := E1017 + 1;
      E2558 := E2558 + 1;
      E2222 := E2222 + 1;
      if E2111 = 0 then
         Quaddobl_Complex_Series_Ring'Elab_Spec;
      end if;
      E2111 := E2111 + 1;
      E3821 := E3821 + 1;
      E2108 := E2108 + 1;
      E2063 := E2063 + 1;
      E1029 := E1029 + 1;
      E2041 := E2041 + 1;
      if E2130 = 0 then
         Quaddobl_Complex_Veclists'Elab_Spec;
      end if;
      E2130 := E2130 + 1;
      E2354 := E2354 + 1;
      E2352 := E2352 + 1;
      if E2162 = 0 then
         Quaddobl_Cseries_Polynomials'Elab_Spec;
      end if;
      E2162 := E2162 + 1;
      E2356 := E2356 + 1;
      E3851 := E3851 + 1;
      E2184 := E2184 + 1;
      E2290 := E2290 + 1;
      E2641 := E2641 + 1;
      E2196 := E2196 + 1;
      E2212 := E2212 + 1;
      E2188 := E2188 + 1;
      if E2186 = 0 then
         Quaddobl_Evaluate_Deflation'Elab_Spec;
      end if;
      E2190 := E2190 + 1;
      E2186 := E2186 + 1;
      E2214 := E2214 + 1;
      E2216 := E2216 + 1;
      if E3529 = 0 then
         Quaddobl_Laursys_Container'Elab_Body;
      end if;
      E3529 := E3529 + 1;
      E2440 := E2440 + 1;
      E2226 := E2226 + 1;
      E1957 := E1957 + 1;
      E2302 := E2302 + 1;
      E2312 := E2312 + 1;
      E2304 := E2304 + 1;
      E2262 := E2262 + 1;
      E2075 := E2075 + 1;
      E2462 := E2462 + 1;
      E2099 := E2099 + 1;
      E2106 := E2106 + 1;
      E2464 := E2464 + 1;
      E2120 := E2120 + 1;
      E2639 := E2639 + 1;
      E2134 := E2134 + 1;
      E849 := E849 + 1;
      E2164 := E2164 + 1;
      E2460 := E2460 + 1;
      E2182 := E2182 + 1;
      E2228 := E2228 + 1;
      E2230 := E2230 + 1;
      E705 := E705 + 1;
      E2332 := E2332 + 1;
      E2246 := E2246 + 1;
      E2244 := E2244 + 1;
      E2248 := E2248 + 1;
      E2170 := E2170 + 1;
      E2406 := E2406 + 1;
      E2276 := E2276 + 1;
      E2280 := E2280 + 1;
      if E3531 = 0 then
         Quaddobl_Polysys_Container'Elab_Body;
      end if;
      E3531 := E3531 + 1;
      E2408 := E2408 + 1;
      if E2292 = 0 then
         Quaddobl_Quad_Parameters'Elab_Spec;
      end if;
      E2292 := E2292 + 1;
      E2314 := E2314 + 1;
      E2224 := E2224 + 1;
      E2310 := E2310 + 1;
      E3757 := E3757 + 1;
      E2316 := E2316 + 1;
      E1199 := E1199 + 1;
      E2200 := E2200 + 1;
      E2358 := E2358 + 1;
      E2274 := E2274 + 1;
      E2234 := E2234 + 1;
      E2334 := E2334 + 1;
      E2318 := E2318 + 1;
      E2250 := E2250 + 1;
      E2322 := E2322 + 1;
      E2350 := E2350 + 1;
      E1173 := E1173 + 1;
      E1979 := E1979 + 1;
      E1177 := E1177 + 1;
      E2242 := E2242 + 1;
      E2240 := E2240 + 1;
      E2388 := E2388 + 1;
      E2330 := E2330 + 1;
      if E3721 = 0 then
         Quaddobl_Systems_Pool'Elab_Body;
      end if;
      E3721 := E3721 + 1;
      E3769 := E3769 + 1;
      E2412 := E2412 + 1;
      E2414 := E2414 + 1;
      E2039 := E2039 + 1;
      E2418 := E2418 + 1;
      E2416 := E2416 + 1;
      E2258 := E2258 + 1;
      E2420 := E2420 + 1;
      E2472 := E2472 + 1;
      E2478 := E2478 + 1;
      E2482 := E2482 + 1;
      E2524 := E2524 + 1;
      E2576 := E2576 + 1;
      E2578 := E2578 + 1;
      E2580 := E2580 + 1;
      if E2655 = 0 then
         Standard_Complex_Exponentiation'Elab_Body;
      end if;
      E2655 := E2655 + 1;
      if E250 = 0 then
         Dobldobl_Complex_Exponentiation'Elab_Body;
      end if;
      E250 := E250 + 1;
      E248 := E248 + 1;
      E246 := E246 + 1;
      E256 := E256 + 1;
      E244 := E244 + 1;
      E242 := E242 + 1;
      if E2043 = 0 then
         Quaddobl_Complex_Exponentiation'Elab_Body;
      end if;
      E2043 := E2043 + 1;
      E2615 := E2615 + 1;
      E2613 := E2613 + 1;
      E2673 := E2673 + 1;
      E3573 := E3573 + 1;
      E3581 := E3581 + 1;
      E3567 := E3567 + 1;
      E3565 := E3565 + 1;
      E1770 := E1770 + 1;
      E2738 := E2738 + 1;
      E2808 := E2808 + 1;
      E2846 := E2846 + 1;
      E2619 := E2619 + 1;
      E2617 := E2617 + 1;
      if E145 = 0 then
         Dobldobl_Monomial_Maps'Elab_Spec;
      end if;
      E145 := E145 + 1;
      if E2232 = 0 then
         Quaddobl_Monomial_Maps'Elab_Spec;
      end if;
      E2232 := E2232 + 1;
      E2989 := E2989 + 1;
      E214 := E214 + 1;
      if E210 = 0 then
         Dobldobl_Jacobian_Circuits'Elab_Spec;
      end if;
      E210 := E210 + 1;
      E2328 := E2328 + 1;
      if E2326 = 0 then
         Quaddobl_Jacobian_Circuits'Elab_Spec;
      end if;
      E2326 := E2326 + 1;
      E3021 := E3021 + 1;
      if E3029 = 0 then
         Standard_Monomial_Maps'Elab_Spec;
      end if;
      E3029 := E3029 + 1;
      if E3671 = 0 then
         Monomial_Maps_Container'Elab_Body;
      end if;
      E3671 := E3671 + 1;
      E3031 := E3031 + 1;
      E3027 := E3027 + 1;
      E3108 := E3108 + 1;
      E3102 := E3102 + 1;
      E061 := E061 + 1;
      E3669 := E3669 + 1;
      E3140 := E3140 + 1;
      E3148 := E3148 + 1;
      E3186 := E3186 + 1;
      E3184 := E3184 + 1;
      E3182 := E3182 + 1;
      if E3196 = 0 then
         Standard_Solution_Posets'Elab_Spec;
      end if;
      E3196 := E3196 + 1;
      E3212 := E3212 + 1;
      E3248 := E3248 + 1;
      E3258 := E3258 + 1;
      E915 := E915 + 1;
      E898 := E898 + 1;
      E533 := E533 + 1;
      E943 := E943 + 1;
      E3637 := E3637 + 1;
      E1945 := E1945 + 1;
      if E2609 = 0 then
         Standard_Binomial_Factors'Elab_Spec;
      end if;
      E2609 := E2609 + 1;
      E2611 := E2611 + 1;
      if E3136 = 0 then
         Standard_Puiseux_Certificates'Elab_Spec;
      end if;
      E3136 := E3136 + 1;
      E3138 := E3138 + 1;
      E587 := E587 + 1;
      E3264 := E3264 + 1;
      E3266 := E3266 + 1;
      E1586 := E1586 + 1;
      E1027 := E1027 + 1;
      E1927 := E1927 + 1;
      E2468 := E2468 + 1;
      E3268 := E3268 + 1;
      E2574 := E2574 + 1;
      E2476 := E2476 + 1;
      E3274 := E3274 + 1;
      E3280 := E3280 + 1;
      if E3282 = 0 then
         Symmetric_Set_Structure'Elab_Body;
      end if;
      E3282 := E3282 + 1;
      E3298 := E3298 + 1;
      E3314 := E3314 + 1;
      if E3452 = 0 then
         Triple_Double_Constants'Elab_Spec;
      end if;
      E3452 := E3452 + 1;
      E3407 := E3407 + 1;
      E3456 := E3456 + 1;
      E3336 := E3336 + 1;
      if E3461 = 0 then
         Triple_Double_Ring'Elab_Spec;
      end if;
      E3461 := E3461 + 1;
      if E3460 = 0 then
         Triple_Double_Polynomials'Elab_Spec;
      end if;
      E3460 := E3460 + 1;
      E740 := E740 + 1;
      E760 := E760 + 1;
      E779 := E779 + 1;
      E777 := E777 + 1;
      E806 := E806 + 1;
      E826 := E826 + 1;
      E845 := E845 + 1;
      E843 := E843 + 1;
      E2071 := E2071 + 1;
      E1590 := E1590 + 1;
      E707 := E707 + 1;
      E2284 := E2284 + 1;
      E2051 := E2051 + 1;
      E2061 := E2061 + 1;
      E2057 := E2057 + 1;
      E2085 := E2085 + 1;
      E2364 := E2364 + 1;
      E3334 := E3334 + 1;
      E3338 := E3338 + 1;
      E1510 := E1510 + 1;
      E3340 := E3340 + 1;
      if E3355 = 0 then
         Tripdobl_Complex_Ring'Elab_Spec;
      end if;
      E3355 := E3355 + 1;
      if E3431 = 0 then
         Tripdobl_Complex_Laurentials'Elab_Spec;
      end if;
      E3431 := E3431 + 1;
      if E3350 = 0 then
         Tripdobl_Complex_Polynomials'Elab_Spec;
      end if;
      E3350 := E3350 + 1;
      E491 := E491 + 1;
      E961 := E961 + 1;
      E957 := E957 + 1;
      E955 := E955 + 1;
      E489 := E489 + 1;
      E517 := E517 + 1;
      E515 := E515 + 1;
      E1135 := E1135 + 1;
      E3354 := E3354 + 1;
      E3359 := E3359 + 1;
      if E3364 = 0 then
         Tripdobl_Complex_Series_Ring'Elab_Spec;
      end if;
      E3364 := E3364 + 1;
      E3370 := E3370 + 1;
      E3378 := E3378 + 1;
      E3382 := E3382 + 1;
      if E3372 = 0 then
         Tripdobl_Complex_Solutions'Elab_Spec;
      end if;
      E3372 := E3372 + 1;
      E3374 := E3374 + 1;
      E3361 := E3361 + 1;
      E3421 := E3421 + 1;
      E3423 := E3423 + 1;
      E1149 := E1149 + 1;
      E744 := E744 + 1;
      if E738 = 0 then
         Decadobl_Complex_Solutions'Elab_Spec;
      end if;
      E738 := E738 + 1;
      E756 := E756 + 1;
      E810 := E810 + 1;
      if E804 = 0 then
         Hexadobl_Complex_Solutions'Elab_Spec;
      end if;
      E804 := E804 + 1;
      E822 := E822 + 1;
      E2138 := E2138 + 1;
      if E2122 = 0 then
         Quaddobl_Complex_Solutions'Elab_Spec;
      end if;
      E2122 := E2122 + 1;
      E3517 := E3517 + 1;
      E581 := E581 + 1;
      E1987 := E1987 + 1;
      E2027 := E2027 + 1;
      E2124 := E2124 + 1;
      E053 := E053 + 1;
      E1983 := E1983 + 1;
      E153 := E153 + 1;
      E969 := E969 + 1;
      E971 := E971 + 1;
      E967 := E967 + 1;
      E159 := E159 + 1;
      if E3683 = 0 then
         Dobldobl_Path_Tracker'Elab_Body;
      end if;
      E3683 := E3683 + 1;
      E147 := E147 + 1;
      E129 := E129 + 1;
      E167 := E167 + 1;
      E1357 := E1357 + 1;
      if E3685 = 0 then
         Multprec_Path_Tracker'Elab_Body;
      end if;
      E3685 := E3685 + 1;
      E1355 := E1355 + 1;
      E1307 := E1307 + 1;
      E1989 := E1989 + 1;
      E2148 := E2148 + 1;
      if E2150 = 0 then
         Quaddobl_Continuation_Data'Elab_Spec;
      end if;
      E2150 := E2150 + 1;
      E2152 := E2152 + 1;
      E2266 := E2266 + 1;
      E2268 := E2268 + 1;
      E2166 := E2166 + 1;
      E2172 := E2172 + 1;
      E2178 := E2178 + 1;
      E2206 := E2206 + 1;
      E2208 := E2208 + 1;
      E2210 := E2210 + 1;
      E2204 := E2204 + 1;
      E2218 := E2218 + 1;
      if E2220 = 0 then
         Quaddobl_Linear_Product_System'Elab_Body;
      end if;
      E2220 := E2220 + 1;
      E2236 := E2236 + 1;
      E2238 := E2238 + 1;
      E2272 := E2272 + 1;
      E2252 := E2252 + 1;
      if E2278 = 0 then
         Quaddobl_Point_Lists'Elab_Spec;
      end if;
      E2278 := E2278 + 1;
      E2288 := E2288 + 1;
      E2270 := E2270 + 1;
      if E3687 = 0 then
         Quaddobl_Path_Tracker'Elab_Body;
      end if;
      E3687 := E3687 + 1;
      E2256 := E2256 + 1;
      E2202 := E2202 + 1;
      E2298 := E2298 + 1;
      E2306 := E2306 + 1;
      E2300 := E2300 + 1;
      E2308 := E2308 + 1;
      E2025 := E2025 + 1;
      E2346 := E2346 + 1;
      E2372 := E2372 + 1;
      E2370 := E2370 + 1;
      E2368 := E2368 + 1;
      E2282 := E2282 + 1;
      E2374 := E2374 + 1;
      E2376 := E2376 + 1;
      E2378 := E2378 + 1;
      if E2380 = 0 then
         Quaddobl_Solution_Posets'Elab_Spec;
      end if;
      E2380 := E2380 + 1;
      E2382 := E2382 + 1;
      E3615 := E3615 + 1;
      E3533 := E3533 + 1;
      if E2384 = 0 then
         Quaddobl_Solutions_Queue'Elab_Body;
      end if;
      E2384 := E2384 + 1;
      E2390 := E2390 + 1;
      E3801 := E3801 + 1;
      E2426 := E2426 + 1;
      E3713 := E3713 + 1;
      E2550 := E2550 + 1;
      E694 := E694 + 1;
      E2586 := E2586 + 1;
      E2588 := E2588 + 1;
      E2637 := E2637 + 1;
      E3096 := E3096 + 1;
      E2979 := E2979 + 1;
      E2983 := E2983 + 1;
      E2977 := E2977 + 1;
      E3100 := E3100 + 1;
      if E3689 = 0 then
         Standard_Path_Tracker'Elab_Body;
      end if;
      E3689 := E3689 + 1;
      E3094 := E3094 + 1;
      E2584 := E2584 + 1;
      E3733 := E3733 + 1;
      E3805 := E3805 + 1;
      E3306 := E3306 + 1;
      E2436 := E2436 + 1;
      E3703 := E3703 + 1;
      E3328 := E3328 + 1;
      E3324 := E3324 + 1;
      E3417 := E3417 + 1;
      E3415 := E3415 + 1;
      if E3397 = 0 then
         Tripdobl_Cseries_Polynomials'Elab_Spec;
      end if;
      E3397 := E3397 + 1;
      E1455 := E1455 + 1;
      E2546 := E2546 + 1;
      E3064 := E3064 + 1;
      E2488 := E2488 + 1;
      E2450 := E2450 + 1;
      E2496 := E2496 + 1;
      E2504 := E2504 + 1;
      E2458 := E2458 + 1;
      E3419 := E3419 + 1;
      E3437 := E3437 + 1;
      E3403 := E3403 + 1;
      E3427 := E3427 + 1;
      E3451 := E3451 + 1;
      E3449 := E3449 + 1;
      E3433 := E3433 + 1;
      E847 := E847 + 1;
      E871 := E871 + 1;
      E1137 := E1137 + 1;
      E1574 := E1574 + 1;
      E3443 := E3443 + 1;
      E3439 := E3439 + 1;
      E3435 := E3435 + 1;
      E1580 := E1580 + 1;
      E3411 := E3411 + 1;
      E1572 := E1572 + 1;
      E1570 := E1570 + 1;
      E3409 := E3409 + 1;
      E3413 := E3413 + 1;
      E3469 := E3469 + 1;
      E3322 := E3322 + 1;
      E3471 := E3471 + 1;
      E3559 := E3559 + 1;
      E3635 := E3635 + 1;
      E3667 := E3667 + 1;
      E3675 := E3675 + 1;
      E3701 := E3701 + 1;
      E3711 := E3711 + 1;
      E3731 := E3731 + 1;
      E3807 := E3807 + 1;
      E2909 := E2909 + 1;
      E1745 := E1745 + 1;
      E873 := E873 + 1;
      if E3827 = 0 then
         Varbprec_Homotopy'Elab_Body;
      end if;
      E3827 := E3827 + 1;
      E3829 := E3829 + 1;
      E3831 := E3831 + 1;
      E3833 := E3833 + 1;
      E3290 := E3290 + 1;
      E3823 := E3823 + 1;
      E3825 := E3825 + 1;
      E3815 := E3815 + 1;
      if E3811 = 0 then
         Varbprec_Path_Tracker'Elab_Body;
      end if;
      E3811 := E3811 + 1;
      E3837 := E3837 + 1;
      E3841 := E3841 + 1;
      E3843 := E3843 + 1;
      E3847 := E3847 + 1;
      E553 := E553 + 1;
      E599 := E599 + 1;
      E2176 := E2176 + 1;
      E2824 := E2824 + 1;
      E551 := E551 + 1;
      E3863 := E3863 + 1;
      E3865 := E3865 + 1;
      E2721 := E2721 + 1;
      E1239 := E1239 + 1;
      E729 := E729 + 1;
      E101 := E101 + 1;
      E795 := E795 + 1;
      E1235 := E1235 + 1;
      E727 := E727 + 1;
      E775 := E775 + 1;
      E097 := E097 + 1;
      E305 := E305 + 1;
      E270 := E270 + 1;
      E1969 := E1969 + 1;
      E1075 := E1075 + 1;
      E1765 := E1765 + 1;
      E1751 := E1751 + 1;
      E793 := E793 + 1;
      E841 := E841 + 1;
      E1424 := E1424 + 1;
      E1629 := E1629 + 1;
      E1625 := E1625 + 1;
      E1729 := E1729 + 1;
      E1809 := E1809 + 1;
      E1805 := E1805 + 1;
      E1909 := E1909 + 1;
      E2097 := E2097 + 1;
      E065 := E065 + 1;
      E2091 := E2091 + 1;
      E2296 := E2296 + 1;
      E2294 := E2294 + 1;
      E2394 := E2394 + 1;
      E2396 := E2396 + 1;
      E2398 := E2398 + 1;
      E2410 := E2410 + 1;
      E2470 := E2470 + 1;
      E1588 := E1588 + 1;
      E2729 := E2729 + 1;
      E997 := E997 + 1;
      E1133 := E1133 + 1;
      E2715 := E2715 + 1;
      E051 := E051 + 1;
      E539 := E539 + 1;
      E883 := E883 + 1;
      E557 := E557 + 1;
      E637 := E637 + 1;
      E869 := E869 + 1;
      E881 := E881 + 1;
      E1069 := E1069 + 1;
      E311 := E311 + 1;
      E1083 := E1083 + 1;
      E309 := E309 + 1;
      E1418 := E1418 + 1;
      E1961 := E1961 + 1;
      E1057 := E1057 + 1;
      E1991 := E1991 + 1;
      E2540 := E2540 + 1;
      E977 := E977 + 1;
      E2727 := E2727 + 1;
      E1045 := E1045 + 1;
      E1051 := E1051 + 1;
      E1053 := E1053 + 1;
      E953 := E953 + 1;
      E959 := E959 + 1;
      E1039 := E1039 + 1;
      E2822 := E2822 + 1;
      E195 := E195 + 1;
      E187 := E187 + 1;
      E851 := E851 + 1;
      E1275 := E1275 + 1;
      E1265 := E1265 + 1;
      E2174 := E2174 + 1;
      E2168 := E2168 + 1;
      E2816 := E2816 + 1;
      E3481 := E3481 + 1;
      E1081 := E1081 + 1;
      E3144 := E3144 + 1;
      E3090 := E3090 + 1;
      E754 := E754 + 1;
      E629 := E629 + 1;
      E820 := E820 + 1;
      E1692 := E1692 + 1;
      if E3739 = 0 then
         Parameter_Homotopy_State'Elab_Body;
      end if;
      E3739 := E3739 + 1;
      E1872 := E1872 + 1;
      E2254 := E2254 + 1;
      E3142 := E3142 + 1;
      E3214 := E3214 + 1;
      E853 := E853 + 1;
      E2522 := E2522 + 1;
      E3166 := E3166 + 1;
      E3216 := E3216 + 1;
      E875 := E875 + 1;
      E3218 := E3218 + 1;
      E1967 := E1967 + 1;
      E1185 := E1185 + 1;
      E1947 := E1947 + 1;
      E1943 := E1943 + 1;
      E3236 := E3236 + 1;
      E1073 := E1073 + 1;
      E183 := E183 + 1;
      E2146 := E2146 + 1;
      E3174 := E3174 + 1;
      E240 := E240 + 1;
      E1071 := E1071 + 1;
      E2348 := E2348 + 1;
      E2788 := E2788 + 1;
      E179 := E179 + 1;
      E441 := E441 + 1;
      E443 := E443 + 1;
      if E439 = 0 then
         Dobldobl_Sample_Points'Elab_Spec;
      end if;
      if E439 = 0 then
         Dobldobl_Sample_Points'Elab_Body;
      end if;
      E439 := E439 + 1;
      if E437 = 0 then
         Dobldobl_Sample_Lists'Elab_Spec;
      end if;
      if E437 = 0 then
         Dobldobl_Sample_Lists'Elab_Body;
      end if;
      E437 := E437 + 1;
      E435 := E435 + 1;
      if E1121 = 0 then
         Dobldobl_Sample_Grids'Elab_Spec;
      end if;
      E1121 := E1121 + 1;
      E3595 := E3595 + 1;
      E445 := E445 + 1;
      if E427 = 0 then
         Dobldobl_Divided_Differences'Elab_Spec;
      end if;
      E427 := E427 + 1;
      E429 := E429 + 1;
      if E447 = 0 then
         Dobldobl_Trace_Interpolators'Elab_Spec;
      end if;
      E447 := E447 + 1;
      E1041 := E1041 + 1;
      E2324 := E2324 + 1;
      E1139 := E1139 + 1;
      E1079 := E1079 + 1;
      E2342 := E2342 + 1;
      E2344 := E2344 + 1;
      if E2340 = 0 then
         Quaddobl_Sample_Points'Elab_Spec;
      end if;
      if E2340 = 0 then
         Quaddobl_Sample_Points'Elab_Body;
      end if;
      E2340 := E2340 + 1;
      if E2338 = 0 then
         Quaddobl_Sample_Lists'Elab_Spec;
      end if;
      if E2338 = 0 then
         Quaddobl_Sample_Lists'Elab_Body;
      end if;
      E2338 := E2338 + 1;
      E2320 := E2320 + 1;
      if E2336 = 0 then
         Quaddobl_Sample_Grids'Elab_Spec;
      end if;
      E2336 := E2336 + 1;
      E3599 := E3599 + 1;
      E2392 := E2392 + 1;
      if E2180 = 0 then
         Quaddobl_Divided_Differences'Elab_Spec;
      end if;
      E2180 := E2180 + 1;
      E2194 := E2194 + 1;
      if E2400 = 0 then
         Quaddobl_Trace_Interpolators'Elab_Spec;
      end if;
      E2400 := E2400 + 1;
      E3170 := E3170 + 1;
      E027 := E027 + 1;
      E063 := E063 + 1;
      E525 := E525 + 1;
      E1973 := E1973 + 1;
      E1099 := E1099 + 1;
      E417 := E417 + 1;
      E345 := E345 + 1;
      E933 := E933 + 1;
      E917 := E917 + 1;
      E343 := E343 + 1;
      E1035 := E1035 + 1;
      if E1189 = 0 then
         Multitasking_Root_Refiners'Elab_Body;
      end if;
      E1189 := E1189 + 1;
      E045 := E045 + 1;
      E1743 := E1743 + 1;
      E2031 := E2031 + 1;
      if E2536 = 0 then
         Sampling_Laurent_Machine'Elab_Body;
      end if;
      E2536 := E2536 + 1;
      if E2538 = 0 then
         Sampling_Machine'Elab_Body;
      end if;
      E2538 := E2538 + 1;
      E597 := E597 + 1;
      if E2532 = 0 then
         Sample_Points'Elab_Spec;
      end if;
      if E2532 = 0 then
         Sample_Points'Elab_Body;
      end if;
      E2532 := E2532 + 1;
      if E605 = 0 then
         Interpolation_Points'Elab_Spec;
      end if;
      E605 := E605 + 1;
      if E2528 = 0 then
         Sample_Point_Lists'Elab_Spec;
      end if;
      if E2528 = 0 then
         Sample_Point_Lists'Elab_Body;
      end if;
      E2528 := E2528 + 1;
      if E603 = 0 then
         Interpolation_Point_Lists'Elab_Spec;
      end if;
      E603 := E603 + 1;
      if E1985 = 0 then
         Projection_Operators'Elab_Spec;
      end if;
      E1985 := E1985 + 1;
      if E601 = 0 then
         Interpolation_Filters'Elab_Spec;
      end if;
      E601 := E601 + 1;
      E617 := E617 + 1;
      E2428 := E2428 + 1;
      E1414 := E1414 + 1;
      if E1277 = 0 then
         Multprec_Divided_Differences'Elab_Spec;
      end if;
      E1277 := E1277 + 1;
      if E1428 = 0 then
         Multprec_Trace_Interpolators'Elab_Spec;
      end if;
      E1428 := E1428 + 1;
      if E2526 = 0 then
         Sample_Point_Grids'Elab_Spec;
      end if;
      E2526 := E2526 + 1;
      E1203 := E1203 + 1;
      E1327 := E1327 + 1;
      E1329 := E1329 + 1;
      E2534 := E2534 + 1;
      E2530 := E2530 + 1;
      E1117 := E1117 + 1;
      E2566 := E2566 + 1;
      E921 := E921 + 1;
      if E2590 = 0 then
         Span_Of_Component'Elab_Spec;
      end if;
      E2590 := E2590 + 1;
      E613 := E613 + 1;
      E2592 := E2592 + 1;
      E2594 := E2594 + 1;
      E615 := E615 + 1;
      E2602 := E2602 + 1;
      E307 := E307 + 1;
      E2623 := E2623 + 1;
      E2631 := E2631 + 1;
      E2985 := E2985 + 1;
      E2987 := E2987 + 1;
      E3603 := E3603 + 1;
      E3210 := E3210 + 1;
      E469 := E469 + 1;
      E1089 := E1089 + 1;
      if E2830 = 0 then
         Standard_Divided_Differences'Elab_Spec;
      end if;
      E2830 := E2830 + 1;
      if E3226 = 0 then
         Standard_Trace_Interpolators'Elab_Spec;
      end if;
      E3226 := E3226 + 1;
      E1195 := E1195 + 1;
      E591 := E591 + 1;
      E425 := E425 + 1;
      E609 := E609 + 1;
      if E607 = 0 then
         Irreducible_Component_Lists'Elab_Spec;
      end if;
      E607 := E607 + 1;
      E595 := E595 + 1;
      E611 := E611 + 1;
      if E1119 = 0 then
         Monodromy_Component_Breakup'Elab_Body;
      end if;
      E1119 := E1119 + 1;
      E2520 := E2520 + 1;
      E1193 := E1193 + 1;
      E317 := E317 + 1;
      E057 := E057 + 1;
      E055 := E055 + 1;
      E3737 := E3737 + 1;
      E3276 := E3276 + 1;
      E3278 := E3278 + 1;
      E923 := E923 + 1;
      E3775 := E3775 + 1;
      E3352 := E3352 + 1;
      E3348 := E3348 + 1;
      E2446 := E2446 + 1;
      E2486 := E2486 + 1;
      E3425 := E3425 + 1;
      E3447 := E3447 + 1;
      E713 := E713 + 1;
      E709 := E709 + 1;
      E2548 := E2548 + 1;
      E711 := E711 + 1;
      E1147 := E1147 + 1;
      E3717 := E3717 + 1;
      E2286 := E2286 + 1;
      E2484 := E2484 + 1;
      E3086 := E3086 + 1;
      E686 := E686 + 1;
      E653 := E653 + 1;
      E2366 := E2366 + 1;
      E2360 := E2360 + 1;
      E2552 := E2552 + 1;
      E3124 := E3124 + 1;
      E1145 := E1145 + 1;
      E1977 := E1977 + 1;
      E1975 := E1975 + 1;
      E3180 := E3180 + 1;
      E3296 := E3296 + 1;
      E3557 := E3557 + 1;
      E3555 := E3555 + 1;
      E3673 := E3673 + 1;
      E3715 := E3715 + 1;
      E3735 := E3735 + 1;
      E3773 := E3773 + 1;
      E3809 := E3809 + 1;
      E1061 := E1061 + 1;
      E3839 := E3839 + 1;
      E1925 := E1925 + 1;
      E1021 := E1021 + 1;
      E1019 := E1019 + 1;
      E1033 := E1033 + 1;
      E3623 := E3623 + 1;
      E3619 := E3619 + 1;
      E1929 := E1929 + 1;
      E3617 := E3617 + 1;
      E3857 := E3857 + 1;
      E547 := E547 + 1;
      E593 := E593 + 1;
      E549 := E549 + 1;
      E559 := E559 + 1;
      E565 := E565 + 1;
      E543 := E543 + 1;
      E567 := E567 + 1;
      E577 := E577 + 1;
      E1055 := E1055 + 1;
      E575 := E575 + 1;
      E049 := E049 + 1;
      E633 := E633 + 1;
      E635 := E635 + 1;
      E965 := E965 + 1;
      E1043 := E1043 + 1;
      if E1921 = 0 then
         Phcpack_Operations'Elab_Body;
      end if;
      E1921 := E1921 + 1;
      E1181 := E1181 + 1;
      E3779 := E3779 + 1;
      E3477 := E3477 + 1;
      E3525 := E3525 + 1;
      E041 := E041 + 1;
      E3743 := E3743 + 1;
      if E3593 = 0 then
         Dobldobl_Monodromy_Permutations'Elab_Body;
      end if;
      E3593 := E3593 + 1;
      E3725 := E3725 + 1;
      E3487 := E3487 + 1;
      E3491 := E3491 + 1;
      E1183 := E1183 + 1;
      E2518 := E2518 + 1;
      E2516 := E2516 + 1;
      E3611 := E3611 + 1;
      E3749 := E3749 + 1;
      E3515 := E3515 + 1;
      E3523 := E3523 + 1;
      E3527 := E3527 + 1;
      E3475 := E3475 + 1;
      E3745 := E3745 + 1;
      E3707 := E3707 + 1;
      E3507 := E3507 + 1;
      E3511 := E3511 + 1;
      E2029 := E2029 + 1;
      E3753 := E3753 + 1;
      if E3597 = 0 then
         Quaddobl_Monodromy_Permutations'Elab_Body;
      end if;
      E3597 := E3597 + 1;
      E3755 := E3755 + 1;
      E3727 := E3727 + 1;
      E2600 := E2600 + 1;
      E2621 := E2621 + 1;
      E541 := E541 + 1;
      E561 := E561 + 1;
      E3759 := E3759 + 1;
      if E3601 = 0 then
         Standard_Monodromy_Permutations'Elab_Body;
      end if;
      E3601 := E3601 + 1;
      E3591 := E3591 + 1;
      E3761 := E3761 + 1;
      E3729 := E3729 + 1;
      E3771 := E3771 + 1;
      E3681 := E3681 + 1;
      E3551 := E3551 + 1;
      E3609 := E3609 + 1;
      E3679 := E3679 + 1;
      E3705 := E3705 + 1;
      E3723 := E3723 + 1;
      E3741 := E3741 + 1;
      E3765 := E3765 + 1;
      E3845 := E3845 + 1;
      E3589 := E3589 + 1;
      E3855 := E3855 + 1;
      E3785 := E3785 + 1;
      E3783 := E3783 + 1;
      E3789 := E3789 + 1;
      E3787 := E3787 + 1;
      E3793 := E3793 + 1;
      E3791 := E3791 + 1;
      E3781 := E3781 + 1;
      E3777 := E3777 + 1;
      E3861 := E3861 + 1;
      E3867 := E3867 + 1;
      E3869 := E3869 + 1;
      E531 := E531 + 1;
      E537 := E537 + 1;
      E2514 := E2514 + 1;
      E589 := E589 + 1;
      E2556 := E2556 + 1;
      E527 := E527 + 1;
      E585 := E585 + 1;
      E619 := E619 + 1;
      E2512 := E2512 + 1;
      E2554 := E2554 + 1;
      E1453 := E1453 + 1;
      E1446 := E1446 + 1;
      E1508 := E1508 + 1;
      E1506 := E1506 + 1;
      E1533 := E1533 + 1;
      E1529 := E1529 + 1;
      E651 := E651 + 1;
      E1684 := E1684 + 1;
      E1678 := E1678 + 1;
      E3699 := E3699 + 1;
      E1864 := E1864 + 1;
      E1858 := E1858 + 1;
      E2198 := E2198 + 1;
      E2192 := E2192 + 1;
      E2905 := E2905 + 1;
      E2848 := E2848 + 1;
      E3308 := E3308 + 1;
      E1143 := E1143 + 1;
      E3405 := E3405 + 1;
      E3399 := E3399 + 1;
      E1444 := E1444 + 1;
      E3697 := E3697 + 1;
      E3859 := E3859 + 1;
      E1131 := E1131 + 1;
      E995 := E995 + 1;
      E2474 := E2474 + 1;
      E979 := E979 + 1;
      E3607 := E3607 + 1;
      E3605 := E3605 + 1;
      E3871 := E3871 + 1;
      E3873 := E3873 + 1;
      E2466 := E2466 + 1;
      E1111 := E1111 + 1;
      E1109 := E1109 + 1;
      E1107 := E1107 + 1;
      E1937 := E1937 + 1;
      E1949 := E1949 + 1;
      E1941 := E1941 + 1;
      E301 := E301 + 1;
      E029 := E029 + 1;
      E021 := E021 + 1;
      E031 := E031 + 1;
      E019 := E019 + 1;
      E3499 := E3499 + 1;
      E3497 := E3497 + 1;
      E523 := E523 + 1;
      E059 := E059 + 1;
      E047 := E047 + 1;
      E3501 := E3501 + 1;
      E894 := E894 + 1;
      E545 := E545 + 1;
      E521 := E521 + 1;
      E535 := E535 + 1;
      E3633 := E3633 + 1;
      E3631 := E3631 + 1;
      E3797 := E3797 + 1;
      E3495 := E3495 + 1;
      E519 := E519 + 1;
      E529 := E529 + 1;
      E877 := E877 + 1;
      E1103 := E1103 + 1;
      E1971 := E1971 + 1;
      E2033 := E2033 + 1;
      E2448 := E2448 + 1;
      E2444 := E2444 + 1;
      E649 := E649 + 1;
      E2625 := E2625 + 1;
      E017 := E017 + 1;
      E3629 := E3629 + 1;
      E3691 := E3691 + 1;
      E3795 := E3795 + 1;
      E3473 := E3473 + 1;
      E009 := E009 + 1;
      E005 := E005 + 1;
   end adainit;

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
   --   -LM:\projects\PHCpack\lib\
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

end adamain;
