Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B802A0293
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 11:11:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D8936EDAC;
	Fri, 30 Oct 2020 10:11:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B55CA6EDA2
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 10:11:14 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id v5so2318150wmh.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 03:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g8gZNFn0LctVPcNhGptvI05HPijiUeSfN+Dcq7ZZG1E=;
 b=BTgR0Ls3SPHbJET5BhayY05DVKomFco2C5yBm4yIJUtmdEZHXCauLTs8ouydSMVLL6
 kukTDcJNKyp32bIitZOS3oXSpSnRosZ/jUOnHF0YNcnf/u/WL/4p+sbn1Ivw64CegZcC
 BhHaQNPiB2UAmp19hyuLeFL9yngNI1b9mKh84=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g8gZNFn0LctVPcNhGptvI05HPijiUeSfN+Dcq7ZZG1E=;
 b=SM4ilNzBljgarDSzXVyxQ7SDCqmx49D1B6PTwq73HL0iHxZkFy/bV89g7EXDaLub5A
 Q6zvRT9cnryRKWChJ2XfERAGHCR+8V/Eu5VbLPVETnCuGWdNUtBv8x6HJcV2GXQtd0jn
 qz9JeE0AvTARJr7gmSSv+7UlV5oVge3wy/CuIxisewI0UbS+X7BjYd9H6mbK0TherY7d
 CAUgSWcGPjBEmYHyS7ksbPq95QOv/oEadXjbS3CHSZFwZvFvifn67TtbiuVj/MCJLrhP
 8FfAiSNmCziov7BVgsYxXXTYEgzzyUzQTpdEnRECKTmIzrp8cl7J5axy3cUKAr8LOUO/
 gLDw==
X-Gm-Message-State: AOAM533aaMrwLZukcuag7Kw3cD5d7mx8xDkn63hJQ7P5xohRZSvuv3zw
 rNnHlT3BCNsEKhJiIiAhUJvvVQ==
X-Google-Smtp-Source: ABdhPJzPoH1sd1pia64lixnUMDHwpBt02Iuixk+YYjPRVXLhEZDRJKTnBpQOuUXiTxPe2QgE1cB4SA==
X-Received: by 2002:a05:600c:21d3:: with SMTP id
 x19mr1730530wmj.170.1604052673361; 
 Fri, 30 Oct 2020 03:11:13 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q10sm9735769wrp.83.2020.10.30.03.11.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Oct 2020 03:11:12 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 30 Oct 2020 11:11:03 +0100
Message-Id: <20201030101104.2503-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201030101104.2503-1-daniel.vetter@ffwll.ch>
References: <20201030101104.2503-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm: Allow const struct drm_driver
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's nice if a big function/ioctl table like this is const. Only
downside here is that we need a few more #ifdef to paper over the
differences when CONFIG_DRM_LEGACY is enabled. Maybe provides more
motivation to sunset that horror show :-)

v2:
- Fix super important checkpatch warning (Sam)
- Update the kerneldoc example too (Sam)

Acked-by: Maxime Ripard <mripard@kernel.org>
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Signed-off-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/drm_drv.c | 17 +++++++++++------
 include/drm/drm_device.h  |  4 ++++
 include/drm/drm_drv.h     |  5 +++--
 3 files changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index 457ac0f82be2..0371d1f095b2 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
@@ -284,7 +284,7 @@ void drm_minor_release(struct drm_minor *minor)
  *		struct clk *pclk;
  *	};
  *
- *	static struct drm_driver driver_drm_driver = {
+ *	static const struct drm_driver driver_drm_driver = {
  *		[...]
  *	};
  *
@@ -574,7 +574,7 @@ static void drm_dev_init_release(struct drm_device *dev, void *res)
 }
 
 static int drm_dev_init(struct drm_device *dev,
-			struct drm_driver *driver,
+			const struct drm_driver *driver,
 			struct device *parent)
 {
 	int ret;
@@ -589,7 +589,11 @@ static int drm_dev_init(struct drm_device *dev,
 
 	kref_init(&dev->ref);
 	dev->dev = get_device(parent);
+#ifdef CONFIG_DRM_LEGACY
+	dev->driver = (struct drm_driver *)driver;
+#else
 	dev->driver = driver;
+#endif
 
 	INIT_LIST_HEAD(&dev->managed.resources);
 	spin_lock_init(&dev->managed.lock);
@@ -663,7 +667,7 @@ static void devm_drm_dev_init_release(void *data)
 
 static int devm_drm_dev_init(struct device *parent,
 			     struct drm_device *dev,
-			     struct drm_driver *driver)
+			     const struct drm_driver *driver)
 {
 	int ret;
 
@@ -678,7 +682,8 @@ static int devm_drm_dev_init(struct device *parent,
 	return ret;
 }
 
-void *__devm_drm_dev_alloc(struct device *parent, struct drm_driver *driver,
+void *__devm_drm_dev_alloc(struct device *parent,
+			   const struct drm_driver *driver,
 			   size_t size, size_t offset)
 {
 	void *container;
@@ -713,7 +718,7 @@ EXPORT_SYMBOL(__devm_drm_dev_alloc);
  * RETURNS:
  * Pointer to new DRM device, or ERR_PTR on failure.
  */
-struct drm_device *drm_dev_alloc(struct drm_driver *driver,
+struct drm_device *drm_dev_alloc(const struct drm_driver *driver,
 				 struct device *parent)
 {
 	struct drm_device *dev;
@@ -858,7 +863,7 @@ static void remove_compat_control_link(struct drm_device *dev)
  */
 int drm_dev_register(struct drm_device *dev, unsigned long flags)
 {
-	struct drm_driver *driver = dev->driver;
+	const struct drm_driver *driver = dev->driver;
 	int ret;
 
 	if (!driver->load)
diff --git a/include/drm/drm_device.h b/include/drm/drm_device.h
index f4f68e7a9149..2c361964aee7 100644
--- a/include/drm/drm_device.h
+++ b/include/drm/drm_device.h
@@ -83,7 +83,11 @@ struct drm_device {
 	} managed;
 
 	/** @driver: DRM driver managing the device */
+#ifdef CONFIG_DRM_LEGACY
 	struct drm_driver *driver;
+#else
+	const struct drm_driver *driver;
+#endif
 
 	/**
 	 * @dev_private:
diff --git a/include/drm/drm_drv.h b/include/drm/drm_drv.h
index 7af220226a25..cc9da43b6eda 100644
--- a/include/drm/drm_drv.h
+++ b/include/drm/drm_drv.h
@@ -516,7 +516,8 @@ struct drm_driver {
 #endif
 };
 
-void *__devm_drm_dev_alloc(struct device *parent, struct drm_driver *driver,
+void *__devm_drm_dev_alloc(struct device *parent,
+			   const struct drm_driver *driver,
 			   size_t size, size_t offset);
 
 /**
@@ -549,7 +550,7 @@ void *__devm_drm_dev_alloc(struct device *parent, struct drm_driver *driver,
 	((type *) __devm_drm_dev_alloc(parent, driver, sizeof(type), \
 				       offsetof(type, member)))
 
-struct drm_device *drm_dev_alloc(struct drm_driver *driver,
+struct drm_device *drm_dev_alloc(const struct drm_driver *driver,
 				 struct device *parent);
 int drm_dev_register(struct drm_device *dev, unsigned long flags);
 void drm_dev_unregister(struct drm_device *dev);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
