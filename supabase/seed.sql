-- Insert seed data for 'users' table with avatar URLs
INSERT INTO
  users (
    uuid,
    "firstName",
    "lastName",
    username,
    bio,
    email,
    avatar
  )
VALUES
  (
    'e6586752-42f5-49c8-9a40-9b3c8651c5cf',
    'John',
    'Doe',
    'johndoe',
    'Hi, I am John Doe.',
    'john.doe@example.com',
    'https://i.pravatar.cc/150?u=e6586752-42f5-49c8-9a40-9b3c8651c5cf'
  ),
  (
    'c826d894-9216-4e6e-97ad-8ab9d0d3a283',
    'Jane',
    'Smith',
    'janesmith',
    'Hello, I am Jane Smith.',
    'jane.smith@example.com',
    'https://i.pravatar.cc/150?u=c826d894-9216-4e6e-97ad-8ab9d0d3a283'
  ),
  (
    '836fa23d-7c0e-4fbf-8ed1-0e48b19e99ca',
    'Mike',
    'Johnson',
    'mikejohnson',
    'Hey, I am Mike Johnson.',
    'mike.johnson@example.com',
    'https://i.pravatar.cc/150?u=836fa23d-7c0e-4fbf-8ed1-0e48b19e99ca'
  );
INSERT INTO
  categories (uuid, name, slug)
VALUES
  (
    '45f42df8-3e1d-4b2d-8f80-7c35806d5739',
    'Technology',
    'technology'
  ),
  (
    'ac52d4f3-20bf-4956-8305-6b9870bb8593',
    'Art',
    'art'
  ),
  (
    'ea22c5ed-3cf6-4ff1-9e32-9f2f39f32c94',
    'Music',
    'music'
  ),
  (
    '0d09f204-921e-4e96-bc78-4e3b9357f6a7',
    'Fashion',
    'fashion'
  ),
  (
    'e95a8fdd-3e14-48b6-a4f6-6f6625a4576c',
    'Food',
    'food'
  ),
  (
    'c5c0d889-0676-4411-92e3-b8c30c43260e',
    'Film & Video',
    'film_video'
  ),
  (
    '788f13ac-45aa-44b7-98f1-48c669b1a27a',
    'Books',
    'books'
  ),
  (
    '3a8ef95f-3c99-4192-8197-7cb289d23933',
    'Design',
    'design'
  );-- Insert seed data for 'projects' table
INSERT INTO
  projects (
    uuid,
    title,
    excerpt,
    description,
    image,
    "categoryUuid",
    pledged,
    backers,
    funded,
    "softCap",
    "hardCap",
    "finishesAt",
    "createdAt",
    "lastUpdatedAt"
  )
