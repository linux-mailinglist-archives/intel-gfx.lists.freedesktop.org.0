Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3FE17269C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 19:16:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DB866ED07;
	Thu, 27 Feb 2020 18:16:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3ADC6ECF4
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 18:16:01 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id p18so4606157wre.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 10:16:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8nqnCGE95Gu9zeCbfj5IikY8E+tjTDtUT/tNU+049xU=;
 b=N4ydozbDTTKqvUkLG2PmisoJYgwHV/2L45Ph6SkI3pRJDtoWLfab5G1p0X/OIPiJuY
 GS26I9N5fPjHWn7gcu2HmZ+qfVlLW+LUcO6LEKOFiYpTkYvTdRyOop810lb/aq2Hz7I1
 yjJH5RRlmnb3e5MD2ZlEnJ3r8aM2jBi6+rYP0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8nqnCGE95Gu9zeCbfj5IikY8E+tjTDtUT/tNU+049xU=;
 b=IKfaU+SnbqyGJZUPV0OQcvFCt7GcXdKhZr3Qtm4+DEUZAY/qJNovPQxOCdfxXxkNlj
 OXcXAns/XUKTbGDZQSAPZP9AS1QR40LYdWWqxQ8RZiHXxq4yyqhV2lECokfNc79f5bCv
 wAjt5fnsXCvqn5ew1BMB09cH1zbGn6DGf1K+A72R/DndP/s6onWgLueahvK7uXVf8/7f
 8VhQ5bEWd5x29uxHrcGaySU8rtgoTvDV6uKqzIGa5EWAoN462/9+M2DTvKKNjOrUFo1x
 9SiECi7m9lE3oqAKkYBvJauYKheynFFPsy6694R06O3M5LipL82m3zMYNqGQPelJTqb5
 D3lg==
X-Gm-Message-State: APjAAAXxEs6ZitrwWNt0P+1nfGumxgvObsdSHbvGsOlJBrsXuPmltrWG
 gBWxbaF1GfpVtRaO9lPlTarn1qbUs3A=
X-Google-Smtp-Source: APXvYqwS64wyx32Ni6jbTQDgmtt6n26KWIVX9jS8qPucNEDZl6nd5NSuFYQLKYnge1hNSHlIMq/nLg==
X-Received: by 2002:adf:ed42:: with SMTP id u2mr95327wro.345.1582827360194;
 Thu, 27 Feb 2020 10:16:00 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q1sm8551152wrw.5.2020.02.27.10.15.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:15:58 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 27 Feb 2020 19:14:55 +0100
Message-Id: <20200227181522.2711142-25-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 24/51] drm: Manage drm_vblank_cleanup with drmm_
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 m.felsch@pengutronix.de, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Nothing special here, except that this is the first time that we
automatically clean up something that's initialized with an explicit
driver call. But the cleanup was done at the very of the release
sequence for all drivers, and that's still the case. At least without
more uses of drmm_ through explicit driver calls.

Also for this one we need drmm_kcalloc, so lets add those

v2: Sort includes (Laurent)

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/drm_drv.c      |  1 -
 drivers/gpu/drm/drm_internal.h |  1 -
 drivers/gpu/drm/drm_vblank.c   | 31 ++++++++++++-------------------
 include/drm/drm_managed.h      | 16 ++++++++++++++++
 4 files changed, 28 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index 7b3df1188da9..b8db2cc4a19b 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
@@ -752,7 +752,6 @@ EXPORT_SYMBOL(devm_drm_dev_init);
  */
 void drm_dev_fini(struct drm_device *dev)
 {
-	drm_vblank_cleanup(dev);
 }
 EXPORT_SYMBOL(drm_dev_fini);
 
diff --git a/drivers/gpu/drm/drm_internal.h b/drivers/gpu/drm/drm_internal.h
index cb09e95a795e..e67015d07c4c 100644
--- a/drivers/gpu/drm/drm_internal.h
+++ b/drivers/gpu/drm/drm_internal.h
@@ -94,7 +94,6 @@ void drm_managed_release(struct drm_device *dev);
 
 /* drm_vblank.c */
 void drm_vblank_disable_and_save(struct drm_device *dev, unsigned int pipe);
