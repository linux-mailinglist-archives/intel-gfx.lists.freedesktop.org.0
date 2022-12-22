Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF47654871
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 23:29:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15E4C10E5A3;
	Thu, 22 Dec 2022 22:28:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD12810E59A;
 Thu, 22 Dec 2022 22:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671748119; x=1703284119;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=u2yrJleobNdy/IWLkWWmKyRwumRQHGk4+LVRllcyXts=;
 b=SamV3+hBrHrYr5+CVHye/poYkzCBmBjESAW+O7OCP2NO6Q2Gy/q+iSxX
 Ea6PeLAyGgmhOzctgDoCv6Oe3JnJahxT/O/x54jk7SJERr7PsbCWfavyn
 28X+1nRKRmtPj5Yegb4boS2KghenR73NHHLeJL3RDyyrotQmYnHn9wzln
 TTRtgaoh0SvxQbcvg5HKx36FH/6iEOUViKhtnvPBQL0uWzp9AviB+Gk0x
 VbetnSLinx8CzuLVfrcdOyOXxIPC1cDqykYFksN7uPQdSP/xhh1ZwYuWU
 cEPvcK5Wn3jKl4ZwiS1NwqM8PnY2TSeMCh7GYNlkqmpTBo2wDJyZDaXHT A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="406472848"
X-IronPort-AV: E=Sophos;i="5.96,266,1665471600"; d="scan'208";a="406472848"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2022 14:28:38 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="645412308"
X-IronPort-AV: E=Sophos;i="5.96,266,1665471600"; d="scan'208";a="645412308"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2022 14:28:37 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Thu, 22 Dec 2022 14:21:10 -0800
Message-Id: <20221222222127.34560-4-matthew.brost@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221222222127.34560-1-matthew.brost@intel.com>
References: <20221222222127.34560-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 03/20] drm/radeon: Use the drm suballocation
 manager implementation.
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

From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Use the generic suballocation helper.
Note that the generic suballocator only allows a single alignment,
so we may waste a few more bytes for radeon_semaphore, shouldn't
be a big deal, could be re-added if needed. Also, similar to amdgpu,
debug output changes slightly and suballocator cpu usage may be
slightly higher.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Co-developed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/radeon/radeon.h           |  55 +---
 drivers/gpu/drm/radeon/radeon_ib.c        |  12 +-
 drivers/gpu/drm/radeon/radeon_object.h    |  25 +-
 drivers/gpu/drm/radeon/radeon_sa.c        | 314 ++--------------------
 drivers/gpu/drm/radeon/radeon_semaphore.c |   6 +-
 5 files changed, 55 insertions(+), 357 deletions(-)

diff --git a/drivers/gpu/drm/radeon/radeon.h b/drivers/gpu/drm/radeon/radeon.h
index 57e20780a458..d19a4b1c1a8f 100644
--- a/drivers/gpu/drm/radeon/radeon.h
+++ b/drivers/gpu/drm/radeon/radeon.h
@@ -79,6 +79,7 @@
 
 #include <drm/drm_gem.h>
 #include <drm/drm_audio_component.h>
+#include <drm/drm_suballoc.h>
 
 #include "radeon_family.h"
 #include "radeon_mode.h"
@@ -511,52 +512,12 @@ struct radeon_bo {
 };
 #define gem_to_radeon_bo(gobj) container_of((gobj), struct radeon_bo, tbo.base)
 
