Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7456D1B5B
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 11:07:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77CA810F15E;
	Fri, 31 Mar 2023 09:07:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 690CC10F15D
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 09:07:33 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id h8so86994906ede.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 02:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680253652;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
 :reply-to; bh=WjtI2abxIgDK1Etyr/CtjVu0xPseW3bkENByIL43Hf0=;
 b=EXZJw3jfMgznKJlz1Tchz5QLGkgg76NOX1CdVrN7HGPdgLT/ztBsP+Ow1r7uzbxHbK
 NJY08EjQhv6Z6YWzjqPHCg6B40R4qGh+2K2IKQTchluPQtB3OpaffsYwgecHivQN/D7J
 gp7jGLpKtnDe/zOY8AQfzlh6Ftu9OGK/Pfjbcvxu7qsagc6usZ8KSWugNzarIUEbEna4
 o9I4M68VlqlMfAEDXtEo/YZsf2ss55MoHYN4bj30LjWcVXJM0JJfF6YXM1DFnfvqA0zT
 vZ/dZ13C09HLGOZly8XptbTaHYyScvqVcp/um6NE1LF+hvrDU+C9fJukqq15/uctmCO3
 89uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680253652;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=WjtI2abxIgDK1Etyr/CtjVu0xPseW3bkENByIL43Hf0=;
 b=SGOzHx0ze9kLFU6vchrAaPthzeHV1HP6S2C0GcVYSZk5epuQRWWNsJKqGKaBfM+EuO
 2OVPlQXTVTf2paXJRLN1Bk2PPL3xM3kl+iU5cEPYxVShy1/53eMBFeSEjS0gbKwbkn1v
 BdnZPU+58Aulk1zHeWGyQ+2EH1BQ3xJhVlSAPX4Ztrb5fr9JUbLiiYaf4pxosVuFK6Ry
 QQHGUQ1NnRJ1bWALad3UMsdmps6Inrfg3b+OtdGlFkyMR20bo/M8o/mtQXFXpyYcO5YF
 gnmKU9plEnqZCG8ztVyeRNfGzZ7qaenJkoejK4XkyABXAcKUR5PG6r3+z6BDoBQrpDVW
 tg0g==
X-Gm-Message-State: AAQBX9eumH02f21BJTZpWTEzJsi5nqnjq5CIGXAJfXtWoRe1ct8k+Lcr
 /esFHyM6aQu+KJbHISXmyC6n8Gd8SSnRSQ==
X-Google-Smtp-Source: AKy350aWz6POm7t/vDhdLjbwKUN1NFotSkUh23IWL2/BWWtnWusXTYS26ACmN3IeboDO3ECZyCScYg==
X-Received: by 2002:a17:906:5a53:b0:931:8221:e168 with SMTP id
 my19-20020a1709065a5300b009318221e168mr24693137ejc.57.1680253651825; 
 Fri, 31 Mar 2023 02:07:31 -0700 (PDT)
Received: from able.fritz.box (p4fc2092b.dip0.t-ipconnect.de. [79.194.9.43])
 by smtp.gmail.com with ESMTPSA id
 r2-20020a170906a20200b009323f08827dsm779960ejy.13.2023.03.31.02.07.31
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Mar 2023 02:07:31 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Mar 2023 11:07:26 +0200
Message-Id: <20230331090729.2183-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230331090729.2183-1-christian.koenig@amd.com>
References: <20230331090729.2183-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/debugfs: rework debugfs directory
 creation v3
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

Instead of the per minor directories only create a single debugfs
directory for the whole device directly when the device is initialized.

For DRM devices each minor gets a symlink to the per device directory
for now until we can be sure that this isn't useful any more in any way.

Accel devices create only the per device directory and also drops the mid
layer callback to create driver specific files.

v2: cleanup accel component as well
v3: fix typo when debugfs is disabled

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/accel/drm_accel.c           | 27 ++++++++-----
 drivers/gpu/drm/drm_atomic.c        |  4 +-
 drivers/gpu/drm/drm_client.c        |  4 +-
 drivers/gpu/drm/drm_crtc_internal.h |  2 +-
 drivers/gpu/drm/drm_debugfs.c       | 60 ++++++++++++++++++-----------
 drivers/gpu/drm/drm_drv.c           | 18 +++++++--
 drivers/gpu/drm/drm_framebuffer.c   |  4 +-
 drivers/gpu/drm/drm_internal.h      | 16 +++++---
 include/drm/drm_accel.h             |  9 ++++-
 include/drm/drm_client.h            |  2 +-
 include/drm/drm_device.h            |  7 ++++
 include/drm/drm_drv.h               |  8 ++++
 include/drm/drm_file.h              |  1 +
 13 files changed, 110 insertions(+), 52 deletions(-)

