Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7FB190DE6
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 13:45:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1867D89C59;
	Tue, 24 Mar 2020 12:45:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E682989C59
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 12:45:48 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id a9so3284544wmj.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 05:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xNJzGdqzJsLgNfkIKV4au1nydhmw9E5m9pjYIAAO8fg=;
 b=HKDrhNeP+XEmod9G362aOeipUXCakm9jiYfw3tWQJ8mI7/pY7ChkHusgt8BbklvPc8
 tfNBzuYoV9nrtYHUk/t0VhKMT7t4i6vWB/19p4mLNylJt03GspybJeOn3As9KB2f7EVH
 /deZxsZ9SPOpxzIrox1q8Rj8kXfd/C5JUge0M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xNJzGdqzJsLgNfkIKV4au1nydhmw9E5m9pjYIAAO8fg=;
 b=MGPafw6s5RTuNPcjqSD69wOgTpLyzoHvC/G78ADkB6v01f91O578x1ZO/YbDNMgdzk
 LuvphGCKrNRXC8Y5Si8kTdf6S8fUl/fA8/0pGaxN+9prpgXF5pT+1nKEQNuJl0gdVUhY
 1X0OLHRSrajay+Krwu4f2Ni1VwBkbszpftQTKKi5tCbJdWz2mWQehQAJeNit4Kn+Aww+
 aAlXQxyp7sKxen2LT5gOQxmwxjyoY2OL4T2BwEnv4w8nvIzyrdiqoB1g2l70NBfUtT3E
 FHh1k5AeqQcHJdYDA/59iMYyj0WrzK+Hg5gCkjrjKotX99VPLXmo4PUVREHhx2QrEZZK
 Sv1g==
X-Gm-Message-State: ANhLgQ0TdxFFsbPbAPQLRpEhvzyz4f+kAypBgRLOFbS1vW4iHYbQ3XyN
 pqTCunhGMiCGGLPuYh+mutZb7A==
X-Google-Smtp-Source: ADFU+vttaHqQx4ebpMB31WvRw4mp15kOfyrOggNEpGL4yJW3Q6eruPWJiS174ysGgqza/Z45CgMoww==
X-Received: by 2002:a1c:4c1a:: with SMTP id z26mr5471103wmf.11.1585053947309; 
 Tue, 24 Mar 2020 05:45:47 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 98sm28715691wrk.52.2020.03.24.05.45.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 05:45:46 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 24 Mar 2020 13:45:40 +0100
