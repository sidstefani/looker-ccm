- dashboard: cost_allocation_for_labeled_resources
  title: Cost Allocation for Labeled Resources
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Jl0toTA7opvUtOg4E8Cou2
  elements:
  - title: Cost Allocation by Resource App ID
    name: Cost Allocation by Resource App ID
    model: gcp_billing
    explore: gcp_billing_export
    type: looker_grid
    fields: [gcp_billing_export.app_id_with_unallocated, applications.name, gcp_billing_export.total_cost,
      gcp_billing_export.total_net_cost]
    filters:
      gcp_billing_export.app_id: "-NULL"
    sorts: [gcp_billing_export.total_cost desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      gcp_billing_export.total_cost:
        is_active: true
      gcp_billing_export.total_net_cost:
        is_active: true
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Resource Contact Name: gcp_billing_export.contact_name
      Project ID (PMGT): gcp_billing_export.project_id
      Resource Component ID: gcp_billing_export.component_id
      Is Labeling Supported? (Yes / No): eligible_labels.labeling_supported
      Application Name: applications.name
      App ID (Resource): gcp_billing_export.app_id_with_unallocated
      Usage Start Date: gcp_billing_export.usage_start_date
      Resource Department Name: gcp_billing_export.department_name
    row: 1
    col: 0
    width: 24
    height: 6
  - title: Cost by App Name
    name: Cost by App Name
    model: gcp_billing
    explore: gcp_billing_export
    type: looker_grid
    fields: [gcp_billing_export.total_cost, gcp_billing_export.total_net_cost, gcp_billing_export.app_name]
    filters:
      gcp_billing_export.app_name: "-NULL"
    sorts: [gcp_billing_export.total_cost desc 0]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      gcp_billing_export.total_cost:
        is_active: true
      gcp_billing_export.total_net_cost:
        is_active: true
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Resource Contact Name: gcp_billing_export.contact_name
      Project ID (PMGT): gcp_billing_export.project_id
      Resource Component ID: gcp_billing_export.component_id
      Is Labeling Supported? (Yes / No): eligible_labels.labeling_supported
      Application Name: applications.name
      App ID (Resource): gcp_billing_export.app_id_with_unallocated
      Usage Start Date: gcp_billing_export.usage_start_date
      Resource Department Name: gcp_billing_export.department_name
    row: 15
    col: 16
    width: 8
    height: 4
  - title: Cost by Department Name
    name: Cost by Department Name
    model: gcp_billing
    explore: gcp_billing_export
    type: looker_grid
    fields: [gcp_billing_export.total_cost, gcp_billing_export.total_net_cost, gcp_billing_export.department_name]
    filters:
      gcp_billing_export.department_name: "-NULL"
      gcp_billing_export.total_cost: ">0"
    sorts: [gcp_billing_export.total_cost desc 0]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      gcp_billing_export.total_cost:
        is_active: true
      gcp_billing_export.total_net_cost:
        is_active: true
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Resource Contact Name: gcp_billing_export.contact_name
      Project ID (PMGT): gcp_billing_export.project_id
      Resource Component ID: gcp_billing_export.component_id
      Is Labeling Supported? (Yes / No): eligible_labels.labeling_supported
      Application Name: applications.name
      App ID (Resource): gcp_billing_export.app_id_with_unallocated
      Usage Start Date: gcp_billing_export.usage_start_date
    row: 11
    col: 16
    width: 8
    height: 4
  - title: Cost by Originator
    name: Cost by Originator
    model: gcp_billing
    explore: gcp_billing_export
    type: looker_grid
    fields: [gcp_billing_export.total_cost, gcp_billing_export.total_net_cost, gcp_billing_export.originator]
    filters:
      gcp_billing_export.originator: "-NULL"
    sorts: [gcp_billing_export.total_cost desc 0]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      gcp_billing_export.total_cost:
        is_active: true
      gcp_billing_export.total_net_cost:
        is_active: true
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Resource Contact Name: gcp_billing_export.contact_name
      Project ID (PMGT): gcp_billing_export.project_id
      Resource Component ID: gcp_billing_export.component_id
      Is Labeling Supported? (Yes / No): eligible_labels.labeling_supported
      Application Name: applications.name
      App ID (Resource): gcp_billing_export.app_id_with_unallocated
      Usage Start Date: gcp_billing_export.usage_start_date
      Resource Department Name: gcp_billing_export.department_name
    row: 7
    col: 16
    width: 8
    height: 4
  - type: button
    name: button_508
    rich_content_json: '{"text":"Unallocated Resource App ID","description":"","newTab":true,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"https://cmebilling.cloud.looker.com/dashboards/34?Usage%20Start%20Date=3%20months%20ago%20for%203%20months&App%20ID%20Test=Unallocated%20App%20ID"}'
    row: 0
    col: 0
    width: 4
    height: 1
  - title: Trending Resource App ID Costs
    name: Trending Resource App ID Costs
    model: gcp_billing
    explore: gcp_billing_export
    type: looker_line
    fields: [gcp_billing_export.total_net_cost, gcp_billing_export.usage_start_week,
      gcp_billing_export.app_id_with_unallocated]
    pivots: [gcp_billing_export.app_id_with_unallocated]
    fill_fields: [gcp_billing_export.usage_start_week]
    filters:
      gcp_billing_export.usage_start_week: 26 weeks
    sorts: [gcp_billing_export.usage_start_week desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      gcp_billing_export.total_cost:
        is_active: true
      gcp_billing_export.total_net_cost:
        is_active: true
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Resource Contact Name: gcp_billing_export.contact_name
      Project ID (PMGT): gcp_billing_export.project_id
      Resource Component ID: gcp_billing_export.component_id
      Is Labeling Supported? (Yes / No): eligible_labels.labeling_supported
      Application Name: applications.name
      App ID (Resource): gcp_billing_export.app_id_with_unallocated
      Usage Start Date: gcp_billing_export.usage_start_date
      Resource Department Name: gcp_billing_export.department_name
    row: 7
    col: 0
    width: 16
    height: 12
  - title: 'Trending PMGT ID Costs '
    name: 'Trending PMGT ID Costs '
    model: gcp_billing
    explore: gcp_billing_export
    type: looker_line
    fields: [gcp_billing_export.total_net_cost, gcp_billing_export.usage_start_week,
      gcp_billing_export.cme_project_id]
    pivots: [gcp_billing_export.cme_project_id]
    fill_fields: [gcp_billing_export.usage_start_week]
    sorts: [gcp_billing_export.usage_start_week desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      gcp_billing_export.total_cost:
        is_active: true
      gcp_billing_export.total_net_cost:
        is_active: true
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Resource Contact Name: gcp_billing_export.contact_name
      Project ID (PMGT): gcp_billing_export.project_id
      Resource Component ID: gcp_billing_export.component_id
      Is Labeling Supported? (Yes / No): eligible_labels.labeling_supported
      Application Name: applications.name
      App ID (Resource): gcp_billing_export.app_id_with_unallocated
      Usage Start Date: gcp_billing_export.usage_start_date
      Resource Department Name: gcp_billing_export.department_name
    row: 19
    col: 0
    width: 24
    height: 12
  - type: button
    name: button_679
    rich_content_json: '{"text":"User Guide","description":"User Guide","newTab":true,"alignment":"right","size":"small","style":"FILLED","color":"#5A6874","href":"https://docs.google.com/document/d/1LqB3XHoCSCkIqIm4qyMLmCMetl3bSzTHZZTJC3Nuv1Y/edit?usp=share_link"}'
    row: 0
    col: 4
    width: 20
    height: 1
  filters:
  - name: App ID (Resource)
    title: App ID (Resource)
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: gcp_billing
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.app_id_with_unallocated
  - name: Application Name
    title: Application Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: gcp_billing
    explore: gcp_billing_export
    listens_to_filters: []
    field: applications.name
  - name: Project ID (PMGT)
    title: Project ID (PMGT)
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: gcp_billing
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.project_id
  - name: Resource Component ID
    title: Resource Component ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: gcp_billing
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.component_id
  - name: Resource Contact Name
    title: Resource Contact Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: gcp_billing
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.contact_name
  - name: Resource Department Name
    title: Resource Department Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: gcp_billing
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.department_name
  - name: Usage Start Date
    title: Usage Start Date
    type: field_filter
    default_value: 12 month ago for 12 month
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: gcp_billing
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.usage_start_date
  - name: Is Labeling Supported? (Yes / No)
    title: Is Labeling Supported? (Yes / No)
    type: field_filter
    default_value: 'Yes'
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
    model: gcp_billing
    explore: gcp_billing_export
    listens_to_filters: []
    field: eligible_labels.labeling_supported
