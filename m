Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 805805328E4
	for <lists+intel-gfx@lfdr.de>; Tue, 24 May 2022 13:25:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AF3510F7E4;
	Tue, 24 May 2022 11:25:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A59EE10F7E4
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 May 2022 11:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653391520; x=1684927520;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WLesugN5K0Btsy+ZAlM1adI149DGCbtcq82MzHmRYQw=;
 b=lsUaFYZVBNW6hx6J1ZGgVP/vfKHNYNPcoosANyNBwi8hQMC9V2GHQQ07
 ZqzkbQMRDVYi0ED+4/bZVJIO18OQ59BH6l20QB+Sjq5RVR22kU3irJhiN
 nI1CqKoXm6WweV0tXyMJYaIARJHgxsfSRPHJLp4VECT33Ogy8yig/9WZD
 bdVa5EmkQPwe8M39Gb9rfBd9uN0J4yeRfHI2v8AoJNg+Aw/KNsCmpE0P5
 8EImFw1Ex7gBqnrRbqv16yKJyG6iBmZ5U995yeiYRJfumHsSsk39XfFFv
 hfqWg6OyC2U2pgijt3jPAxEOnb+K8jQ4pNcMZBTvOLON670g9mLltzdQG w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10356"; a="272321472"
X-IronPort-AV: E=Sophos;i="5.91,248,1647327600"; d="scan'208";a="272321472"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2022 04:23:40 -0700
X-IronPort-AV: E=Sophos;i="5.91,248,1647327600"; d="scan'208";a="572582798"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2022 04:23:38 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 May 2022 13:23:32 +0200
Message-Id: <20220524112332.27284-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5] drm/i915: Individualize fences before adding
 to dma_resv obj
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

v5: remove double fence reservation for batch VMAs.
v4: Reserve fences for composite_fence on multi-batch contexts and
    also reserve fence slots to composite_fence for each VMAs.
v3: dma_resv_reserve_fences is not cumulative so pass num_fences.
v2: make sure to reserve enough fence slots before adding.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5614
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  3 +-
 drivers/gpu/drm/i915/i915_vma.c               | 47 +++++++++++--------
 2 files changed, 29 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index b279588c0672..8880d38d36b6 100644
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

