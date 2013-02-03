# test
dt <- data.frame(
    id = c("1", "1.1", "1.1.1", "1.1.2", "1.12", "1.12.1", "1.12.2"), 
    value = c(NA, NA, 5, 10, NA, 2, 3), 
    weight = c(NA, NA, 5333, 10, NA, 2, 3))
a <- path_enum$new(dt)
a$data()

x <- "1.1"
a$descendants_ids(x)
a$descendants(x)
a$has_descendants(x)

a$children_ids(x)
a$children(x)
a$has_children(x)

a$parent_id(x)
a$parent(x)
a$has_parent(x)

a$endnodes_ids(x)
a$endnodes(x)

a$endnodes_aggregate(c("1.1", "1.1.1"), c("value"), function(x) sum(x, na.rm = TRUE))
a$endnodes_aggregate("1.1", c("value", "weight"), function(x) mean(x, na.rm = TRUE))
