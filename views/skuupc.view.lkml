# The name of this view in Looker is "Skuupc"
view: skuupc {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `sales_inventory.skuupc`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Average Daily" in Explore.

  dimension: average_daily {
    type: number
    sql: ${TABLE}.AverageDaily ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.Brand ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.Cost ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.Department ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.RetailPrice ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.SKU ;;
  }

  dimension: upc {
    type: string
    sql: ${TABLE}.UPC ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [name]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_average_daily {
    type: sum
    hidden: yes
    sql: ${average_daily} ;;
  }

  measure: average_average_daily {
    type: average
    hidden: yes
    sql: ${average_daily} ;;
  }

  measure: total_cost {
    type: sum
    hidden: yes
    sql: ${cost} ;;
  }

  measure: average_cost {
    type: average
    hidden: yes
    sql: ${cost} ;;
  }

  measure: total_retail_price {
    type: sum
    hidden: yes
    sql: ${retail_price} ;;
  }

  measure: average_retail_price {
    type: average
    hidden: yes
    sql: ${retail_price} ;;
  }
}
