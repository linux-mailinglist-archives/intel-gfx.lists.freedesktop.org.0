Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 580FA6D1B5D
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 11:07:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA05D10F163;
	Fri, 31 Mar 2023 09:07:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2064610F15E
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 09:07:34 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id ek18so87013548edb.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 02:07:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680253652;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
 :reply-to; bh=SH+CT1+uR2hYvzUkX7rRdeNsA3PKGjunggcUx1mQTkM=;
 b=JMwEwJPvePHGycvteb7eon+bj07nIAZga+/s20LD0ZkDjp9UBUxfBc9EZkFhrKkmwt
 C2gYKdFx0zZcGUUMecOedRtbRhOA/LShFDrUU7bFt8+bLJYersT3G3+/F7EUZp38Cms7
 TzBj5aXAao09drxk/KmDHVf2eFnh+oUVNGfhym4CTYxOyp+mR3nQx5UzPypxljok5zrg
 PY4BH0OOPGa7j2EN0+CyJ0196QDbpmOwl5T53k0vASvAipyRkvZbPxXz2RGgnnTalT+j
 mWWlFiEtsVXdiI3rJOmAkd1a0lE20NheB2Yc4EWtLFVsvqpOEF8l/PqeA6HibkMI9qq2
 Rh1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680253652;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=SH+CT1+uR2hYvzUkX7rRdeNsA3PKGjunggcUx1mQTkM=;
 b=ftM2KRVOI7bbSFcatHnMKZkGbZTOpPEeva3slKIVOA9qgvJQUSvW5aSVhukH5v6hF9
 yjbZ2a6Q2/Zg1wXYCKlUodPxmxuwfbTyUYbbwRkco0KmfyNMu0+kb6vP9VxuRMEE9KUH
 QeT5K7JWaFNgbTEtVq15J0BpHlGezsnUjoyY/p/e3VDMdtHZad6jsidp4w9TRtE3TRoE
 RhvW4YVKuYQU76zSbxEvuwIloL3rGUqZyxNf5fR/UJHts1vBVwi5pAr0NADxVxg1bt4f
 WTlN3/Cl19qIC5UTqx4fGG2vjzKYtRhp6CjaiDaHOpke9B8x+gq2H5FcAIDkNoYAuNzi
 wWCQ==
X-Gm-Message-State: AAQBX9dRXt4E0ua2qcHrSHJaHP0z8po1GmlfcI0oKn705VeKp1bPZJSs
 w2SMIN1pbfUKOP88Uu7FSJnlcI+g6Fqqjw==
X-Google-Smtp-Source: AKy350bmQ4l2dRYZcAEliQeT3uZjS7hU3WyYC3aInpEAq/EgB+zUe4L5Yu1VN84yggR5mLnw03bXiw==
X-Received: by 2002:a17:906:aad0:b0:932:365a:969a with SMTP id
 kt16-20020a170906aad000b00932365a969amr27623353ejb.8.1680253652628; 
 Fri, 31 Mar 2023 02:07:32 -0700 (PDT)
Received: from able.fritz.box (p4fc2092b.dip0.t-ipconnect.de. [79.194.9.43])
 by smtp.gmail.com with ESMTPSA id
 r2-20020a170906a20200b009323f08827dsm779960ejy.13.2023.03.31.02.07.31
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Mar 2023 02:07:32 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Mar 2023 11:07:27 +0200
Message-Id: <20230331090729.2183-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230331090729.2183-1-christian.koenig@amd.com>
References: <20230331090729.2183-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/debugfs: remove dev->debugfs_list and
 debugfs_mutex v2
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The mutex was completely pointless in the first place since any
parallel adding of files to this list would result in random
behavior since the list is filled and consumed multiple times.

Completely drop that approach and just create the files directly but
return -ENODEV while opening the file when the minors are not
registered yet.

v2: rebase on debugfs directory rework, limit access before minors are
    registered.

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/gpu/drm/drm_debugfs.c     | 27 ++-------------------------
 drivers/gpu/drm/drm_drv.c         |  3 ---
 drivers/gpu/drm/drm_internal.h    |  5 -----
 drivers/gpu/drm/drm_mode_config.c |  2 --
 include/drm/drm_device.h          | 15 ---------------
 5 files changed, 2 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/drm_debugfs.c b/drivers/gpu/drm/drm_debugfs.c
