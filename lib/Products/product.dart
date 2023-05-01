import 'package:lizzaa/class/modalclass.dart';

List<Detail> AddedProducts = [];

List<Map<String, dynamic>> product = [
  {
    'id': 1,
    'title': "Black Kurti",
    "price": 850,
    "discountPercentage": 5,
    "rating": 4.76,
    "stock": 98,
    "brand": "ZOLA",
    "category": "Kurti",
    "description":
        "Women's wear is outfits made specifically for and worn by women. Salwar suits, saaris, lehnga etc. in Indian tradition and Skirts, shirts, sweaters, trousers, coats, chemises, and jeans, etc",
    "thumbnail":
        "https://images.meesho.com/images/products/70118936/xrtpk_512.jpg",
    "images": [
      'https://images.meesho.com/images/products/70118936/xrtpk_512.jpg',
      'https://assets.ajio.com/medias/sys_master/root/20210629/2Mqf/60da5428f997ddb312122ec6/-473Wx593H-462562948-black-MODEL2.jpg',
      'https://cdn.shopify.com/s/files/1/0495/6199/3384/products/Ethicart_Rayon185_Kurti_4__Black-1_29c1cb75-374c-48a0-a1ca-e5b1cbac5231.jpg?v=1668166102',
      'https://m.media-amazon.com/images/I/61WoVgma7sL._UL1439_.jpg',
    ],
  },
  {
    'id': 2,
    'title': "White Kurti",
    "description":
        "Women's wear is outfits made specifically for and worn by women. Salwar suits, saaris, lehnga etc. in Indian tradition and Skirts, shirts, sweaters, trousers, coats, chemises, and jeans, etc",
    "price": 1050,
    "discountPercentage": 5,
    "rating": 3.92,
    "stock": 245,
    "brand": "ZOLA",
    "category": "Kurti",
    "thumbnail":
        "https://cdn.shopify.com/s/files/1/0575/8851/4992/products/IMG_8420_550x.heic?v=1660900731",
    "images": [
      'https://cdn.shopify.com/s/files/1/0575/8851/4992/products/IMG_8420_550x.heic?v=1660900731',
      'https://cdn.shopify.com/s/files/1/0528/5219/5502/products/Picture1.png?v=1672917219',
      'https://fashiondeal.in/image/cache/catalog/Pinalika/white-heavy-reyon-cotton-kurti-with-printed-dupatta-4892-809x1080.jpg',
      'https://cdn.shopify.com/s/files/1/0082/6363/0953/products/WhatsAppImage2022-09-11at5.11.18PM_1_1200x1200.jpg?v=1662896842',
    ],
  },
  {
    'id': 3,
    'title': "Pink Kurti",
    "description":
        "Women's wear is outfits made specifically for and worn by women. Salwar suits, saaris, lehnga etc. in Indian tradition and Skirts, shirts, sweaters, trousers, coats, chemises, and jeans, etc",
    "price": 999,
    "discountPercentage": 5,
    "rating": 4.51,
    "stock": 47,
    "brand": "ZOLA",
    "category": "Kurti",
    "thumbnail":
        "https://cdn.shopify.com/s/files/1/0300/4933/7428/products/pink_600x.jpg?v=1650947059",
    "images": [
      'https://cdn.shopify.com/s/files/1/0300/4933/7428/products/pink_600x.jpg?v=1650947059',
      'https://cdn.shopify.com/s/files/1/0605/9550/3283/products/IMG_7896-min_1024x.jpg?v=1653503726',
      'https://kurtifashion.com/wp-content/uploads/2020/07/Pink-kurti-1-lszkwks2.jpeg',
      'https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/productimage/2021/6/10/efe87ccf-10f3-4cba-99da-58fa098c175a1623320656926-1.jpg',
    ],
  },
  {
    'id': 4,
    'title': "Embroidered Kurti",
    "description":
        "Women's wear is outfits made specifically for and worn by women. Salwar suits, saaris, lehnga etc. in Indian tradition and Skirts, shirts, sweaters, trousers, coats, chemises, and jeans, etc",
    "price": 1399,
    "discountPercentage": 10,
    "rating": 4.23,
    "stock": 102,
    "brand": "ZOLA",
    "category": "Kurti",
    "thumbnail":
        "https://bhadar.com/uploads/product/sizzling-yellow-embroidered-kurti-with-dupatta-and-sharara-set.jpg",
    "images": [
      'https://www.zakarto.com/wp-content/uploads/2020/02/3500609543.jpg',
      'https://bhadar.com/uploads/product/sizzling-yellow-embroidered-kurti-with-dupatta-and-sharara-set.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHv2JMATrE8aDZHDe1uwQyH6W7uQ1zRFgu4-XHcputi4kYRPwA7HQqvfRXhEfg5dFDqlE&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7n7HT-WPN63oVDc5Beui7PdPtBfHDzhwLuA&usqp=CAU',
    ],
  },
  {
    'id': 5,
    'title': "Yoke Design Kurti",
    "description":
        "Women's wear is outfits made specifically for and worn by women. Salwar suits, saaris, lehnga etc. in Indian tradition and Skirts, shirts, sweaters, trousers, coats, chemises, and jeans, etc",
    "price": 1559,
    "discountPercentage": 10,
    "rating": 4.9,
    "stock": 86,
    "brand": "ZOLA",
    "category": "Kurti",
    "thumbnail":
        "https://static.cilory.com/520467-thickbox_default/yoke-sequins-work-bottle-green-rayon-embroidered-kurta.jpg",
    "images": [
      'https://static.cilory.com/520467-thickbox_default/yoke-sequins-work-bottle-green-rayon-embroidered-kurta.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnXtOIno1lFCL0oulxRSpMRH0BYNgNNx6tjg&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSg4nBYnX-riY621bLLWOzG0apx2hYSdmjMFw&usqp=CAU',
      'https://static.cilory.com/511042-thickbox_default/yoke-embroidered-dark-green-rayon-kurta.jpg',
    ],
  },
  {
    'id': 6,
    'title':
        "Women Beige Floral Printed Regular Gotta Patti Kurti with Palazzo & With Dupatta",
    "description":
        "Women's wear is outfits made specifically for and worn by women. Salwar suits, saaris, lehnga etc. in Indian tradition and Skirts, shirts, sweaters, trousers, coats, chemises, and jeans, etc",
    "price": 1599,
    "discountPercentage": 10,
    "rating": 4.39,
    "stock": 100,
    "brand": "ANORA",
    "category": "Palazzo-Set",
    "thumbnail":
        "https://cdn.shopify.com/s/files/1/0723/4548/5587/products/3_f9936925-d71f-4bb8-b083-da0909e056cd_1080x.jpg?v=1680620385",
    "images": [
      'https://cdn.shopify.com/s/files/1/0723/4548/5587/products/3_f9936925-d71f-4bb8-b083-da0909e056cd_1080x.jpg?v=1680620385',
      'https://cdn.shopify.com/s/files/1/0723/4548/5587/products/1_2cb70d8a-cb85-4144-94f8-71c60eaf8e12.jpg?v=1680620385',
      'https://cdn.shopify.com/s/files/1/0723/4548/5587/products/2_63e87227-f8b4-42fe-b3e4-8eeea3506dfb_540x.jpg?v=1680620385',
      'https://cdn.shopify.com/s/files/1/0723/4548/5587/products/5_2f643345-71e7-4546-a7ee-76e3238c699f_1080x.jpg?v=1680620385',
    ],
  },
  {
    'id': 7,
    'title': "Women Pink Yoke Design Regular Kurti with Palazzo & Dupatta",
    "description":
        "Women's wear is outfits made specifically for and worn by women. Salwar suits, saaris, lehnga etc. in Indian tradition and Skirts, shirts, sweaters, trousers, coats, chemises, and jeans, etc",
    "price": 3500,
    "discountPercentage": 12,
    "rating": 4.59,
    "stock": 40,
    "brand": "ANORA",
    "category": "Palazzo-Set",
    "thumbnail":
        "http://cdn.shopify.com/s/files/1/0588/2203/3585/products/1365YKMAROON_1.jpg?v=1667042752",
    "images": [
      'http://cdn.shopify.com/s/files/1/0588/2203/3585/products/1365YKMAROON_1.jpg?v=1667042752',
      'https://assets0.mirraw.com/images/10000663/SH-KS-11008_2_large.jpg?1645698232',
      'https://images.meesho.com/images/products/115697811/lntwf_512.jpg',
      'https://www.jiomart.com/images/product/original/rvwz2obaqt/yufta-women-pink-bandhani-printed-panelled-gotta-patti-kurta-with-palazzos-with-dupatta-product-images-rvwz2obaqt-0-202205211552.jpg',
    ],
  },
  {
    'id': 8,
    'title': "Women Black Pure Cotton Kurti with Palazzo & With Dupatta",
    "description":
        "Women's wear is outfits made specifically for and worn by women. Salwar suits, saaris, lehnga etc. in Indian tradition and Skirts, shirts, sweaters, trousers, coats, chemises, and jeans, etc",
    "price": 1799,
    "discountPercentage": 10,
    "rating": 3.76,
    "stock": 43,
    "brand": "ANORA",
    "category": "Palazzo-Set",
    "thumbnail":
        "https://www.jiomart.com/images/product/500x630/rvpjvkcage/prakhya-women-black-printed-pure-cotton-kurta-palazzo-set-with-dupatta-product-images-rvpjvkcage-0-202210131327.jpg",
    "images": [
      'https://www.jiomart.com/images/product/500x630/rvpjvkcage/prakhya-women-black-printed-pure-cotton-kurta-palazzo-set-with-dupatta-product-images-rvpjvkcage-0-202210131327.jpg',
      'https://assets.myntassets.com/h_1440,q_100,w_1080/v1/assets/images/11374210/2020/2/12/0fe1f20e-e952-42fa-a1af-9bff2d2f418f1581484426280-Yufta-Women-Black--Golden-Solid-Kurta-with-Palazzos--Dupatta-1.jpg',
      'https://absolutelydesi.com/wp-content/uploads/2022/04/Divena-Women-Black-Ethnic-Motifs-Printed-Mirror-Work-Pure-Cotton-Kurti-with-Sharara-With-Dupatta-7.jpg',
      'https://assets.myntassets.com/h_1440,q_100,w_1080/v1/assets/images/11417918/2020/2/11/fbd353fb-e84d-4e56-9067-c7b07ffd20b61581420889966-Libas-Women-White--Black-Printed-Kurta-with-Palazzos--Dupatt-1.jpg',
    ],
  },
  {
    'id': 9,
    'title': "Georgette Romantic Florals Kurti with Palazzo",
    "description":
        "Women's wear is outfits made specifically for and worn by women. Salwar suits, saaris, lehnga etc. in Indian tradition and Skirts, shirts, sweaters, trousers, coats, chemises, and jeans, etc",
    "price": 1399,
    "discountPercentage": 5,
    "rating": 4.8,
    "stock": 3,
    "brand": "ANORA",
    "category": "Palazzo-Set",
    "thumbnail":
        "https://img2.ogaanindia.com/pub/media/catalog/product/cache/8e2c2a9d4851ee802ebff3c1680adbd5/s/c/sc7363red1_1.jpg",
    "images": [
      'https://img2.ogaanindia.com/pub/media/catalog/product/cache/8e2c2a9d4851ee802ebff3c1680adbd5/s/c/sc7363red1_1.jpg',
      'https://cdn.shopify.com/s/files/1/2542/7564/products/2_541fedd2-6a38-47e6-a56a-5deecdc132ca.png?v=1615024041',
      'https://assets0.mirraw.com/images/8860248/PHT0078.1(1)_zoom.jpg?1617205220',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9wMNTjqZrx3tyWsyC6ZUCg4AXcGqpMxFGrA&usqp=CAU',
    ],
  },
  {
    'id': 10,
    'title':
        "Women Black Ethnic Motifs Printed Kurti with Palazzo & With Dupatta",
    "description":
        "Women's wear is outfits made specifically for and worn by women. Salwar suits, saaris, lehnga etc. in Indian tradition and Skirts, shirts, sweaters, trousers, coats, chemises, and jeans, etc",
    "price": 2399,
    "discountPercentage": 5,
    "rating": 3.9,
    "stock": 48,
    "brand": "ANORA",
    "category": "Palazzo-Set",
    "thumbnail":
        "https://5.imimg.com/data5/SELLER/Default/2022/3/AU/FF/RM/4537765/women-black-rayon-slub-printed-kurta-with-palazzo-500x500.jpg",
    "images": [
      'https://5.imimg.com/data5/SELLER/Default/2022/3/AU/FF/RM/4537765/women-black-rayon-slub-printed-kurta-with-palazzo-500x500.jpg',
      'https://www.jiomart.com/images/product/330x410/rvencikoue/kgn-women-black-printed-rayon-kurta-and-palazzo-set-m-product-images-rvencikoue-0-202207251233.jpg',
      'https://images.meesho.com/images/products/116609435/gphsu_512.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTMHYx8HasEt1WqPISxi-uICO26gM5jR3F9Q&usqp=CAU',
    ],
  },
  {
    'id': 11,
    'title': "Mandarin Collar Puff Sleeve Cotton Shirt Style Top",
    "description":
        "Women's wear is outfits made specifically for and worn by women. Salwar suits, saaris, lehnga etc. in Indian tradition and Skirts, shirts, sweaters, trousers, coats, chemises, and jeans, etc",
    "price": 2599,
    "discountPercentage": 10,
    "rating": 4.48,
    "stock": 36,
    "brand": "PRADA",
    "category": "Women's-Top",
    "thumbnail":
        "https://5.imimg.com/data5/SELLER/Default/2022/12/SF/AH/SC/27629012/janasya-women-s-yellow-cotton-kurta-with-pant-and-dupatta-500x500.jpg",
    "images": [
      'https://5.imimg.com/data5/SELLER/Default/2022/12/SF/AH/SC/27629012/janasya-women-s-yellow-cotton-kurta-with-pant-and-dupatta-500x500.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtv3DA02Fdy4ZipPRX-cFdgNIBsQJGB_pTVw&usqp=CAU',
      'https://rukminim1.flixcart.com/image/612/612/xif0q/shirt/2/3/j/xl-uwaw22sh002-u-s-polo-assn-original-imagjztzxdgvgyku.jpeg?q=70',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBDDuVPYQ9wjtgR5CQf_qUXeKZtLHNOEa_mg&usqp=CAU',
    ],
  },
  {
    'id': 12,
    'title': "Blue Print Mandarin Collar Empire Pure Cotton Top",
    "description":
        "Women's wear is outfits made specifically for and worn by women. Salwar suits, saaris, lehnga etc. in Indian tradition and Skirts, shirts, sweaters, trousers, coats, chemises, and jeans, etc",
    "price": 999,
    "discountPercentage": 12,
    "rating": 3.75,
    "stock": 75,
    "brand": "PRADA",
    "category": "Women's-Top",
    "thumbnail":
        "https://i.pinimg.com/originals/90/84/54/908454d1bb79d73d2356e32189d4d134.jpg",
    "images": [
      'https://i.pinimg.com/originals/90/84/54/908454d1bb79d73d2356e32189d4d134.jpg',
      'https://assets0.mirraw.com/images/11217414/image_zoom.jpeg?1676292524',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCCjUYMTjDr1BA207rg1x7lHs_47YVHqBqWMvo5nNDGZzQO_BjLYx1dhlDldmzlxDT6YQ&usqp=CAU',
      'https://absolutelydesi.com/wp-content/uploads/2022/03/Vishudh-Blue-Green-Geometric-Printed-Mandarin-Collar-Pure-Cotton-Empire-Top-1.jpg',
    ],
  },
  {
    'id': 13,
    'title': "Women White Solid Round Neck Boxy Cropped Top",
    "description":
        "Women's wear is outfits made specifically for and worn by women. Salwar suits, saaris, lehnga etc. in Indian tradition and Skirts, shirts, sweaters, trousers, coats, chemises, and jeans, etc",
    "price": 499,
    "discountPercentage": 8,
    "rating": 3.81,
    "stock": 67,
    "brand": "PRADA",
    "category": "Women's-Top",
    "thumbnail":
        "https://rukminim1.flixcart.com/image/832/832/l2ghgnk0/t-shirt/b/r/1/xs-tshrt-grl-dz0002-white-grey-box-original-imagdsrzgvhttjtm.jpeg?q=70",
    "images": [
      'https://rukminim1.flixcart.com/image/832/832/l2ghgnk0/t-shirt/b/r/1/xs-tshrt-grl-dz0002-white-grey-box-original-imagdsrzgvhttjtm.jpeg?q=70',
      'https://adn-static1.nykaa.com/nykdesignstudio-images/pub/media/catalog/product/6/5/tr:w-270,/65da3f2M3S11002-WHITE_1.jpg?rnd=20200526195200',
      'https://assets.myntassets.com/assets/images/11697268/2020/6/16/07c21bd2-f951-4e06-858d-2430ef5ea2861592297754829-Roadster-Women-Tops-4141592297752797-1.jpg',
      'https://adn-static1.nykaa.com/nykdesignstudio-images/pub/media/catalog/product/3/d/tr:w-270,/3da0c5dXp-1222OFFWHITE_6.jpg?rnd=20200526195200',
    ],
  },
  {
    'id': 14,
    'title': "Geometric Print Satin Extended Sleeves Top",
    "description":
        "Women's wear is outfits made specifically for and worn by women. Salwar suits, saaris, lehnga etc. in Indian tradition and Skirts, shirts, sweaters, trousers, coats, chemises, and jeans, etc",
    "price": 2999,
    "discountPercentage": 10,
    "rating": 4.92,
    "stock": 30,
    "brand": "PRADA",
    "category": "Women's-Top",
    "thumbnail":
        "https://media3.newlookassets.com/i/newlook/840933439/womens/clothing/tops/green-geometric-satin-long-sleeve-oversized-shirt.jpg?strip=true&qlt=50&w=720",
    "images": [
      'https://media3.newlookassets.com/i/newlook/840933439/womens/clothing/tops/green-geometric-satin-long-sleeve-oversized-shirt.jpg?strip=true&qlt=50&w=720',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1MOKZwBIYkByHqpGpooyjij-sXDM4KDaHAQ&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLYkPdymfKfky_HrAzOD5atCv3Mj6uTmB2UQ&usqp=CAU',
      'https://asset1.cxnmarksandspencer.com/is/image/mands/SD_01_T53_2021U_F4_X_EC_1?\$PDP_MAIN_CAR_SM\$',
    ],
  },
  {
    'id': 15,
    'title': "Black High Neck Cropped Top",
    "description":
        "Women's wear is outfits made specifically for and worn by women. Salwar suits, saaris, lehnga etc. in Indian tradition and Skirts, shirts, sweaters, trousers, coats, chemises, and jeans, etc",
    "price": 599,
    "discountPercentage": 5,
    "rating": 4.74,
    "stock": 118,
    "brand": "PRADA",
    "category": "Women's-Top",
    "thumbnail":
        "https://cdn.shopify.com/s/files/1/0399/0231/4646/products/SFTOPS4895-1_c7d811ba-516f-4ca1-bce7-77a29b3149d1.jpg?v=1667998577",
    "images": [
      'https://cdn.shopify.com/s/files/1/0399/0231/4646/products/SFTOPS4895-1_c7d811ba-516f-4ca1-bce7-77a29b3149d1.jpg?v=1667998577',
      'https://m.media-amazon.com/images/I/41BmD4wl29L._UY500_.jpg',
      'https://5.imimg.com/data5/NG/CX/XP/SELLER-76823958/designer-high-neck-sleeveless-black-ladies-crop-top-1000x1000.jpg',
      'https://assets.ajio.com/medias/sys_master/root/20230322/EhoM/641b0b30907deb497aa91924/-473Wx593H-465821646-black-MODEL.jpg',
    ],
  },
  {
    'id': 16,
    'title': "Floral Mirror detail Cotton Straight Kurti",
    "description":
        "Women's wear is outfits made specifically for and worn by women. Salwar suits, saaris, lehnga etc. in Indian tradition and Skirts, shirts, sweaters, trousers, coats, chemises, and jeans, etc",
    "price": 1999,
    "discountPercentage": 11,
    "rating": 4.01,
    "stock": 100,
    "brand": "ZARA",
    "category": "Kurti-Pair",
    "thumbnail":
        "https://absolutelydesi.com/wp-content/uploads/2023/01/HK-colours-of-fashion-Women-Turquoise-Blue-Floral-Printed-Mirror-Work-Pure-Cotton-Kurta-with-Palazzos-1.jpg",
    "images": [
      'https://absolutelydesi.com/wp-content/uploads/2023/01/HK-colours-of-fashion-Women-Turquoise-Blue-Floral-Printed-Mirror-Work-Pure-Cotton-Kurta-with-Palazzos-1.jpg',
      'https://ik.imagekit.io/ldqsn9vvwgg/tr:w-540/readiprintfashions/images/1754167/1.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVa-yrjHAEnNKujAXVdfvVG2M0HrKMB0W7xkznQSFzwufCGIvqK7fDNToax97c5ttGRMQ&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHuCoZms50HM8O_061zPVw1MWyMxKPG99PNy-wwBN06-TSDlVE_iM6bvRfdItAsbGYUY8&usqp=CAU',
    ],
  },
  {
    'id': 17,
    'title': "White Woven Design Kurti with Trousers",
    "description":
        "Women's wear is outfits made specifically for and worn by women. Salwar suits, saaris, lehnga etc. in Indian tradition and Skirts, shirts, sweaters, trousers, coats, chemises, and jeans, etc",
    "price": 1899,
    "discountPercentage": 15,
    "rating": 4.35,
    "stock": 56,
    "brand": "ZARA",
    "category": "Kurti-Pair",
    "thumbnail":
        "https://adn-static1.nykaa.com/nykdesignstudio-images/pub/media/catalog/product/d/a/tr:w-270,/da630d6NFJK_NYFJPKR010249_7.jpg?rnd=20200526195200",
    "images": [
      'https://adn-static1.nykaa.com/nykdesignstudio-images/pub/media/catalog/product/d/a/tr:w-270,/da630d6NFJK_NYFJPKR010249_7.jpg?rnd=20200526195200',
      'https://images.meesho.com/images/products/123303108/4qr1g_512.jpg',
      'https://assets.panashindia.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/4/2/428tb24-iw873.jpg',
      'https://adn-static1.nykaa.com/nykdesignstudio-images/pub/media/catalog/product/d/8/tr:w-270,/d8910d6NFJK_NYFJPKR007970_4.jpg?rnd=20200526195200',
    ],
  },
  {
    'id': 18,
    'title': "Blue & Pink Printed Kurti with Trousers",
    "description":
        "Women's wear is outfits made specifically for and worn by women. Salwar suits, saaris, lehnga etc. in Indian tradition and Skirts, shirts, sweaters, trousers, coats, chemises, and jeans, etc",
    "price": 1299,
    "discountPercentage": 12,
    "rating": 4.98,
    "stock": 32,
    "brand": "ZARA",
    "category": "Kurti-Pair",
    "thumbnail":
        "https://img.tatacliq.com/images/i6/437Wx649H/MP000000006349801_437Wx649H_20200123023824.jpeg",
    "images": [
      'https://img.tatacliq.com/images/i6/437Wx649H/MP000000006349801_437Wx649H_20200123023824.jpeg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPHfiiGpqWEokt7ruIdAJMbV167JoYt_mqhykE7MAUSpZ0ouDjQT7L6q-uDeM8jaDDIvI&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAc4B-AC2iAUwW3n1pc6_uo6pz-Gx2sVPElsI0L75M9sxVGqXhwuPtiib3L1KBfIMCWdA&usqp=CAU',
      'https://5.imimg.com/data5/SELLER/Default/2021/4/TY/JG/YE/21537961/divena-indigo-muslin-straight-kurta-1000x1000.jpg',
    ],
  },
  {
    'id': 19,
    'title': "Yellow Floral Yoke Design Regular Kurti with Trousers",
    "description":
        "Women's wear is outfits made specifically for and worn by women. Salwar suits, saaris, lehnga etc. in Indian tradition and Skirts, shirts, sweaters, trousers, coats, chemises, and jeans, etc",
    "price": 2199,
    "discountPercentage": 12,
    "rating": 3.85,
    "stock": 123,
    "brand": "ZARA",
    "category": "Kurti-Pair",
    "thumbnail":
        "https://cdn.shopify.com/s/files/1/0600/0672/7879/products/JKPAT3906-2_1045x.jpg?v=1640330148",
    "images": [
      'https://cdn.shopify.com/s/files/1/0600/0672/7879/products/JKPAT3906-2_1045x.jpg?v=1640330148',
      'https://www.arihantfashion.com/wp-content/uploads/2022/01/600-800-Blog-Image_0000s_0003_Arihant-Fashion-Products_0000s_0007_Layer-4.jpg',
      'https://bhadar.com/uploads/product/bandhani-yellow-printed-stylish-kurti-with-cotton-pant.jpg',
      'https://cdn.shopify.com/s/files/1/0637/4834/1981/products/file_f11232e2-e8cd-4182-9a5d-063c2d3fcd2d_large.jpg?v=1670070665',
    ],
  },
  {
    'id': 20,
    'title': "Maroon Embroidered Kurti Pair",
    "description":
        "Women's wear is outfits made specifically for and worn by women. Salwar suits, saaris, lehnga etc. in Indian tradition and Skirts, shirts, sweaters, trousers, coats, chemises, and jeans, etc",
    "price": 2599,
    "discountPercentage": 12,
    "rating": 3.52,
    "stock": 26,
    "brand": "ZARA",
    "category": "Kurti-Pair",
    "thumbnail":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1lxgVboZook5pgSsAv4UYUrmegvh0J2OakA&usqp=CAU",
    "images": [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1lxgVboZook5pgSsAv4UYUrmegvh0J2OakA&usqp=CAU',
      'https://cdn.shopify.com/s/files/1/0637/4834/1981/products/maroon-party-wear-embroidered-cotton-kurti-pant-set-with-dupatta-peachmode-3.jpg?v=1669034996',
      'https://kurtifashion.com/wp-content/uploads/2020/02/maroon-colour-slx2-3.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5bGac1ESZaFTSAjNfGvNNIAb5lM8sViA1Yg&usqp=CAU',
    ],
  }
];