-/* sub-allocation manager, it has to be protected by another lock.
- * By conception this is an helper for other part of the driver
- * like the indirect buffer or semaphore, which both have their
- * locking.
- *
- * Principe is simple, we keep a list of sub allocation in offset
- * order (first entry has offset == 0, last entry has the highest
- * offset).
- *
- * When allocating new object we first check if there is room at
- * the end total_size - (last_object_offset + last_object_size) >=
- * alloc_size. If so we allocate new object there.
- *
- * When there is not enough room at the end, we start waiting for
- * each sub object until we reach object_offset+object_size >=
- * alloc_size, this object then become the sub object we return.
- *
- * Alignment can't be bigger than page size.
- *
- * Hole are not considered for allocation to keep things simple.
- * Assumption is that there won't be hole (all object on same
- * alignment).
- */
 struct radeon_sa_manager {
-	wait_queue_head_t	wq;
-	struct radeon_bo	*bo;
-	struct list_head	*hole;
-	struct list_head	flist[RADEON_NUM_RINGS];
-	struct list_head	olist;
-	unsigned		size;
-	uint64_t		gpu_addr;
-	void			*cpu_ptr;
-	uint32_t		domain;
-	uint32_t		align;
-};
-
-struct radeon_sa_bo;
-
-/* sub-allocation buffer */
-struct radeon_sa_bo {
-	struct list_head		olist;
-	struct list_head		flist;
-	struct radeon_sa_manager	*manager;
-	unsigned			soffset;
-	unsigned			eoffset;
-	struct radeon_fence		*fence;
+	struct drm_suballoc_manager	base;
+	struct radeon_bo		*bo;
+	uint64_t			gpu_addr;
+	void				*cpu_ptr;
+	u32 domain;
 };
 
 /*
@@ -587,7 +548,7 @@ int radeon_mode_dumb_mmap(struct drm_file *filp,
  * Semaphores.
  */
 struct radeon_semaphore {
-	struct radeon_sa_bo	*sa_bo;
+	struct drm_suballoc	*sa_bo;
 	signed			waiters;
 	uint64_t		gpu_addr;
 };
