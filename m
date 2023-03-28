Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4936CC238
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 16:37:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6076410E8E2;
	Tue, 28 Mar 2023 14:37:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5945410E484
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 14:37:15 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id y4so50704967edo.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 07:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680014233;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
 :reply-to; bh=jdDrasKnuFImEGYPj3qUm+5j8Z1jrJwObDLLEIo8ztQ=;
 b=LYG8TuIvaYP1jqpOzwTH5ZgGUdUat4VF4kTgW6ao8F8xKRIQE64b91l0QDZtUw8OxM
 VoAw6uJuK1wXIPJVWQIbOYXzECSZuxk7G3QCGHSxNgi3mePK7SWe18WRbiLL8AXwyRsk
 +t7Y6BO4l13fewbBNhobyux4eOvSycOEaJrWr/yxJr8mWxejOdO3gDEq5RVsSQt1hbLA
 z/+RpSJxKGQtkYnXl3Un4yS03iPCYtEXlvjEkPPLMcw+OlDi8d6IQ/ce0EPJy4cGTDcR
 1g/ZktnzDnIxZJNsGUcMcCOOnf9elmlLZfkmi/20gcSLnRRo2foXDp+f7VM2Po2q/CMH
 oUWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680014233;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jdDrasKnuFImEGYPj3qUm+5j8Z1jrJwObDLLEIo8ztQ=;
 b=YJzCml2tohO36/ufmVg+oB1kyIStVvzSi1QgVXrZ+71IMlnPQisLYMzdTLIdg31a1F
 YFk7PKLYo+vEGuKlR+VzPwjC8Czm2w3mxkSin8+nhcBMDzc97asj4gfR4RwjCCb0dgDQ
 98C+vXlNLPKYY/1Am8fanE1qpp+EHYfeMFWzo5lW5LK4w8ET/v7arINqcSttKbb/kdtp
 l3vGfr6JDhh2CV3u2jO/659Unkqv2Qy8lXONG1P6K6FZw++Bv6HcvYokDOWRILGhCdef
 bQwX4iUTZdVQH6oSsQE53LGR0j8Bptj0ceeZCCGkENiWH3hGq4w45OkHsXPLgb4hpRp/
 Z2Pg==
X-Gm-Message-State: AAQBX9enfzMOVA29avUxrNmPOKNNgMnZCC/xszyHN6ivRahIrwSG00YY
 tMYbGEh21+gWi38oWhzv79tB/kKuxGQ=
X-Google-Smtp-Source: AKy350YpiD5XvKKglayoVr4RGD/3rAqVPJwd95r0v5D4djWbpc9Btb+dqezQOI/sPW9UpAJLa9aW7A==
X-Received: by 2002:aa7:d74b:0:b0:4fb:5607:6a24 with SMTP id
 a11-20020aa7d74b000000b004fb56076a24mr15363510eds.8.1680014233551; 
 Tue, 28 Mar 2023 07:37:13 -0700 (PDT)
Received: from able.fritz.box (p4fc2092b.dip0.t-ipconnect.de. [79.194.9.43])
 by smtp.gmail.com with ESMTPSA id
 jx3-20020a170907760300b00930876176e2sm15396215ejc.29.2023.03.28.07.37.12
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Mar 2023 07:37:13 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Mar 2023 16:37:08 +0200
Message-Id: <20230328143709.86644-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230328143709.86644-1-christian.koenig@amd.com>
References: <20230328143709.86644-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/debugfs: rework
 drm_debugfs_create_files implementation
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

Use managed memory allocation for this. That allows us to not keep
track of all the files any more.

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/accel/drm_accel.c      |  2 -
 drivers/gpu/drm/drm_debugfs.c  | 75 +++++++++-------------------------
 drivers/gpu/drm/drm_drv.c      |  2 -
 drivers/gpu/drm/drm_internal.h |  5 ---
 drivers/gpu/drm/tegra/dc.c     |  9 +++-
 drivers/gpu/drm/tegra/dsi.c    |  1 +
 drivers/gpu/drm/tegra/hdmi.c   |  3 +-
 drivers/gpu/drm/tegra/sor.c    |  1 +
 include/drm/drm_debugfs.h      |  4 +-
 include/drm/drm_file.h         |  4 --
 10 files changed, 34 insertions(+), 72 deletions(-)