index 59c3d76d28f4..427c5eb4eca0 100644
--- a/drivers/gpu/drm/drm_debugfs.c
+++ b/drivers/gpu/drm/drm_debugfs.c
@@ -245,7 +245,6 @@ int drm_debugfs_register(struct drm_minor *minor, int minor_id,
 			 struct dentry *root)
 {
 	struct drm_device *dev = minor->dev;
-	struct drm_debugfs_entry *entry, *tmp;
 	char name[64];
 
 	INIT_LIST_HEAD(&minor->debugfs_list);
@@ -260,30 +259,9 @@ int drm_debugfs_register(struct drm_minor *minor, int minor_id,
 	if (dev->driver->debugfs_init && dev->render != minor)
 		dev->driver->debugfs_init(minor);
 
-	list_for_each_entry_safe(entry, tmp, &dev->debugfs_list, list) {
-		debugfs_create_file(entry->file.name, 0444,
-				    minor->debugfs_root, entry, &drm_debugfs_entry_fops);
-		list_del(&entry->list);
-	}
-
 	return 0;
 }
 
-void drm_debugfs_late_register(struct drm_device *dev)
-{
-	struct drm_minor *minor = dev->primary;
-	struct drm_debugfs_entry *entry, *tmp;
-
-	if (!minor)
-		return;
-
-	list_for_each_entry_safe(entry, tmp, &dev->debugfs_list, list) {
-		debugfs_create_file(entry->file.name, 0444,
-				    minor->debugfs_root, entry, &drm_debugfs_entry_fops);
-		list_del(&entry->list);
-	}
-}
-
 int drm_debugfs_remove_files(const struct drm_info_list *files, int count,
 			     struct drm_minor *minor)
 {
@@ -353,9 +331,8 @@ void drm_debugfs_add_file(struct drm_device *dev, const char *name,
 	entry->file.data = data;
 	entry->dev = dev;
 
-	mutex_lock(&dev->debugfs_mutex);
-	list_add(&entry->list, &dev->debugfs_list);
-	mutex_unlock(&dev->debugfs_mutex);
+	debugfs_create_file(name, 0444, dev->debugfs_root, entry,
+			    &drm_debugfs_entry_fops);
 }
 EXPORT_SYMBOL(drm_debugfs_add_file);
 
diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index 05b831f9fe71..f928b4490ece 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
@@ -597,7 +597,6 @@ static void drm_dev_init_release(struct drm_device *dev, void *res)
 	mutex_destroy(&dev->clientlist_mutex);
 	mutex_destroy(&dev->filelist_mutex);
 	mutex_destroy(&dev->struct_mutex);
-	mutex_destroy(&dev->debugfs_mutex);
 	drm_legacy_destroy_members(dev);
 }
 
@@ -638,14 +637,12 @@ static int drm_dev_init(struct drm_device *dev,
 	INIT_LIST_HEAD(&dev->filelist_internal);
 	INIT_LIST_HEAD(&dev->clientlist);
 	INIT_LIST_HEAD(&dev->vblank_event_list);
-	INIT_LIST_HEAD(&dev->debugfs_list);
 
 	spin_lock_init(&dev->event_lock);
 	mutex_init(&dev->struct_mutex);
 	mutex_init(&dev->filelist_mutex);
 	mutex_init(&dev->clientlist_mutex);
 	mutex_init(&dev->master_mutex);
-	mutex_init(&dev->debugfs_mutex);
 
 	ret = drmm_add_action_or_reset(dev, drm_dev_init_release, NULL);
 	if (ret)
diff --git a/drivers/gpu/drm/drm_internal.h b/drivers/gpu/drm/drm_internal.h
index 5c6e1cadf09b..c5fadbd3fd7d 100644
--- a/drivers/gpu/drm/drm_internal.h
+++ b/drivers/gpu/drm/drm_internal.h
@@ -185,7 +185,6 @@ void drm_debugfs_dev_register(struct drm_device *dev);
 int drm_debugfs_register(struct drm_minor *minor, int minor_id,
 			 struct dentry *root);
 void drm_debugfs_cleanup(struct drm_minor *minor);
-void drm_debugfs_late_register(struct drm_device *dev);
 void drm_debugfs_connector_add(struct drm_connector *connector);
 void drm_debugfs_connector_remove(struct drm_connector *connector);
 void drm_debugfs_crtc_add(struct drm_crtc *crtc);
@@ -206,10 +205,6 @@ static inline void drm_debugfs_cleanup(struct drm_minor *minor)
 {
 }
 
-static inline void drm_debugfs_late_register(struct drm_device *dev)
-{
-}
-
 static inline void drm_debugfs_connector_add(struct drm_connector *connector)
 {
 }
diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_mode_config.c
index 87eb591fe9b5..8525ef851540 100644
--- a/drivers/gpu/drm/drm_mode_config.c
+++ b/drivers/gpu/drm/drm_mode_config.c
@@ -54,8 +54,6 @@ int drm_modeset_register_all(struct drm_device *dev)
 	if (ret)
 		goto err_connector;
 
-	drm_debugfs_late_register(dev);
-
 	return 0;
 
 err_connector:
diff --git a/include/drm/drm_device.h b/include/drm/drm_device.h
index 3cf12b14232d..c490977ee250 100644
--- a/include/drm/drm_device.h
+++ b/include/drm/drm_device.h
@@ -318,21 +318,6 @@ struct drm_device {
 	 */
 	struct dentry *debugfs_root;
 
-	/**
-	 * @debugfs_mutex:
-	 *
-	 * Protects &debugfs_list access.
-	 */
-	struct mutex debugfs_mutex;
-
-	/**
-	 * @debugfs_list:
-	 *
-	 * List of debugfs files to be created by the DRM device. The files
-	 * must be added during drm_dev_register().
-	 */
-	struct list_head debugfs_list;
-
 	/* Everything below here is for legacy driver, never use! */
 	/* private: */
 #if IS_ENABLED(CONFIG_DRM_LEGACY)
-- 
2.34.1

