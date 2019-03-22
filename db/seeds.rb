# Create a profile with an avatar
profile_1 = Profile.create(
  last_name: 'Doe',
  first_name: 'John',
  avatar: {
    io: File.open(Rails.root.join('app', 'assets', 'images', 'adventure-boots-canyon-1882017.jpg')),
    filename: 'adventure-boots-canyon-1882017.jpg'
  }
)
profile_1.avatar.analyze

# Create a profile without an avatar, then attach one
profile_2 = Profile.create(
  last_name: 'Doe',
  first_name: 'Jane'
)
profile_2.avatar.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'beach-ocean-outdoors-1974768.jpg')),
  filename: 'beach-ocean-outdoors-1974768.jpg'
)
profile_2.avatar.analyze

# Create a Customer with two contracts
customer_1 = Customer.create(
  name: 'Marry',
  contracts: [
    {
      io: File.open(Rails.root.join('public', 'sample-contract-1.pdf')),
      filename: 'sample-contract-1.pdf'
    },
    {
      io: File.open(Rails.root.join('public', 'sample-contract-2.pdf')),
      filename: 'sample-contract-2.pdf'
    }
  ]
)
customer_1.contracts.each(&:analyze)
