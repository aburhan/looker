- dashboard: restaurant_of_the_future
  title: Restaurant of the Future
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Today's Sales
    name: Today's Sales
    model: restaurant_of_the_future
    explore: sales_detail
    type: single_value
    fields: [sales_detail.total_retail_price]
    limit: 499
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#4285F4"
    defaults_version: 1
    listen: {}
    row: 2
    col: 0
    width: 8
    height: 4
  - title: Average per Item Profit
    name: Average per Item Profit
    model: restaurant_of_the_future
    explore: sales_detail
    type: single_value
    fields: [sales_detail.average_per_item_profit]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#0F9D58"
    defaults_version: 1
    listen: {}
    row: 4
    col: 8
    width: 6
    height: 2
  - title: Average Cost per Item
    name: Average Cost per Item
    model: restaurant_of_the_future
    explore: sales_detail
    type: single_value
    fields: [sales_detail.average_cost]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#ff810b"
    defaults_version: 1
    listen: {}
    row: 4
    col: 14
    width: 6
    height: 2
  - title: Average Retail Price
    name: Average Retail Price
    model: restaurant_of_the_future
    explore: sales_detail
    type: single_value
    fields: [sales_detail.average_retail_price]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 2
    col: 14
    width: 6
    height: 2
  - title: Number of Sales
    name: Number of Sales
    model: restaurant_of_the_future
    explore: sales_detail
    type: single_value
    fields: [sales_detail.count]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 2
    col: 8
    width: 6
    height: 2
  - title: Today's Sales By State
    name: Today's Sales By State
    model: restaurant_of_the_future
    explore: sales_detail
    type: looker_grid
    fields: [sales_detail.total_retail_price, restaurants_rof.state]
    sorts: [sales_detail.total_retail_price desc]
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
    series_cell_visualizations:
      sales_detail.total_retail_price:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    row: 6
    col: 14
    width: 6
    height: 6
  - title: Today's Sales By Region
    name: Today's Sales By Region
    model: restaurant_of_the_future
    explore: sales_detail
    type: looker_pie
    fields: [sales_detail.total_retail_price, restaurants_rof.region]
    sorts: [sales_detail.total_retail_price desc]
    limit: 500
    value_labels: legend
    label_type: labPer
    series_colors:
      South: "#4285F4"
      Midwest: "#DB4437"
      Northeast: "#F4B400"
      West: "#0F9D58"
    series_types: {}
    defaults_version: 1
    row: 6
    col: 0
    width: 6
    height: 6
  - name: Sales
    type: text
    title_text: Sales
    subtitle_text: Real-time Sales Indicators
    body_text: ''
    row: 0
    col: 0
    width: 20
    height: 2
  - name: Service
    type: text
    title_text: Service
    subtitle_text: Real-time Service Indicators
    body_text: ''
    row: 12
    col: 0
    width: 20
    height: 3
  - title: Today's Sales Activity
    name: Today's Sales Activity
    model: restaurant_of_the_future
    explore: sales_detail
    type: looker_map
    fields: [sales_detail.count, restaurants_rof.zip]
    sorts: [sales_detail.count desc]
    limit: 500
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: false
    heatmap_opacity: 1
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: streets
    map_position: fit_data
    map_scale_indicator: metric
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: true
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    defaults_version: 1
    row: 6
    col: 6
    width: 8
    height: 6
  - title: Average Ice Machine Levels
    name: Average Ice Machine Levels
    model: restaurant_of_the_future
    explore: iot
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [iot.average_level]
    filters:
      iot.machine: Ice Machine 2,Ice Machine 1
    limit: 500
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    showComparison: false
    minValue: 0
    maxValue: 100
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#4285F4"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1800
    waveRise: true
    waveHeightScaling: true
    waveAnimate: true
    waveColor: "#0F9D58"
    waveOffset: 0
    textVertPosition: 0.5
    textSize: 1
    valueCountUp: true
    displayPercent: true
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
    series_types: {}
    defaults_version: 0
    query_fields:
      measures:
      - align: right
        can_filter: true
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Iot Average Level
        label_from_parameter:
        label_short: Average Level
        map_layer:
        name: iot.average_level
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: average
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: iot
        view_label: Iot
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Average Level
        measure: true
        parameter: false
        primary_key: false
        project_name: restaurant_of_the_future
        scope: iot
        suggest_dimension: iot.average_level
        suggest_explore: iot
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        is_turtle: false
        can_turtle: false
        turtle_dimension:
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/restaurant_of_the_future/files/views%2Fiot.view.lkml?line=69"
        permanent:
        source_file: views/iot.view.lkml
        source_file_path: restaurant_of_the_future/views/iot.view.lkml
        sql: "${level} "
        sql_case:
        filters:
      dimensions: []
      table_calculations: []
      pivots: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 15
    col: 10
    width: 6
    height: 6
  - title: Average Fountain Machine Levels
    name: Average Fountain Machine Levels
    model: restaurant_of_the_future
    explore: iot
    type: liquid_fill_gauge
    fields: [iot.average_level]
    filters:
      iot.machine: Fountain Machine 1,Fountain Machine 2
    limit: 500
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    series_types: {}
    defaults_version: 0
    row: 15
    col: 0
    width: 5
    height: 6
  - title: Urgent Machine Refill Needed
    name: Urgent Machine Refill Needed
    model: restaurant_of_the_future
    explore: iot
    type: looker_grid
    fields: [iot.machine, iot.total_level]
    filters:
      iot.total_level: "<50,not 0"
    sorts: [iot.total_level desc]
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
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: barclays
      palette_id: barclays-categorical-0
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels: {}
    series_cell_visualizations:
      iot.total_level:
        is_active: true
        palette:
          palette_id: 60efb26d-4a6c-4d60-5e3c-46e9c06d6fa8
          collection_id: barclays
          custom_colors:
          - "#DB4437"
          - "#DB4437"
          - "#DB4437"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: barclays, palette_id: barclays-diverging-0,
          options: {steps: 5, reverse: true}}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}, {type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: barclays, palette_id: barclays-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    stacking: normal
    legend_position: center
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    trend_lines: [{color: "#000000", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: true}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: []
    hidden_points_if_no: []
    row: 21
    col: 8
    width: 7
    height: 5
  - title: Machine levels
    name: Machine levels
    model: restaurant_of_the_future
    explore: iot
    type: looker_bar
    fields: [iot.machine, iot.total_level]
    filters:
      iot.total_level: not 0
    sorts: [iot.total_level desc]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: barclays
      palette_id: barclays-categorical-0
      options:
        steps: 5
    series_types: {}
    series_colors: {}
    trend_lines: [{color: "#000000", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: true}]
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    row: 21
    col: 0
    width: 8
    height: 5
  - title: Average Milk Shake Machine Levels
    name: Average Milk Shake Machine Levels
    model: restaurant_of_the_future
    explore: iot
    type: liquid_fill_gauge
    fields: [iot.average_level]
    filters:
      iot.machine: Shake Machine 1,Fountain Machine 2
    limit: 500
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    showComparison: false
    minValue: 0
    maxValue: 100
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#4285F4"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1800
    waveRise: true
    waveHeightScaling: true
    waveAnimate: true
    waveColor: "#DB4437"
    waveOffset: 0
    textVertPosition: 0.5
    textSize: 1
    valueCountUp: true
    displayPercent: true
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
    series_types: {}
    defaults_version: 0
    query_fields:
      measures:
      - align: right
        can_filter: true
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Iot Average Level
        label_from_parameter:
        label_short: Average Level
        map_layer:
        name: iot.average_level
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: average
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: iot
        view_label: Iot
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Average Level
        measure: true
        parameter: false
        primary_key: false
        project_name: restaurant_of_the_future
        scope: iot
        suggest_dimension: iot.average_level
        suggest_explore: iot
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        is_turtle: false
        can_turtle: false
        turtle_dimension:
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/restaurant_of_the_future/files/views%2Fiot.view.lkml?line=69"
        permanent:
        source_file: views/iot.view.lkml
        source_file_path: restaurant_of_the_future/views/iot.view.lkml
        sql: "${level} "
        sql_case:
        filters:
      dimensions: []
      table_calculations: []
      pivots: []
    row: 15
    col: 5
    width: 5
    height: 6
  - title: Number of Dirty Tables
    name: Number of Dirty Tables
    model: restaurant_of_the_future
    explore: iot
    type: looker_pie
    fields: [iot.measure, iot.count]
    filters:
      iot.machine: table
    sorts: [iot.measure]
    limit: 500
    dynamic_fields: [{category: dimension, description: '', label: Measure Groups,
        value_format: !!null '', value_format_name: !!null '', calculation_type: group_by,
        dimension: measure_groups, args: [iot.measure, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: measuregroup, filter: ''}], !!null ''], _kind_hint: dimension,
        _type_hint: string}]
    value_labels: legend
    label_type: labPer
    series_colors:
      '0': "#0F9D58"
      '1': "#DB4437"
    series_labels:
      '0': Clean
      '1': Dirty
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 15
    col: 16
    width: 4
    height: 6
  - name: Service (2)
    type: text
    title_text: Service
    subtitle_text: Drive-thru Service Indicators
    body_text: ''
    row: 26
    col: 0
    width: 20
    height: 3
  - title: Dirty Tables
    name: Dirty Tables
    model: restaurant_of_the_future
    explore: iot
    type: looker_grid
    fields: [iot.sensor, iot.elapse_time]
    filters:
      iot.machine: table
      iot.measure: '1'
    sorts: [iot.sensor]
    limit: 500
    show_view_names: false
    show_row_numbers: false
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
    series_labels:
      iot.elapse_time: Minutes Since Clean
    series_cell_visualizations:
      iot.elapse_time:
        is_active: false
    series_types: {}
    defaults_version: 1
    row: 21
    col: 15
    width: 5
    height: 5
  - title: Freezer 1 Temp
    name: Freezer 1 Temp
    model: restaurant_of_the_future
    explore: iot
    type: single_value
    fields: [iot.average_measure]
    filters:
      iot.machine: freezer 1
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    value_format: 0"°F"
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    target_length: 15
    target_gap: 15
    target_weight: 50
    range_min: 0
    range_max: 100
    value_label_type: none
    value_label_padding: 60
    target_source: 'off'
    range_formatting: ''
    gauge_fill_type: progress
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    target_label_padding: 1.5
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    showComparison: false
    minValue: 0
    maxValue: 100
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#4285F4"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1800
    waveRise: true
    waveHeightScaling: true
    waveAnimate: true
    waveColor: "#DB4437"
    waveOffset: 0
    textVertPosition: 0.5
    textSize: 1
    valueCountUp: true
    displayPercent: true
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
    series_types: {}
    defaults_version: 1
    query_fields:
      measures:
      - align: right
        can_filter: true
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Iot Average Level
        label_from_parameter:
        label_short: Average Level
        map_layer:
        name: iot.average_level
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: average
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: iot
        view_label: Iot
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Average Level
        measure: true
        parameter: false
        primary_key: false
        project_name: restaurant_of_the_future
        scope: iot
        suggest_dimension: iot.average_level
        suggest_explore: iot
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        is_turtle: false
        can_turtle: false
        turtle_dimension:
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/restaurant_of_the_future/files/views%2Fiot.view.lkml?line=69"
        permanent:
        source_file: views/iot.view.lkml
        source_file_path: restaurant_of_the_future/views/iot.view.lkml
        sql: "${level} "
        sql_case:
        filters:
      dimensions: []
      table_calculations: []
      pivots: []
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 33
    col: 0
    width: 5
    height: 4
  - title: Drive-thru Bay 2 Wait Time
    name: Drive-thru Bay 2 Wait Time
    model: restaurant_of_the_future
    explore: iot
    type: single_value
    fields: [iot.average_elapse_time]
    filters:
      iot.machine: drive thru 2
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: barclays
      palette_id: barclays-categorical-0
    custom_color: ''
    conditional_formatting: [{type: greater than, value: 3, background_color: '',
        font_color: "#EA4335", color_application: {collection_id: barclays, palette_id: barclays-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: equal
          to, value: 2, background_color: '', font_color: "#34A853", color_application: {
          collection_id: barclays, palette_id: barclays-sequential-0}, bold: false,
        italic: false, strikethrough: false, fields: !!null ''}, {type: equal to,
        value: 3, background_color: '', font_color: "#FBBC04", color_application: {
          collection_id: barclays, palette_id: barclays-sequential-0}, bold: false,
        italic: false, strikethrough: false, fields: !!null ''}]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    row: 29
    col: 15
    width: 5
    height: 4
  - title: Average Drive-thru Wait Time
    name: Average Drive-thru Wait Time
    model: restaurant_of_the_future
    explore: iot
    type: single_value
    fields: [iot.average_elapse_time]
    filters:
      iot.machine: drive thru 1,drive thru 2
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: barclays
      palette_id: barclays-categorical-0
    custom_color: ''
    conditional_formatting: [{type: greater than, value: 3, background_color: '',
        font_color: "#EA4335", color_application: {collection_id: barclays, palette_id: barclays-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: equal
          to, value: 2, background_color: '', font_color: "#34A853", color_application: {
          collection_id: barclays, palette_id: barclays-sequential-0}, bold: false,
        italic: false, strikethrough: false, fields: !!null ''}, {type: equal to,
        value: 3, background_color: '', font_color: "#FBBC04", color_application: {
          collection_id: barclays, palette_id: barclays-sequential-0}, bold: false,
        italic: false, strikethrough: false, fields: !!null ''}]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    row: 29
    col: 0
    width: 5
    height: 4
  - title: Drive-thru Bay 1 Wait Time
    name: Drive-thru Bay 1 Wait Time
    model: restaurant_of_the_future
    explore: iot
    type: single_value
    fields: [iot.average_elapse_time]
    filters:
      iot.machine: drive thru 1
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: barclays
      palette_id: barclays-categorical-0
    custom_color: ''
    conditional_formatting: [{type: greater than, value: 3, background_color: '',
        font_color: "#EA4335", color_application: {collection_id: barclays, palette_id: barclays-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: equal
          to, value: 2, background_color: '', font_color: "#34A853", color_application: {
          collection_id: barclays, palette_id: barclays-sequential-0}, bold: false,
        italic: false, strikethrough: false, fields: !!null ''}, {type: equal to,
        value: 3, background_color: '', font_color: "#FBBC04", color_application: {
          collection_id: barclays, palette_id: barclays-sequential-0}, bold: false,
        italic: false, strikethrough: false, fields: !!null ''}]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    row: 29
    col: 10
    width: 5
    height: 4
  - title: Average Freezer 1 Temp
    name: Average Freezer 1 Temp
    model: restaurant_of_the_future
    explore: iot
    type: single_value
    fields: [iot.average_measure]
    filters:
      iot.machine: freezer 2,freezer 1,freezer 3,freezer 4
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    value_format: 0"°F"
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    target_length: 15
    target_gap: 15
    target_weight: 50
    range_min: 0
    range_max: 100
    value_label_type: none
    value_label_padding: 60
    target_source: 'off'
    range_formatting: ''
    gauge_fill_type: progress
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    target_label_padding: 1.5
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    showComparison: false
    minValue: 0
    maxValue: 100
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#4285F4"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1800
    waveRise: true
    waveHeightScaling: true
    waveAnimate: true
    waveColor: "#DB4437"
    waveOffset: 0
    textVertPosition: 0.5
    textSize: 1
    valueCountUp: true
    displayPercent: true
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
    series_types: {}
    defaults_version: 1
    query_fields:
      measures:
      - align: right
        can_filter: true
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Iot Average Level
        label_from_parameter:
        label_short: Average Level
        map_layer:
        name: iot.average_level
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: average
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: iot
        view_label: Iot
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Average Level
        measure: true
        parameter: false
        primary_key: false
        project_name: restaurant_of_the_future
        scope: iot
        suggest_dimension: iot.average_level
        suggest_explore: iot
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        is_turtle: false
        can_turtle: false
        turtle_dimension:
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/restaurant_of_the_future/files/views%2Fiot.view.lkml?line=69"
        permanent:
        source_file: views/iot.view.lkml
        source_file_path: restaurant_of_the_future/views/iot.view.lkml
        sql: "${level} "
        sql_case:
        filters:
      dimensions: []
      table_calculations: []
      pivots: []
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    row: 29
    col: 5
    width: 5
    height: 4
  - title: Freezer 3 Temp
    name: Freezer 3 Temp
    model: restaurant_of_the_future
    explore: iot
    type: single_value
    fields: [iot.total_measure]
    filters:
      iot.machine: freezer 3
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    value_format: 0"°F"
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    target_length: 15
    target_gap: 15
    target_weight: 50
    range_min: 0
    range_max: 100
    value_label_type: none
    value_label_padding: 60
    target_source: 'off'
    range_formatting: ''
    gauge_fill_type: progress
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    target_label_padding: 1.5
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    showComparison: false
    minValue: 0
    maxValue: 100
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#4285F4"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1800
    waveRise: true
    waveHeightScaling: true
    waveAnimate: true
    waveColor: "#DB4437"
    waveOffset: 0
    textVertPosition: 0.5
    textSize: 1
    valueCountUp: true
    displayPercent: true
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
    series_types: {}
    defaults_version: 1
    query_fields:
      measures:
      - align: right
        can_filter: true
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Iot Average Level
        label_from_parameter:
        label_short: Average Level
        map_layer:
        name: iot.average_level
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: average
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: iot
        view_label: Iot
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Average Level
        measure: true
        parameter: false
        primary_key: false
        project_name: restaurant_of_the_future
        scope: iot
        suggest_dimension: iot.average_level
        suggest_explore: iot
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        is_turtle: false
        can_turtle: false
        turtle_dimension:
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/restaurant_of_the_future/files/views%2Fiot.view.lkml?line=69"
        permanent:
        source_file: views/iot.view.lkml
        source_file_path: restaurant_of_the_future/views/iot.view.lkml
        sql: "${level} "
        sql_case:
        filters:
      dimensions: []
      table_calculations: []
      pivots: []
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    row: 33
    col: 10
    width: 5
    height: 4
  - title: Freezer 2 Temp
    name: Freezer 2 Temp
    model: restaurant_of_the_future
    explore: iot
    type: single_value
    fields: [iot.average_measure]
    filters:
      iot.machine: freezer 2
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    value_format: 0"°F"
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    target_length: 15
    target_gap: 15
    target_weight: 50
    range_min: 0
    range_max: 100
    value_label_type: none
    value_label_padding: 60
    target_source: 'off'
    range_formatting: ''
    gauge_fill_type: progress
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    target_label_padding: 1.5
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    showComparison: false
    minValue: 0
    maxValue: 100
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#4285F4"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1800
    waveRise: true
    waveHeightScaling: true
    waveAnimate: true
    waveColor: "#DB4437"
    waveOffset: 0
    textVertPosition: 0.5
    textSize: 1
    valueCountUp: true
    displayPercent: true
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
    series_types: {}
    defaults_version: 1
    query_fields:
      measures:
      - align: right
        can_filter: true
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Iot Average Level
        label_from_parameter:
        label_short: Average Level
        map_layer:
        name: iot.average_level
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: average
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: iot
        view_label: Iot
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Average Level
        measure: true
        parameter: false
        primary_key: false
        project_name: restaurant_of_the_future
        scope: iot
        suggest_dimension: iot.average_level
        suggest_explore: iot
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        is_turtle: false
        can_turtle: false
        turtle_dimension:
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/restaurant_of_the_future/files/views%2Fiot.view.lkml?line=69"
        permanent:
        source_file: views/iot.view.lkml
        source_file_path: restaurant_of_the_future/views/iot.view.lkml
        sql: "${level} "
        sql_case:
        filters:
      dimensions: []
      table_calculations: []
      pivots: []
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    row: 33
    col: 5
    width: 5
    height: 4
  - title: Freezer 4 Temp
    name: Freezer 4 Temp
    model: restaurant_of_the_future
    explore: iot
    type: single_value
    fields: [iot.average_measure]
    filters:
      iot.machine: freezer 4
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    value_format: 0"°F"
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    target_length: 15
    target_gap: 15
    target_weight: 50
    range_min: 0
    range_max: 100
    value_label_type: none
    value_label_padding: 60
    target_source: 'off'
    range_formatting: ''
    gauge_fill_type: progress
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    target_label_padding: 1.5
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    showComparison: false
    minValue: 0
    maxValue: 100
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#4285F4"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1800
    waveRise: true
    waveHeightScaling: true
    waveAnimate: true
    waveColor: "#DB4437"
    waveOffset: 0
    textVertPosition: 0.5
    textSize: 1
    valueCountUp: true
    displayPercent: true
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
    series_types: {}
    defaults_version: 1
    query_fields:
      measures:
      - align: right
        can_filter: true
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Iot Average Level
        label_from_parameter:
        label_short: Average Level
        map_layer:
        name: iot.average_level
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: average
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: iot
        view_label: Iot
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Average Level
        measure: true
        parameter: false
        primary_key: false
        project_name: restaurant_of_the_future
        scope: iot
        suggest_dimension: iot.average_level
        suggest_explore: iot
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        is_turtle: false
        can_turtle: false
        turtle_dimension:
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/restaurant_of_the_future/files/views%2Fiot.view.lkml?line=69"
        permanent:
        source_file: views/iot.view.lkml
        source_file_path: restaurant_of_the_future/views/iot.view.lkml
        sql: "${level} "
        sql_case:
        filters:
      dimensions: []
      table_calculations: []
      pivots: []
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    row: 33
    col: 15
    width: 5
    height: 4
