Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6BA296F28
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 14:28:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 170FE6F61F;
	Fri, 23 Oct 2020 12:28:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81ECF6E598
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 12:28:24 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id g12so1582303wrp.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 05:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zy/kREEK9LhpplW/i69yvMgTlsHhw/jzIRL1VS5VIno=;
 b=b579FlraijKyD9nl7w0DD3HShBoXbzFNT/D+ljJLncYKYCtNh4h8nirSY3K3L8vEsc
 GUF2BzGKQXlKi1GvjN8n9ZYsp/WLvSxxQwL5AQkzTMmqp8Iie+1DeAT9z8yFUBW66Y0o
 r8irIxdtG6qlGrrVNLz5oeZWm4zcig3OtgLHE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zy/kREEK9LhpplW/i69yvMgTlsHhw/jzIRL1VS5VIno=;
 b=dNE/RGvv2kP2UDZRdDik4LJ4z1LZbAYkaT3jgI0QbPBN+a59TvqlJBcTY02x70+db0
 2w9nPqHxSwa2yLhDNAual1EUwdyCbfpAUaJkL8ysI3o7wUAp6WOA9b/fUXaho+/9Svsk
 xgrMTE4o/drnt5NvaNZugnDajABcyrMPIO2bbNf7OdhQ5xClFM4pSqv1f7DgRJ8WlBk/
 +OqJa8KoNcCMksKmYYzS//Pv7nuwqSGnYnoSNnKSGu+BQuHKCzczSXUgSEwWGvqs/VFm
 zFlJE80hbAtFVjiMfJEEcDp+8Sg7YvCq68o3kB8pAMIS6LdaPUmwkPwxR/fXfwM5mGnA
 Rq4g==
X-Gm-Message-State: AOAM531+zC9VdbazHNNLxPPR+ipA8u1kdHGtufAHf48yuS4HtrnSXdiy
 9z9yAj5MkINGiMZdfbuguEZNkA==
X-Google-Smtp-Source: ABdhPJzBdelcj9Ft5eOGP0G+Ajo//E84XDGrg46IrTygZYnVdnXd/6A2G+JUeJPur0RwIDchSgKbDg==
X-Received: by 2002:adf:80cb:: with SMTP id 69mr2317927wrl.325.1603456103174; 
 Fri, 23 Oct 2020 05:28:23 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j5sm3133451wrx.88.2020.10.23.05.28.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 05:28:22 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 23 Oct 2020 14:28:10 +0200
Message-Id: <20201023122811.2374118-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023122811.2374118-1-daniel.vetter@ffwll.ch>
References: <20201023122811.2374118-1-daniel.vetter@ffwll.ch>
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
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's nice if a big function/ioctl table like this is const. Only
downside here is that we need a few more #ifdef to paper over the
differences when CONFIG_DRM_LEGACY is enabled. Maybe provides more
motivation to sunset that horror show :-)

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Signed-off-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/drm_drv.c | 15 ++++++++++-----
 include/drm/drm_device.h  |  4 ++++
 include/drm/drm_drv.h     |  5 +++--
 3 files changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index 457ac0f82be2..94d2c41115b8 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
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
+	dev->driver = (struct drm_driver *) driver;
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
