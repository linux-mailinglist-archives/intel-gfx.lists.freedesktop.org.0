Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7371C19D868
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 16:00:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF8A66EBED;
	Fri,  3 Apr 2020 13:59:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F3566EBED
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:59:18 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id r16so7251092wmg.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 06:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X/tGVA9+iA6j1FaLA5UzvSFyGahWhU9fG6IuWtfziBc=;
 b=aTxQQFvjyKi+2VJgM5YnH7D/Q7qGy/ADDCML7BHRMfmxFjRoUj5vuCu0sRRuqX1Sn5
 ndAiKYZZYp9Jh7Ujx/rhTKbuatrnnjMowj5GNTO0NfNIKgC1J0MeiCFG7gs3GAbpCl1Q
 j0ADyL/R2DL3W+WljZC/D5XYGL+FWGqbOIa5I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X/tGVA9+iA6j1FaLA5UzvSFyGahWhU9fG6IuWtfziBc=;
 b=dFi7ubd9hq8pfNOJnCxA1L4DpcnVCaMRBiS4/GODhG/169AUNp0FCdVcN4HNAiQ/4l
 U9vtMranmnDXzfHupF2UDlJBHyH/LYMLczuMj6Z/naswpPiZ6kTddviqsAXelw5E6l/5
 TOeDKm/3L1kGUgkJNTU4Abgbkza+/xwVyV0hejhD87fvMqLnSAo2usJtQmiE0p8q4PQZ
 UlGDHPxj9bbW6ZTC8vBD2ODqnqY3uaZ7smm+1FkJqh5wok2iCKzpKM7ZTc2LRIABYqny
 0CMipTsAymzFzyh7XUcxIq9DW57Vp3fntk6Fwex2erZA3qLjjL7K7PpPJMhAIrFOBzX1
 GkYA==
X-Gm-Message-State: AGi0PuaLhiLTL6e3tVVqcEJOktWMa5YP2OeTx5wDNtqqmXG6cpnS1Gjq
 eDy+YAyJHMMd9e1SqS8AJRlfmF6RWvl2Zg==
X-Google-Smtp-Source: APiQypLn/Wv4VFEhOE58fAAZkeaEedOm/24Pqpg2evkqDgBnBPAUzo8SuayJoEnP3QJ2syLWNxYuqA==
X-Received: by 2002:a1c:3241:: with SMTP id y62mr9265570wmy.66.1585922356746; 
 Fri, 03 Apr 2020 06:59:16 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm11783919wmf.3.2020.04.03.06.59.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:59:16 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  3 Apr 2020 15:58:21 +0200
Message-Id: <20200403135828.2542770-38-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 37/44] drm/armada: Use devm_drm_dev_alloc
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
index dd9ed71ed942..2546ff9d1c92 100644
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
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