VALUES
 (
    '3f1808ba-7fea-4b9b-9c11-3d2aeacedade',
    'Smartwatch Project',
    'Revolutionary smartwatch',
    'This smartwatch project aims to bring the latest technology to your wrist.',
    'https://loremflickr.com/500/320/smartwatch',
    '45f42df8-3e1d-4b2d-8f80-7c35806d5739',
    25000.00,
    120,
    '15000.00',
    '20000.00',
    '50000.00',
    '2023-08-31 23:59:59',
    '2023-07-15 10:30:00',
    '2023-07-15 10:30:00'
  ),
  (
    '13ad8677-a09b-4007-af50-469dde6077e3',
    'Art Exhibition',
    'Contemporary art exhibition',
    'An art exhibition showcasing the works of talented artists.',
    'https://loremflickr.com/500/320/art_exhibition',
    'ac52d4f3-20bf-4956-8305-6b9870bb8593',
    5000.00,
    50,
    '4000.00',
    '4000.00',
    '8000.00',
    '2023-09-15 23:59:59',
    '2023-07-16 09:45:00',
    '2023-07-16 09:45:00'
  ),
  (
    '97236007-adcb-483e-aac8-e099d9f82318',
    'Album Recording',
    'Debut album recording',
    'Support the recording of our debut music album.',
    'https://loremflickr.com/500/320/album_recording',
    'ea22c5ed-3cf6-4ff1-9e32-9f2f39f32c94',
    8000.00,
    90,
    '7000.00',
    '6000.00',
    '10000.00',
    '2023-10-10 23:59:59',
    '2023-07-16 14:20:00',
    '2023-07-16 14:20:00'
  ),
  (
    '256a3745-6219-4c88-9549-9db9145bd141',
    'Fashion Clothing Line',
    'New fashion clothing line',
    'Launching a trendy clothing line with unique designs and styles.',
    'https://loremflickr.com/500/320/fashion_clothing',
    '0d09f204-921e-4e96-bc78-4e3b9357f6a7',
    15000.00,
    80,
    '05000.00',
    '12000.00',
    '25000.00',
    '2023-11-30 23:59:59',
    '2023-07-17 10:30:00',
    '2023-07-17 10:30:00'
  ),
  (
    '4db2eead-bebb-4c13-862d-2d658fe42291',
    'Organic Food Delivery',
    'Fresh organic food delivery service',
    'Starting a sustainable and healthy food delivery business.',
    'https://loremflickr.com/500/320/food_delivery',
    'e95a8fdd-3e14-48b6-a4f6-6f6625a4576c',
    8000.00,
    60,
    '7000.00',
    '6000.00',
    '10000.00',
    '2023-10-20 23:59:59',
    '2023-07-17 11:45:00',
    '2023-07-17 11:45:00'
  ),
  (
    '1204de01-7bb8-46a2-91fc-386d5665befc',
    'Indie Short Film',
    'Short film production',
    'Creating an indie short film exploring a thought-provoking story.',
    'https://loremflickr.com/500/320/movie',
    'c5c0d889-0676-4411-92e3-b8c30c43260e',
    5000.00,
    40,
    '4000.00',
    '4000.00',
    '8000.00',
    '2023-09-25 23:59:59',
    '2023-07-17 14:20:00',
    '2023-07-17 14:20:00'
  ),
  (
    'e4b9ca3a-ed1e-45df-928d-7c514d81cd4c',
    'Sweet New Board Game',
    'A board game that is trendy and fun.',
    'Creating a new board game that is fun and engaging for all ages.',
    'https://loremflickr.com/500/320/board_game',
    '45f42df8-3e1d-4b2d-8f80-7c35806d5739',
    8000.00,
    70,
    '7000.00',
    '6000.00',
    '10000.00',
    '2023-09-18 23:59:59',
    '2023-07-20 09:45:00',
    '2023-07-20 09:45:00'
  ),
  (
    '1d8e7942-3eb8-4506-9cea-09d6230325e1',
    'External Laptop Monitor',
    'A portable monitor for your laptop.',
    'Creating a portable monitor that can be used with any laptop.',
    'https://loremflickr.com/500/320/laptop',
    'ac52d4f3-20bf-4956-8305-6b9870bb8593',
    4000.00,
    40,
    '3000.00',
    '3000.00',
    '6000.00',
    '2023-10-05 23:59:59',
    '2023-07-21 11:00:00',
    '2023-07-21 11:00:00'
  ),
  (
    'd717d859-4065-4d38-8018-747b23f50c05',
    'Tech Gadget Innovation',
    'Innovative tech gadgets',
    'Developing cutting-edge tech gadgets for everyday use.',
    'https://loremflickr.com/500/320/tech_gadgets',
    '45f42df8-3e1d-4b2d-8f80-7c35806d5739',
    8000.00,
    70,
    '7000.00',
    '6000.00',
    '10000.00',
    '2023-09-18 23:59:59',
    '2023-07-20 09:45:00',
    '2023-07-20 09:45:00'
  ),
  (
    '7b9c2a7a-7058-4a7b-9f3b-8fde35de45ac',
    'Art Therapy Workshops',
    'Art therapy for mental health',
    'Organizing art therapy workshops to promote mental well-being.',
    'https://loremflickr.com/500/320/art_therapy',
    'ac52d4f3-20bf-4956-8305-6b9870bb8593',
    4000.00,
    40,
    '3000.00',
    '3000.00',
    '6000.00',
    '2023-10-05 23:59:59',
    '2023-07-21 11:00:00',
    '2023-07-21 11:00:00'
  ),
  (
    'f672a67c-87e0-43b9-bbe2-a660e45cb8f1',
    'Rock Music Album',
    'Bangin rock music album',
    'Recording an album featuring sweet guitar rifts and banging drums.',
    'https://loremflickr.com/500/320/rock_music',
    'ea22c5ed-3cf6-4ff1-9e32-9f2f39f32c94',
    6000.00,
    80,
    '5000.00',
    '5000.00',
    '8000.00',
    '2023-11-05 23:59:59',
    '2023-07-22 14:30:00',
    '2023-07-22 14:30:00'
  ),
  (
    '8c0be7f1-981c-40f0-a05c-22917c5bd5de',
    'Eco-Friendly Books',
    'Eco-conscious book publishing',
    'Publishing a series of eco-friendly books promoting sustainable living.',
    'https://loremflickr.com/500/320/books',
    '788f13ac-45aa-44b7-98f1-48c669b1a27a',
    3500.00,
    50,
    '2500.00',
    '3000.00',
    '5000.00',
    '2023-09-25 23:59:59',
    '2023-07-23 10:15:00',
    '2023-07-23 10:15:00'
  ),
  (
    '0470fdae-9ae0-4902-88e7-6a8502505e4e',
    'Urban Farming Initiative',
    'Community urban farming project',
    'Creating a community-driven urban farming project to grow fresh produce.',
    'https://loremflickr.com/500/320/urban_farming',
    'e95a8fdd-3e14-48b6-a4f6-6f6625a4576c',
    5000.00,
    40,
    '4000.00',
    '4000.00',
    '7000.00',
    '2023-10-15 23:59:59',
    '2023-07-24 11:30:00',
    '2023-07-24 11:30:00'
  ),
  (
    '2f753fc0-131c-48c2-b97e-62fe65957709',
    'Indie Video Game',
    'Adventure game development',
    'Creating an indie video game with captivating storyline and gameplay.',
    'https://loremflickr.com/500/320/video_game_controller',
    'c5c0d889-0676-4411-92e3-b8c30c43260e',
    12000.00,
    90,
    '02000.00',
    '10000.00',
    '15000.00',
    '2023-11-30 23:59:59',
    '2023-07-25 12:45:00',
    '2023-07-25 12:45:00'
  ),
  (
    '461ec726-067e-4d4b-9ab2-14b17eecda45',
    'Cookbook Publication',
    'Gourmet cookbook publishing',
    'Publishing a gourmet cookbook with a collection of unique recipes.',
    'https://loremflickr.com/500/320/cookbook',
    '3a8ef95f-3c99-4192-8197-7cb289d23933',
    6000.00,
    60,
    '5000.00',
    '5000.00',
    '8000.00',
    '2023-11-10 23:59:59',
    '2023-07-26 14:20:00',
    '2023-07-26 14:20:00'
  ),
  (
    '00e5fe63-b26c-40e2-a3ac-eb3780932a46',
    'Eco-Friendly Fashion',
    'Sustainable fashion collection',
    'Launching an eco-conscious fashion collection with recycled materials.',
    'https://loremflickr.com/500/320/eco_friendly_fashion',
    '0d09f204-921e-4e96-bc78-4e3b9357f6a7',
    10000.00,
    100,
    '00000.00',
    '8000.00',
    '12000.00',
    '2023-10-20 23:59:59',
    '2023-07-27 15:30:00',
    '2023-07-27 15:30:00'
  ),
  (
    'b831f62b-4f0b-4ff9-9c11-266da08627dd',
    'Community Art Project',
    'Public art installations',
    'Creating interactive art installations to engage the community.',
    'https://loremflickr.com/500/320/community_art_project',
    'ac52d4f3-20bf-4956-8305-6b9870bb8593',
    4000.00,
    40,
    '3000.00',
    '3000.00',
    '6000.00',
    '2023-09-05 23:59:59',
    '2023-07-28 17:00:00',
    '2023-07-28 17:00:00'
  ),
  (
    'c3ad414e-1864-4097-a7af-0a35e29b5ad3',
    'Acoustic Music Album',
    'Soothing acoustic melodies',
    'Recording an acoustic music album featuring soothing melodies.',
    'https://loremflickr.com/500/320/acoustic_music',
    'ea22c5ed-3cf6-4ff1-9e32-9f2f39f32c94',
    5000.00,
    70,
    '4000.00',
    '4000.00',
    '8000.00',
    '2023-09-15 23:59:59',
    '2023-07-29 10:30:00',
    '2023-07-29 10:30:00'
  ),
  (
    '78bbe66e-b9e7-48a4-97da-a74bf5161611',
    'Healthy Meal Kits',
    'Nutritious meal kits delivery',
    'Providing convenient meal kits with healthy and delicious recipes.',
    'https://loremflickr.com/500/320/food',
    'e95a8fdd-3e14-48b6-a4f6-6f6625a4576c',
    3000.00,
    40,
    '2000.00',
    '2500.00',
    '5000.00',
    '2023-09-10 23:59:59',
    '2023-07-30 12:15:00',
    '2023-07-30 12:15:00'
  ),
  (
    'e69cf89a-b6ad-4f9d-8fca-544eac66feb8',
    'DIY Home Improvement',
    'Home improvement tutorials',
    'Creating DIY home improvement tutorials for enthusiasts.',
    'https://loremflickr.com/500/320/hammer',
    '3a8ef95f-3c99-4192-8197-7cb289d23933',
    8000.00,
    70,
    '7000.00',
    '6000.00',
    '10000.00',
    '2023-11-08 23:59:59',
    '2023-07-31 14:45:00',
    '2023-07-31 14:45:00'
  ),
  (
    '78dcf11a-c80f-4f04-9d4b-e487426deb6e',
    'Charity Run Event',
    'Fundraising charity run',
    'Organizing a charity run event to raise funds for a noble cause.',
    'https://loremflickr.com/500/320/run',
    '45f42df8-3e1d-4b2d-8f80-7c35806d5739',
    4000.00,
    50,
    '3000.00',
    '3000.00',
    '6000.00',
    '2023-10-25 23:59:59',
    '2023-08-01 16:30:00',
    '2023-08-01 16:30:00'
  ),
  (
    'abd1482b-9e32-44a8-b5ef-06f40e121ca8',
    'Tech Coding Bootcamp',
    'Coding education program',
    'Launching a coding bootcamp to educate aspiring developers.',
    'https://loremflickr.com/500/320/coding_bootcamp',
    '45f42df8-3e1d-4b2d-8f80-7c35806d5739',
    10000.00,
    90,
    '00000.00',
    '8000.00',
    '12000.00',
    '2023-12-05 23:59:59',
    '2023-08-02 09:45:00',
    '2023-08-02 09:45:00'
  ),
  (
    '9c804cfc-1d8c-45de-9044-5948218b7a1e',
    'Jazz Music Album',
    'Soulful jazz music album',
    'Recording an album featuring soulful jazz melodies and improvisations.',
    'https://loremflickr.com/500/320/jazz_music',
    'ea22c5ed-3cf6-4ff1-9e32-9f2f39f32c94',
    6000.00,
    80,
    '5000.00',
    '5000.00',
    '8000.00',
    '2023-11-05 23:59:59',
    '2023-07-22 14:30:00',
    '2023-07-22 14:30:00'
  );