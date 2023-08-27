Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D23478A0B5
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Aug 2023 19:57:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5749710E1FB;
	Sun, 27 Aug 2023 17:57:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BBA810E1E4;
 Sun, 27 Aug 2023 17:56:32 +0000 (UTC)
Received: from workpc.. (109-252-153-31.dynamic.spd-mgts.ru [109.252.153.31])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 (Authenticated sender: dmitry.osipenko)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id 686AD6607297;
 Sun, 27 Aug 2023 18:56:29 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1693158991;
 bh=DszJGXwKHynZ1/vqDxxYVgeWqLyAdAH1M7V2d+HvxYQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aiKPzqnhWCbN+5JBrKao7DOl1Cavl2k6FwDQbvuLUSWLKdyLoTQytd0bnQGOIheUt
 76yy1JcTtcur6z1hBOAZgKfXU9gmQgQVa0n4mCx+KDZrn0qf5jmMbkYVKJAH14z576
 MbefKJRGQKCu2li3SRahZg7rPHYviaS8TxGCpbA//k49jNegQXe+D7CBG/DhAsT9gh
 w8Mm40SLn4Af7I2WaW840ompQhlO0PHJ7d4UMdXXtfhmxSa6ZtDMB9JDrSp7C7zie5
 kcHA3sYcGv1uom2OnUyQ6HZ3V/rr2qUvza6NB28Lxdhr7KqWR9Rl2wdOqckFXunQgx
 mUwwDqBQItF7A==
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: David Airlie <airlied@gmail.com>, Gerd Hoffmann <kraxel@redhat.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>,
 Chia-I Wu <olvaffe@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Qiang Yu <yuq825@gmail.com>, Steven Price <steven.price@arm.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Emma Anholt <emma@anholt.net>, Melissa Wen <mwen@igalia.com>,
 Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Boqun Feng <boqun.feng@gmail.com>, Mark Rutland <mark.rutland@arm.com>
Date: Sun, 27 Aug 2023 20:54:49 +0300
Message-ID: <20230827175449.1766701-24-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230827175449.1766701-1-dmitry.osipenko@collabora.com>
References: <20230827175449.1766701-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v15 23/23] drm/panfrost: Switch to generic
 memory shrinker
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
Cc: intel-gfx@lists.freedesktop.org, kernel@collabora.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Replace Panfrost's custom memory shrinker with a common drm-shmem
memory shrinker.

Tested-by: Steven Price <steven.price@arm.com> # Firefly-RK3288
Reviewed-by: Steven Price <steven.price@arm.com>
Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 drivers/gpu/drm/panfrost/Makefile             |   1 -
 drivers/gpu/drm/panfrost/panfrost_device.h    |   4 -
 drivers/gpu/drm/panfrost/panfrost_drv.c       |  27 ++--
 drivers/gpu/drm/panfrost/panfrost_gem.c       |  30 ++--
 drivers/gpu/drm/panfrost/panfrost_gem.h       |   9 --
 .../gpu/drm/panfrost/panfrost_gem_shrinker.c  | 129 ------------------
 drivers/gpu/drm/panfrost/panfrost_job.c       |  18 ++-
 include/drm/drm_gem_shmem_helper.h            |   7 -
 8 files changed, 47 insertions(+), 178 deletions(-)
 delete mode 100644 drivers/gpu/drm/panfrost/panfrost_gem_shrinker.c

diff --git a/drivers/gpu/drm/panfrost/Makefile b/drivers/gpu/drm/panfrost/Makefile
index 7da2b3f02ed9..11622e22cf15 100644
--- a/drivers/gpu/drm/panfrost/Makefile
+++ b/drivers/gpu/drm/panfrost/Makefile
@@ -5,7 +5,6 @@ panfrost-y := \
 	panfrost_device.o \
 	panfrost_devfreq.o \
 	panfrost_gem.o \
-	panfrost_gem_shrinker.o \
 	panfrost_gpu.o \
 	panfrost_job.o \
 	panfrost_mmu.o \