-void drm_vblank_cleanup(struct drm_device *dev);
 
 /* IOCTLS */
 int drm_wait_vblank_ioctl(struct drm_device *dev, void *data,
diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index 47fc4339ec7f..5a6ec8aa0873 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -30,6 +30,7 @@
 #include <drm/drm_crtc.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_framebuffer.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_modeset_helper_vtables.h>
 #include <drm/drm_print.h>
 #include <drm/drm_vblank.h>
@@ -425,14 +426,10 @@ static void vblank_disable_fn(struct timer_list *t)
 	spin_unlock_irqrestore(&dev->vbl_lock, irqflags);
 }
 
-void drm_vblank_cleanup(struct drm_device *dev)
+static void drm_vblank_init_release(struct drm_device *dev, void *ptr)
 {
 	unsigned int pipe;
 
-	/* Bail if the driver didn't call drm_vblank_init() */
-	if (dev->num_crtcs == 0)
-		return;
-
 	for (pipe = 0; pipe < dev->num_crtcs; pipe++) {
 		struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
 
@@ -441,10 +438,6 @@ void drm_vblank_cleanup(struct drm_device *dev)
 
 		del_timer_sync(&vblank->disable_timer);
 	}
-
-	kfree(dev->vblank);
-
-	dev->num_crtcs = 0;
 }
 
 /**
@@ -453,25 +446,29 @@ void drm_vblank_cleanup(struct drm_device *dev)
  * @num_crtcs: number of CRTCs supported by @dev
  *
  * This function initializes vblank support for @num_crtcs display pipelines.
- * Cleanup is handled by the DRM core, or through calling drm_dev_fini() for
- * drivers with a &drm_driver.release callback.
+ * Cleanup is handled automatically through a cleanup function added with
+ * drmm_add_action().
  *
  * Returns:
  * Zero on success or a negative error code on failure.
  */
 int drm_vblank_init(struct drm_device *dev, unsigned int num_crtcs)
 {
-	int ret = -ENOMEM;
+	int ret;
 	unsigned int i;
 
 	spin_lock_init(&dev->vbl_lock);
 	spin_lock_init(&dev->vblank_time_lock);
 
+	dev->vblank = drmm_kcalloc(dev, num_crtcs, sizeof(*dev->vblank), GFP_KERNEL);
+	if (!dev->vblank)
+		return -ENOMEM;
+
 	dev->num_crtcs = num_crtcs;
 
-	dev->vblank = kcalloc(num_crtcs, sizeof(*dev->vblank), GFP_KERNEL);
-	if (!dev->vblank)
-		goto err;
+	ret = drmm_add_action(dev, drm_vblank_init_release, NULL);
+	if (ret)
+		return ret;
 
 	for (i = 0; i < num_crtcs; i++) {
 		struct drm_vblank_crtc *vblank = &dev->vblank[i];
@@ -486,10 +483,6 @@ int drm_vblank_init(struct drm_device *dev, unsigned int num_crtcs)
 	DRM_INFO("Supports vblank timestamp caching Rev 2 (21.10.2013).\n");
 
 	return 0;
-
-err:
-	dev->num_crtcs = 0;
-	return ret;
 }
 EXPORT_SYMBOL(drm_vblank_init);
 
diff --git a/include/drm/drm_managed.h b/include/drm/drm_managed.h
index 5280209dff92..2b1ba2ad5582 100644
--- a/include/drm/drm_managed.h
+++ b/include/drm/drm_managed.h
@@ -4,6 +4,7 @@
 #define _DRM_MANAGED_H_
 
 #include <linux/gfp.h>
+#include <linux/overflow.h>
 #include <linux/types.h>
 
 struct drm_device;
@@ -28,6 +29,21 @@ static inline void *drmm_kzalloc(struct drm_device *dev, size_t size, gfp_t gfp)
 {
 	return drmm_kmalloc(dev, size, gfp | __GFP_ZERO);
 }
+static inline void *drmm_kmalloc_array(struct drm_device *dev,
+				       size_t n, size_t size, gfp_t flags)
+{
+	size_t bytes;
+
+	if (unlikely(check_mul_overflow(n, size, &bytes)))
+		return NULL;
+
+	return drmm_kmalloc(dev, bytes, flags);
+}
+static inline void *drmm_kcalloc(struct drm_device *dev,
+				 size_t n, size_t size, gfp_t flags)
+{
+	return drmm_kmalloc_array(dev, n, size, flags | __GFP_ZERO);
+}
 char *drmm_kstrdup(struct drm_device *dev, const char *s, gfp_t gfp);
 
 void drmm_kfree(struct drm_device *dev, void *data);
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
