# The name of this view in Looker is "Store"
view: store {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `sales_inventory.store`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "City" in Explore.

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: in_transit_days {
    type: number
    sql: ${TABLE}.InTransitDays ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.Latitude ;;
  }

  dimension: location_type_cd {
    type: string
    sql: ${TABLE}.LocationTypeCD ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.Longitude ;;
  }

  dimension: population {
    type: number
    sql: ${TABLE}.Population ;;
  }

  dimension: receiving_day_of_week {
    type: number
    sql: ${TABLE}.ReceivingDayOfWeek ;;
  }

  dimension: square_feet {
    type: number
    sql: ${TABLE}.SquareFeet ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: store_number {
    type: string
    sql: ${TABLE}.StoreNumber ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.Zip ;;
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

  measure: total_in_transit_days {
    type: sum
    hidden: yes
    sql: ${in_transit_days} ;;
  }

  measure: average_in_transit_days {
    type: average
    hidden: yes
    sql: ${in_transit_days} ;;
  }

  measure: total_latitude {
    type: sum
    hidden: yes
    sql: ${latitude} ;;
  }

  measure: average_latitude {
    type: average
    hidden: yes
    sql: ${latitude} ;;
  }

  measure: total_longitude {
    type: sum
    hidden: yes
    sql: ${longitude} ;;
  }

  measure: average_longitude {
    type: average
    hidden: yes
    sql: ${longitude} ;;
  }

  measure: total_population {
    type: sum
    hidden: yes
    sql: ${population} ;;
  }

  measure: average_population {
    type: average
    hidden: yes
    sql: ${population} ;;
  }

  measure: total_receiving_day_of_week {
    type: sum
    hidden: yes
    sql: ${receiving_day_of_week} ;;
  }

  measure: average_receiving_day_of_week {
    type: average
    hidden: yes
    sql: ${receiving_day_of_week} ;;
  }

  measure: total_square_feet {
    type: sum
    hidden: yes
    sql: ${square_feet} ;;
  }

  measure: average_square_feet {
    type: average
    hidden: yes
    sql: ${square_feet} ;;
  }
}
