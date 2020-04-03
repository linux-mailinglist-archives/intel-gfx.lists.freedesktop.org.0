Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E12DF19D83A
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 15:59:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 863336EBB8;
	Fri,  3 Apr 2020 13:58:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FAC86EBA0
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:58:56 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id t128so7285746wma.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 06:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wiXHaDwX9ULZkgf3yiFkDSinIGkByr+O07um+whjJ5E=;
 b=PvmDWXqUoZEYUHoal7y11Os7Yb6Xkrf3bH/LaN7US/nwLS2lkxmnquBnNJwQeWwY+3
 9AVGNXg+JGJohxGQymHZ7NKlhzZZ5DbW4J682Pa5EbMgbKzOC0hX5YviKY9vH7tDCBWa
 +y/e+iDqnae1KhZ6pzG5aY7bI8Izzq9ddXTUM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wiXHaDwX9ULZkgf3yiFkDSinIGkByr+O07um+whjJ5E=;
 b=sD0ldRcdBGBeg1qmy3urIwJF+Oqg33NaL5OvmvwWde9roHYRkPmxt+TzVvyOwrjTKH
 RdrgcOLEp9h6DgBVNe7//KfbbFZEDjEcmUmY/VzsVj7XRYzMh1pDDQb3N/mNMk5tIvPL
 VT165l5RS6METpAo7k5wAHieTtJhyNkeo8st3e0eCnE1lUKT1XweRWlaDQyf2gofTx6l
 kWkaiYtVDOATtZAjHY2k2gEzPGfoNjF0S3YbI4qoJt1of+OdjDVjZVZgF5UoQZM6o2Qc
 +TDG7bbl/TdMrHJ6ek80Qku+/q9DbvrB8utrYjxzNX9l4y9leg+8IAy00zTOT2rwQN3E
 Y6Yw==
X-Gm-Message-State: AGi0PubcDsejldfkhSbN7Inl8YvMuOH7zZSeP5SN5L6h2YZGfJj5QFiG
 H7asW78sPlhfFd310BKS/Om7vF2WndOs4A==
X-Google-Smtp-Source: APiQypKWyOXGmLdSt0YXK7tUS4jrnXxXR+2CBfyiUkuyKi+B0wmSKfn4OeIPOuaDxKBAylc+DRrowg==
X-Received: by 2002:a1c:7919:: with SMTP id l25mr9278758wme.12.1585922334822; 
 Fri, 03 Apr 2020 06:58:54 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm11783919wmf.3.2020.04.03.06.58.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:58:54 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  3 Apr 2020 15:58:01 +0200
Message-Id: <20200403135828.2542770-18-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/44] drm/st7735r: Use devm_drm_dev_alloc
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 David Lechner <david@lechnology.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Already using devm_drm_dev_init, so very simple replacment.

Aside: There was an oddity in the old code, we allocated priv but in
the error path we've freed priv->dbidev ...

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: David Lechner <david@lechnology.com>
---
 drivers/gpu/drm/tiny/st7735r.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/tiny/st7735r.c b/drivers/gpu/drm/tiny/st7735r.c
index 631801c36f46..ccbf49a53202 100644
--- a/drivers/gpu/drm/tiny/st7735r.c
+++ b/drivers/gpu/drm/tiny/st7735r.c
@@ -195,21 +195,16 @@ static int st7735r_probe(struct spi_device *spi)
 	if (!cfg)
 		cfg = (void *)spi_get_device_id(spi)->driver_data;
 
-	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
-	if (!priv)
-		return -ENOMEM;
+	priv = devm_drm_dev_alloc(dev, &st7735r_driver,
+				  struct st7735r_priv, dbidev.drm);
+	if (IS_ERR(priv))
+		return PTR_ERR(priv);
 
 	dbidev = &priv->dbidev;
 	priv->cfg = cfg;
 
 	dbi = &dbidev->dbi;
 	drm = &dbidev->drm;
-	ret = devm_drm_dev_init(dev, drm, &st7735r_driver);
-	if (ret) {
-		kfree(dbidev);
-		return ret;
-	}
-	drmm_add_final_kfree(drm, dbidev);
 
 	dbi->reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
 	if (IS_ERR(dbi->reset)) {
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