Message-Id: <20200324124540.3227396-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-4-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-4-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm: add managed resources tied to drm_device
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We have lots of these. And the cleanup code tends to be of dubious
quality. The biggest wrong pattern is that developers use devm_, which
ties the release action to the underlying struct device, whereas
all the userspace visible stuff attached to a drm_device can long
outlive that one (e.g. after a hotunplug while userspace has open
files and mmap'ed buffers). Give people what they want, but with more
correctness.

Mostly copied from devres.c, with types adjusted to fit drm_device and
a few simplifications - I didn't (yet) copy over everything. Since
the types don't match code sharing looked like a hopeless endeavour.

For now it's only super simplified, no groups, you can't remove
actions (but kfree exists, we'll need that soon). Plus all specific to
drm_device ofc, including the logging. Which I didn't bother to make
compile-time optional, since none of the other drm logging is compile
time optional either.

One tricky bit here is the chicken&egg between allocating your
drm_device structure and initiliazing it with drm_dev_init. For
perfect onion unwinding we'd need to have the action to kfree the
allocation registered before drm_dev_init registers any of its own
release handlers. But drm_dev_init doesn't know where exactly the
drm_device is emebedded into the overall structure, and by the time it
returns it'll all be too late. And forcing drivers to be able clean up
everything except the one kzalloc is silly.

Work around this by having a very special final_kfree pointer. This
also avoids troubles with the list head possibly disappearing from
underneath us when we release all resources attached to the
drm_device.

v2: Do all the kerneldoc at the end, to avoid lots of fairly pointless
shuffling while getting everything into shape.

v3: Add static to add/del_dr (Neil)
Move typo fix to the right patch (Neil)

v4: Enforce contract for drmm_add_final_kfree:

Use ksize() to check that the drm_device is indeed contained somewhere
in the final kfree(). Because we need that or the entire managed
release logic blows up in a pile of use-after-frees. Motivated by a
discussion with Laurent.

v5: Review from Laurent:
- %zu instead of casting size_t
- header guards
- sorting of includes
- guarding of data assignment if we didn't allocate it for a NULL
  pointer
- delete spurious newline
- cast void* data parameter correctly in ->release call, no idea how
  this even worked before

v6: Review from Sam
- Add the kerneldoc for the managed sub-struct back in, even if it
  doesn't show up in the generated html somehow.
- Explain why __always_inline.
- Fix bisectability around the final kfree() in drm_dev_relase(). This
  is just interim code which will disappear again.
- Some whitespace polish.
- Add debug output when drmm_add_action or drmm_kmalloc fail.

v7: My bisectability fix wasn't up to par as noticed by smatch.

v8: Remove unecessary {} around if else

v9: Use kstrdup_const, which requires kfree_const and introducing a free_dr()
helper (Thomas).

v10: kfree_const goes boom on the plain "kmalloc" assignment, somehow
we need to wrap that in kstrdup_const() too!! Also renumber revision
log, I somehow reset it midway thruh.

Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Neil Armstrong <narmstrong@baylibre.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 Documentation/gpu/drm-internals.rst |   6 +
 drivers/gpu/drm/Makefile            |   3 +-
 drivers/gpu/drm/drm_drv.c           |  15 ++-
 drivers/gpu/drm/drm_internal.h      |   3 +
 drivers/gpu/drm/drm_managed.c       | 193 ++++++++++++++++++++++++++++
 include/drm/drm_device.h            |  15 +++
 include/drm/drm_managed.h           |  30 +++++
 include/drm/drm_print.h             |   6 +
 8 files changed, 267 insertions(+), 4 deletions(-)
 create mode 100644 drivers/gpu/drm/drm_managed.c
 create mode 100644 include/drm/drm_managed.h

diff --git a/Documentation/gpu/drm-internals.rst b/Documentation/gpu/drm-internals.rst
index a73320576ca9..a6b6145fda78 100644
--- a/Documentation/gpu/drm-internals.rst
+++ b/Documentation/gpu/drm-internals.rst
@@ -132,6 +132,12 @@ be unmapped; on many devices, the ROM address decoder is shared with
 other BARs, so leaving it mapped could cause undesired behaviour like
 hangs or memory corruption.
 
+Managed Resources
+-----------------
+
+.. kernel-doc:: drivers/gpu/drm/drm_managed.c
+   :doc: managed resources
+
 Bus-specific Device Registration and PCI Support
 ------------------------------------------------
 
diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
index 7f72ef5e7811..183c60048307 100644
--- a/drivers/gpu/drm/Makefile
+++ b/drivers/gpu/drm/Makefile
@@ -17,7 +17,8 @@ drm-y       :=	drm_auth.o drm_cache.o \
 		drm_plane.o drm_color_mgmt.o drm_print.o \
 		drm_dumb_buffers.o drm_mode_config.o drm_vblank.o \
 		drm_syncobj.o drm_lease.o drm_writeback.o drm_client.o \
-		drm_client_modeset.o drm_atomic_uapi.o drm_hdcp.o
+		drm_client_modeset.o drm_atomic_uapi.o drm_hdcp.o \
+		drm_managed.o
 
 drm-$(CONFIG_DRM_LEGACY) += drm_legacy_misc.o drm_bufs.o drm_context.o drm_dma.o drm_scatter.o drm_lock.o
 drm-$(CONFIG_DRM_LIB_RANDOM) += lib/drm_random.o
diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index b9fa8c67ee7d..1b9be23b93b0 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
@@ -629,6 +629,9 @@ int drm_dev_init(struct drm_device *dev,
 	dev->dev = get_device(parent);
 	dev->driver = driver;
 
+	INIT_LIST_HEAD(&dev->managed.resources);
+	spin_lock_init(&dev->managed.lock);
+
 	/* no per-device feature limits by default */
 	dev->driver_features = ~0u;
 
@@ -824,12 +827,18 @@ static void drm_dev_release(struct kref *ref)
 {
 	struct drm_device *dev = container_of(ref, struct drm_device, ref);
 
-	if (dev->driver->release) {
+	if (dev->driver->release)
 		dev->driver->release(dev);
-	} else {
+	else
 		drm_dev_fini(dev);
+
+	drm_managed_release(dev);
+
+	if (!dev->driver->release && !dev->managed.final_kfree) {
+		WARN_ON(!list_empty(&dev->managed.resources));
 		kfree(dev);
-	}
+	} else if (dev->managed.final_kfree)
+		kfree(dev->managed.final_kfree);
 }
 
 /**
diff --git a/drivers/gpu/drm/drm_internal.h b/drivers/gpu/drm/drm_internal.h
index 8b9e8bbca9b1..23ba15773097 100644
--- a/drivers/gpu/drm/drm_internal.h
+++ b/drivers/gpu/drm/drm_internal.h
@@ -89,6 +89,9 @@ void drm_prime_remove_buf_handle_locked(struct drm_prime_file_private *prime_fpr
 struct drm_minor *drm_minor_acquire(unsigned int minor_id);
 void drm_minor_release(struct drm_minor *minor);
 
+/* drm_managed.c */
+void drm_managed_release(struct drm_device *dev);
+
 /* drm_vblank.c */
 void drm_vblank_disable_and_save(struct drm_device *dev, unsigned int pipe);
 void drm_vblank_cleanup(struct drm_device *dev);
diff --git a/drivers/gpu/drm/drm_managed.c b/drivers/gpu/drm/drm_managed.c
new file mode 100644
index 000000000000..46d679b66e4d
--- /dev/null
+++ b/drivers/gpu/drm/drm_managed.c
@@ -0,0 +1,193 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2020 Intel
+ *
+ * Based on drivers/base/devres.c
+ */
+
+#include <drm/drm_managed.h>
+
+#include <linux/list.h>
+#include <linux/slab.h>
+#include <linux/spinlock.h>
+
+#include <drm/drm_device.h>
+#include <drm/drm_print.h>
+
+/**
+ * DOC: managed resources
+ *
+ * Inspired by struct &device managed resources, but tied to the lifetime of
+ * struct &drm_device, which can outlive the underlying physical device, usually
+ * when userspace has some open files and other handles to resources still open.
+ */
+struct drmres_node {
+	struct list_head	entry;
+	drmres_release_t	release;
+	const char		*name;
+	size_t			size;
+};
+
+struct drmres {
+	struct drmres_node		node;
+	/*
+	 * Some archs want to perform DMA into kmalloc caches
+	 * and need a guaranteed alignment larger than
+	 * the alignment of a 64-bit integer.
+	 * Thus we use ARCH_KMALLOC_MINALIGN here and get exactly the same
+	 * buffer alignment as if it was allocated by plain kmalloc().
+	 */
+	u8 __aligned(ARCH_KMALLOC_MINALIGN) data[];
+};
+
+static void free_dr(struct drmres *dr)
+{
+	kfree_const(dr->node.name);
+	kfree(dr);
+}
+
+void drm_managed_release(struct drm_device *dev)
+{
+	struct drmres *dr, *tmp;
+
+	drm_dbg_drmres(dev, "drmres release begin\n");
+	list_for_each_entry_safe(dr, tmp, &dev->managed.resources, node.entry) {
+		drm_dbg_drmres(dev, "REL %p %s (%zu bytes)\n",
+			       dr, dr->node.name, dr->node.size);
+
+		if (dr->node.release)
+			dr->node.release(dev, dr->node.size ? *(void **)&dr->data : NULL);
+
+		list_del(&dr->node.entry);
+		free_dr(dr);
+	}
+	drm_dbg_drmres(dev, "drmres release end\n");
+}
+
+/*
+ * Always inline so that kmalloc_track_caller tracks the actual interesting
+ * caller outside of drm_managed.c.
+ */
+static __always_inline struct drmres * alloc_dr(drmres_release_t release,
+						size_t size, gfp_t gfp, int nid)
+{
+	size_t tot_size;
+	struct drmres *dr;
+
+	/* We must catch any near-SIZE_MAX cases that could overflow. */
+	if (unlikely(check_add_overflow(sizeof(*dr), size, &tot_size)))
+		return NULL;
+
+	dr = kmalloc_node_track_caller(tot_size, gfp, nid);
+	if (unlikely(!dr))
+		return NULL;
+
+	memset(dr, 0, offsetof(struct drmres, data));
+
+	INIT_LIST_HEAD(&dr->node.entry);
+	dr->node.release = release;
+	dr->node.size = size;
+
+	return dr;
+}
+
+static void del_dr(struct drm_device *dev, struct drmres *dr)
+{
+	list_del_init(&dr->node.entry);
+
+	drm_dbg_drmres(dev, "DEL %p %s (%lu bytes)\n",
+		       dr, dr->node.name, (unsigned long) dr->node.size);
+}
+
+static void add_dr(struct drm_device *dev, struct drmres *dr)
+{
+	unsigned long flags;
+
+	spin_lock_irqsave(&dev->managed.lock, flags);
+	list_add(&dr->node.entry, &dev->managed.resources);
+	spin_unlock_irqrestore(&dev->managed.lock, flags);
+
+	drm_dbg_drmres(dev, "ADD %p %s (%lu bytes)\n",
+		       dr, dr->node.name, (unsigned long) dr->node.size);
+}
+
+void drmm_add_final_kfree(struct drm_device *dev, void *container)
+{
+	WARN_ON(dev->managed.final_kfree);
+	WARN_ON(dev < (struct drm_device *) container);
+	WARN_ON(dev + 1 >=
+		(struct drm_device *) (container + ksize(container)));
+	dev->managed.final_kfree = container;
+}
+EXPORT_SYMBOL(drmm_add_final_kfree);
+
+int __drmm_add_action(struct drm_device *dev,
+		      drmres_release_t action,
+		      void *data, const char *name)
+{
+	struct drmres *dr;
+	void **void_ptr;
+
+	dr = alloc_dr(action, data ? sizeof(void*) : 0,
+		      GFP_KERNEL | __GFP_ZERO,
+		      dev_to_node(dev->dev));
+	if (!dr) {
+		drm_dbg_drmres(dev, "failed to add action %s for %p\n",
+			       name, data);
+		return -ENOMEM;
+	}
+
+	dr->node.name = kstrdup_const(name, GFP_KERNEL);
+	if (data) {
+		void_ptr = (void **)&dr->data;
+		*void_ptr = data;
+	}
+
+	add_dr(dev, dr);
+
+	return 0;
+}
+EXPORT_SYMBOL(__drmm_add_action);
+
+void *drmm_kmalloc(struct drm_device *dev, size_t size, gfp_t gfp)
+{
+	struct drmres *dr;
+
+	dr = alloc_dr(NULL, size, gfp, dev_to_node(dev->dev));
+	if (!dr) {
+		drm_dbg_drmres(dev, "failed to allocate %zu bytes, %u flags\n",
+			       size, gfp);
+		return NULL;
+	}
+	dr->node.name = kstrdup_const("kmalloc", GFP_KERNEL);
+
+	add_dr(dev, dr);
+
+	return dr->data;
+}
+EXPORT_SYMBOL(drmm_kmalloc);
+
+void drmm_kfree(struct drm_device *dev, void *data)
+{
+	struct drmres *dr_match = NULL, *dr;
+	unsigned long flags;
+
+	if (!data)
+		return;
+
+	spin_lock_irqsave(&dev->managed.lock, flags);
+	list_for_each_entry(dr, &dev->managed.resources, node.entry) {
+		if (dr->data == data) {
+			dr_match = dr;
+			del_dr(dev, dr_match);
+			break;
+		}
+	}
+	spin_unlock_irqrestore(&dev->managed.lock, flags);
+
+	if (WARN_ON(!dr_match))
+		return;
+
+	free_dr(dr_match);
+}
+EXPORT_SYMBOL(drmm_kfree);
diff --git a/include/drm/drm_device.h b/include/drm/drm_device.h
index bb60a949f416..d39132b477dd 100644
--- a/include/drm/drm_device.h
+++ b/include/drm/drm_device.h
@@ -67,6 +67,21 @@ struct drm_device {
 	/** @dev: Device structure of bus-device */
 	struct device *dev;
 
+	/**
+	 * @managed:
+	 *
+	 * Managed resources linked to the lifetime of this &drm_device as
+	 * tracked by @ref.
+	 */
+	struct {
+		/** @managed.resources: managed resources list */
+		struct list_head resources;
+		/** @managed.final_kfree: pointer for final kfree() call */
+		void *final_kfree;
+		/** @managed.lock: protects @managed.resources */
+		spinlock_t lock;
+	} managed;
+
 	/** @driver: DRM driver managing the device */
 	struct drm_driver *driver;
 
diff --git a/include/drm/drm_managed.h b/include/drm/drm_managed.h
new file mode 100644
index 000000000000..7b5df7d09b19
--- /dev/null
+++ b/include/drm/drm_managed.h
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#ifndef _DRM_MANAGED_H_
+#define _DRM_MANAGED_H_
+
+#include <linux/gfp.h>
+#include <linux/types.h>
+
+struct drm_device;
+
+typedef void (*drmres_release_t)(struct drm_device *dev, void *res);
+
+#define drmm_add_action(dev, action, data) \
+	__drmm_add_action(dev, action, data, #action)
+
+int __must_check __drmm_add_action(struct drm_device *dev,
+				   drmres_release_t action,
+				   void *data, const char *name);
+
+void drmm_add_final_kfree(struct drm_device *dev, void *parent);
+
+void *drmm_kmalloc(struct drm_device *dev, size_t size, gfp_t gfp) __malloc;
+static inline void *drmm_kzalloc(struct drm_device *dev, size_t size, gfp_t gfp)
+{
+	return drmm_kmalloc(dev, size, gfp | __GFP_ZERO);
+}
+
+void drmm_kfree(struct drm_device *dev, void *data);
+
+#endif
diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
index ca7cee8e728a..1c9417430d08 100644
--- a/include/drm/drm_print.h
+++ b/include/drm/drm_print.h
@@ -313,6 +313,10 @@ enum drm_debug_category {
 	 * @DRM_UT_DP: Used in the DP code.
 	 */
 	DRM_UT_DP		= 0x100,
+	/**
+	 * @DRM_UT_DRMRES: Used in the drm managed resources code.
+	 */
+	DRM_UT_DRMRES		= 0x200,
 };
 
 static inline bool drm_debug_enabled(enum drm_debug_category category)
@@ -442,6 +446,8 @@ void drm_dev_dbg(const struct device *dev, enum drm_debug_category category,
 	drm_dev_dbg((drm)->dev, DRM_UT_LEASE, fmt, ##__VA_ARGS__)
 #define drm_dbg_dp(drm, fmt, ...)					\
 	drm_dev_dbg((drm)->dev, DRM_UT_DP, fmt, ##__VA_ARGS__)
+#define drm_dbg_drmres(drm, fmt, ...)					\
+	drm_dev_dbg((drm)->dev, DRM_UT_DRMRES, fmt, ##__VA_ARGS__)
 
 
 /*
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