diff --git a/drivers/accel/drm_accel.c b/drivers/accel/drm_accel.c
index d473388ee807..e28fb64cbd5e 100644
--- a/drivers/accel/drm_accel.c
+++ b/drivers/accel/drm_accel.c
@@ -79,26 +79,33 @@ static const struct drm_info_list accel_debugfs_list[] = {
 #define ACCEL_DEBUGFS_ENTRIES ARRAY_SIZE(accel_debugfs_list)
 
 /**
- * accel_debugfs_init() - Initialize debugfs for accel minor
+ * accel_debugfs_init() - Register debugfs for accel minor
+ * @dev: Pointer to the device instance.
+ *
+ * This function creates a root directory for the device in debugfs.
+ */
+void accel_debugfs_init(struct drm_device *dev)
+{
+	drm_debugfs_dev_init(dev, accel_debugfs_root);
+}
+
+/**
+ * accel_debugfs_register() - Register debugfs for device
  * @minor: Pointer to the drm_minor instance.
  * @minor_id: The minor's id
  *
- * This function initializes the drm minor's debugfs members and creates
- * a root directory for the minor in debugfs. It also creates common files
- * for accelerators and calls the driver's debugfs init callback.
+ * Creates common files for accelerators.
  */
-void accel_debugfs_init(struct drm_minor *minor, int minor_id)
+void accel_debugfs_register(struct drm_device *dev)
 {
-	struct drm_device *dev = minor->dev;
-	char name[64];
+	struct drm_minor *minor = dev->accel;
 
 	INIT_LIST_HEAD(&minor->debugfs_list);
 	mutex_init(&minor->debugfs_lock);
-	sprintf(name, "%d", minor_id);
-	minor->debugfs_root = debugfs_create_dir(name, accel_debugfs_root);
+	minor->debugfs_root = dev->debugfs_root;
 
 	drm_debugfs_create_files(accel_debugfs_list, ACCEL_DEBUGFS_ENTRIES,
-				 minor->debugfs_root, minor);
+				 dev->debugfs_root, minor);
 }
 
 /**
diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
index fed41800fea7..1cc11b948f64 100644
--- a/drivers/gpu/drm/drm_atomic.c
+++ b/drivers/gpu/drm/drm_atomic.c
@@ -1771,9 +1771,9 @@ static const struct drm_debugfs_info drm_atomic_debugfs_list[] = {
 	{"state", drm_state_info, 0},
 };
 
-void drm_atomic_debugfs_init(struct drm_minor *minor)
+void drm_atomic_debugfs_init(struct drm_device *dev)
 {
-	drm_debugfs_add_files(minor->dev, drm_atomic_debugfs_list,
+	drm_debugfs_add_files(dev, drm_atomic_debugfs_list,
 			      ARRAY_SIZE(drm_atomic_debugfs_list));
 }
 #endif
diff --git a/drivers/gpu/drm/drm_client.c b/drivers/gpu/drm/drm_client.c
index f6292ba0e6fc..a91132276f21 100644
--- a/drivers/gpu/drm/drm_client.c
+++ b/drivers/gpu/drm/drm_client.c
@@ -514,9 +514,9 @@ static const struct drm_debugfs_info drm_client_debugfs_list[] = {
 	{ "internal_clients", drm_client_debugfs_internal_clients, 0 },
 };
 
-void drm_client_debugfs_init(struct drm_minor *minor)
+void drm_client_debugfs_init(struct drm_device *dev)
 {
-	drm_debugfs_add_files(minor->dev, drm_client_debugfs_list,
+	drm_debugfs_add_files(dev, drm_client_debugfs_list,
 			      ARRAY_SIZE(drm_client_debugfs_list));
 }
 #endif
diff --git a/drivers/gpu/drm/drm_crtc_internal.h b/drivers/gpu/drm/drm_crtc_internal.h
index 501a10edd0e1..8556c3b3ff88 100644
--- a/drivers/gpu/drm/drm_crtc_internal.h
+++ b/drivers/gpu/drm/drm_crtc_internal.h
@@ -232,7 +232,7 @@ int drm_mode_dirtyfb_ioctl(struct drm_device *dev,
 /* drm_atomic.c */
 #ifdef CONFIG_DEBUG_FS
 struct drm_minor;
