Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB5D53287D
	for <lists+intel-gfx@lfdr.de>; Tue, 24 May 2022 13:05:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2A2910EF53;
	Tue, 24 May 2022 11:05:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6783010EF4C
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 May 2022 11:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653390309; x=1684926309;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=daZtR50XIQkpVL27VKf1PjAPNX1b1CIHqPQJ87J6GHQ=;
 b=FsCByO22gcw/DJjKJ46chf7VbOtGLNYGE6tUzUnbyaEFMO4Ljn1vL4UL
 wQO2PvwUo9Gd4pxeKndV+1yUgwueg/3N+xIyJWma7iYvARkYzeknkLb68
 syYOK1gBxeyhLm1+LGBDdO/uvui718gj5TpVZFGr4Kk/p4h28QvGTy0TR
 d7MRUqgGg/5rpI5auLGKVfn3VHREQa7vr74rZo7+qikMVZG4V4nxHj8sI
 yNm9yIrMEkPoeZMJLq9RVFkASGU8rRB0a6uPoP34YX1zk+x0x393uUs50
 /7+So5K4zpAVa8IGozDNEiN5Hw19M1eYXNMXFsvZHhEIYebufveV2jUmA A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10356"; a="298816304"
X-IronPort-AV: E=Sophos;i="5.91,248,1647327600"; d="scan'208";a="298816304"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2022 04:05:08 -0700
X-IronPort-AV: E=Sophos;i="5.91,248,1647327600"; d="scan'208";a="601172721"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2022 04:05:06 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 May 2022 13:05:00 +0200
Message-Id: <20220524110500.26630-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Individualize fences before adding to
 dma_resv obj
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
Cc: thomas.hellstrom@intel.com, matthew.auld@intel.com,
 chris.p.wilson@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

_i915_vma_move_to_active() can receive > 1 fences for
multiple batch buffers submission. Because dma_resv_add_fence()
can only accept one fence at a time, change _i915_vma_move_to_active()
to be aware of multiple fences so that it can add individual
fences to the dma resv object.

v4: Reserve fences for composite_fence on multi-batch contexts and
    also reserve fence slots to composite_fence for each VMAs.
v3: dma_resv_reserve_fences is not cumulative so pass num_fences.
v2: make sure to reserve enough fence slots before adding.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5614
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 10 +++-
 drivers/gpu/drm/i915/i915_vma.c               | 47 +++++++++++--------
 2 files changed, 36 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index b279588c0672..56539f7b0978 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1010,7 +1010,8 @@ static int eb_validate_vmas(struct i915_execbuffer *eb)
 			}
 		}
 
-		err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
+		/* Reserve enough slots to accommodate composite fences */
+		err = dma_resv_reserve_fences(vma->obj->base.resv, eb->num_batches);
 		if (err)
 			return err;
 
@@ -3146,6 +3147,7 @@ eb_composite_fence_create(struct i915_execbuffer *eb, int out_fence_fd)
 	struct dma_fence_array *fence_array;
 	struct dma_fence **fences;
 	unsigned int i;
+	int err;
 
 	GEM_BUG_ON(!intel_context_is_parent(eb->context));
 
@@ -3154,6 +3156,12 @@ eb_composite_fence_create(struct i915_execbuffer *eb, int out_fence_fd)
 		return ERR_PTR(-ENOMEM);
 
 	for_each_batch_create_order(eb, i) {
+		err = dma_resv_reserve_fences(eb->batches[i]->vma->obj->base.resv, eb->num_batches);
+		if (err) {
+			kfree(fences);
+			return ERR_PTR(err);
+		}
+
 		fences[i] = &eb->requests[i]->fence;
 		__set_bit(I915_FENCE_FLAG_COMPOSITE,
 			  &eb->requests[i]->fence.flags);
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 4f6db539571a..4a5222fc3a4a 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -23,6 +23,7 @@
  */
 
 #include <linux/sched/mm.h>
+#include <linux/dma-fence-array.h>
 #include <drm/drm_gem.h>
 
 #include "display/intel_frontbuffer.h"
@@ -1823,6 +1824,20 @@ int _i915_vma_move_to_active(struct i915_vma *vma,
 	if (unlikely(err))
 		return err;
 
+	/* Reserve fences slot early to prevent an allocation after preparing
+	 * the workload and associating fences with dma_resv.
+	 */
+	if (fence && !(flags & __EXEC_OBJECT_NO_RESERVE)) {
+		struct dma_fence *curr;
+		int idx;
+
+		dma_fence_array_for_each(curr, idx, fence)
+			;
+		err = dma_resv_reserve_fences(vma->obj->base.resv, idx);
+		if (unlikely(err))
+			return err;
+	}
+
 	if (flags & EXEC_OBJECT_WRITE) {
 		struct intel_frontbuffer *front;
 
@@ -1832,31 +1847,23 @@ int _i915_vma_move_to_active(struct i915_vma *vma,
 				i915_active_add_request(&front->write, rq);
 			intel_frontbuffer_put(front);
 		}
+	}
 
-		if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
-			err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
-			if (unlikely(err))
-				return err;
-		}
+	if (fence) {
+		struct dma_fence *curr;
+		enum dma_resv_usage usage;
+		int idx;
 
-		if (fence) {
-			dma_resv_add_fence(vma->obj->base.resv, fence,
-					   DMA_RESV_USAGE_WRITE);
+		obj->read_domains = 0;
+		if (flags & EXEC_OBJECT_WRITE) {
+			usage = DMA_RESV_USAGE_WRITE;
 			obj->write_domain = I915_GEM_DOMAIN_RENDER;
-			obj->read_domains = 0;
-		}
-	} else {
-		if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
-			err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
-			if (unlikely(err))
-				return err;
+		} else {
+			usage = DMA_RESV_USAGE_READ;
 		}
 
-		if (fence) {
-			dma_resv_add_fence(vma->obj->base.resv, fence,
-					   DMA_RESV_USAGE_READ);
-			obj->write_domain = 0;
-		}
+		dma_fence_array_for_each(curr, idx, fence)
+			dma_resv_add_fence(vma->obj->base.resv, curr, usage);
 	}
 
 	if (flags & EXEC_OBJECT_NEEDS_FENCE && vma->fence)
-- 
2.35.1

