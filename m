Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F15A418F764
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 15:51:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B09246E192;
	Mon, 23 Mar 2020 14:50:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A64646E155
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 14:50:29 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id a81so9380639wmf.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mLMkFVs7kW+8bCcnzdzN4GvoHQTe1eTPOMPevfowr2U=;
 b=N6/qaezc5GfmvGN+rr/ZZnxGaW+uzbEXXYEU1zVB4YzojWHTIuiDgrUrvNkUXubQmU
 N4N2b2+zUolNNARnWKsGyjYT/VttCg+dcEWIAGJqYDjcqHB2eRSwhBt8CeC4QaJkucBo
 RVWV+h2pcWS6ZypbnQU6Yfoe024uBwP4kHOFA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mLMkFVs7kW+8bCcnzdzN4GvoHQTe1eTPOMPevfowr2U=;
 b=AhYSO7Tr8EV7428oRRSnuri3jA667+HxGWoNGZ21HeAOeDNYVNDyQFslc4fO2yQSew
 wvfoAFU18sWfjj0QIDJETG9L4hfU5KFDQWyDgcKZL2QdztiWwcVPpalspR+mqQlPZT4B
 hXjFsayZJd4phfB1B2kEWGlIgNWUMCPS/OQhkiQi8cPgqRFYVofC6MnThxketP5mcBzp
 m+Q9+BjFE+ntXbYaO3QEHqTVw7/8qT3I/Jk5mfnjUCcPflJY7nhMXHQ+M/fZ+WwCi9xu
 fGS9aZtvx+mQKmidjXmfwkR416G14r0zCo8ewQ070koyE+EVtzcGtcRMcpFg0kQokXhn
 QmSw==
X-Gm-Message-State: ANhLgQ261If1XwvuTpiTNd5QhVFv9EIpwE2QdgD4APNwXWsiQptCaKYa
 MwR4PUO1vPPaS4PZm0Y/zLJ89w==
X-Google-Smtp-Source: ADFU+vsYGS+ja6t5n9YW4qTKj9G3v2ZmK2SBv0+GGZVxtwHrnqqQyT/hur01EKzunm7cudVUjWmY+Q==
X-Received: by 2002:a05:600c:25a:: with SMTP id
 26mr2180408wmj.85.1584975028367; 
 Mon, 23 Mar 2020 07:50:28 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.50.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:50:27 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 23 Mar 2020 15:49:22 +0100
Message-Id: <20200323144950.3018436-24-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
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
 Sam Ravnborg <sam@ravnborg.org>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We might want to look into pushing this down into drm_mm_init, but
that would mean rolling out return codes to a pile of functions
unfortunately. So let's leave that for now.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/drm_drv.c      |  8 +-------
 drivers/gpu/drm/drm_gem.c      | 21 ++++++++++-----------
 drivers/gpu/drm/drm_internal.h |  1 -
 3 files changed, 11 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index 25fc2107057c..18e7f7389897 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
@@ -686,13 +686,10 @@ int drm_dev_init(struct drm_device *dev,
 
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
 
@@ -754,9 +751,6 @@ EXPORT_SYMBOL(devm_drm_dev_init);
 void drm_dev_fini(struct drm_device *dev)
 {
 	drm_vblank_cleanup(dev);
-
-	if (drm_core_check_feature(dev, DRIVER_GEM))
-		drm_gem_destroy(dev);
 }
 EXPORT_SYMBOL(drm_dev_fini);
 
diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
index 855911bf2a39..63bfd97e69d8 100644
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
index 23ba15773097..a40a0222419e 100644
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
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
