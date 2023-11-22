resource "local_file" "my_pet" {
    filename = "pet.txt"
    content = "my pet name is ${random_pet.petname.id}"
    
}
resource "random_pet" "petname" {
    prefix = "mr"
    separator = "."
    length = "1" 
}

output "pet_name" {
    value = random_pet.petname.id
}