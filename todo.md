# To-do

## Add product reviews

### Relationship
- One product has many reviews
- One user has many reviews
### Fields
- Review has the the following fields:
  - subject, description, rating
  - keys: id, user_id, product_id

```bash
bin/rails generate model Review subject:string description:text rating:integer user:references product:references
```

- [ x ] generate model
- [ ] create crud controller