# The name of this view in Looker is "Products"
view: products {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `sales_inventory.products`
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
    type: number
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
    type: number
    sql: ${TABLE}.ESTIMATED_DELIVERY_DAY ;;
  }

  dimension: image_link {
    type: string
    sql: ${TABLE}.IMAGE_LINK ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.RETAIL_PRICE ;;
  }

  dimension: size {
    type: string
    sql: ${TABLE}.SIZE ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.SKU ;;
  }

  dimension: sub_category {
    type: string
    sql: ${TABLE}.SUB_CATEGORY ;;
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

  measure: total_availability {
    type: sum
    hidden: yes
    sql: ${availability} ;;
  }

  measure: average_availability {
    type: average
    hidden: yes
    sql: ${availability} ;;
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

  measure: total_estimated_delivery_day {
    type: sum
    hidden: yes
    sql: ${estimated_delivery_day} ;;
  }

  measure: average_estimated_delivery_day {
    type: average
    hidden: yes
    sql: ${estimated_delivery_day} ;;
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
