# The name of this view in Looker is "Ledger Sales Raw"
view: ledger_sales_raw {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `sales_inventory.ledger_sales_raw`
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

  dimension: timestamp {
    type: string
    sql: ${TABLE}.Timestamp ;;
  }

  dimension: upc {
    type: number
    sql: ${TABLE}.UPC ;;
  }

  dimension: uuid {
    type: string
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

  measure: total_qty {
    type: sum
    hidden: yes
    sql: ${qty} ;;
  }

  measure: average_qty {
    type: average
    hidden: yes
    sql: ${qty} ;;
  }

  measure: total_store {
    type: sum
    hidden: yes
    sql: ${store} ;;
  }

  measure: average_store {
    type: average
    hidden: yes
    sql: ${store} ;;
  }

  measure: total_upc {
    type: sum
    hidden: yes
    sql: ${upc} ;;
  }

  measure: average_upc {
    type: average
    hidden: yes
    sql: ${upc} ;;
  }
}
