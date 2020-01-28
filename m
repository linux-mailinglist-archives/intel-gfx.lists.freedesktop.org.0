Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C775314B2EF
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 11:46:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AA0B6EDAC;
	Tue, 28 Jan 2020 10:46:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBAFA6EDA3
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 10:46:11 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id m10so1485785wmc.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 02:46:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DUaywteOqGdZ2ereEAg14NgwlSOJwSrLkPsKw3iRbE0=;
 b=EZuH0NTPcMV1JpVTpfHKMNGOwzUPNi0P7HRHMRijJPVpSi7IoIv+9x3/eyRpZs4fSF
 KsfFksIB0Q+7BneVHRbnDIDX5K0DEwIyHpVe5BBbN8+V0KOIJu66bso99g7v6C6Cjpr3
 FJ+QRCrqGfm59QMbd/FcwSYS0fhBcNIqqRV5s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DUaywteOqGdZ2ereEAg14NgwlSOJwSrLkPsKw3iRbE0=;
 b=kDe6XjtNs4dlzcbWBXCvHND5mr5mdN9UMoKClyKv1jthtQ1HwguXy6ncjJGhLtYJup
 efOJnXzUjD+j0RFk4Ac+yJsihOq9doCSly+dc2Njn2UGRG2tLDmtAAQ5eXvKZ2esBuYY
 DMtlBV/KGqLrkxKcN/U849en6YNG6IFXqlbvQ5zYAMi7RPh8UmfCdhiPlYfLZj+yotXw
 Y2bSaKf6ZIxz8ZvtLQqtz43YT4D1o7BYViyj0uIGUlKmMUM3q3CvWt4zXbgf1YPviSUh
 X2yGjU/fY2bXoniSTy1aB4uBeDnqx5jpKa9ExFvdrj0Mf/C0V3HjdjFH67YeeR7Y6rnH
 JEpg==
X-Gm-Message-State: APjAAAWX/nMlCzRSfvDiSlnpotkt5g+M6Mh2C7COSB0pQf+NRvNhpUzd
 yqif2iHUZ0xX34kg2O8/XO9Cow==
X-Google-Smtp-Source: APXvYqyLsJpnaqXIuajDrKm5/uzfvYzfXCD4x4rkCB7J7fvsjhaBwceHi0d9a9iQ5VO9tsUOD/0uYA==
X-Received: by 2002:a1c:988a:: with SMTP id a132mr4095613wme.113.1580208370404; 
 Tue, 28 Jan 2020 02:46:10 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o1sm24998733wrn.84.2020.01.28.02.46.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jan 2020 02:46:09 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 28 Jan 2020 11:46:01 +0100
Message-Id: <20200128104602.1459802-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200128104602.1459802-1-daniel.vetter@ffwll.ch>
References: <20200128104602.1459802-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm: Nerv drm_global_mutex BKL for good
 drivers
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This catches the majority of drivers (unfortunately not if we take
users into account, because all the big drivers have at least a
lastclose hook).

With the prep patches out of the way all drm state is fully protected
and either prevents or can deal with the races from dropping the BKL
around open/close. The only thing left to audit are the various driver
hooks - by keeping the BKL around if any of them are set we have a
very simple cop-out!

Note that one of the biggest prep pieces to get here was making
dev->open_count atomic, which was done in

commit 7e13ad896484a0165a68197a2e64091ea28c9602
Author: Chris Wilson <chris@chris-wilson.co.uk>
Date:   Fri Jan 24 13:01:07 2020 +0000

    drm: Avoid drm_global_mutex for simple inc/dec of dev->open_count

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/drm_drv.c      |  6 +++--
 drivers/gpu/drm/drm_file.c     | 46 ++++++++++++++++++++++++++++++----
 drivers/gpu/drm/drm_internal.h |  1 +
 3 files changed, 46 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index 05bdf0b9d2b3..9fcd6ab3c154 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
@@ -946,7 +946,8 @@ int drm_dev_register(struct drm_device *dev, unsigned long flags)
 	struct drm_driver *driver = dev->driver;
 	int ret;
 
-	mutex_lock(&drm_global_mutex);
+	if (drm_dev_needs_global_mutex(dev))
+		mutex_lock(&drm_global_mutex);
 
 	if (dev->driver->load) {
 		if (!drm_core_check_feature(dev, DRIVER_LEGACY))
@@ -992,7 +993,8 @@ int drm_dev_register(struct drm_device *dev, unsigned long flags)
 	drm_minor_unregister(dev, DRM_MINOR_PRIMARY);
 	drm_minor_unregister(dev, DRM_MINOR_RENDER);
 out_unlock:
-	mutex_unlock(&drm_global_mutex);
+	if (drm_dev_needs_global_mutex(dev))
+		mutex_unlock(&drm_global_mutex);
 	return ret;
 }
 EXPORT_SYMBOL(drm_dev_register);
