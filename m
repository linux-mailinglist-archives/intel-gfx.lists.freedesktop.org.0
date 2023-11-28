Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1B17FBF43
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 17:36:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 783F610E09E;
	Tue, 28 Nov 2023 16:35:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DE8F10E09E
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 16:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701189356; x=1732725356;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9SrxUWHEcANDl1VQ3ue6CLTe54KeMhhuOKOIPLej3W8=;
 b=SIzP0AJkiVq4gfo500a9/00nHHrMKAx3Q9Q8kz8/GSafB8ATY6ps9sg/
 MwHV5frkpYSu9YVwozVm96JJxaChNroEZCj9Jsa8JDIUsyCU8W6Jf8HHK
 GjKX8Fx7XzW+g6DVV/latriu5VFq3LQJt4mElG0qH87VtwVnpUQoBeLEx
 QMQDPg/ooab3k3hFcHjMC2mLzw7x48spFxYUC3AkS90NSyy3jXFCJNlTX
 uURu0Ft0GCPSLuoCkSH6yVNVgwwob455GOE9uZ6I7olpBVuD0rsyK/Ena
 hVYZuMuKN8qVubl+QAMkmnBNPEPBvGqLt4enA0VweSdtMbo+/7zsFJwAg w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="457288356"
X-IronPort-AV: E=Sophos;i="6.04,234,1695711600"; d="scan'208";a="457288356"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 08:35:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="718442857"
X-IronPort-AV: E=Sophos;i="6.04,234,1695711600"; d="scan'208";a="718442857"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 08:35:56 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Nov 2023 08:25:05 -0800
Message-Id: <20231128162505.3493942-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Atomically invalidate userptr on
 mmu-notifier
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
Cc: saurabhg.gupta@intel.com, jonathan.cavitt@intel.com,
 chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Never block for outstanding work on userptr object upon receipt of a
mmu-notifier. The reason we originally did so was to immediately unbind
the userptr and unpin its pages, but since that has been dropped in
commit b4b9731b02c3c ("drm/i915: Simplify userptr locking"), we never
return the pages to the system i.e. never drop our page->mapcount and so
do not allow the page and CPU PTE to be revoked. Based on this history,
we know we are safe to drop the wait entirely.

Upon return from mmu-notifier, we will still have the userptr pages
pinned preventing the following PTE operation (such as try_to_unmap)
adjusting the vm_area_struct, so it is safe to keep the pages around for
as long as we still have i/o pending.

We do not have any means currently to asynchronously revalidate the
userptr pages, that is always prior to next use.

Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  8 ----
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c   | 42 -------------------
 drivers/gpu/drm/i915/gem/i915_gem_userptr.h   | 14 -------
 drivers/gpu/drm/i915/i915_drv.h               |  8 ----
 drivers/gpu/drm/i915/i915_gem.c               |  5 ---
 5 files changed, 77 deletions(-)
 delete mode 100644 drivers/gpu/drm/i915/gem/i915_gem_userptr.h

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index b1aa62dfb155d..eff601389ef85 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2159,12 +2159,6 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 
 #ifdef CONFIG_MMU_NOTIFIER
 	if (!err && (eb->args->flags & __EXEC_USERPTR_USED)) {
-		read_lock(&eb->i915->mm.notifier_lock);
-
-		/*
-		 * count is always at least 1, otherwise __EXEC_USERPTR_USED
-		 * could not have been set
-		 */
 		for (i = 0; i < count; i++) {
 			struct eb_vma *ev = &eb->vma[i];
 			struct drm_i915_gem_object *obj = ev->vma->obj;
@@ -2176,8 +2170,6 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 			if (err)
 				break;
 		}
-
-		read_unlock(&eb->i915->mm.notifier_lock);
 	}
 #endif
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 1d3ebdf4069b5..0e21ce9d3e5ac 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -42,7 +42,6 @@
 #include "i915_drv.h"
 #include "i915_gem_ioctls.h"
 #include "i915_gem_object.h"
-#include "i915_gem_userptr.h"
 #include "i915_scatterlist.h"
 
 #ifdef CONFIG_MMU_NOTIFIER
