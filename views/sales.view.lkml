# The name of this view in Looker is "Sales"
view: sales {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `restaurant-of-the-future-1.dashboad_staging.sales`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Factor" in Explore.

  dimension: factor {
    type: number
    sql: ${TABLE}.Factor ;;
  }

  dimension: menu_item {
    type: number
    sql: ${TABLE}.Menu_Item ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.Qty ;;
  }

  dimension: scenario {
    type: string
    sql: ${TABLE}.Scenario ;;
  }

  dimension: store {
    type: number
    sql: ${TABLE}.Store ;;
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
    drill_fields: []
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

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
    hidden: yes
    sql: ${menu_item} ;;
  }

  measure: total_qty {
    type: sum
    sql: ${qty} ;;
  }

  measure: average_qty {
    type: average
    hidden: yes
    sql: ${qty} ;;
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
