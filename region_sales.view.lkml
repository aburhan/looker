view: region_sales {
  derived_table: {
    sql: SELECT regions.Region, SUM(inventory.RetailPrice)as SalesData
      FROM `restaurant-of-the-future-2.sales_inventory.ledger_sales_raw` as sales
      inner join `restaurant-of-the-future-2.sales_inventory.store` as  loc
      on sales.Store = CAST(loc.StoreNumber as Int)
      inner join `restaurant-of-the-future-2.sales_inventory.skuupc` as inventory
      on CAST(sales.UPC as string) = inventory.upc
      inner join `restaurant-of-the-future-2.lookup.regions` as regions
      on loc.State = regions.StateName
      group by regions.Region
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: sales_data {
    type: number
    sql: ${TABLE}.SalesData ;;
  }

  set: detail {
    fields: [region, sales_data]
  }
}