-void drm_atomic_debugfs_init(struct drm_minor *minor);
+void drm_atomic_debugfs_init(struct drm_device *dev);
 #endif
 
 int __drm_atomic_helper_disable_plane(struct drm_plane *plane,
diff --git a/drivers/gpu/drm/drm_debugfs.c b/drivers/gpu/drm/drm_debugfs.c
index 54376e2400bb..59c3d76d28f4 100644
--- a/drivers/gpu/drm/drm_debugfs.c
+++ b/drivers/gpu/drm/drm_debugfs.c
@@ -218,8 +218,31 @@ void drm_debugfs_create_files(const struct drm_info_list *files, int count,
 }
 EXPORT_SYMBOL(drm_debugfs_create_files);
 
-int drm_debugfs_init(struct drm_minor *minor, int minor_id,
-		     struct dentry *root)
+void drm_debugfs_dev_init(struct drm_device *dev, struct dentry *root)
+{
+	dev->debugfs_root = debugfs_create_dir(dev->unique, root);
+}
+
+void drm_debugfs_dev_fini(struct drm_device *dev)
+{
+	debugfs_remove_recursive(dev->debugfs_root);
+	dev->debugfs_root = NULL;
+}
+
+void drm_debugfs_dev_register(struct drm_device *dev)
+{
+	drm_debugfs_add_files(dev, drm_debugfs_list, DRM_DEBUGFS_ENTRIES);
+
+	if (drm_core_check_feature(dev, DRIVER_MODESET)) {
+		drm_framebuffer_debugfs_init(dev);
+		drm_client_debugfs_init(dev);
+	}
+	if (drm_drv_uses_atomic_modeset(dev))
+		drm_atomic_debugfs_init(dev);
+}
+
+int drm_debugfs_register(struct drm_minor *minor, int minor_id,
+			 struct dentry *root)
 {
 	struct drm_device *dev = minor->dev;
 	struct drm_debugfs_entry *entry, *tmp;
@@ -228,19 +251,11 @@ int drm_debugfs_init(struct drm_minor *minor, int minor_id,
 	INIT_LIST_HEAD(&minor->debugfs_list);
 	mutex_init(&minor->debugfs_lock);
 	sprintf(name, "%d", minor_id);
-	minor->debugfs_root = debugfs_create_dir(name, root);
+	minor->debugfs_symlink = debugfs_create_symlink(name, root,
+							dev->unique);
 
-	drm_debugfs_add_files(minor->dev, drm_debugfs_list, DRM_DEBUGFS_ENTRIES);
-
-	if (drm_drv_uses_atomic_modeset(dev)) {
-		drm_atomic_debugfs_init(minor);
-	}
-
-	if (drm_core_check_feature(dev, DRIVER_MODESET)) {
-		drm_framebuffer_debugfs_init(minor);
-
-		drm_client_debugfs_init(minor);
-	}
+	/* TODO: Only for compatibility with drivers */
+	minor->debugfs_root = dev->debugfs_root;
 
 	if (dev->driver->debugfs_init && dev->render != minor)
 		dev->driver->debugfs_init(minor);
@@ -307,13 +322,12 @@ static void drm_debugfs_remove_all_files(struct drm_minor *minor)
 
 void drm_debugfs_cleanup(struct drm_minor *minor)
 {
-	if (!minor->debugfs_root)
+	if (!minor->debugfs_symlink)
 		return;
 
 	drm_debugfs_remove_all_files(minor);
-
-	debugfs_remove_recursive(minor->debugfs_root);
-	minor->debugfs_root = NULL;
+	debugfs_remove(minor->debugfs_symlink);
+	minor->debugfs_symlink = NULL;
 }
 
 /**
@@ -498,13 +512,13 @@ static const struct file_operations drm_connector_fops = {
 
 void drm_debugfs_connector_add(struct drm_connector *connector)
 {
-	struct drm_minor *minor = connector->dev->primary;
+	struct drm_device *dev = connector->dev;
 	struct dentry *root;
 
-	if (!minor->debugfs_root)
+	if (!dev->debugfs_root)
 		return;
 
-	root = debugfs_create_dir(connector->name, minor->debugfs_root);
+	root = debugfs_create_dir(connector->name, dev->debugfs_root);
 	connector->debugfs_entry = root;
 
 	/* force */
@@ -539,7 +553,7 @@ void drm_debugfs_connector_remove(struct drm_connector *connector)
 
 void drm_debugfs_crtc_add(struct drm_crtc *crtc)
 {
-	struct drm_minor *minor = crtc->dev->primary;
+	struct drm_device *dev = crtc->dev;
 	struct dentry *root;
 	char *name;
 
@@ -547,7 +561,7 @@ void drm_debugfs_crtc_add(struct drm_crtc *crtc)
 	if (!name)
 		return;
 
-	root = debugfs_create_dir(name, minor->debugfs_root);
+	root = debugfs_create_dir(name, dev->debugfs_root);
 	kfree(name);
 
 	crtc->debugfs_entry = root;
diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index cee0cc522ed9..05b831f9fe71 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
@@ -172,10 +172,9 @@ static int drm_minor_register(struct drm_device *dev, unsigned int type)
 	if (!minor)
 		return 0;
 
-	if (minor->type == DRM_MINOR_ACCEL) {
-		accel_debugfs_init(minor, minor->index);
-	} else {
-		ret = drm_debugfs_init(minor, minor->index, drm_debugfs_root);
+	if (minor->type != DRM_MINOR_ACCEL) {
+		ret = drm_debugfs_register(minor, minor->index,
+					   drm_debugfs_root);
 		if (ret) {
 			DRM_ERROR("DRM: Failed to initialize /sys/kernel/debug/dri.\n");
 			goto err_debugfs;
@@ -697,6 +696,11 @@ static int drm_dev_init(struct drm_device *dev,
 		goto err;
 	}
 
+	if (drm_core_check_feature(dev, DRIVER_COMPUTE_ACCEL))
+		accel_debugfs_init(dev);
+	else
+		drm_debugfs_dev_init(dev, drm_debugfs_root);
+
 	return 0;
 
 err:
@@ -916,6 +920,11 @@ int drm_dev_register(struct drm_device *dev, unsigned long flags)
 	if (drm_dev_needs_global_mutex(dev))
 		mutex_lock(&drm_global_mutex);
 
+	if (drm_core_check_feature(dev, DRIVER_COMPUTE_ACCEL))
+		accel_debugfs_register(dev);
+	else
+		drm_debugfs_dev_register(dev);
+
 	ret = drm_minor_register(dev, DRM_MINOR_RENDER);
 	if (ret)
 		goto err_minors;
@@ -999,6 +1008,7 @@ void drm_dev_unregister(struct drm_device *dev)
 	drm_minor_unregister(dev, DRM_MINOR_ACCEL);
 	drm_minor_unregister(dev, DRM_MINOR_PRIMARY);
 	drm_minor_unregister(dev, DRM_MINOR_RENDER);
+	drm_debugfs_dev_fini(dev);
 }
 EXPORT_SYMBOL(drm_dev_unregister);
 
diff --git a/drivers/gpu/drm/drm_framebuffer.c b/drivers/gpu/drm/drm_framebuffer.c
index aff3746dedfb..ba51deb6d042 100644
--- a/drivers/gpu/drm/drm_framebuffer.c
+++ b/drivers/gpu/drm/drm_framebuffer.c
@@ -1222,9 +1222,9 @@ static const struct drm_debugfs_info drm_framebuffer_debugfs_list[] = {
 	{ "framebuffer", drm_framebuffer_info, 0 },
 };
 
-void drm_framebuffer_debugfs_init(struct drm_minor *minor)
+void drm_framebuffer_debugfs_init(struct drm_device *dev)
 {
-	drm_debugfs_add_files(minor->dev, drm_framebuffer_debugfs_list,
+	drm_debugfs_add_files(dev, drm_framebuffer_debugfs_list,
 			      ARRAY_SIZE(drm_framebuffer_debugfs_list));
 }
 #endif
diff --git a/drivers/gpu/drm/drm_internal.h b/drivers/gpu/drm/drm_internal.h
index d7e023bbb0d5..5c6e1cadf09b 100644
--- a/drivers/gpu/drm/drm_internal.h
+++ b/drivers/gpu/drm/drm_internal.h
@@ -180,8 +180,10 @@ void drm_gem_vunmap(struct drm_gem_object *obj, struct iosys_map *map);
 
 /* drm_debugfs.c drm_debugfs_crc.c */
 #if defined(CONFIG_DEBUG_FS)
-int drm_debugfs_init(struct drm_minor *minor, int minor_id,
-		     struct dentry *root);
+void drm_debugfs_dev_fini(struct drm_device *dev);
+void drm_debugfs_dev_register(struct drm_device *dev);
+int drm_debugfs_register(struct drm_minor *minor, int minor_id,
+			 struct dentry *root);
 void drm_debugfs_cleanup(struct drm_minor *minor);
 void drm_debugfs_late_register(struct drm_device *dev);
 void drm_debugfs_connector_add(struct drm_connector *connector);
@@ -190,8 +192,12 @@ void drm_debugfs_crtc_add(struct drm_crtc *crtc);
 void drm_debugfs_crtc_remove(struct drm_crtc *crtc);
 void drm_debugfs_crtc_crc_add(struct drm_crtc *crtc);
 #else
-static inline int drm_debugfs_init(struct drm_minor *minor, int minor_id,
-				   struct dentry *root)
+static inline void drm_debugfs_dev_register(struct drm_device *dev)
+{
+}
+
+static inline int drm_debugfs_register(struct drm_minor *minor, int minor_id,
+				       struct dentry *root)
 {
 	return 0;
 }
@@ -257,4 +263,4 @@ int drm_syncobj_query_ioctl(struct drm_device *dev, void *data,
 /* drm_framebuffer.c */
 void drm_framebuffer_print_info(struct drm_printer *p, unsigned int indent,
 				const struct drm_framebuffer *fb);
-void drm_framebuffer_debugfs_init(struct drm_minor *minor);
+void drm_framebuffer_debugfs_init(struct drm_device *dev);
diff --git a/include/drm/drm_accel.h b/include/drm/drm_accel.h
index d4955062c77e..f4d3784b1dce 100644
--- a/include/drm/drm_accel.h
+++ b/include/drm/drm_accel.h
@@ -58,7 +58,8 @@ int accel_minor_alloc(void);
 void accel_minor_replace(struct drm_minor *minor, int index);
 void accel_set_device_instance_params(struct device *kdev, int index);
 int accel_open(struct inode *inode, struct file *filp);
-void accel_debugfs_init(struct drm_minor *minor, int minor_id);
+void accel_debugfs_init(struct drm_device *dev);
+void accel_debugfs_register(struct drm_device *dev);
 
 #else
 
@@ -89,7 +90,11 @@ static inline void accel_set_device_instance_params(struct device *kdev, int ind
 {
 }
 
-static inline void accel_debugfs_init(struct drm_minor *minor, int minor_id)
+static inline void accel_debugfs_init(struct drm_device *dev)
+{
+}
+
+static inline void accel_debugfs_register(struct drm_device *dev)
 {
 }
 
diff --git a/include/drm/drm_client.h b/include/drm/drm_client.h
index c0a14b40c039..d47458ecdac4 100644
--- a/include/drm/drm_client.h
+++ b/include/drm/drm_client.h
@@ -195,6 +195,6 @@ int drm_client_modeset_dpms(struct drm_client_dev *client, int mode);
 	drm_for_each_connector_iter(connector, iter) \
 		if (connector->connector_type != DRM_MODE_CONNECTOR_WRITEBACK)
 
-void drm_client_debugfs_init(struct drm_minor *minor);
+void drm_client_debugfs_init(struct drm_device *dev);
 
 #endif
diff --git a/include/drm/drm_device.h b/include/drm/drm_device.h
index 7cf4afae2e79..3cf12b14232d 100644
--- a/include/drm/drm_device.h
+++ b/include/drm/drm_device.h
@@ -311,6 +311,13 @@ struct drm_device {
 	 */
 	struct drm_fb_helper *fb_helper;
 
+	/**
+	 * @debugfs_root:
+	 *
+	 * Root directory for debugfs files.
+	 */
+	struct dentry *debugfs_root;
+
 	/**
 	 * @debugfs_mutex:
 	 *
diff --git a/include/drm/drm_drv.h b/include/drm/drm_drv.h
index b419c59c4bef..14d5337f4297 100644
--- a/include/drm/drm_drv.h
+++ b/include/drm/drm_drv.h
@@ -590,4 +590,12 @@ static inline bool drm_firmware_drivers_only(void)
 	return video_firmware_drivers_only();
 }
 
+#if defined(CONFIG_DEBUG_FS)
+void drm_debugfs_dev_init(struct drm_device *dev, struct dentry *root);
+#else
+static void drm_debugfs_dev_init(struct drm_device *dev, struct dentry *root)
+{
+}
+#endif
+
 #endif
diff --git a/include/drm/drm_file.h b/include/drm/drm_file.h
index ecffe24e2b1b..1fe08fcaa149 100644
--- a/include/drm/drm_file.h
+++ b/include/drm/drm_file.h
@@ -78,6 +78,7 @@ struct drm_minor {
 	struct device *kdev;		/* Linux device */
 	struct drm_device *dev;
 
+	struct dentry *debugfs_symlink;
 	struct dentry *debugfs_root;
 
 	struct list_head debugfs_list;
-- 
2.34.1