diff --git a/drivers/accel/drm_accel.c b/drivers/accel/drm_accel.c
index e28fb64cbd5e..82c54bc2dcad 100644
--- a/drivers/accel/drm_accel.c
+++ b/drivers/accel/drm_accel.c
@@ -100,8 +100,6 @@ void accel_debugfs_register(struct drm_device *dev)
 {
 	struct drm_minor *minor = dev->accel;
 
-	INIT_LIST_HEAD(&minor->debugfs_list);
-	mutex_init(&minor->debugfs_lock);
 	minor->debugfs_root = dev->debugfs_root;
 
 	drm_debugfs_create_files(accel_debugfs_list, ACCEL_DEBUGFS_ENTRIES,
diff --git a/drivers/gpu/drm/drm_debugfs.c b/drivers/gpu/drm/drm_debugfs.c
index f4fdda5b0153..cdf512c77f14 100644
--- a/drivers/gpu/drm/drm_debugfs.c
+++ b/drivers/gpu/drm/drm_debugfs.c
@@ -201,7 +201,7 @@ void drm_debugfs_create_files(const struct drm_info_list *files, int count,
 		if (features && !drm_core_check_all_features(dev, features))
 			continue;
 
-		tmp = kmalloc(sizeof(struct drm_info_node), GFP_KERNEL);
+		tmp = drmm_kzalloc(dev, sizeof(*tmp), GFP_KERNEL);
 		if (tmp == NULL)
 			continue;
 
@@ -210,14 +210,28 @@ void drm_debugfs_create_files(const struct drm_info_list *files, int count,
 						0444, root, tmp,
 						&drm_debugfs_fops);
 		tmp->info_ent = &files[i];
-
-		mutex_lock(&minor->debugfs_lock);
-		list_add(&tmp->list, &minor->debugfs_list);
-		mutex_unlock(&minor->debugfs_lock);
 	}
 }
 EXPORT_SYMBOL(drm_debugfs_create_files);
 
+int drm_debugfs_remove_files(const struct drm_info_list *files, int count,
+			     struct dentry *root, struct drm_minor *minor)
+{
+	int i;
+
+	for (i = 0; i < count; i++) {
+		struct dentry *dent = debugfs_lookup(files[i].name, root);
+
+		if (!dent)
+			continue;
+
+		drmm_kfree(minor->dev, d_inode(dent)->i_private);
+		debugfs_remove(dent);
+	}
+	return 0;
+}
+EXPORT_SYMBOL(drm_debugfs_remove_files);
+
 void drm_debugfs_dev_init(struct drm_device *dev, struct dentry *root)
 {
 	dev->debugfs_root = debugfs_create_dir(dev->unique, root);
@@ -247,11 +261,8 @@ int drm_debugfs_register(struct drm_minor *minor, int minor_id,
 	struct drm_device *dev = minor->dev;
 	char name[64];
 
-	INIT_LIST_HEAD(&minor->debugfs_list);
-	mutex_init(&minor->debugfs_lock);
 	sprintf(name, "%d", minor_id);
-	minor->debugfs_symlink = debugfs_create_symlink(name, root,
-							dev->unique);
+	debugfs_create_symlink(name, root, dev->unique);
 
 	/* TODO: Only for compatibility with drivers */
 	minor->debugfs_root = dev->debugfs_root;
@@ -262,52 +273,6 @@ int drm_debugfs_register(struct drm_minor *minor, int minor_id,
 	return 0;
 }
 
-int drm_debugfs_remove_files(const struct drm_info_list *files, int count,
-			     struct drm_minor *minor)
-{
-	struct list_head *pos, *q;
-	struct drm_info_node *tmp;
-	int i;
-
-	mutex_lock(&minor->debugfs_lock);
-	for (i = 0; i < count; i++) {
-		list_for_each_safe(pos, q, &minor->debugfs_list) {
-			tmp = list_entry(pos, struct drm_info_node, list);
-			if (tmp->info_ent == &files[i]) {
-				debugfs_remove(tmp->dent);
-				list_del(pos);
-				kfree(tmp);
-			}
-		}
-	}
-	mutex_unlock(&minor->debugfs_lock);
-	return 0;
-}
-EXPORT_SYMBOL(drm_debugfs_remove_files);
-
-static void drm_debugfs_remove_all_files(struct drm_minor *minor)
-{
-	struct drm_info_node *node, *tmp;
-
-	mutex_lock(&minor->debugfs_lock);
-	list_for_each_entry_safe(node, tmp, &minor->debugfs_list, list) {
-		debugfs_remove(node->dent);
-		list_del(&node->list);
-		kfree(node);
-	}
-	mutex_unlock(&minor->debugfs_lock);
-}
-
-void drm_debugfs_cleanup(struct drm_minor *minor)
-{
-	if (!minor->debugfs_symlink)
-		return;
-
-	drm_debugfs_remove_all_files(minor);
-	debugfs_remove(minor->debugfs_symlink);
-	minor->debugfs_symlink = NULL;
-}
-
 /**
  * drm_debugfs_add_file - Add a given file to the DRM device debugfs file list
  * @dev: drm device for the ioctl
diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index f928b4490ece..9466349769fa 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
@@ -198,7 +198,6 @@ static int drm_minor_register(struct drm_device *dev, unsigned int type)
 	return 0;
 
 err_debugfs:
-	drm_debugfs_cleanup(minor);
 	return ret;
 }
 
@@ -222,7 +221,6 @@ static void drm_minor_unregister(struct drm_device *dev, unsigned int type)
 
 	device_del(minor->kdev);
 	dev_set_drvdata(minor->kdev, NULL); /* safety belt */
-	drm_debugfs_cleanup(minor);
 }
 
 /*
diff --git a/drivers/gpu/drm/drm_internal.h b/drivers/gpu/drm/drm_internal.h
index c7f967c0f152..fac86d1998e1 100644
--- a/drivers/gpu/drm/drm_internal.h
+++ b/drivers/gpu/drm/drm_internal.h
@@ -184,7 +184,6 @@ void drm_debugfs_dev_fini(struct drm_device *dev);
 void drm_debugfs_dev_register(struct drm_device *dev);
 int drm_debugfs_register(struct drm_minor *minor, int minor_id,
 			 struct dentry *root);
-void drm_debugfs_cleanup(struct drm_minor *minor);
 void drm_debugfs_connector_add(struct drm_connector *connector);
 void drm_debugfs_connector_remove(struct drm_connector *connector);
 void drm_debugfs_crtc_add(struct drm_crtc *crtc);
@@ -201,10 +200,6 @@ static inline int drm_debugfs_register(struct drm_minor *minor, int minor_id,
 	return 0;
 }
 
-static inline void drm_debugfs_cleanup(struct drm_minor *minor)
-{
-}
-
 static inline void drm_debugfs_connector_add(struct drm_connector *connector)
 {
 }
diff --git a/drivers/gpu/drm/tegra/dc.c b/drivers/gpu/drm/tegra/dc.c
index a67453cee883..e53d1b88dc99 100644
--- a/drivers/gpu/drm/tegra/dc.c
+++ b/drivers/gpu/drm/tegra/dc.c
@@ -1745,8 +1745,15 @@ static void tegra_dc_early_unregister(struct drm_crtc *crtc)
 	unsigned int count = ARRAY_SIZE(debugfs_files);
 	struct drm_minor *minor = crtc->dev->primary;
 	struct tegra_dc *dc = to_tegra_dc(crtc);
+	struct dentry *root;
+
+#ifdef CONFIG_DEBUG_FS
+	root = crtc->debugfs_entry;
+#else
+	root = NULL;
+#endif
 
-	drm_debugfs_remove_files(dc->debugfs_files, count, minor);
+	drm_debugfs_remove_files(dc->debugfs_files, count, root, minor);
 	kfree(dc->debugfs_files);
 	dc->debugfs_files = NULL;
 }
diff --git a/drivers/gpu/drm/tegra/dsi.c b/drivers/gpu/drm/tegra/dsi.c
index de1333dc0d86..90c6782a663c 100644
--- a/drivers/gpu/drm/tegra/dsi.c
+++ b/drivers/gpu/drm/tegra/dsi.c
@@ -256,6 +256,7 @@ static void tegra_dsi_early_unregister(struct drm_connector *connector)
 	struct tegra_dsi *dsi = to_dsi(output);
 
 	drm_debugfs_remove_files(dsi->debugfs_files, count,
+				 connector->debugfs_entry,
 				 connector->dev->primary);
 	kfree(dsi->debugfs_files);
 	dsi->debugfs_files = NULL;
diff --git a/drivers/gpu/drm/tegra/hdmi.c b/drivers/gpu/drm/tegra/hdmi.c
index 40ec3e6cf204..53387aa8b147 100644
--- a/drivers/gpu/drm/tegra/hdmi.c
+++ b/drivers/gpu/drm/tegra/hdmi.c
@@ -1114,7 +1114,8 @@ static void tegra_hdmi_early_unregister(struct drm_connector *connector)
 	unsigned int count = ARRAY_SIZE(debugfs_files);
 	struct tegra_hdmi *hdmi = to_hdmi(output);
 
-	drm_debugfs_remove_files(hdmi->debugfs_files, count, minor);
+	drm_debugfs_remove_files(hdmi->debugfs_files, count,
+				 connector->debugfs_entry, minor);
 	kfree(hdmi->debugfs_files);
 	hdmi->debugfs_files = NULL;
 }
diff --git a/drivers/gpu/drm/tegra/sor.c b/drivers/gpu/drm/tegra/sor.c
index 8af632740673..cd286a5c2a9f 100644
--- a/drivers/gpu/drm/tegra/sor.c
+++ b/drivers/gpu/drm/tegra/sor.c
@@ -1707,6 +1707,7 @@ static void tegra_sor_early_unregister(struct drm_connector *connector)
 	struct tegra_sor *sor = to_sor(output);
 
 	drm_debugfs_remove_files(sor->debugfs_files, count,
+				 connector->debugfs_entry,
 				 connector->dev->primary);
 	kfree(sor->debugfs_files);
 	sor->debugfs_files = NULL;
diff --git a/include/drm/drm_debugfs.h b/include/drm/drm_debugfs.h
index 7616f457ce70..84ee27dc2317 100644
--- a/include/drm/drm_debugfs.h
+++ b/include/drm/drm_debugfs.h
@@ -126,8 +126,8 @@ struct drm_debugfs_entry {
 void drm_debugfs_create_files(const struct drm_info_list *files,
 			      int count, struct dentry *root,
 			      struct drm_minor *minor);
-int drm_debugfs_remove_files(const struct drm_info_list *files,
-			     int count, struct drm_minor *minor);
+int drm_debugfs_remove_files(const struct drm_info_list *files, int count,
+			     struct dentry *root, struct drm_minor *minor);
 
 void drm_debugfs_add_file(struct drm_device *dev, const char *name,
 			  int (*show)(struct seq_file*, void*), void *data);
diff --git a/include/drm/drm_file.h b/include/drm/drm_file.h
index 1fe08fcaa149..e687ce27624e 100644
--- a/include/drm/drm_file.h
+++ b/include/drm/drm_file.h
@@ -78,11 +78,7 @@ struct drm_minor {
 	struct device *kdev;		/* Linux device */
 	struct drm_device *dev;
 
-	struct dentry *debugfs_symlink;
 	struct dentry *debugfs_root;
-
-	struct list_head debugfs_list;
-	struct mutex debugfs_lock; /* Protects debugfs_list. */
 };
 
 /**
-- 
2.34.1

