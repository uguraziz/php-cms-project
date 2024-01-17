<?php

if (!route(1)){
    $route[1] = 'index';
}

if (!file_exists(admin_controller(route(1)))){
    $route[1] = 'index';
}

if (!session('user_rank') || session('user_rank') == 3){
    $route[1] = 'login';
}

$menus = [
    [
        'url' => 'index',
        'title' => 'Anasayfa',
        'icon' => 'tachometer',
        'permissions' => [
            'show' => 'Görüntüleme'
        ]
    ],
    [
        'url' => 'users',
        'title' => 'Üyeler',
        'icon' => 'user',
        'permissions' => [
            'show' => 'Görüntüleme',
            'edit' => 'Düzenleme',
            'delete' => 'Silme'
        ]
    ],
    [
        'url' => 'contact',
        'title' => 'İletişim Mesajları',
        'icon' => 'envelope',
        'permissions' => [
            'show' => 'Görüntüleme',
            'edit' => 'Düzenleme',
            'send' => 'Gönderme',
            'delete' => 'Silme'
        ]
    ],
    [
        'url' => 'posts',
        'title' => 'Blog',
        'icon' => 'rss',
        'permissions' => [
            'show' => 'Görüntüleme',
            'add' => 'Ekleme',
            'edit' => 'Düzenleme',
            'delete' => 'Silme'
        ],
        'submenu' => [
            [
                'url' => 'posts',
                'title' => 'Konular'
            ],
            [
                'url' => 'tags',
                'title' => 'Etiketler',
                'permissions' => [
                    'show' => 'Görüntüleme',
                    'add' => 'Ekleme',
                    'edit' => 'Düzenleme',
                    'delete' => 'Silme'
                ]
            ],
            [
                'url' => 'categories',
                'title' => 'Kategoriler',
                'permissions' => [
                    'show' => 'Görüntüleme',
                    'add' => 'Ekleme',
                    'edit' => 'Düzenleme',
                    'delete' => 'Silme'
                ]
            ],
            [
                'url' => 'comments',
                'title' => 'Yorumlar',
                'permissions' => [
                    'show' => 'Görüntüleme',
                    'edit' => 'Düzenleme',
                    'delete' => 'Silme'
                ]
            ]
        ]
    ],
    [
        'url' => 'reference',
        'title' => 'Referanslar',
        'icon' => 'photo',
        'permissions' => [
            'show' => 'Görüntüleme',
            'add' => 'Ekleme',
            'edit' => 'Düzenleme',
            'delete' => 'Silme'
        ],
        'submenu' => [
            [
                'url' => 'reference-categories',
                'title' => 'Kategoriler',
                'permissions' => [
                    'show' => 'Görüntüleme',
                    'add' => 'Ekleme',
                    'edit' => 'Düzenleme',
                    'delete' => 'Silme'
                ]
            ]
        ]
    ],
    [
        'url' => 'pages',
        'title' => 'Sayfalar',
        'icon' => 'file',
        'permissions' => [
            'show' => 'Görüntüleme',
            'add' => 'Ekleme',
            'edit' => 'Düzenleme',
            'delete' => 'Silme'
        ]
    ],
    [
        'url' => 'menu',
        'title' => 'Menü Yönetimi',
        'icon' => 'bars',
        'permissions' => [
            'show' => 'Görüntüleme',
            'add' => 'Ekleme',
            'edit' => 'Düzenleme',
            'delete' => 'Silme'
        ]
    ],
    [
        'url' => 'settings',
        'title' => 'Ayarlar',
        'icon' => 'cog',
        'permissions' => [
            'show' => 'Görüntüleme',
            'edit' => 'Düzenleme'
        ]
    ]
];

require admin_controller(route(1));