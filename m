Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9721688D2
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 22:05:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 458966F54F;
	Fri, 21 Feb 2020 21:04:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81DC86F528
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 21:03:59 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id u6so3560020wrt.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 13:03:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=98aE60yYnvqzW8xAVh0+2yGWtNwIPCzdU/tOzXa3kuc=;
 b=W+k7bJxXKU9taaIOt47zBsUkJP9xL5miTN2LbZLO3X0+x8Z420+x05d+Uu4ifJDW3L
 OtAqFx2M7rtC1gu8xqT5sPGSwiYfKtPn5AHjZVp6n0Ec33AR+nwLdrmu+d9/N/5mTcZU
 pa92HjL1ZIdaJ+orichiWGSgIQrvMlCpuVrKE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=98aE60yYnvqzW8xAVh0+2yGWtNwIPCzdU/tOzXa3kuc=;
 b=kcThHs3q8kYXW409Sa9SCHLOuTsguUv7QHggf84mZpVM01uSpCz029+ABcGUiewbYX
 OoeofgDIFd/IQ6Mf/CZ8stbs8FJVzW67CFaOBKDLJ25cMNxwMEYZxumXFDD0ZqbHPPs4
 IxzB3s81EuNUan6LyAPDXoRoIv4a6esDpw1y26L9LRflRtuoRoYinZlqsZgSmNpWFURA
 LMNsl+/hC/GF46FfhM36sBNt9XAL75iUXy+CAl6EyUELjV2C3x8FmFMR13XzlPSQri9t
 sVaz3tZw9OY922Bh0ob3KsyJuanN4IZ053B/55BsoEoB1L3GUXs9rDnLbaW2Qmitfln8
 q7pQ==
X-Gm-Message-State: APjAAAWLzW9OSy55DWziwBspZOe9sFalttonxu1hdFQ74t2Pv2o8v/KI
 TcyYJmzTky3PnKnN7KHzAH7F9g==
X-Google-Smtp-Source: APXvYqwfzxkgb5dEKfhoquVEpvAO1Mjo3WD8OPgIT42e/x/CLgMc8OU+tZ/z+ZZg8HPfULlWDG/VSg==
X-Received: by 2002:adf:e8ca:: with SMTP id k10mr47663100wrn.50.1582319038124; 
 Fri, 21 Feb 2020 13:03:58 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z6sm5483930wrw.36.2020.02.21.13.03.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 13:03:57 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 21 Feb 2020 22:02:51 +0100
Message-Id: <20200221210319.2245170-24-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 23/51] drm: Manage drm_gem_init with drmm_
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
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We might want to look into pushing this down into drm_mm_init, but
that would mean rolling out return codes to a pile of functions
unfortunately. So let's leave that for now.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/drm_drv.c      |  8 +-------
 drivers/gpu/drm/drm_gem.c      | 21 ++++++++++-----------
 drivers/gpu/drm/drm_internal.h |  1 -
 3 files changed, 11 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index 03a1fb377830..7b3df1188da9 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
@@ -688,13 +688,10 @@ int drm_dev_init(struct drm_device *dev,
 
 	ret = drm_dev_set_unique(dev, dev_name(parent));
 	if (ret)
-		goto err_setunique;
+		goto err;
 
 	return 0;
 
-err_setunique:
-	if (drm_core_check_feature(dev, DRIVER_GEM))
-		drm_gem_destroy(dev);
 err:
 	drm_managed_release(dev);
 
@@ -756,9 +753,6 @@ EXPORT_SYMBOL(devm_drm_dev_init);
 void drm_dev_fini(struct drm_device *dev)
 {
 	drm_vblank_cleanup(dev);
-
-	if (drm_core_check_feature(dev, DRIVER_GEM))
-		drm_gem_destroy(dev);
 }
 EXPORT_SYMBOL(drm_dev_fini);
 
diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
index 0b6e6623735e..31095e0f6b9f 100644
--- a/drivers/gpu/drm/drm_gem.c
+++ b/drivers/gpu/drm/drm_gem.c
@@ -44,6 +44,7 @@
 #include <drm/drm_drv.h>
 #include <drm/drm_file.h>
 #include <drm/drm_gem.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_print.h>
 #include <drm/drm_vma_manager.h>
 
@@ -77,6 +78,12 @@
  * up at a later date, and as our interface with shmfs for memory allocation.
  */
 
+static void
+drm_gem_init_release(struct drm_device *dev, void *ptr)
+{
+	drm_vma_offset_manager_destroy(dev->vma_offset_manager);
+}
+
 /**
  * drm_gem_init - Initialize the GEM device fields
  * @dev: drm_devic structure to initialize
@@ -89,7 +96,8 @@ drm_gem_init(struct drm_device *dev)
 	mutex_init(&dev->object_name_lock);
 	idr_init_base(&dev->object_name_idr, 1);
 
-	vma_offset_manager = kzalloc(sizeof(*vma_offset_manager), GFP_KERNEL);
+	vma_offset_manager = drmm_kzalloc(dev, sizeof(*vma_offset_manager),
+					  GFP_KERNEL);
 	if (!vma_offset_manager) {
 		DRM_ERROR("out of memory\n");
 		return -ENOMEM;
@@ -100,16 +108,7 @@ drm_gem_init(struct drm_device *dev)
 				    DRM_FILE_PAGE_OFFSET_START,
 				    DRM_FILE_PAGE_OFFSET_SIZE);
 
-	return 0;
-}
-
-void
-drm_gem_destroy(struct drm_device *dev)
-{
-
-	drm_vma_offset_manager_destroy(dev->vma_offset_manager);
-	kfree(dev->vma_offset_manager);
-	dev->vma_offset_manager = NULL;
+	return drmm_add_action(dev, drm_gem_init_release, NULL);
 }
 
 /**
diff --git a/drivers/gpu/drm/drm_internal.h b/drivers/gpu/drm/drm_internal.h
index 8c2628dfc6c7..cb09e95a795e 100644
--- a/drivers/gpu/drm/drm_internal.h
+++ b/drivers/gpu/drm/drm_internal.h
@@ -144,7 +144,6 @@ void drm_sysfs_lease_event(struct drm_device *dev);
 /* drm_gem.c */
 struct drm_gem_object;
 int drm_gem_init(struct drm_device *dev);
-void drm_gem_destroy(struct drm_device *dev);
 int drm_gem_handle_create_tail(struct drm_file *file_priv,
 			       struct drm_gem_object *obj,
 			       u32 *handlep);
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
