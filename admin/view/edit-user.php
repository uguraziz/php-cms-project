<?php require admin_view('static/header') ?>

    <div class="box-">
        <h1>
            Üye Düzenle
        </h1>
    </div>

    <div class="clear" style="height: 10px;"></div>

    <div class="box-">
        <form action="" method="post" class="form label">
            <ul>
                <li>
                    <label>Kullanıcı Adı</label>
                    <div class="form-content">
                        <input type="text" name="user_name"
                               value="<?= post('user_name') ? post('user_name') : $row['user_name'] ?>">
                    </div>
                </li>
                <li>
                    <label>E-posta</label>
                    <div class="form-content">
                        <input type="text" name="user_email"
                               value="<?= post('user_email') ? post('user_email') : $row['user_email'] ?>">
                    </div>
                </li>
                <li>
                    <label>Rütbe</label>
                    <div class="form-content">
                        <select name="user_rank">
                            <option value="">- Rütbe Seçin -</option>
                            <?php foreach (user_ranks() as $id => $rank): ?>
                                <option <?= (post('user_rank') ? post('user_rank') : $row['user_rank']) == $id ? ' selected' : null ?>
                                        value="<?= $id ?>"><?= $rank ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                </li>
                <li>
                    <label>İzinler</label>
                    <div class="form-content">
                        <div class="permissions">
                            <?php foreach ($menus as $url => $menu): ?>
                                <div>
                                    <h3><?= $menu['title'] ?></h3>
                                    <div class="list">
                                        <?php foreach ($menu['permissions'] as $key => $val): ?>
                                            <label>
                                                <input <?= (isset($permissions[$menu['url']][$key]) && $permissions[$menu['url']][$key] == 1 ? ' checked' : null) ?>
                                                        name="user_permissions[<?= $menu['url'] ?>][<?= $key ?>]"
                                                        value="1" type="checkbox">
                                                <?= $val ?>
                                            </label>
                                        <?php endforeach; ?>
                                    </div>
                                </div>
                                <?php if (isset($menu['submenu'])): ?>
                                    <div class="submenu-container">
                                        <?php foreach ($menu['submenu'] as $k => $submenu): if (!isset($submenu['permissions'])) continue; ?>
                                            <div>
                                                <h3><?= $submenu['title'] ?></h3>
                                                <div class="list">
                                                    <?php foreach ($submenu['permissions'] as $key => $val): ?>
                                                        <label>
                                                            <input <?= (isset($permissions[$submenu['url']][$key]) && $permissions[$submenu['url']][$key] == 1 ? ' checked' : null) ?>
                                                                    name="user_permissions[<?= $submenu['url'] ?>][<?= $key ?>]"
                                                                    value="1" type="checkbox">
                                                            <?= $val ?>
                                                        </label>
                                                    <?php endforeach; ?>
                                                </div>
                                            </div>
                                        <?php endforeach; ?>
                                    </div>
                                <?php endif; ?>
                            <?php endforeach; ?>
                        </div>
                    </div>
                    <style>
                        .permissions {
                            border: 1px solid #ccc;
                            background: #fff;
                            max-width: 400px;
                            padding: 10px;
                        }

                        .permissions h3 {
                            font-weight: bold;
                        }

                        .permissions .list {
                            padding-bottom: 15px;
                        }

                        .permissions div:last-child .list {
                            padding-bottom: 0;
                        }

                        .permissions .list label {
                            float: none !important;
                            display: inline-block;
                            width: auto !important;
                            font-weight: normal !important;
                            margin-right: 10px;
                        }

                        .submenu-container {
                            margin-left: 20px;
                            border-left: 4px solid #ddd;
                            padding-left: 20px;
                            margin-bottom: 20px;
                        }
                    </style>
                </li>
                <li class="submit">
                    <button name="submit" value="1" type="submit">Kaydet</button>
                </li>
            </ul>
        </form>
    </div>

<?php require admin_view('static/footer') ?>