@@ -816,7 +777,7 @@ void radeon_irq_kms_disable_hpd(struct radeon_device *rdev, unsigned hpd_mask);
  */
 
 struct radeon_ib {
-	struct radeon_sa_bo		*sa_bo;
+	struct drm_suballoc		*sa_bo;
 	uint32_t			length_dw;
 	uint64_t			gpu_addr;
 	uint32_t			*ptr;
diff --git a/drivers/gpu/drm/radeon/radeon_ib.c b/drivers/gpu/drm/radeon/radeon_ib.c
index 62b116727b4f..63fcfe65d814 100644
--- a/drivers/gpu/drm/radeon/radeon_ib.c
+++ b/drivers/gpu/drm/radeon/radeon_ib.c
@@ -61,7 +61,7 @@ int radeon_ib_get(struct radeon_device *rdev, int ring,
 {
 	int r;
 
-	r = radeon_sa_bo_new(rdev, &rdev->ring_tmp_bo, &ib->sa_bo, size, 256);
+	r = radeon_sa_bo_new(&rdev->ring_tmp_bo, &ib->sa_bo, size);
 	if (r) {
 		dev_err(rdev->dev, "failed to get a new IB (%d)\n", r);
 		return r;
@@ -77,7 +77,7 @@ int radeon_ib_get(struct radeon_device *rdev, int ring,
 		/* ib pool is bound at RADEON_VA_IB_OFFSET in virtual address
 		 * space and soffset is the offset inside the pool bo
 		 */
-		ib->gpu_addr = ib->sa_bo->soffset + RADEON_VA_IB_OFFSET;
+		ib->gpu_addr = drm_suballoc_soffset(ib->sa_bo) + RADEON_VA_IB_OFFSET;
 	} else {
 		ib->gpu_addr = radeon_sa_bo_gpu_addr(ib->sa_bo);
 	}
@@ -97,7 +97,7 @@ int radeon_ib_get(struct radeon_device *rdev, int ring,
 void radeon_ib_free(struct radeon_device *rdev, struct radeon_ib *ib)
 {
 	radeon_sync_free(rdev, &ib->sync, ib->fence);
-	radeon_sa_bo_free(rdev, &ib->sa_bo, ib->fence);
+	radeon_sa_bo_free(&ib->sa_bo, ib->fence);
 	radeon_fence_unref(&ib->fence);
 }
 
@@ -201,8 +201,7 @@ int radeon_ib_pool_init(struct radeon_device *rdev)
 
 	if (rdev->family >= CHIP_BONAIRE) {
 		r = radeon_sa_bo_manager_init(rdev, &rdev->ring_tmp_bo,
-					      RADEON_IB_POOL_SIZE*64*1024,
-					      RADEON_GPU_PAGE_SIZE,
+					      RADEON_IB_POOL_SIZE*64*1024, 256,
 					      RADEON_GEM_DOMAIN_GTT,
 					      RADEON_GEM_GTT_WC);
 	} else {
@@ -210,8 +209,7 @@ int radeon_ib_pool_init(struct radeon_device *rdev)
 		 * to the command stream checking
 		 */
 		r = radeon_sa_bo_manager_init(rdev, &rdev->ring_tmp_bo,
-					      RADEON_IB_POOL_SIZE*64*1024,
-					      RADEON_GPU_PAGE_SIZE,
+					      RADEON_IB_POOL_SIZE*64*1024, 256,
 					      RADEON_GEM_DOMAIN_GTT, 0);
 	}
 	if (r) {
diff --git a/drivers/gpu/drm/radeon/radeon_object.h b/drivers/gpu/drm/radeon/radeon_object.h
index 0a6ef49e990a..b7c5087a7dbc 100644
--- a/drivers/gpu/drm/radeon/radeon_object.h
+++ b/drivers/gpu/drm/radeon/radeon_object.h
@@ -169,15 +169,22 @@ extern void radeon_bo_fence(struct radeon_bo *bo, struct radeon_fence *fence,
 /*
  * sub allocation
  */
+static inline struct radeon_sa_manager *
+to_radeon_sa_manager(struct drm_suballoc_manager *manager)
+{
+	return container_of(manager, struct radeon_sa_manager, base);
+}
 
-static inline uint64_t radeon_sa_bo_gpu_addr(struct radeon_sa_bo *sa_bo)
+static inline uint64_t radeon_sa_bo_gpu_addr(struct drm_suballoc *sa_bo)
 {
-	return sa_bo->manager->gpu_addr + sa_bo->soffset;
+	return to_radeon_sa_manager(sa_bo->manager)->gpu_addr +
+		drm_suballoc_soffset(sa_bo);
 }
 
-static inline void * radeon_sa_bo_cpu_addr(struct radeon_sa_bo *sa_bo)
+static inline void * radeon_sa_bo_cpu_addr(struct drm_suballoc *sa_bo)
 {
-	return sa_bo->manager->cpu_ptr + sa_bo->soffset;
+	return to_radeon_sa_manager(sa_bo->manager)->cpu_ptr +
+		drm_suballoc_soffset(sa_bo);
 }
 
 extern int radeon_sa_bo_manager_init(struct radeon_device *rdev,
@@ -190,12 +197,10 @@ extern int radeon_sa_bo_manager_start(struct radeon_device *rdev,
 				      struct radeon_sa_manager *sa_manager);
 extern int radeon_sa_bo_manager_suspend(struct radeon_device *rdev,
 					struct radeon_sa_manager *sa_manager);
-extern int radeon_sa_bo_new(struct radeon_device *rdev,
-			    struct radeon_sa_manager *sa_manager,
-			    struct radeon_sa_bo **sa_bo,
-			    unsigned size, unsigned align);
-extern void radeon_sa_bo_free(struct radeon_device *rdev,
-			      struct radeon_sa_bo **sa_bo,
+extern int radeon_sa_bo_new(struct radeon_sa_manager *sa_manager,
+			    struct drm_suballoc **sa_bo,
+			    unsigned size);
+extern void radeon_sa_bo_free(struct drm_suballoc **sa_bo,
 			      struct radeon_fence *fence);
 #if defined(CONFIG_DEBUG_FS)
 extern void radeon_sa_bo_dump_debug_info(struct radeon_sa_manager *sa_manager,
diff --git a/drivers/gpu/drm/radeon/radeon_sa.c b/drivers/gpu/drm/radeon/radeon_sa.c
index 0981948bd9ed..b5555750aa0d 100644
--- a/drivers/gpu/drm/radeon/radeon_sa.c
+++ b/drivers/gpu/drm/radeon/radeon_sa.c
@@ -44,53 +44,31 @@
 
 #include "radeon.h"
 
-static void radeon_sa_bo_remove_locked(struct radeon_sa_bo *sa_bo);
-static void radeon_sa_bo_try_free(struct radeon_sa_manager *sa_manager);
-
 int radeon_sa_bo_manager_init(struct radeon_device *rdev,
 			      struct radeon_sa_manager *sa_manager,
-			      unsigned size, u32 align, u32 domain, u32 flags)
+			      unsigned size, u32 sa_align, u32 domain, u32 flags)
 {
-	int i, r;
-
-	init_waitqueue_head(&sa_manager->wq);
-	sa_manager->bo = NULL;
-	sa_manager->size = size;
-	sa_manager->domain = domain;
-	sa_manager->align = align;
-	sa_manager->hole = &sa_manager->olist;
-	INIT_LIST_HEAD(&sa_manager->olist);
-	for (i = 0; i < RADEON_NUM_RINGS; ++i) {
-		INIT_LIST_HEAD(&sa_manager->flist[i]);
-	}
+	int r;
 
-	r = radeon_bo_create(rdev, size, align, true,
+	r = radeon_bo_create(rdev, size, RADEON_GPU_PAGE_SIZE, true,
 			     domain, flags, NULL, NULL, &sa_manager->bo);
 	if (r) {
 		dev_err(rdev->dev, "(%d) failed to allocate bo for manager\n", r);
 		return r;
 	}
 
+	sa_manager->domain = domain;
+
+	drm_suballoc_manager_init(&sa_manager->base, size, sa_align);
+
 	return r;
 }
 
 void radeon_sa_bo_manager_fini(struct radeon_device *rdev,
 			       struct radeon_sa_manager *sa_manager)
 {
-	struct radeon_sa_bo *sa_bo, *tmp;
-
-	if (!list_empty(&sa_manager->olist)) {
-		sa_manager->hole = &sa_manager->olist,
-		radeon_sa_bo_try_free(sa_manager);
-		if (!list_empty(&sa_manager->olist)) {
-			dev_err(rdev->dev, "sa_manager is not empty, clearing anyway\n");
-		}
-	}
-	list_for_each_entry_safe(sa_bo, tmp, &sa_manager->olist, olist) {
-		radeon_sa_bo_remove_locked(sa_bo);
-	}
+	drm_suballoc_manager_fini(&sa_manager->base);
 	radeon_bo_unref(&sa_manager->bo);
-	sa_manager->size = 0;
 }
 
 int radeon_sa_bo_manager_start(struct radeon_device *rdev,
@@ -139,260 +117,33 @@ int radeon_sa_bo_manager_suspend(struct radeon_device *rdev,
 	return r;
 }
 
-static void radeon_sa_bo_remove_locked(struct radeon_sa_bo *sa_bo)
+int radeon_sa_bo_new(struct radeon_sa_manager *sa_manager,
+		     struct drm_suballoc **sa_bo,
+		     unsigned size)
 {
-	struct radeon_sa_manager *sa_manager = sa_bo->manager;
-	if (sa_manager->hole == &sa_bo->olist) {
-		sa_manager->hole = sa_bo->olist.prev;
-	}
-	list_del_init(&sa_bo->olist);
-	list_del_init(&sa_bo->flist);
-	radeon_fence_unref(&sa_bo->fence);
-	kfree(sa_bo);
-}
-
-static void radeon_sa_bo_try_free(struct radeon_sa_manager *sa_manager)
-{
-	struct radeon_sa_bo *sa_bo, *tmp;
-
-	if (sa_manager->hole->next == &sa_manager->olist)
-		return;
+	struct drm_suballoc *sa = drm_suballoc_new(&sa_manager->base, size, GFP_KERNEL, true);
 
-	sa_bo = list_entry(sa_manager->hole->next, struct radeon_sa_bo, olist);
-	list_for_each_entry_safe_from(sa_bo, tmp, &sa_manager->olist, olist) {
-		if (sa_bo->fence == NULL || !radeon_fence_signaled(sa_bo->fence)) {
-			return;
-		}
-		radeon_sa_bo_remove_locked(sa_bo);
+	if (IS_ERR(sa)) {
+		*sa_bo = NULL;
+		return PTR_ERR(sa);
 	}
-}
 
-static inline unsigned radeon_sa_bo_hole_soffset(struct radeon_sa_manager *sa_manager)
-{
-	struct list_head *hole = sa_manager->hole;
-
-	if (hole != &sa_manager->olist) {
-		return list_entry(hole, struct radeon_sa_bo, olist)->eoffset;
-	}
+	*sa_bo = sa;
 	return 0;
 }
 
-static inline unsigned radeon_sa_bo_hole_eoffset(struct radeon_sa_manager *sa_manager)
-{
-	struct list_head *hole = sa_manager->hole;
-
-	if (hole->next != &sa_manager->olist) {
-		return list_entry(hole->next, struct radeon_sa_bo, olist)->soffset;
-	}
-	return sa_manager->size;
-}
-
-static bool radeon_sa_bo_try_alloc(struct radeon_sa_manager *sa_manager,
-				   struct radeon_sa_bo *sa_bo,
-				   unsigned size, unsigned align)
-{
-	unsigned soffset, eoffset, wasted;
-
-	soffset = radeon_sa_bo_hole_soffset(sa_manager);
-	eoffset = radeon_sa_bo_hole_eoffset(sa_manager);
-	wasted = (align - (soffset % align)) % align;
-
-	if ((eoffset - soffset) >= (size + wasted)) {
-		soffset += wasted;
-
-		sa_bo->manager = sa_manager;
-		sa_bo->soffset = soffset;
-		sa_bo->eoffset = soffset + size;
-		list_add(&sa_bo->olist, sa_manager->hole);
-		INIT_LIST_HEAD(&sa_bo->flist);
-		sa_manager->hole = &sa_bo->olist;
-		return true;
-	}
-	return false;
-}
-
-/**
- * radeon_sa_event - Check if we can stop waiting
- *
- * @sa_manager: pointer to the sa_manager
- * @size: number of bytes we want to allocate
- * @align: alignment we need to match
- *
- * Check if either there is a fence we can wait for or
- * enough free memory to satisfy the allocation directly
- */
-static bool radeon_sa_event(struct radeon_sa_manager *sa_manager,
-			    unsigned size, unsigned align)
-{
-	unsigned soffset, eoffset, wasted;
-	int i;
-
-	for (i = 0; i < RADEON_NUM_RINGS; ++i) {
-		if (!list_empty(&sa_manager->flist[i])) {
-			return true;
-		}
-	}
-
-	soffset = radeon_sa_bo_hole_soffset(sa_manager);
-	eoffset = radeon_sa_bo_hole_eoffset(sa_manager);
-	wasted = (align - (soffset % align)) % align;
-
-	if ((eoffset - soffset) >= (size + wasted)) {
-		return true;
-	}
-
-	return false;
-}
-
-static bool radeon_sa_bo_next_hole(struct radeon_sa_manager *sa_manager,
-				   struct radeon_fence **fences,
-				   unsigned *tries)
-{
-	struct radeon_sa_bo *best_bo = NULL;
-	unsigned i, soffset, best, tmp;
-
-	/* if hole points to the end of the buffer */
-	if (sa_manager->hole->next == &sa_manager->olist) {
-		/* try again with its beginning */
-		sa_manager->hole = &sa_manager->olist;
-		return true;
-	}
-
-	soffset = radeon_sa_bo_hole_soffset(sa_manager);
-	/* to handle wrap around we add sa_manager->size */
-	best = sa_manager->size * 2;
-	/* go over all fence list and try to find the closest sa_bo
-	 * of the current last
-	 */
-	for (i = 0; i < RADEON_NUM_RINGS; ++i) {
-		struct radeon_sa_bo *sa_bo;
-
-		fences[i] = NULL;
-
-		if (list_empty(&sa_manager->flist[i])) {
-			continue;
-		}
-
-		sa_bo = list_first_entry(&sa_manager->flist[i],
-					 struct radeon_sa_bo, flist);
-
-		if (!radeon_fence_signaled(sa_bo->fence)) {
-			fences[i] = sa_bo->fence;
-			continue;
-		}
-
-		/* limit the number of tries each ring gets */
-		if (tries[i] > 2) {
-			continue;
-		}
-
-		tmp = sa_bo->soffset;
-		if (tmp < soffset) {
-			/* wrap around, pretend it's after */
-			tmp += sa_manager->size;
-		}
-		tmp -= soffset;
-		if (tmp < best) {
-			/* this sa bo is the closest one */
-			best = tmp;
-			best_bo = sa_bo;
-		}
-	}
-
-	if (best_bo) {
-		++tries[best_bo->fence->ring];
-		sa_manager->hole = best_bo->olist.prev;
-
-		/* we knew that this one is signaled,
-		   so it's save to remote it */
-		radeon_sa_bo_remove_locked(best_bo);
-		return true;
-	}
-	return false;
-}
-
-int radeon_sa_bo_new(struct radeon_device *rdev,
-		     struct radeon_sa_manager *sa_manager,
-		     struct radeon_sa_bo **sa_bo,
-		     unsigned size, unsigned align)
-{
-	struct radeon_fence *fences[RADEON_NUM_RINGS];
-	unsigned tries[RADEON_NUM_RINGS];
-	int i, r;
-
-	BUG_ON(align > sa_manager->align);
-	BUG_ON(size > sa_manager->size);
-
-	*sa_bo = kmalloc(sizeof(struct radeon_sa_bo), GFP_KERNEL);
-	if ((*sa_bo) == NULL) {
-		return -ENOMEM;
-	}
-	(*sa_bo)->manager = sa_manager;
-	(*sa_bo)->fence = NULL;
-	INIT_LIST_HEAD(&(*sa_bo)->olist);
-	INIT_LIST_HEAD(&(*sa_bo)->flist);
-
-	spin_lock(&sa_manager->wq.lock);
-	do {
-		for (i = 0; i < RADEON_NUM_RINGS; ++i)
-			tries[i] = 0;
-
-		do {
-			radeon_sa_bo_try_free(sa_manager);
-
-			if (radeon_sa_bo_try_alloc(sa_manager, *sa_bo,
-						   size, align)) {
-				spin_unlock(&sa_manager->wq.lock);
-				return 0;
-			}
-
-			/* see if we can skip over some allocations */
-		} while (radeon_sa_bo_next_hole(sa_manager, fences, tries));
-
-		for (i = 0; i < RADEON_NUM_RINGS; ++i)
-			radeon_fence_ref(fences[i]);
-
-		spin_unlock(&sa_manager->wq.lock);
-		r = radeon_fence_wait_any(rdev, fences, false);
-		for (i = 0; i < RADEON_NUM_RINGS; ++i)
-			radeon_fence_unref(&fences[i]);
-		spin_lock(&sa_manager->wq.lock);
-		/* if we have nothing to wait for block */
-		if (r == -ENOENT) {
-			r = wait_event_interruptible_locked(
-				sa_manager->wq, 
-				radeon_sa_event(sa_manager, size, align)
-			);
-		}
-
-	} while (!r);
-
-	spin_unlock(&sa_manager->wq.lock);
-	kfree(*sa_bo);
-	*sa_bo = NULL;
-	return r;
-}
-
-void radeon_sa_bo_free(struct radeon_device *rdev, struct radeon_sa_bo **sa_bo,
+void radeon_sa_bo_free(struct drm_suballoc **sa_bo,
 		       struct radeon_fence *fence)
 {
-	struct radeon_sa_manager *sa_manager;
-
 	if (sa_bo == NULL || *sa_bo == NULL) {
 		return;
 	}
 
-	sa_manager = (*sa_bo)->manager;
-	spin_lock(&sa_manager->wq.lock);
-	if (fence && !radeon_fence_signaled(fence)) {
-		(*sa_bo)->fence = radeon_fence_ref(fence);
-		list_add_tail(&(*sa_bo)->flist,
-			      &sa_manager->flist[fence->ring]);
-	} else {
-		radeon_sa_bo_remove_locked(*sa_bo);
-	}
-	wake_up_all_locked(&sa_manager->wq);
-	spin_unlock(&sa_manager->wq.lock);
+	if (fence)
+		drm_suballoc_free(*sa_bo, &fence->base);
+	else
+		drm_suballoc_free(*sa_bo, NULL);
+
 	*sa_bo = NULL;
 }
 
@@ -400,25 +151,8 @@ void radeon_sa_bo_free(struct radeon_device *rdev, struct radeon_sa_bo **sa_bo,
 void radeon_sa_bo_dump_debug_info(struct radeon_sa_manager *sa_manager,
 				  struct seq_file *m)
 {
-	struct radeon_sa_bo *i;
+	struct drm_printer p = drm_seq_file_printer(m);
 
-	spin_lock(&sa_manager->wq.lock);
-	list_for_each_entry(i, &sa_manager->olist, olist) {
-		uint64_t soffset = i->soffset + sa_manager->gpu_addr;
-		uint64_t eoffset = i->eoffset + sa_manager->gpu_addr;
-		if (&i->olist == sa_manager->hole) {
-			seq_printf(m, ">");
-		} else {
-			seq_printf(m, " ");
-		}
-		seq_printf(m, "[0x%010llx 0x%010llx] size %8lld",
-			   soffset, eoffset, eoffset - soffset);
-		if (i->fence) {
-			seq_printf(m, " protected by 0x%016llx on ring %d",
-				   i->fence->seq, i->fence->ring);
-		}
-		seq_printf(m, "\n");
-	}
-	spin_unlock(&sa_manager->wq.lock);
+	drm_suballoc_dump_debug_info(&sa_manager->base, &p, sa_manager->gpu_addr);
 }
 #endif
diff --git a/drivers/gpu/drm/radeon/radeon_semaphore.c b/drivers/gpu/drm/radeon/radeon_semaphore.c
index 221e59476f64..3e2b0bf0d55d 100644
--- a/drivers/gpu/drm/radeon/radeon_semaphore.c
+++ b/drivers/gpu/drm/radeon/radeon_semaphore.c
@@ -40,8 +40,8 @@ int radeon_semaphore_create(struct radeon_device *rdev,
 	if (*semaphore == NULL) {
 		return -ENOMEM;
 	}
-	r = radeon_sa_bo_new(rdev, &rdev->ring_tmp_bo,
-			     &(*semaphore)->sa_bo, 8, 8);
+	r = radeon_sa_bo_new(&rdev->ring_tmp_bo,
+			     &(*semaphore)->sa_bo, 8);
 	if (r) {
 		kfree(*semaphore);
 		*semaphore = NULL;
@@ -100,7 +100,7 @@ void radeon_semaphore_free(struct radeon_device *rdev,
 		dev_err(rdev->dev, "semaphore %p has more waiters than signalers,"
 			" hardware lockup imminent!\n", *semaphore);
 	}
-	radeon_sa_bo_free(rdev, &(*semaphore)->sa_bo, fence);
+	radeon_sa_bo_free(&(*semaphore)->sa_bo, fence);
 	kfree(*semaphore);
 	*semaphore = NULL;
 }
-- 
2.37.3

