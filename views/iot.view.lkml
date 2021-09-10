# The name of this view in Looker is "Iot"
view: iot {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `restaurant-of-the-future-1.dashboad_staging.iot`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Elapse Time" in Explore.

  dimension: elapse_time {
    type: number
    value_format:"0 \" mins\""
    sql: ${TABLE}.elapse_time ;;
  }

  dimension: level {
    type: number
    sql: ${TABLE}.level ;;
  }

  dimension: machine {
    type: string
    sql: ${TABLE}.machine ;;
  }

  dimension: measure {
    type: number
    sql: ${TABLE}.measure ;;
  }

  dimension: sensor {
    type: number
    sql: ${TABLE}.Sensor ;;
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

  measure: total_elapse_time {
    type: sum
    value_format:"0 \" mins\""
    sql: ${elapse_time} ;;
  }

  measure: average_elapse_time {
    type: average
    value_format:"0 \" mins\""
    sql: ${elapse_time} ;;
  }

  measure: total_level {
    type: sum

    sql: ${level} ;;
  }

  measure: average_level {
    type: average

    sql: ${level} ;;
  }

  measure: total_measure {
    type: sum

    sql: ${measure} ;;
  }

  measure: average_measure {
    type: average

    sql: ${measure} ;;
  }

  measure: total_sensor {
    type: sum
    sql: ${sensor} ;;
  }

  measure: average_sensor {
    type: average

    sql: ${sensor} ;;
  }
}
