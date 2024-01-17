<?php require admin_view('static/header') ?>

    <div class="box-">
        <h1>
            İletişim Mesajı Görüntüle
        </h1>
    </div>

    <div class="clear" style="height: 10px;"></div>

    <div class="box-container container-50">


        <?php if ($row['contact_read'] == 1): ?>
            <div class="message success box-">
                <?= timeConvert($row['contact_date']) ?> gönderildi!
                <br>
                <?= timeConvert($row['contact_read_date']) ?> <strong><?= $row['user_name'] ?></strong> tarafından
                okundu.
            </div>
        <?php endif; ?>

        <div class="box-">

            <form action="" method="post" class="form label">
                <ul>
                    <li>
                        <label>Ad-Soyad</label>
                        <div class="form-content" style="padding-top: 12px">
                            <?= $row['contact_name'] ?>
                        </div>
                    </li>
                    <li>
                        <label>E-posta</label>
                        <div class="form-content" style="padding-top: 12px">
                            <?= $row['contact_email'] ?>
                        </div>
                    </li>
                    <?php if ($row['contact_phone']): ?>
                        <li>
                            <label>Telefon</label>
                            <div class="form-content" style="padding-top: 12px">
                                <?= $row['contact_phone'] ?>
                            </div>
                        </li>
                    <?php endif; ?>
                    <li>
                        <label>Konu</label>
                        <div class="form-content" style="padding-top: 12px">
                            <?= $row['contact_subject'] ?>
                        </div>
                    </li>
                    <li>
                        <label>Mesaj</label>
                        <div class="form-content" style="padding-top: 12px">
                            <?= nl2br($row['contact_message']) ?>
                        </div>
                    </li>
                </ul>
            </form>
        </div>

    </div>

    <div class="box-container container-50">
        <div class="box" id="div-1">
            <h3>
                Cevap Ver
            </h3>
            <div class="box-content">
                <div class="message success box-" style="display: none" id="success"></div>
                <div class="message error box-" style="display: none;" id="error"></div>
                <form action="" id="email-form" onsubmit="return false;" class="form">
                    <input type="hidden" name="name" value="<?=$row['contact_name']?>">
                    <ul>
                        <li>
                            <input type="text" name="subject" value="RE: <?=$row['contact_subject']?>" id="input" placeholder="Mesaj Konusu">
                        </li>
                        <li>
                            <input type="text" name="email" value="<?=$row['contact_email']?>" id="input" placeholder="E-posta Adresi">
                        </li>
                        <li>
                            <textarea name="message" id="message" cols="30" rows="5" placeholder="Mesaj İçeriğiniz"></textarea>
                        </li>
                        <li>
                            <button onclick="send_email('#email-form')" type="submit">Gönder</button>
                        </li>
                    </ul>
                </form>
            </div>
        </div>
    </div>

<?php require admin_view('static/footer') ?>