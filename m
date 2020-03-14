Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4403F1855B5
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Mar 2020 13:21:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50D356E25C;
	Sat, 14 Mar 2020 12:21:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FC0E89EFF
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Mar 2020 12:21:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20559230-1500050 
 for multiple; Sat, 14 Mar 2020 12:20:59 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 14 Mar 2020 12:20:56 +0000
Message-Id: <20200314122058.21472-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200314122058.21472-1-chris@chris-wilson.co.uk>
References: <20200314122058.21472-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/7] drm/i915/gt: Store the fence details on the
 fence
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
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c | 18 ++++++++++--------
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h |  2 ++
 2 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index b6ba68c42546..51984cee18b3 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -88,7 +88,7 @@ static void i965_write_fence_reg(struct i915_fence_reg *fence,
 
 	val = 0;
 	if (vma) {
-		unsigned int stride = i915_gem_object_get_stride(vma->obj);
+		unsigned int stride = fence->stride;
 
 		GEM_BUG_ON(!i915_vma_is_map_and_fenceable(vma));
 		GEM_BUG_ON(!IS_ALIGNED(vma->node.start, I965_FENCE_PAGE));
@@ -98,7 +98,7 @@ static void i965_write_fence_reg(struct i915_fence_reg *fence,
 		val = (vma->node.start + vma->fence_size - I965_FENCE_PAGE) << 32;
 		val |= vma->node.start;
 		val |= (u64)((stride / 128) - 1) << fence_pitch_shift;
-		if (i915_gem_object_get_tiling(vma->obj) == I915_TILING_Y)
+		if (fence->tiling == I915_TILING_Y)
 			val |= BIT(I965_FENCE_TILING_Y_SHIFT);
 		val |= I965_FENCE_REG_VALID;
 	}
@@ -132,9 +132,9 @@ static void i915_write_fence_reg(struct i915_fence_reg *fence,
 
 	val = 0;
 	if (vma) {
-		unsigned int tiling = i915_gem_object_get_tiling(vma->obj);
+		unsigned int stride = fence->stride;
+		unsigned int tiling = fence->tiling;
 		bool is_y_tiled = tiling == I915_TILING_Y;
-		unsigned int stride = i915_gem_object_get_stride(vma->obj);
 
 		GEM_BUG_ON(!i915_vma_is_map_and_fenceable(vma));
 		GEM_BUG_ON(vma->node.start & ~I915_FENCE_START_MASK);
@@ -172,7 +172,7 @@ static void i830_write_fence_reg(struct i915_fence_reg *fence,
 
 	val = 0;
 	if (vma) {
-		unsigned int stride = i915_gem_object_get_stride(vma->obj);
+		unsigned int stride = fence->stride;
 
 		GEM_BUG_ON(!i915_vma_is_map_and_fenceable(vma));
 		GEM_BUG_ON(vma->node.start & ~I830_FENCE_START_MASK);
@@ -181,7 +181,7 @@ static void i830_write_fence_reg(struct i915_fence_reg *fence,
 		GEM_BUG_ON(!IS_ALIGNED(vma->node.start, vma->fence_size));
 
 		val = vma->node.start;
-		if (i915_gem_object_get_tiling(vma->obj) == I915_TILING_Y)
+		if (fence->tiling == I915_TILING_Y)
 			val |= BIT(I830_FENCE_TILING_Y_SHIFT);
 		val |= I830_FENCE_SIZE_BITS(vma->fence_size);
 		val |= ilog2(stride / 128) << I830_FENCE_PITCH_SHIFT;
@@ -219,8 +219,6 @@ static void fence_write(struct i915_fence_reg *fence,
 	 * Access through the fenced region afterwards is
 	 * ordered by the posting reads whilst writing the registers.
 	 */
-
-	fence->dirty = false;
 }
 
 static int fence_update(struct i915_fence_reg *fence,
@@ -240,6 +238,10 @@ static int fence_update(struct i915_fence_reg *fence,
 		ret = i915_vma_sync(vma);
 		if (ret)
 			return ret;
+
+		fence->stride = i915_gem_object_get_stride(vma->obj);
+		fence->tiling = i915_gem_object_get_tiling(vma->obj);
+		WRITE_ONCE(fence->dirty, false);
 	}
 
 	old = xchg(&fence->vma, NULL);
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
index 9850f6a85d2a..ad3acc9b7f37 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
@@ -51,6 +51,8 @@ struct i915_fence_reg {
 	 * command (such as BLT on gen2/3), as a "fence".
 	 */
 	bool dirty;
+	unsigned int stride;
+	unsigned int tiling;
 };
 
 struct i915_fence_reg *i915_reserve_fence(struct i915_ggtt *ggtt);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
