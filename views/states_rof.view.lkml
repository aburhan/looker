# The name of this view in Looker is "States Rof"
view: states_rof {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `restaurant-of-the-future-1.dashboad_staging.states_rof`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Region" in Explore.

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.StateCode ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.StateName ;;
  }

  dimension: store_percentage {
    type: number
    sql: ${TABLE}.StorePercentage ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [state_name]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_store_percentage {
    type: sum
    hidden: yes
    sql: ${store_percentage} ;;
  }

  measure: average_store_percentage {
    type: average
    hidden: yes
    sql: ${store_percentage} ;;
  }
}
