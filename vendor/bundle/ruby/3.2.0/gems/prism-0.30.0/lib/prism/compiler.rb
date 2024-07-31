# frozen_string_literal: true

=begin
This file is generated by the templates/template.rb script and should not be
modified manually. See templates/lib/prism/compiler.rb.erb
if you are looking to modify the template
=end

module Prism
  # A compiler is a visitor that returns the value of each node as it visits.
  # This is as opposed to a visitor which will only walk the tree. This can be
  # useful when you are trying to compile a tree into a different format.
  #
  # For example, to build a representation of the tree as s-expressions, you
  # could write:
  #
  #     class SExpressions < Prism::Compiler
  #       def visit_arguments_node(node) = [:arguments, super]
  #       def visit_call_node(node) = [:call, super]
  #       def visit_integer_node(node) = [:integer]
  #       def visit_program_node(node) = [:program, super]
  #     end
  #
  #     Prism.parse("1 + 2").value.accept(SExpressions.new)
  #     # => [:program, [[[:call, [[:integer], [:arguments, [[:integer]]]]]]]]
  #
  class Compiler < Visitor
    # Visit an individual node.
    def visit(node)
      node&.accept(self)
    end

    # Visit a list of nodes.
    def visit_all(nodes)
      nodes.map { |node| node&.accept(self) }
    end

    # Visit the child nodes of the given node.
    def visit_child_nodes(node)
      node.compact_child_nodes.map { |node| node.accept(self) }
    end

    # Compile a AliasGlobalVariableNode node
    alias visit_alias_global_variable_node visit_child_nodes

    # Compile a AliasMethodNode node
    alias visit_alias_method_node visit_child_nodes

    # Compile a AlternationPatternNode node
    alias visit_alternation_pattern_node visit_child_nodes

    # Compile a AndNode node
    alias visit_and_node visit_child_nodes

    # Compile a ArgumentsNode node
    alias visit_arguments_node visit_child_nodes

    # Compile a ArrayNode node
    alias visit_array_node visit_child_nodes

    # Compile a ArrayPatternNode node
    alias visit_array_pattern_node visit_child_nodes

    # Compile a AssocNode node
    alias visit_assoc_node visit_child_nodes

    # Compile a AssocSplatNode node
    alias visit_assoc_splat_node visit_child_nodes

    # Compile a BackReferenceReadNode node
    alias visit_back_reference_read_node visit_child_nodes

    # Compile a BeginNode node
    alias visit_begin_node visit_child_nodes

    # Compile a BlockArgumentNode node
    alias visit_block_argument_node visit_child_nodes

    # Compile a BlockLocalVariableNode node
    alias visit_block_local_variable_node visit_child_nodes

    # Compile a BlockNode node
    alias visit_block_node visit_child_nodes

    # Compile a BlockParameterNode node
    alias visit_block_parameter_node visit_child_nodes

    # Compile a BlockParametersNode node
    alias visit_block_parameters_node visit_child_nodes

    # Compile a BreakNode node
    alias visit_break_node visit_child_nodes

    # Compile a CallAndWriteNode node
    alias visit_call_and_write_node visit_child_nodes

    # Compile a CallNode node
    alias visit_call_node visit_child_nodes

    # Compile a CallOperatorWriteNode node
    alias visit_call_operator_write_node visit_child_nodes

    # Compile a CallOrWriteNode node
    alias visit_call_or_write_node visit_child_nodes

    # Compile a CallTargetNode node
    alias visit_call_target_node visit_child_nodes

    # Compile a CapturePatternNode node
    alias visit_capture_pattern_node visit_child_nodes

    # Compile a CaseMatchNode node
    alias visit_case_match_node visit_child_nodes

    # Compile a CaseNode node
    alias visit_case_node visit_child_nodes

    # Compile a ClassNode node
    alias visit_class_node visit_child_nodes

    # Compile a ClassVariableAndWriteNode node
    alias visit_class_variable_and_write_node visit_child_nodes

    # Compile a ClassVariableOperatorWriteNode node
    alias visit_class_variable_operator_write_node visit_child_nodes

    # Compile a ClassVariableOrWriteNode node
    alias visit_class_variable_or_write_node visit_child_nodes

    # Compile a ClassVariableReadNode node
    alias visit_class_variable_read_node visit_child_nodes

    # Compile a ClassVariableTargetNode node
    alias visit_class_variable_target_node visit_child_nodes

    # Compile a ClassVariableWriteNode node
    alias visit_class_variable_write_node visit_child_nodes

    # Compile a ConstantAndWriteNode node
    alias visit_constant_and_write_node visit_child_nodes

    # Compile a ConstantOperatorWriteNode node
    alias visit_constant_operator_write_node visit_child_nodes

    # Compile a ConstantOrWriteNode node
    alias visit_constant_or_write_node visit_child_nodes

    # Compile a ConstantPathAndWriteNode node
    alias visit_constant_path_and_write_node visit_child_nodes

    # Compile a ConstantPathNode node
    alias visit_constant_path_node visit_child_nodes

    # Compile a ConstantPathOperatorWriteNode node
    alias visit_constant_path_operator_write_node visit_child_nodes

    # Compile a ConstantPathOrWriteNode node
    alias visit_constant_path_or_write_node visit_child_nodes

    # Compile a ConstantPathTargetNode node
    alias visit_constant_path_target_node visit_child_nodes

    # Compile a ConstantPathWriteNode node
    alias visit_constant_path_write_node visit_child_nodes

    # Compile a ConstantReadNode node
    alias visit_constant_read_node visit_child_nodes

    # Compile a ConstantTargetNode node
    alias visit_constant_target_node visit_child_nodes

    # Compile a ConstantWriteNode node
    alias visit_constant_write_node visit_child_nodes

    # Compile a DefNode node
    alias visit_def_node visit_child_nodes

    # Compile a DefinedNode node
    alias visit_defined_node visit_child_nodes

    # Compile a ElseNode node
    alias visit_else_node visit_child_nodes

    # Compile a EmbeddedStatementsNode node
    alias visit_embedded_statements_node visit_child_nodes

    # Compile a EmbeddedVariableNode node
    alias visit_embedded_variable_node visit_child_nodes

    # Compile a EnsureNode node
    alias visit_ensure_node visit_child_nodes

    # Compile a FalseNode node
    alias visit_false_node visit_child_nodes

    # Compile a FindPatternNode node
    alias visit_find_pattern_node visit_child_nodes

    # Compile a FlipFlopNode node
    alias visit_flip_flop_node visit_child_nodes

    # Compile a FloatNode node
    alias visit_float_node visit_child_nodes

    # Compile a ForNode node
    alias visit_for_node visit_child_nodes

    # Compile a ForwardingArgumentsNode node
    alias visit_forwarding_arguments_node visit_child_nodes

    # Compile a ForwardingParameterNode node
    alias visit_forwarding_parameter_node visit_child_nodes

    # Compile a ForwardingSuperNode node
    alias visit_forwarding_super_node visit_child_nodes

    # Compile a GlobalVariableAndWriteNode node
    alias visit_global_variable_and_write_node visit_child_nodes

    # Compile a GlobalVariableOperatorWriteNode node
    alias visit_global_variable_operator_write_node visit_child_nodes

    # Compile a GlobalVariableOrWriteNode node
    alias visit_global_variable_or_write_node visit_child_nodes

    # Compile a GlobalVariableReadNode node
    alias visit_global_variable_read_node visit_child_nodes

    # Compile a GlobalVariableTargetNode node
    alias visit_global_variable_target_node visit_child_nodes

    # Compile a GlobalVariableWriteNode node
    alias visit_global_variable_write_node visit_child_nodes

    # Compile a HashNode node
    alias visit_hash_node visit_child_nodes

    # Compile a HashPatternNode node
    alias visit_hash_pattern_node visit_child_nodes

    # Compile a IfNode node
    alias visit_if_node visit_child_nodes

    # Compile a ImaginaryNode node
    alias visit_imaginary_node visit_child_nodes

    # Compile a ImplicitNode node
    alias visit_implicit_node visit_child_nodes

    # Compile a ImplicitRestNode node
    alias visit_implicit_rest_node visit_child_nodes

    # Compile a InNode node
    alias visit_in_node visit_child_nodes

    # Compile a IndexAndWriteNode node
    alias visit_index_and_write_node visit_child_nodes

    # Compile a IndexOperatorWriteNode node
    alias visit_index_operator_write_node visit_child_nodes

    # Compile a IndexOrWriteNode node
    alias visit_index_or_write_node visit_child_nodes

    # Compile a IndexTargetNode node
    alias visit_index_target_node visit_child_nodes

    # Compile a InstanceVariableAndWriteNode node
    alias visit_instance_variable_and_write_node visit_child_nodes

    # Compile a InstanceVariableOperatorWriteNode node
    alias visit_instance_variable_operator_write_node visit_child_nodes

    # Compile a InstanceVariableOrWriteNode node
    alias visit_instance_variable_or_write_node visit_child_nodes

    # Compile a InstanceVariableReadNode node
    alias visit_instance_variable_read_node visit_child_nodes

    # Compile a InstanceVariableTargetNode node
    alias visit_instance_variable_target_node visit_child_nodes

    # Compile a InstanceVariableWriteNode node
    alias visit_instance_variable_write_node visit_child_nodes

    # Compile a IntegerNode node
    alias visit_integer_node visit_child_nodes

    # Compile a InterpolatedMatchLastLineNode node
    alias visit_interpolated_match_last_line_node visit_child_nodes

    # Compile a InterpolatedRegularExpressionNode node
    alias visit_interpolated_regular_expression_node visit_child_nodes

    # Compile a InterpolatedStringNode node
    alias visit_interpolated_string_node visit_child_nodes

    # Compile a InterpolatedSymbolNode node
    alias visit_interpolated_symbol_node visit_child_nodes

    # Compile a InterpolatedXStringNode node
    alias visit_interpolated_x_string_node visit_child_nodes

    # Compile a ItLocalVariableReadNode node
    alias visit_it_local_variable_read_node visit_child_nodes

    # Compile a ItParametersNode node
    alias visit_it_parameters_node visit_child_nodes

    # Compile a KeywordHashNode node
    alias visit_keyword_hash_node visit_child_nodes

    # Compile a KeywordRestParameterNode node
    alias visit_keyword_rest_parameter_node visit_child_nodes

    # Compile a LambdaNode node
    alias visit_lambda_node visit_child_nodes

    # Compile a LocalVariableAndWriteNode node
    alias visit_local_variable_and_write_node visit_child_nodes

    # Compile a LocalVariableOperatorWriteNode node
    alias visit_local_variable_operator_write_node visit_child_nodes

    # Compile a LocalVariableOrWriteNode node
    alias visit_local_variable_or_write_node visit_child_nodes

    # Compile a LocalVariableReadNode node
    alias visit_local_variable_read_node visit_child_nodes

    # Compile a LocalVariableTargetNode node
    alias visit_local_variable_target_node visit_child_nodes

    # Compile a LocalVariableWriteNode node
    alias visit_local_variable_write_node visit_child_nodes

    # Compile a MatchLastLineNode node
    alias visit_match_last_line_node visit_child_nodes

    # Compile a MatchPredicateNode node
    alias visit_match_predicate_node visit_child_nodes

    # Compile a MatchRequiredNode node
    alias visit_match_required_node visit_child_nodes

    # Compile a MatchWriteNode node
    alias visit_match_write_node visit_child_nodes

    # Compile a MissingNode node
    alias visit_missing_node visit_child_nodes

    # Compile a ModuleNode node
    alias visit_module_node visit_child_nodes

    # Compile a MultiTargetNode node
    alias visit_multi_target_node visit_child_nodes

    # Compile a MultiWriteNode node
    alias visit_multi_write_node visit_child_nodes

    # Compile a NextNode node
    alias visit_next_node visit_child_nodes

    # Compile a NilNode node
    alias visit_nil_node visit_child_nodes

    # Compile a NoKeywordsParameterNode node
    alias visit_no_keywords_parameter_node visit_child_nodes

    # Compile a NumberedParametersNode node
    alias visit_numbered_parameters_node visit_child_nodes

    # Compile a NumberedReferenceReadNode node
    alias visit_numbered_reference_read_node visit_child_nodes

    # Compile a OptionalKeywordParameterNode node
    alias visit_optional_keyword_parameter_node visit_child_nodes

    # Compile a OptionalParameterNode node
    alias visit_optional_parameter_node visit_child_nodes

    # Compile a OrNode node
    alias visit_or_node visit_child_nodes

    # Compile a ParametersNode node
    alias visit_parameters_node visit_child_nodes

    # Compile a ParenthesesNode node
    alias visit_parentheses_node visit_child_nodes

    # Compile a PinnedExpressionNode node
    alias visit_pinned_expression_node visit_child_nodes

    # Compile a PinnedVariableNode node
    alias visit_pinned_variable_node visit_child_nodes

    # Compile a PostExecutionNode node
    alias visit_post_execution_node visit_child_nodes

    # Compile a PreExecutionNode node
    alias visit_pre_execution_node visit_child_nodes

    # Compile a ProgramNode node
    alias visit_program_node visit_child_nodes

    # Compile a RangeNode node
    alias visit_range_node visit_child_nodes

    # Compile a RationalNode node
    alias visit_rational_node visit_child_nodes

    # Compile a RedoNode node
    alias visit_redo_node visit_child_nodes

    # Compile a RegularExpressionNode node
    alias visit_regular_expression_node visit_child_nodes

    # Compile a RequiredKeywordParameterNode node
    alias visit_required_keyword_parameter_node visit_child_nodes

    # Compile a RequiredParameterNode node
    alias visit_required_parameter_node visit_child_nodes

    # Compile a RescueModifierNode node
    alias visit_rescue_modifier_node visit_child_nodes

    # Compile a RescueNode node
    alias visit_rescue_node visit_child_nodes

    # Compile a RestParameterNode node
    alias visit_rest_parameter_node visit_child_nodes

    # Compile a RetryNode node
    alias visit_retry_node visit_child_nodes

    # Compile a ReturnNode node
    alias visit_return_node visit_child_nodes

    # Compile a SelfNode node
    alias visit_self_node visit_child_nodes

    # Compile a ShareableConstantNode node
    alias visit_shareable_constant_node visit_child_nodes

    # Compile a SingletonClassNode node
    alias visit_singleton_class_node visit_child_nodes

    # Compile a SourceEncodingNode node
    alias visit_source_encoding_node visit_child_nodes

    # Compile a SourceFileNode node
    alias visit_source_file_node visit_child_nodes

    # Compile a SourceLineNode node
    alias visit_source_line_node visit_child_nodes

    # Compile a SplatNode node
    alias visit_splat_node visit_child_nodes

    # Compile a StatementsNode node
    alias visit_statements_node visit_child_nodes

    # Compile a StringNode node
    alias visit_string_node visit_child_nodes

    # Compile a SuperNode node
    alias visit_super_node visit_child_nodes

    # Compile a SymbolNode node
    alias visit_symbol_node visit_child_nodes

    # Compile a TrueNode node
    alias visit_true_node visit_child_nodes

    # Compile a UndefNode node
    alias visit_undef_node visit_child_nodes

    # Compile a UnlessNode node
    alias visit_unless_node visit_child_nodes

    # Compile a UntilNode node
    alias visit_until_node visit_child_nodes

    # Compile a WhenNode node
    alias visit_when_node visit_child_nodes

    # Compile a WhileNode node
    alias visit_while_node visit_child_nodes

    # Compile a XStringNode node
    alias visit_x_string_node visit_child_nodes

    # Compile a YieldNode node
    alias visit_yield_node visit_child_nodes
  end
end
