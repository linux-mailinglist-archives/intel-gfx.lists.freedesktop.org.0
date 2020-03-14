Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75ABC1855B8
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Mar 2020 13:21:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 442FE6E2B6;
	Sat, 14 Mar 2020 12:21:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BAD8892D3
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Mar 2020 12:21:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20559229-1500050 
 for multiple; Sat, 14 Mar 2020 12:20:58 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 14 Mar 2020 12:20:55 +0000
Message-Id: <20200314122058.21472-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200314122058.21472-1-chris@chris-wilson.co.uk>
References: <20200314122058.21472-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/gt: Allocate i915_fence_reg array
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since the number of fence regs can vary dramactically between platforms,
allocate the array on demand so we don't waste as much space.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c         |  6 ++++--
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c | 10 ++++++++++
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h |  1 +
 drivers/gpu/drm/i915/gt/intel_gtt.h          |  5 +++--
 drivers/gpu/drm/i915/i915_vma.h              |  1 +
 5 files changed, 19 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index bde4f64a41f7..8fcf14372d7a 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -698,11 +698,13 @@ static void ggtt_cleanup_hw(struct i915_ggtt *ggtt)
  */
 void i915_ggtt_driver_release(struct drm_i915_private *i915)
 {
+	struct i915_ggtt *ggtt = &i915->ggtt;
 	struct pagevec *pvec;
 
-	fini_aliasing_ppgtt(&i915->ggtt);
+	fini_aliasing_ppgtt(ggtt);
 
-	ggtt_cleanup_hw(&i915->ggtt);
+	intel_ggtt_fini_fences(ggtt);
+	ggtt_cleanup_hw(ggtt);
 
 	pvec = &i915->mm.wc_stash.pvec;
 	if (pvec->nr) {
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index 94af75673a58..b6ba68c42546 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -857,6 +857,11 @@ void intel_ggtt_init_fences(struct i915_ggtt *ggtt)
 	if (intel_vgpu_active(i915))
 		num_fences = intel_uncore_read(uncore,
 					       vgtif_reg(avail_rs.fence_num));
+	ggtt->fence_regs = kcalloc(num_fences,
+				   sizeof(*ggtt->fence_regs),
+				   GFP_KERNEL);
+	if (!ggtt->fence_regs)
+		num_fences = 0;
 
 	/* Initialize fence registers to zero */
 	for (i = 0; i < num_fences; i++) {
@@ -871,6 +876,11 @@ void intel_ggtt_init_fences(struct i915_ggtt *ggtt)
 	intel_ggtt_restore_fences(ggtt);
 }
 
+void intel_ggtt_fini_fences(struct i915_ggtt *ggtt)
+{
+	kfree(ggtt->fence_regs);
+}
+
 void intel_gt_init_swizzling(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
index 3b3eb5bf1b75..9850f6a85d2a 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
@@ -64,6 +64,7 @@ void i915_gem_object_save_bit_17_swizzle(struct drm_i915_gem_object *obj,
 					 struct sg_table *pages);
 
 void intel_ggtt_init_fences(struct i915_ggtt *ggtt);
+void intel_ggtt_fini_fences(struct i915_ggtt *ggtt);
 
 void intel_gt_init_swizzling(struct intel_gt *gt);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index ce6ff9d3a350..d93ebdf3fa0e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -26,7 +26,6 @@
 #include <drm/drm_mm.h>
 
 #include "gt/intel_reset.h"
-#include "gt/intel_ggtt_fencing.h"
 #include "i915_selftest.h"
 #include "i915_vma_types.h"
 
@@ -135,6 +134,8 @@ typedef u64 gen8_pte_t;
 #define GEN8_PDE_IPS_64K BIT(11)
 #define GEN8_PDE_PS_2M   BIT(7)
 
+struct i915_fence_reg;
+
 #define for_each_sgt_daddr(__dp, __iter, __sgt) \
 	__for_each_sgt_daddr(__dp, __iter, __sgt, I915_GTT_PAGE_SIZE)
 
@@ -333,7 +334,7 @@ struct i915_ggtt {
 	u32 pin_bias;
 
 	unsigned int num_fences;
-	struct i915_fence_reg fence_regs[I915_MAX_NUM_FENCES];
+	struct i915_fence_reg *fence_regs;
 	struct list_head fence_list;
 
 	/**
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 2764c277326f..b958ad07f212 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -30,6 +30,7 @@
 
 #include <drm/drm_mm.h>
 
+#include "gt/intel_ggtt_fencing.h"
 #include "gem/i915_gem_object.h"
 
 #include "i915_gem_gtt.h"
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
