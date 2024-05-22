class Products{
  int id;
  String name;
  String cost;
  String photo;
  String description;
  List<String> photos;
  Products(this.id, this.name, this.cost, this.photo, this.description, this.photos);
}

List<Products> products = [
  Products(1, 'Гель для стирки', '899₽',
      'https://avatars.mds.yandex.net/get-mpic/5207288/2a0000018e09b935d3a9601c74406e5012fa/600x800',
  'Гипоаллергенная формула без хлора, продуктов нефтехимии и других агрессивных веществ специально разработана для детей возраста 0+ и людей с чувствительной кожей. Подходит для ежедневной ручной стирки и автомат всех видов тканей.',
    [
      'https://avatars.mds.yandex.net/get-mpic/5207288/2a0000018e09b935d3a9601c74406e5012fa/600x800',
      'https://avatars.mds.yandex.net/get-mpic/5252116/2a0000018e09b935d407311fe91b6017b1a6/600x800',
      'https://avatars.mds.yandex.net/get-mpic/5209746/2a0000018e09b935df3e8c0bdd19b7b6a26a/600x800'
    ]),
  Products(2, 'Стиральный порошок Автомат Tide Lenor', '385₽',
      'https://avatars.mds.yandex.net/get-mpic/12256862/img_id8189622702621660937.jpeg/600x800',
  'trash',
  [
    'https://avatars.mds.yandex.net/get-mpic/12256862/img_id8189622702621660937.jpeg/600x800',
    'https://avatars.mds.yandex.net/get-mpic/6559549/img_id8405580549065198690.jpeg/600x800',
    'https://avatars.mds.yandex.net/get-mpic/11778691/img_id2306345568813825382.jpeg/600x800'
  ]),
  Products(3, 'Стиральный порошок Bimax Color Automat', '1375₽',
  'https://avatars.mds.yandex.net/get-mpic/12222014/img_id7895518874710116097.jpeg/600x800', 'trash',
  [
    'https://avatars.mds.yandex.net/get-mpic/12222014/img_id7895518874710116097.jpeg/600x800',
    'https://avatars.mds.yandex.net/get-mpic/11621477/img_id8280196390767468225.jpeg/600x800',
    'https://avatars.mds.yandex.net/get-mpic/11549745/img_id5796994213301722987.jpeg/600x800'
  ]),
  Products(4, 'Влажные салфетки Celesta', '174₽',
      'https://avatars.mds.yandex.net/get-mpic/11778691/2a0000018b4c2d80b583a5408e717f11e073/600x800', 'trash',
  [
    'https://avatars.mds.yandex.net/get-mpic/11778691/2a0000018b4c2d80b583a5408e717f11e073/600x800',
    'https://avatars.mds.yandex.net/get-mpic/11312687/2a0000018b4c2d827af8cdbedbc846b93604/600x800',
    'https://avatars.mds.yandex.net/get-mpic/11778691/2a0000018b4c2d81a3bb107a035c84beaa74/600x800'
  ]),
  Products(5, 'Набор GRASS для уборки дома', '612₽',
  'https://avatars.mds.yandex.net/get-mpic/5289362/2a0000018eaeab7f8d58e2a8c5a6f109c8e2/600x800', 'trash',
  [
    'https://avatars.mds.yandex.net/get-mpic/5289362/2a0000018eaeab7f8d58e2a8c5a6f109c8e2/600x800',
    'https://avatars.mds.yandex.net/get-mpic/11778691/2a0000018b4c2d81a3bb107a035c84beaa74/600x800',
    'https://avatars.mds.yandex.net/get-mpic/11470463/2a0000018eaeab7f8a4593dcb14f038d04ac/optimize'
  ]),
  Products(7, 'Универсальное средство Premium House', '265₽',
      'https://avatars.mds.yandex.net/get-mpic/11735758/2a0000018c7c8d4d0f8f7819b626926edcaf/600x800', 'trash',
  [
    'https://avatars.mds.yandex.net/get-mpic/11735758/2a0000018c7c8d4d0f8f7819b626926edcaf/600x800',
    'https://avatars.mds.yandex.net/get-mpic/4032471/img_id5321292721423569052.jpeg/600x800',
    'https://avatars.mds.yandex.net/get-mpic/4372348/img_id2343438272266664686.jpeg/600x800'
  ]),
  Products(8, 'Я твое средство чистоты порошок', '227₽',
      'https://avatars.mds.yandex.net/get-mpic/12415859/2a0000018f43ad79f329c33eff308ff993ee/600x800', 'trash',
  [
    'https://avatars.mds.yandex.net/get-mpic/12415859/2a0000018f43ad79f329c33eff308ff993ee/600x800',
    'https://avatars.mds.yandex.net/get-mpic/12352681/2a0000018f43ad79f169911784f6b0bbfb84/600x800',
    'https://avatars.mds.yandex.net/get-mpic/12623147/2a0000018f43ad79f264333b3ea0702270b5/600x800'
  ]),
  Products(9, 'Салфетки для уборки 30х30 5 шт', '122₽',
      'https://avatars.mds.yandex.net/get-mpic/5313128/img_id238585123929920740.jpeg/600x800', 'trash',
  [
    'https://avatars.mds.yandex.net/get-mpic/5313128/img_id238585123929920740.jpeg/600x800',
    'https://avatars.mds.yandex.net/get-mpic/12352681/2a0000018f43ad79f169911784f6b0bbfb84/600x800',
    'https://avatars.mds.yandex.net/get-mpic/12623147/2a0000018f43ad79f264333b3ea0702270b5/600x800'
  ]),
  Products(10, 'Губки для мытья посуды Perfect House', '227₽',
      'https://avatars.mds.yandex.net/get-mpic/12394941/2a0000018d5952b27db37b9b0930b66f1139/600x800', 'trash',
  [
    'https://avatars.mds.yandex.net/get-mpic/12394941/2a0000018d5952b27db37b9b0930b66f1139/600x800',
    'https://avatars.mds.yandex.net/get-mpic/4580925/img_id4801965585325410143.jpeg/600x800',
    'https://avatars.mds.yandex.net/get-mpic/5189780/img_id5679835741579892201.jpeg/600x800'
  ]),
  Products(11, 'Щетка черная 7в1 EZ4U для чистки', '376₽',
      'https://avatars.mds.yandex.net/get-mpic/5319505/img_id7758092174188853408.jpeg/600x800', 'trash',
  [
    'https://avatars.mds.yandex.net/get-mpic/5319505/img_id7758092174188853408.jpeg/600x800',
    'https://avatars.mds.yandex.net/get-mpic/4303439/img_id9006859377122268665.jpeg/600x800',
    'https://avatars.mds.yandex.net/get-mpic/4887676/img_id8640525300145618293.jpeg/600x800'
  ]),
  Products(12, 'Салфетки для уборки Celesta универсальные', '208₽',
      'https://avatars.mds.yandex.net/get-mpic/11482776/2a0000018c871ae825c4b166a4a82c75eead/600x800', 'trash',
  [
    'https://avatars.mds.yandex.net/get-mpic/11482776/2a0000018c871ae825c4b166a4a82c75eead/optimize',
    'https://avatars.mds.yandex.net/get-mpic/12025833/2a0000018c871ae82615ae95562652caa3b9/optimize',
    'https://avatars.mds.yandex.net/get-mpic/11395611/2a0000018c871ae82fb5953180e49e4c2919/optimize'
  ]),
  Products(13, 'Моющая жидкость для полов и стен Mr.Proper', '129₽',
      'https://avatars.mds.yandex.net/get-mpic/11395611/img_id8934882934795214541.jpeg/600x800', 'trash',
  [
    'https://avatars.mds.yandex.net/get-mpic/4957996/img_id5965119026101524315.png/600x800',
    'https://avatars.mds.yandex.net/get-mpic/5395693/img_id733805256239772953.jpeg/600x800',
    'https://avatars.mds.yandex.net/get-mpic/1860966/img_id6790143688994463466.jpeg/600x800'
  ]),
  Products(14, 'Швабра с распылителем и 2-мя насадками', '882₽',
      'https://avatars.mds.yandex.net/get-mpic/5234463/2a0000018e179f24952a1b1ee0e7c398ee46/600x800', 'trash',
  [
    'https://avatars.mds.yandex.net/get-mpic/11483501/2a0000018f951e3531c54e10da9e5ac7bb38/600x800',
    'https://avatars.mds.yandex.net/get-mpic/12386385/2a0000018d20f916b336d9ce5eaca2233699/600x800',
    'https://avatars.mds.yandex.net/get-mpic/11918242/2a0000018d20f916aae7b93c4d9b0b16ed32/600x800'
  ]),
  Products(15, 'Domestos Ультра Блеск, чистящее средство', '187₽',
      'https://avatars.mds.yandex.net/get-mpic/5268943/img_id954443813021705630.jpeg/600x800', 'trash',
  [
    'https://avatars.mds.yandex.net/get-mpic/5268943/img_id954443813021705630.jpeg/600x800',
    'https://avatars.mds.yandex.net/get-mpic/5323357/img_id6774347462164126164.jpeg/600x800',
    'https://avatars.mds.yandex.net/get-mpic/7632591/img_id1913686717991026851.jpeg/600x800'
  ])
];

