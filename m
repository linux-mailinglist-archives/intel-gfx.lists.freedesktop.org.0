Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B318125DBEC
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 16:40:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0A3A6EBAC;
	Fri,  4 Sep 2020 14:39:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 263BB6EBA8
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Sep 2020 14:39:53 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id x14so6956645wrl.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Sep 2020 07:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=T6J+FF1a6g6AAA3F12k2zNwVpKzWYkOFXvm1ARoA3KM=;
 b=aMAKgG3H+QzbNuq2PpgrLSG7jHTmzdnpCFM0dJ4kGj5BHI7rXTalGgiz6PoRRnMopd
 D2olhgTleyeDEIGhOLrD07c9bW6dB01q8+9Ua/hzFz3PJUz/Mu5c2zwsU7eDXk+wOXhR
 OTgyk3JedqVc6ueGM3UQrUEupKqTj/pdRRjvU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=T6J+FF1a6g6AAA3F12k2zNwVpKzWYkOFXvm1ARoA3KM=;
 b=jAlmWcwL657sFymvfrE3MyU/a1YsF/K18Lb9KL8/tkvD67GGUe5wq7s0rE4pJtlDxP
 +JeOxrM1YeVYCxh49D9+lmw/u0FGsVAyk5cOwEbAb9aET1bDMP3PrhAyY54aNxVMJ0Jb
 P/a0fsTUK1V9Genm1rKmp68kLTg32Z5Iu4QfLeYSRIWDLZDzUZotjZHxge6j3Q8n0rkv
 ghv9XkhswQlgpbDKwFkI7jWqLgm/gDZfJTHN63v4CLpSy8QkDsk0nd6Ip4UfzPAw9bsc
 IdrVEpyc5YujXFHVCx4wfn/9UNvmzGTWVkiCvCdOWRDAKe/J5MxNNh5SaZuMm2Ndg91E
 FaBA==
X-Gm-Message-State: AOAM533f4x9Z431HADPcV05G+sYe6B2Om6EACEK+uYS9SQ5P1bEYejeC
 JyXZBgGBcjhoMz4Kn8Vmhd4cqJQwu8WOydG9
X-Google-Smtp-Source: ABdhPJyH/+4O06qSrN2BoCT7VS7AaL1FeY7VcxtLWjoZCsbcX5K4hLZJ54sT2FXXAmFgH47uNgWP8w==
X-Received: by 2002:adf:e290:: with SMTP id v16mr7823728wri.259.1599230391722; 
 Fri, 04 Sep 2020 07:39:51 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z15sm11597949wrv.94.2020.09.04.07.39.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 07:39:51 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  4 Sep 2020 16:39:18 +0200
Message-Id: <20200904143941.110665-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
References: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/24] drm/armada: Use devm_drm_dev_alloc
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
 Russell King <linux@armlinux.org.uk>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Also remove the now no longer needed build bug on since that's already
not needed anymore with drmm_add_final_kfree. Conversion to managed
drm_device cleanup is easy, the final drm_dev_put() is already the
last thing in both the bind unbind as in the unbind flow.

Also, this relies on component.c correctly wrapping bind&unbind in
separate devres groups, which it does.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Russell King <linux@armlinux.org.uk>
---
 drivers/gpu/drm/armada/armada_drv.c | 26 ++++++--------------------
 1 file changed, 6 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/armada/armada_drv.c b/drivers/gpu/drm/armada/armada_drv.c
index 5fc25c3f445c..a8d5908b3922 100644
--- a/drivers/gpu/drm/armada/armada_drv.c
+++ b/drivers/gpu/drm/armada/armada_drv.c
@@ -87,24 +87,13 @@ static int armada_drm_bind(struct device *dev)
 				     "armada-drm"))
 		return -EBUSY;
 
-	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
-	if (!priv)
-		return -ENOMEM;
-
-	/*
-	 * The drm_device structure must be at the start of
-	 * armada_private for drm_dev_put() to work correctly.
-	 */
-	BUILD_BUG_ON(offsetof(struct armada_private, drm) != 0);
-
-	ret = drm_dev_init(&priv->drm, &armada_drm_driver, dev);
-	if (ret) {
-		dev_err(dev, "[" DRM_NAME ":%s] drm_dev_init failed: %d\n",
-			__func__, ret);
-		kfree(priv);
-		return ret;
+	priv = devm_drm_dev_alloc(dev, &armada_drm_driver,
+				  struct armada_private, drm);
+	if (IS_ERR(priv)) {
+		dev_err(dev, "[" DRM_NAME ":%s] devm_drm_dev_alloc failed: %li\n",
+			__func__, PTR_ERR(priv));
+		return PTR_ERR(priv);
 	}
-	drmm_add_final_kfree(&priv->drm, priv);
 
 	/* Remove early framebuffers */
 	ret = drm_fb_helper_remove_conflicting_framebuffers(NULL,
@@ -174,7 +163,6 @@ static int armada_drm_bind(struct device *dev)
  err_kms:
 	drm_mode_config_cleanup(&priv->drm);
 	drm_mm_takedown(&priv->linear);
-	drm_dev_put(&priv->drm);
 	return ret;
 }
 
@@ -194,8 +182,6 @@ static void armada_drm_unbind(struct device *dev)
 
 	drm_mode_config_cleanup(&priv->drm);
 	drm_mm_takedown(&priv->linear);
-
-	drm_dev_put(&priv->drm);
 }
 
 static int compare_of(struct device *dev, void *data)
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
