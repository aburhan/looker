# The name of this view in Looker is "Sales Detail"
view: sales_detail {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `restaurant-of-the-future-1.dashboad_staging.sales_detail`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Availability" in Explore.

  dimension: availability {
    type: string
    sql: ${TABLE}.AVAILABILITY ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.BRAND ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.CATEGORY ;;
  }

  dimension: color {
    type: string
    sql: ${TABLE}.COLOR ;;
  }

  dimension: cost {
    type: number
    value_format:"$#.00;($#.00)"
    sql: ${TABLE}.COST ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.CURRENCY_CODE ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.DEPARTMENT ;;
  }

  dimension: distribution_center_id {
    type: number
    sql: ${TABLE}.DISTRIBUTION_CENTER_ID ;;
  }

  dimension: estimated_delivery_day {
    type: string
    sql: ${TABLE}.ESTIMATED_DELIVERY_DAY ;;
  }

  dimension: factor {
    type: number
    sql: ${TABLE}.Factor ;;
  }

  dimension: image_link {
    type: string
    sql: ${TABLE}.IMAGE_LINK ;;
  }

  dimension: menu_item {
    type: number
    sql: ${TABLE}.Menu_Item ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.Qty ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.RETAIL_PRICE ;;
    value_format:"$#.00;($#.00)"
  }

  dimension: scenario {
    type: string
    sql: ${TABLE}.Scenario ;;
  }

  dimension: size {
    type: string
    sql: ${TABLE}.SIZE ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.SKU ;;
  }

  dimension: store {
    type: number
    sql: ${TABLE}.Store ;;
  }

  dimension: sub_category {
    type: string
    sql: ${TABLE}.SUB_CATEGORY ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Timestamp ;;
  }

  dimension: uuid {
    type: number
    value_format_name: id
    sql: ${TABLE}.UUID ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [id, name]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_cost {
    type: sum
    value_format:"$#,##0.00"
    sql: ${cost} ;;
  }

  measure: average_cost {
    type: average
    value_format:"$#,##0.00"
    sql: ${cost} ;;
  }
  measure: average_per_item_profit {
    type: average
    value_format:"$#,##0.00"
    sql: ${retail_price} - ${cost} ;;
  }

  measure: total_factor {
    type: sum
    hidden: yes
    sql: ${factor} ;;
  }

  measure: average_factor {
    type: average
    hidden: yes
    sql: ${factor} ;;
  }

  measure: total_menu_item {
    type: sum

    sql: ${menu_item} ;;
  }

  measure: average_menu_item {
    type: average

    sql: ${menu_item} ;;
  }

  measure: total_qty {
    type: sum

    sql: ${qty} ;;
  }

  measure: average_qty {
    type: average

    sql: ${qty} ;;
  }

  measure: total_retail_price {
    type: sum
    value_format:"$#,##0.00"
    sql: ${retail_price} ;;
  }

  measure: average_retail_price {
    type: average
    value_format:"$#,##0.00"
    sql: ${retail_price} ;;
  }

  measure: total_store {
    type: sum
    sql: ${store} ;;
  }

  measure: average_store {
    type: average
    sql: ${store} ;;
  }
}
