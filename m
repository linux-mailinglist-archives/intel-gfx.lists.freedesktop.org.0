Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F77186A45
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 12:42:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B2D66E420;
	Mon, 16 Mar 2020 11:42:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 643C26E419
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 11:42:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20574773-1500050 
 for multiple; Mon, 16 Mar 2020 11:42:37 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Mar 2020 11:42:28 +0000
Message-Id: <20200316114237.5436-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200316114237.5436-1-chris@chris-wilson.co.uk>
References: <20200316114237.5436-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/15] drm/i915/gt: Store the fence details on
 the fence
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

Make a copy of the object tiling parameters at the point of grabbing the
fence.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c | 93 +++++++-------------
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h |  4 +
 2 files changed, 37 insertions(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index 495ad8b2cab0..1b9adae1a7a8 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -68,8 +68,7 @@ static struct intel_uncore *fence_to_uncore(struct i915_fence_reg *fence)
 	return fence->ggtt->vm.gt->uncore;
 }
 
-static void i965_write_fence_reg(struct i915_fence_reg *fence,
-				 struct i915_vma *vma)
+static void i965_write_fence_reg(struct i915_fence_reg *fence)
 {
 	i915_reg_t fence_reg_lo, fence_reg_hi;
 	int fence_pitch_shift;
@@ -87,18 +86,16 @@ static void i965_write_fence_reg(struct i915_fence_reg *fence,
 	}
 
 	val = 0;
-	if (vma) {
-		unsigned int stride = i915_gem_object_get_stride(vma->obj);
+	if (fence->tiling) {
+		unsigned int stride = fence->stride;
 
-		GEM_BUG_ON(!i915_vma_is_map_and_fenceable(vma));
-		GEM_BUG_ON(!IS_ALIGNED(vma->node.start, I965_FENCE_PAGE));
-		GEM_BUG_ON(!IS_ALIGNED(vma->fence_size, I965_FENCE_PAGE));
 		GEM_BUG_ON(!IS_ALIGNED(stride, 128));
 
-		val = (vma->node.start + vma->fence_size - I965_FENCE_PAGE) << 32;
-		val |= vma->node.start;
+		val = fence->start + fence->size - I965_FENCE_PAGE;
+		val <<= 32;
+		val |= fence->start;
 		val |= (u64)((stride / 128) - 1) << fence_pitch_shift;
-		if (i915_gem_object_get_tiling(vma->obj) == I915_TILING_Y)
+		if (fence->tiling == I915_TILING_Y)
 			val |= BIT(I965_FENCE_TILING_Y_SHIFT);
 		val |= I965_FENCE_REG_VALID;
 	}
@@ -125,21 +122,15 @@ static void i965_write_fence_reg(struct i915_fence_reg *fence,
 	}
 }
 
-static void i915_write_fence_reg(struct i915_fence_reg *fence,
-				 struct i915_vma *vma)
+static void i915_write_fence_reg(struct i915_fence_reg *fence)
 {
 	u32 val;
 
 	val = 0;
-	if (vma) {
-		unsigned int tiling = i915_gem_object_get_tiling(vma->obj);
+	if (fence->tiling) {
+		unsigned int stride = fence->stride;
+		unsigned int tiling = fence->tiling;
 		bool is_y_tiled = tiling == I915_TILING_Y;
-		unsigned int stride = i915_gem_object_get_stride(vma->obj);
-
-		GEM_BUG_ON(!i915_vma_is_map_and_fenceable(vma));
-		GEM_BUG_ON(vma->node.start & ~I915_FENCE_START_MASK);
-		GEM_BUG_ON(!is_power_of_2(vma->fence_size));
-		GEM_BUG_ON(!IS_ALIGNED(vma->node.start, vma->fence_size));
 
 		if (is_y_tiled && HAS_128_BYTE_Y_TILING(fence_to_i915(fence)))
 			stride /= 128;
@@ -147,10 +138,10 @@ static void i915_write_fence_reg(struct i915_fence_reg *fence,
 			stride /= 512;
 		GEM_BUG_ON(!is_power_of_2(stride));
 
-		val = vma->node.start;
+		val = fence->start;
 		if (is_y_tiled)
 			val |= BIT(I830_FENCE_TILING_Y_SHIFT);
-		val |= I915_FENCE_SIZE_BITS(vma->fence_size);
+		val |= I915_FENCE_SIZE_BITS(fence->size);
 		val |= ilog2(stride) << I830_FENCE_PITCH_SHIFT;
 
 		val |= I830_FENCE_REG_VALID;
@@ -165,25 +156,18 @@ static void i915_write_fence_reg(struct i915_fence_reg *fence,
 	}
 }
 
-static void i830_write_fence_reg(struct i915_fence_reg *fence,
-				 struct i915_vma *vma)
+static void i830_write_fence_reg(struct i915_fence_reg *fence)
 {
 	u32 val;
 
 	val = 0;
-	if (vma) {
-		unsigned int stride = i915_gem_object_get_stride(vma->obj);
-
-		GEM_BUG_ON(!i915_vma_is_map_and_fenceable(vma));
-		GEM_BUG_ON(vma->node.start & ~I830_FENCE_START_MASK);
-		GEM_BUG_ON(!is_power_of_2(vma->fence_size));
-		GEM_BUG_ON(!is_power_of_2(stride / 128));
-		GEM_BUG_ON(!IS_ALIGNED(vma->node.start, vma->fence_size));
+	if (fence->tiling) {
+		unsigned int stride = fence->stride;
 
-		val = vma->node.start;
-		if (i915_gem_object_get_tiling(vma->obj) == I915_TILING_Y)
+		val = fence->start;
+		if (fence->tiling == I915_TILING_Y)
 			val |= BIT(I830_FENCE_TILING_Y_SHIFT);
-		val |= I830_FENCE_SIZE_BITS(vma->fence_size);
+		val |= I830_FENCE_SIZE_BITS(fence->size);
 		val |= ilog2(stride / 128) << I830_FENCE_PITCH_SHIFT;
 		val |= I830_FENCE_REG_VALID;
 	}
@@ -197,8 +181,7 @@ static void i830_write_fence_reg(struct i915_fence_reg *fence,
 	}
 }
 
-static void fence_write(struct i915_fence_reg *fence,
-			struct i915_vma *vma)
+static void fence_write(struct i915_fence_reg *fence)
 {
 	struct drm_i915_private *i915 = fence_to_i915(fence);
 
@@ -209,18 +192,16 @@ static void fence_write(struct i915_fence_reg *fence,
 	 */
 
 	if (IS_GEN(i915, 2))
-		i830_write_fence_reg(fence, vma);
+		i830_write_fence_reg(fence);
 	else if (IS_GEN(i915, 3))
-		i915_write_fence_reg(fence, vma);
+		i915_write_fence_reg(fence);
 	else
-		i965_write_fence_reg(fence, vma);
+		i965_write_fence_reg(fence);
 
 	/*
 	 * Access through the fenced region afterwards is
 	 * ordered by the posting reads whilst writing the registers.
 	 */
-
-	fence->dirty = false;
 }
 
 static int fence_update(struct i915_fence_reg *fence,
@@ -232,6 +213,7 @@ static int fence_update(struct i915_fence_reg *fence,
 	struct i915_vma *old;
 	int ret;
 
+	fence->tiling = 0;
 	if (vma) {
 		GEM_BUG_ON(!i915_vma_is_map_and_fenceable(vma));
 		GEM_BUG_ON(!i915_gem_object_get_stride(vma->obj) ||
@@ -243,7 +225,13 @@ static int fence_update(struct i915_fence_reg *fence,
 			if (ret)
 				return ret;
 		}
+
+		fence->start = vma->node.start;
+		fence->size = vma->fence_size;
+		fence->stride = i915_gem_object_get_stride(vma->obj);
+		fence->tiling = i915_gem_object_get_tiling(vma->obj);
 	}
+	WRITE_ONCE(fence->dirty, false);
 
 	old = xchg(&fence->vma, NULL);
 	if (old) {
@@ -286,7 +274,7 @@ static int fence_update(struct i915_fence_reg *fence,
 	}
 
 	WRITE_ONCE(fence->vma, vma);
-	fence_write(fence, vma);
+	fence_write(fence);
 
 	if (vma) {
 		vma->fence = fence;
@@ -494,23 +482,8 @@ void intel_ggtt_restore_fences(struct i915_ggtt *ggtt)
 {
 	int i;
 
-	rcu_read_lock(); /* keep obj alive as we dereference */
-	for (i = 0; i < ggtt->num_fences; i++) {
-		struct i915_fence_reg *reg = &ggtt->fence_regs[i];
-		struct i915_vma *vma = READ_ONCE(reg->vma);
-
-		GEM_BUG_ON(vma && vma->fence != reg);
-
-		/*
-		 * Commit delayed tiling changes if we have an object still
-		 * attached to the fence, otherwise just clear the fence.
-		 */
-		if (vma && !i915_gem_object_is_tiled(vma->obj))
-			vma = NULL;
-
-		fence_write(reg, vma);
-	}
-	rcu_read_unlock();
+	for (i = 0; i < ggtt->num_fences; i++)
+		fence_write(&ggtt->fence_regs[i]);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
index 08c6bb667581..9eef679e1311 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
@@ -54,6 +54,10 @@ struct i915_fence_reg {
 	 * command (such as BLT on gen2/3), as a "fence".
 	 */
 	bool dirty;
+	u32 start;
+	u32 size;
+	u32 tiling;
+	u32 stride;
 };
 
 struct i915_fence_reg *i915_reserve_fence(struct i915_ggtt *ggtt);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