diff --git a/drivers/gpu/drm/panfrost/panfrost_device.h b/drivers/gpu/drm/panfrost/panfrost_device.h
index b0126b9fbadc..dcc2571c092b 100644
--- a/drivers/gpu/drm/panfrost/panfrost_device.h
+++ b/drivers/gpu/drm/panfrost/panfrost_device.h
@@ -116,10 +116,6 @@ struct panfrost_device {
 		atomic_t pending;
 	} reset;
 
-	struct mutex shrinker_lock;
-	struct list_head shrinker_list;
-	struct shrinker shrinker;
-
 	struct panfrost_devfreq pfdevfreq;
 };
 
diff --git a/drivers/gpu/drm/panfrost/panfrost_drv.c b/drivers/gpu/drm/panfrost/panfrost_drv.c
index 175443eacead..8cf338c2a03b 100644
--- a/drivers/gpu/drm/panfrost/panfrost_drv.c
+++ b/drivers/gpu/drm/panfrost/panfrost_drv.c
@@ -170,7 +170,6 @@ panfrost_lookup_bos(struct drm_device *dev,
 			break;
 		}
 
-		atomic_inc(&bo->gpu_usecount);
 		job->mappings[i] = mapping;
 	}
 
@@ -395,7 +394,6 @@ static int panfrost_ioctl_madvise(struct drm_device *dev, void *data,
 {
 	struct panfrost_file_priv *priv = file_priv->driver_priv;
 	struct drm_panfrost_madvise *args = data;
-	struct panfrost_device *pfdev = dev->dev_private;
 	struct drm_gem_object *gem_obj;
 	struct panfrost_gem_object *bo;
 	int ret = 0;
@@ -408,11 +406,15 @@ static int panfrost_ioctl_madvise(struct drm_device *dev, void *data,
 
 	bo = to_panfrost_bo(gem_obj);
 
+	if (bo->is_heap) {
+		args->retained = 1;
+		goto out_put_object;
+	}
+
 	ret = dma_resv_lock_interruptible(bo->base.base.resv, NULL);
 	if (ret)
 		goto out_put_object;
 
-	mutex_lock(&pfdev->shrinker_lock);
 	mutex_lock(&bo->mappings.lock);
 	if (args->madv == PANFROST_MADV_DONTNEED) {
 		struct panfrost_gem_mapping *first;
@@ -438,17 +440,8 @@ static int panfrost_ioctl_madvise(struct drm_device *dev, void *data,
 
 	args->retained = drm_gem_shmem_madvise_locked(&bo->base, args->madv);
 
-	if (args->retained) {
-		if (args->madv == PANFROST_MADV_DONTNEED)
-			list_move_tail(&bo->base.madv_list,
-				       &pfdev->shrinker_list);
-		else if (args->madv == PANFROST_MADV_WILLNEED)
-			list_del_init(&bo->base.madv_list);
-	}
-
 out_unlock_mappings:
 	mutex_unlock(&bo->mappings.lock);
-	mutex_unlock(&pfdev->shrinker_lock);
 	dma_resv_unlock(bo->base.base.resv);
 out_put_object:
 	drm_gem_object_put(gem_obj);
@@ -577,9 +570,6 @@ static int panfrost_probe(struct platform_device *pdev)
 	ddev->dev_private = pfdev;
 	pfdev->ddev = ddev;
 
-	mutex_init(&pfdev->shrinker_lock);
-	INIT_LIST_HEAD(&pfdev->shrinker_list);
-
 	err = panfrost_device_init(pfdev);
 	if (err) {
 		if (err != -EPROBE_DEFER)
@@ -601,10 +591,14 @@ static int panfrost_probe(struct platform_device *pdev)
 	if (err < 0)
 		goto err_out1;
 
-	panfrost_gem_shrinker_init(ddev);
+	err = drmm_gem_shmem_init(ddev);
+	if (err < 0)
+		goto err_out2;
 
 	return 0;
 
+err_out2:
+	drm_dev_unregister(ddev);
 err_out1:
 	pm_runtime_disable(pfdev->dev);
 	panfrost_device_fini(pfdev);
@@ -620,7 +614,6 @@ static void panfrost_remove(struct platform_device *pdev)
 	struct drm_device *ddev = pfdev->ddev;
 
 	drm_dev_unregister(ddev);
-	panfrost_gem_shrinker_cleanup(ddev);
 
 	pm_runtime_get_sync(pfdev->dev);
 	pm_runtime_disable(pfdev->dev);
diff --git a/drivers/gpu/drm/panfrost/panfrost_gem.c b/drivers/gpu/drm/panfrost/panfrost_gem.c
index 59c8c73c6a59..00165fca7f3d 100644
--- a/drivers/gpu/drm/panfrost/panfrost_gem.c
+++ b/drivers/gpu/drm/panfrost/panfrost_gem.c
@@ -19,16 +19,6 @@ static void panfrost_gem_free_object(struct drm_gem_object *obj)
 	struct panfrost_gem_object *bo = to_panfrost_bo(obj);
 	struct panfrost_device *pfdev = obj->dev->dev_private;
 
-	/*
-	 * Make sure the BO is no longer inserted in the shrinker list before
-	 * taking care of the destruction itself. If we don't do that we have a
-	 * race condition between this function and what's done in
-	 * panfrost_gem_shrinker_scan().
-	 */
-	mutex_lock(&pfdev->shrinker_lock);
-	list_del_init(&bo->base.madv_list);
-	mutex_unlock(&pfdev->shrinker_lock);
-
 	/*
 	 * If we still have mappings attached to the BO, there's a problem in
 	 * our refcounting.
@@ -195,6 +185,25 @@ static int panfrost_gem_pin(struct drm_gem_object *obj)
 	return drm_gem_shmem_object_pin(obj);
 }
 
+static int panfrost_shmem_evict(struct drm_gem_object *obj)
+{
+	struct panfrost_gem_object *bo = to_panfrost_bo(obj);
+
+	if (!drm_gem_shmem_is_purgeable(&bo->base))
+		return -EBUSY;
+
+	if (!mutex_trylock(&bo->mappings.lock))
+		return -EBUSY;
+
+	panfrost_gem_teardown_mappings_locked(bo);
+
+	drm_gem_shmem_purge_locked(&bo->base);
+
+	mutex_unlock(&bo->mappings.lock);
+
+	return 0;
+}
+
 static const struct drm_gem_object_funcs panfrost_gem_funcs = {
 	.free = panfrost_gem_free_object,
 	.open = panfrost_gem_open,
@@ -207,6 +216,7 @@ static const struct drm_gem_object_funcs panfrost_gem_funcs = {
 	.vunmap = drm_gem_shmem_object_vunmap_locked,
 	.mmap = drm_gem_shmem_object_mmap,
 	.vm_ops = &drm_gem_shmem_vm_ops,
+	.evict = panfrost_shmem_evict,
 };
 
 /**
diff --git a/drivers/gpu/drm/panfrost/panfrost_gem.h b/drivers/gpu/drm/panfrost/panfrost_gem.h
index ad2877eeeccd..6ad1bcedb932 100644
--- a/drivers/gpu/drm/panfrost/panfrost_gem.h
+++ b/drivers/gpu/drm/panfrost/panfrost_gem.h
@@ -30,12 +30,6 @@ struct panfrost_gem_object {
 		struct mutex lock;
 	} mappings;
 
-	/*
-	 * Count the number of jobs referencing this BO so we don't let the
-	 * shrinker reclaim this object prematurely.
-	 */
-	atomic_t gpu_usecount;
-
 	bool noexec		:1;
 	bool is_heap		:1;
 };
@@ -81,7 +75,4 @@ panfrost_gem_mapping_get(struct panfrost_gem_object *bo,
 void panfrost_gem_mapping_put(struct panfrost_gem_mapping *mapping);
 void panfrost_gem_teardown_mappings_locked(struct panfrost_gem_object *bo);
 
-void panfrost_gem_shrinker_init(struct drm_device *dev);
-void panfrost_gem_shrinker_cleanup(struct drm_device *dev);
-
 #endif /* __PANFROST_GEM_H__ */
diff --git a/drivers/gpu/drm/panfrost/panfrost_gem_shrinker.c b/drivers/gpu/drm/panfrost/panfrost_gem_shrinker.c
deleted file mode 100644
index eb810403b027..000000000000
--- a/drivers/gpu/drm/panfrost/panfrost_gem_shrinker.c
+++ /dev/null
@@ -1,129 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2019 Arm Ltd.
- *
- * Based on msm_gem_freedreno.c:
- * Copyright (C) 2016 Red Hat
- * Author: Rob Clark <robdclark@gmail.com>
- */
-
-#include <linux/list.h>
-
-#include <drm/drm_device.h>
-#include <drm/drm_gem_shmem_helper.h>
-
-#include "panfrost_device.h"
-#include "panfrost_gem.h"
-#include "panfrost_mmu.h"
-
-static bool panfrost_gem_shmem_is_purgeable(struct drm_gem_shmem_object *shmem)
-{
-	return (shmem->madv > 0) &&
-		!kref_read(&shmem->pages_pin_count) && shmem->sgt &&
-		!shmem->base.dma_buf && !shmem->base.import_attach;
-}
-
-static unsigned long
-panfrost_gem_shrinker_count(struct shrinker *shrinker, struct shrink_control *sc)
-{
-	struct panfrost_device *pfdev =
-		container_of(shrinker, struct panfrost_device, shrinker);
-	struct drm_gem_shmem_object *shmem;
-	unsigned long count = 0;
-
-	if (!mutex_trylock(&pfdev->shrinker_lock))
-		return 0;
-
-	list_for_each_entry(shmem, &pfdev->shrinker_list, madv_list) {
-		if (panfrost_gem_shmem_is_purgeable(shmem))
-			count += shmem->base.size >> PAGE_SHIFT;
-	}
-
-	mutex_unlock(&pfdev->shrinker_lock);
-
-	return count;
-}
-
-static bool panfrost_gem_purge(struct drm_gem_object *obj)
-{
-	struct drm_gem_shmem_object *shmem = to_drm_gem_shmem_obj(obj);
-	struct panfrost_gem_object *bo = to_panfrost_bo(obj);
-	bool ret = false;
-
-	if (atomic_read(&bo->gpu_usecount))
-		return false;
-
-	if (!mutex_trylock(&bo->mappings.lock))
-		return false;
-
-	if (!dma_resv_trylock(shmem->base.resv))
-		goto unlock_mappings;
-
-	panfrost_gem_teardown_mappings_locked(bo);
-	drm_gem_shmem_purge_locked(&bo->base);
-	ret = true;
-
-	dma_resv_unlock(shmem->base.resv);
-
-unlock_mappings:
-	mutex_unlock(&bo->mappings.lock);
-	return ret;
-}
-
-static unsigned long
-panfrost_gem_shrinker_scan(struct shrinker *shrinker, struct shrink_control *sc)
-{
-	struct panfrost_device *pfdev =
-		container_of(shrinker, struct panfrost_device, shrinker);
-	struct drm_gem_shmem_object *shmem, *tmp;
-	unsigned long freed = 0;
-
-	if (!mutex_trylock(&pfdev->shrinker_lock))
-		return SHRINK_STOP;
-
-	list_for_each_entry_safe(shmem, tmp, &pfdev->shrinker_list, madv_list) {
-		if (freed >= sc->nr_to_scan)
-			break;
-		if (drm_gem_shmem_is_purgeable(shmem) &&
-		    panfrost_gem_purge(&shmem->base)) {
-			freed += shmem->base.size >> PAGE_SHIFT;
-			list_del_init(&shmem->madv_list);
-		}
-	}
-
-	mutex_unlock(&pfdev->shrinker_lock);
-
-	if (freed > 0)
-		pr_info_ratelimited("Purging %lu bytes\n", freed << PAGE_SHIFT);
-
-	return freed;
-}
-
-/**
- * panfrost_gem_shrinker_init - Initialize panfrost shrinker
- * @dev: DRM device
- *
- * This function registers and sets up the panfrost shrinker.
- */
-void panfrost_gem_shrinker_init(struct drm_device *dev)
-{
-	struct panfrost_device *pfdev = dev->dev_private;
-	pfdev->shrinker.count_objects = panfrost_gem_shrinker_count;
-	pfdev->shrinker.scan_objects = panfrost_gem_shrinker_scan;
-	pfdev->shrinker.seeks = DEFAULT_SEEKS;
-	WARN_ON(register_shrinker(&pfdev->shrinker, "drm-panfrost"));
-}
-
-/**
- * panfrost_gem_shrinker_cleanup - Clean up panfrost shrinker
- * @dev: DRM device
- *
- * This function unregisters the panfrost shrinker.
- */
-void panfrost_gem_shrinker_cleanup(struct drm_device *dev)
-{
-	struct panfrost_device *pfdev = dev->dev_private;
-
-	if (pfdev->shrinker.nr_deferred) {
-		unregister_shrinker(&pfdev->shrinker);
-	}
-}
diff --git a/drivers/gpu/drm/panfrost/panfrost_job.c b/drivers/gpu/drm/panfrost/panfrost_job.c
index dbc597ab46fb..98d9751d2b2c 100644
--- a/drivers/gpu/drm/panfrost/panfrost_job.c
+++ b/drivers/gpu/drm/panfrost/panfrost_job.c
@@ -272,6 +272,19 @@ static void panfrost_attach_object_fences(struct drm_gem_object **bos,
 		dma_resv_add_fence(bos[i]->resv, fence, DMA_RESV_USAGE_WRITE);
 }
 
+static int panfrost_objects_prepare(struct drm_gem_object **bos, int bo_count)
+{
+	struct panfrost_gem_object *bo;
+	int ret = 0;
+
+	while (!ret && bo_count--) {
+		bo = to_panfrost_bo(bos[bo_count]);
+		ret = bo->base.madv ? -ENOMEM : 0;
+	}
+
+	return ret;
+}
+
 int panfrost_job_push(struct panfrost_job *job)
 {
 	struct panfrost_device *pfdev = job->pfdev;
@@ -283,6 +296,10 @@ int panfrost_job_push(struct panfrost_job *job)
 	if (ret)
 		return ret;
 
+	ret = panfrost_objects_prepare(job->bos, job->bo_count);
+	if (ret)
+		goto unlock;
+
 	mutex_lock(&pfdev->sched_lock);
 	drm_sched_job_arm(&job->base);
 
@@ -324,7 +341,6 @@ static void panfrost_job_cleanup(struct kref *ref)
 			if (!job->mappings[i])
 				break;
 
-			atomic_dec(&job->mappings[i]->obj->gpu_usecount);
 			panfrost_gem_mapping_put(job->mappings[i]);
 		}
 		kvfree(job->mappings);
diff --git a/include/drm/drm_gem_shmem_helper.h b/include/drm/drm_gem_shmem_helper.h
index e10ba533f74d..e52921d03c6f 100644
--- a/include/drm/drm_gem_shmem_helper.h
+++ b/include/drm/drm_gem_shmem_helper.h
@@ -60,13 +60,6 @@ struct drm_gem_shmem_object {
 	 */
 	int madv;
 
-	/**
-	 * @madv_list: List entry for madvise tracking
-	 *
-	 * Typically used by drivers to track purgeable objects
-	 */
-	struct list_head madv_list;
-
 	/**
 	 * @sgt: Scatter/gather table for imported PRIME buffers
 	 */
-- 
2.41.0

