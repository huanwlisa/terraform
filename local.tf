resource "local_file" "pets" {
    filename = "pets"
    content = "My favorite pet is ${random_pet.my-pet.id}"
  
}