diff --git a/drivers/gpu/drm/drm_file.c b/drivers/gpu/drm/drm_file.c
index d36cb74ebe0c..efd6fe0b6b4f 100644
--- a/drivers/gpu/drm/drm_file.c
+++ b/drivers/gpu/drm/drm_file.c
@@ -51,6 +51,37 @@
 /* from BKL pushdown */
 DEFINE_MUTEX(drm_global_mutex);
 
+bool drm_dev_needs_global_mutex(struct drm_device *dev)
+{
+	/*
+	 * Legacy drivers rely on all kinds of BKL locking semantics, don't
+	 * bother. They also still need BKL locking for their ioctls, so better
+	 * safe than sorry.
+	 */
+	if (drm_core_check_feature(dev, DRIVER_LEGACY))
+		return true;
+
+	/*
+	 * The deprecated ->load callback must be called after the driver is
+	 * already registered. This means such drivers rely on the BKL to make
+	 * sure an open can't proceed until the driver is actually fully set up.
+	 * Similar hilarity holds for the unload callback.
+	 */
+	if (dev->driver->load || dev->driver->unload)
+		return true;
+
+	/*
+	 * Drivers with the lastclose callback assume that it's synchronized
+	 * against concurrent opens, which again needs the BKL. The proper fix
+	 * is to use the drm_client infrastructure with proper locking for each
+	 * client.
+	 */
+	if (dev->driver->lastclose)
+		return true;
+
+	return false;
+}
+
 /**
  * DOC: file operations
  *
@@ -378,9 +409,10 @@ int drm_open(struct inode *inode, struct file *filp)
 	if (IS_ERR(minor))
 		return PTR_ERR(minor);
 
-	mutex_unlock(&drm_global_mutex);
-
 	dev = minor->dev;
+	if (drm_dev_needs_global_mutex(dev))
+		mutex_unlock(&drm_global_mutex);
+
 	if (!atomic_fetch_inc(&dev->open_count))
 		need_setup = 1;
 
@@ -398,13 +430,15 @@ int drm_open(struct inode *inode, struct file *filp)
 		}
 	}
 
-	mutex_unlock(&drm_global_mutex);
+	if (drm_dev_needs_global_mutex(dev))
+		mutex_unlock(&drm_global_mutex);
 
 	return 0;
 
 err_undo:
 	atomic_dec(&dev->open_count);
-	mutex_unlock(&drm_global_mutex);
+	if (drm_dev_needs_global_mutex(dev))
+		mutex_unlock(&drm_global_mutex);
 	drm_minor_release(minor);
 	return retcode;
 }
@@ -444,6 +478,7 @@ int drm_release(struct inode *inode, struct file *filp)
 	struct drm_minor *minor = file_priv->minor;
 	struct drm_device *dev = minor->dev;
 
+	if (drm_dev_needs_global_mutex(dev))
 	mutex_lock(&drm_global_mutex);
 
 	DRM_DEBUG("open_count = %d\n", atomic_read(&dev->open_count));
@@ -453,7 +488,8 @@ int drm_release(struct inode *inode, struct file *filp)
 	if (atomic_dec_and_test(&dev->open_count))
 		drm_lastclose(dev);
 
-	mutex_unlock(&drm_global_mutex);
+	if (drm_dev_needs_global_mutex(dev))
+		mutex_unlock(&drm_global_mutex);
 
 	drm_minor_release(minor);
 
diff --git a/drivers/gpu/drm/drm_internal.h b/drivers/gpu/drm/drm_internal.h
index 6937bf923f05..aeec2e68d772 100644
--- a/drivers/gpu/drm/drm_internal.h
+++ b/drivers/gpu/drm/drm_internal.h
@@ -41,6 +41,7 @@ struct drm_printer;
 
 /* drm_file.c */
 extern struct mutex drm_global_mutex;
+bool drm_dev_needs_global_mutex(struct drm_device *dev);
 struct drm_file *drm_file_alloc(struct drm_minor *minor);
 void drm_file_free(struct drm_file *file);
 void drm_lastclose(struct drm_device *dev);
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