@@ -61,36 +60,7 @@ static bool i915_gem_userptr_invalidate(struct mmu_interval_notifier *mni,
 					const struct mmu_notifier_range *range,
 					unsigned long cur_seq)
 {
-	struct drm_i915_gem_object *obj = container_of(mni, struct drm_i915_gem_object, userptr.notifier);
-	struct drm_i915_private *i915 = to_i915(obj->base.dev);
-	long r;
-
-	if (!mmu_notifier_range_blockable(range))
-		return false;
-
-	write_lock(&i915->mm.notifier_lock);
-
 	mmu_interval_set_seq(mni, cur_seq);
-
-	write_unlock(&i915->mm.notifier_lock);
-
-	/*
-	 * We don't wait when the process is exiting. This is valid
-	 * because the object will be cleaned up anyway.
-	 *
-	 * This is also temporarily required as a hack, because we
-	 * cannot currently force non-consistent batch buffers to preempt
-	 * and reschedule by waiting on it, hanging processes on exit.
-	 */
-	if (current->flags & PF_EXITING)
-		return true;
-
-	/* we will unbind on next submission, still have userptr pins */
-	r = dma_resv_wait_timeout(obj->base.resv, DMA_RESV_USAGE_BOOKKEEP, false,
-				  MAX_SCHEDULE_TIMEOUT);
-	if (r <= 0)
-		drm_err(&i915->drm, "(%ld) failed to wait for idle\n", r);
-
 	return true;
 }
 
@@ -580,15 +550,3 @@ i915_gem_userptr_ioctl(struct drm_device *dev,
 #endif
 }
 
-int i915_gem_init_userptr(struct drm_i915_private *dev_priv)
-{
-#ifdef CONFIG_MMU_NOTIFIER
-	rwlock_init(&dev_priv->mm.notifier_lock);
-#endif
-
-	return 0;
-}
-
-void i915_gem_cleanup_userptr(struct drm_i915_private *dev_priv)
-{
-}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.h b/drivers/gpu/drm/i915/gem/i915_gem_userptr.h
deleted file mode 100644
index 8dadb2f8436d4..0000000000000
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.h
+++ /dev/null
@@ -1,14 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2021 Intel Corporation
- */
-
-#ifndef __I915_GEM_USERPTR_H__
-#define __I915_GEM_USERPTR_H__
-
-struct drm_i915_private;
-
-int i915_gem_init_userptr(struct drm_i915_private *dev_priv);
-void i915_gem_cleanup_userptr(struct drm_i915_private *dev_priv);
-
-#endif /* __I915_GEM_USERPTR_H__ */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 861567362abd1..e81b3b2858acc 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -165,14 +165,6 @@ struct i915_gem_mm {
 	struct notifier_block vmap_notifier;
 	struct shrinker *shrinker;
 
-#ifdef CONFIG_MMU_NOTIFIER
-	/**
-	 * notifier_lock for mmu notifiers, memory may not be allocated
-	 * while holding this lock.
-	 */
-	rwlock_t notifier_lock;
-#endif
-
 	/* shrinker accounting, also useful for userland debugging */
 	u64 shrink_memory;
 	u32 shrink_count;
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 92758b6b41f01..1391c01d7663e 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -48,7 +48,6 @@
 #include "gem/i915_gem_object_frontbuffer.h"
 #include "gem/i915_gem_pm.h"
 #include "gem/i915_gem_region.h"
-#include "gem/i915_gem_userptr.h"
 #include "gt/intel_engine_user.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
@@ -1165,10 +1164,6 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 	if (intel_vgpu_active(dev_priv) && !intel_vgpu_has_huge_gtt(dev_priv))
 		RUNTIME_INFO(dev_priv)->page_sizes = I915_GTT_PAGE_SIZE_4K;
 
-	ret = i915_gem_init_userptr(dev_priv);
-	if (ret)
-		return ret;
-
 	for_each_gt(gt, dev_priv, i) {
 		intel_uc_fetch_firmwares(&gt->uc);
 		intel_wopcm_init(&gt->wopcm);
-- 
2.25.1

