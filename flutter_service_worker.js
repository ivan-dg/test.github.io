'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "f4b4090d3d0c848cfaaf026543f92f20",
"version.json": "50881568aa842c340fe8071db004166c",
"index.html": "ada0d77cdb4116d4c30e848b5a6164ec",
"/": "ada0d77cdb4116d4c30e848b5a6164ec",
"main.dart.js": "5301838033d6db8b815935a08bd8525c",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "da8f427920e4d6b9acb4e31e685b52f7",
".git/config": "89018d1c44220365990665e5545cd11d",
".git/objects/3e/23a2921ebc6143e5ad55ba0317c6e840bfb30d": "2d9bc38903228a5a7bb2132e252a03e8",
".git/objects/6f/985442cd8f8567d22532ab14d2754eab8daf53": "a3f9eacd7f666214fa8ff797c9ed9a95",
".git/objects/9b/5d9e81c6470c5733c6c9603ec9dc19db8129ef": "ab2f91c0281f04b9115035a89c4576c4",
".git/objects/35/9cab337ae1b0fad3ab5cc4f55fe3348e9f0480": "053c16f3b6dc17b2bfba9767d13792ea",
".git/objects/3d/918498cdd53ffa72aee839d1aef7d653401263": "9bf368572d13e44f99f6f19d66d92620",
".git/objects/58/b007afeab6938f7283db26299ce2de9475d842": "6c6cbea527763bb3cdff2cecfee91721",
".git/objects/58/356635d1dc89f2ed71c73cf27d5eaf97d956cd": "f61f92e39b9805320d2895056208c1b7",
".git/objects/67/79c386dde14acc6f1a7b2cacdf6f30668fca34": "d538f643c9553b20a505f7aeb5104dd8",
".git/objects/94/f7d06e926d627b554eb130e3c3522a941d670a": "77a772baf4c39f0a3a9e45f3e4b285bb",
".git/objects/9c/b8b3da3374f3064e97b75f9a67702d250e29c4": "5f75991c5fb0795a81aad040d0f2bb3c",
".git/objects/bb/0c2597c255b4d3024fd3330810b757a78bfb0c": "6a0af712e8558f98631d7d7c051e5558",
".git/objects/be/e5802965e417e95a7919c98f4294fce8e835e7": "446ba9b1de50d566f8357b7f39de42c7",
".git/objects/b3/eb78be4e40bcf8ebda133b752e451f9b7317a0": "0e151e3c8fd2a37f4476181e65e7f54c",
".git/objects/b3/ebbd38f666d4ffa1a394c5de15582f9d7ca6c0": "23010709b2d5951ca2b3be3dd49f09df",
".git/objects/b4/a3ecb9428e2a4b8aff40c099e1c27d64a928f0": "6e4bc29289eb6be950713f1b329eaf0d",
".git/objects/d1/098e7588881061719e47766c43f49be0c3e38e": "f17e6af17b09b0874aa518914cfe9d8c",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/e5/8298d822df826e4078a4b9e954a592e54a3efa": "d10abcfcb44d19932a7c789f1e4718f1",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/c9/bf8af1b92c723b589cc9afadff1013fa0a0213": "632f11e7fee6909d99ecfd9eeab30973",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/ca/8482c88c44dcfdf9ead9d3726df9574ac9775c": "81cbf504c8b90bc81a07b514349a4ac5",
".git/objects/20/cb2f80169bf29d673844d2bb6a73bc04f3bfb8": "b807949265987310dc442dc3f9f492a2",
".git/objects/20/1afe538261bd7f9a38bed0524669398070d046": "82a4d6c731c1d8cdc48bce3ab3c11172",
".git/objects/18/eb401097242a0ec205d5f8abd29a4c5e09c5a3": "4e08af90d04a082aab5eee741258a1dc",
".git/objects/7d/8baf0d83306963689dae0d7cb2f1b17acc805d": "c621b9f35d39246a18fbba90c6629e4c",
".git/objects/7c/09d499f23e8c9cfadbd067e09e62b423cd8b4a": "4f5d6ea007527788d254cd3ceeb9b8a8",
".git/objects/28/6aa02be7538a07d214e92472533c2139e264cb": "a5365f020f0e883e9a0854fefa4d7d16",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/81/c97e6c1aaa352ae0a89933ecb54643c4b8bc5c": "976a6b09aca78deb0b8c250062084bbd",
".git/objects/81/b2bd2b3d585121d560bfb5ec90fda3a62d3088": "76e057735dee061f8a70402ab7cfe401",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/88/98cf2a7f54d877f40c6a934847d67288cc6636": "1e3309a57ef77df3ef557885fde6d5e1",
".git/objects/09/4bb6ae24f0cd847d40cb4cc4a2434f2ec9b83b": "b9e6d850322c11db635bcf0a45b762ff",
".git/objects/3a/2989dcc5b4e50683001e332fe71bd14cebf227": "71ef239cfdf818a94f3f5a367a990000",
".git/objects/3a/bf18c41c58c933308c244a875bf383856e103e": "30790d31a35e3622fd7b3849c9bf1894",
".git/objects/39/2884a0802c0b91d764db462a8123e628243a24": "f7acba1a5a8502f18e1c2bbcdda098a6",
".git/objects/0f/d670fee262a07d938aadbd9df026fdb1035158": "f3702cf83cc9dcede7a8cc9a1cb8a883",
".git/objects/bf/4099c1f4eb417484972144a98d15f6243a84f3": "79c0bc56bd98a127ff1c9185c0a19ec0",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/aa/e82ff7bb15465f3de95d0261ad374daf2016e1": "e3f4843efde855f5c507d53dbf05653e",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/ea/1ba3fc5eedc8d92090853baede4e633ccbf149": "48d9a42a3e6e6811d74f4e284ed81a12",
".git/objects/cd/88b08ce8ff1decdd862dfc94c9c4dfdc47d59e": "31557902154114c5195e08c9ea0d62d1",
".git/objects/cb/12bed2a57c92f4ef148382698c690e02724038": "7387ef737c5a4c869bb1cce0fd476ed6",
".git/objects/e0/3eb21f05649c7eaa57fb7251b5f7ba5ac01bdf": "374814d9543fd95fd0f4d0466472ec5d",
".git/objects/79/8e748c002afdf3182191b54bf2d388bbd9d6ac": "bde17838cfee7113a19c9b033f96b2ae",
".git/objects/85/69e8ac994e4e431966943487332f8d1331a7b1": "b8c17129fb90ea6bf3f5d001df070f89",
".git/objects/71/3f932c591e8f661aa4a8e54c32c196262fd574": "66c6c54fbdf71902cb7321617d5fa33c",
".git/objects/49/adebdb511c8c293b28db3f6792e5bac28cdc32": "ba6a3971e7f06834fd6ec3844372ce17",
".git/objects/2b/3d9b2e6845c4eb5f38c4faea2fcf76a72e8ddd": "fae8a08aaae8f205ec16ebec1fa63a2b",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "6e49f4a804e2702281b87d3873f89bee",
".git/logs/refs/heads/main": "feb14dcec25e19fc56ecea2346a9dd0c",
".git/logs/refs/remotes/origin/main": "07bbfba66535f8e7760da6b2ea5dd9d0",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/refs/heads/main": "e21d58462e3d9e809d69caca2caa5280",
".git/refs/remotes/origin/main": "e21d58462e3d9e809d69caca2caa5280",
".git/index": "da86eb50482ccd028ef074cd54aae332",
".git/COMMIT_EDITMSG": "a8297d555dd34879e8e48e1cf12acefa",
".git/FETCH_HEAD": "d41d8cd98f00b204e9800998ecf8427e",
"assets/AssetManifest.json": "c72c1872ac1be7e5c474d0573f3fcf4b",
"assets/NOTICES": "eef243bc548358b766ca8663f16434ff",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/AssetManifest.bin.json": "1977bffc6810128ac37319b9fe0876e5",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "f599fa2ef1c718d0005eb61e6db92f84",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/assets/pubs_4.png": "e7fec7b666ec7445433f32da45963b82",
"assets/assets/AssetManifest.json": "2da1ff1b7a53393d300ddf56d1e5b750",
"assets/assets/pubs_3.png": "ae92cf7e098cb2036d7b27867bb5f3f2",
"assets/assets/bar.webp": "b5ced47042a93eb26996a00db6203b35",
"assets/assets/pubs_2.png": "7a01da84c83dff42d6d02d9948b2ca9a",
"assets/assets/pubs_1.png": "939672a923d952ad965db5a623212296",
"assets/assets/NOTICES": "eef243bc548358b766ca8663f16434ff",
"assets/assets/mepet_4.png": "25a16ff10b3f751cee11c94327de8297",
"assets/assets/mepet_5.png": "ac991bda251a3353044df70a1db51178",
"assets/assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/assets/AssetManifest.bin.json": "7ed4b83667035cb0e5c82c48a0735f6b",
"assets/assets/mepet_2.png": "7b7ab63c456c30d983f41ca1535b09d3",
"assets/assets/mepet_3.png": "812ff868667369f3b0e791c2a10af442",
"assets/assets/mepet_1.png": "470e9f15662468ff5e4cf8b23d8f768a",
"assets/assets/AssetManifest.bin": "3082fa11f059a2b6ea32b5d773c3a7bb",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
