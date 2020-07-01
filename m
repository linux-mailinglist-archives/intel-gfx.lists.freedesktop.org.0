Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C10210680
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 10:41:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3FA36E451;
	Wed,  1 Jul 2020 08:41:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6A206E44E
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 08:41:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21671957-1500050 
 for multiple; Wed, 01 Jul 2020 09:41:03 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 09:40:49 +0100
Message-Id: <20200701084053.6086-29-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200701084053.6086-1-chris@chris-wilson.co.uk>
References: <20200701084053.6086-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 29/33] drm/i915/gt: Support creation of
 'internal' rings
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

To support legacy ring buffer scheduling, we want a virtual ringbuffer
for each client. These rings are purely for holding the requests as they
are being constructed on the CPU and never accessed by the GPU, so they
should not be bound into the GGTT, and we can use plain old WB mapped
pages.

As they are not bound, we need to nerf a few assumptions that a rq->ring
is in the GGTT.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_context.c    |  2 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c  | 17 ++----
 drivers/gpu/drm/i915/gt/intel_ring.c       | 63 ++++++++++++++--------
 drivers/gpu/drm/i915/gt/intel_ring.h       | 12 ++++-
 drivers/gpu/drm/i915/gt/intel_ring_types.h |  2 +
 5 files changed, 57 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index e4aece20bc80..fd71977c010a 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -127,7 +127,7 @@ int __intel_context_do_pin(struct intel_context *ce)
 			goto err_active;
 
 		CE_TRACE(ce, "pin ring:{start:%08x, head:%04x, tail:%04x}\n",
-			 i915_ggtt_offset(ce->ring->vma),
+			 intel_ring_address(ce->ring),
 			 ce->ring->head, ce->ring->tail);
 
 		smp_mb__before_atomic(); /* flush pin before it is visible */
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 413d8393b989..a5e83c115b23 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1267,7 +1267,7 @@ static int print_ring(char *buf, int sz, struct i915_request *rq)
 
 		len = scnprintf(buf, sz,
 				"ring:{start:%08x, hwsp:%08x, seqno:%08x, runtime:%llums}, ",
-				i915_ggtt_offset(rq->ring->vma),
+				intel_ring_address(rq->ring),
 				tl ? tl->hwsp_offset : 0,
 				hwsp_seqno(rq),
 				DIV_ROUND_CLOSEST_ULL(intel_context_get_total_runtime_ns(rq->context),
@@ -1559,7 +1559,7 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 		print_request(m, rq, "\t\tactive ");
 
 		drm_printf(m, "\t\tring->start:  0x%08x\n",
-			   i915_ggtt_offset(rq->ring->vma));
+			   intel_ring_address(rq->ring));
 		drm_printf(m, "\t\tring->head:   0x%08x\n",
 			   rq->ring->head);
 		drm_printf(m, "\t\tring->tail:   0x%08x\n",
@@ -1640,13 +1640,6 @@ ktime_t intel_engine_get_busy_time(struct intel_engine_cs *engine, ktime_t *now)
 	return total;
 }
 
-static bool match_ring(struct i915_request *rq)
-{
-	u32 ring = ENGINE_READ(rq->engine, RING_START);
-
-	return ring == i915_ggtt_offset(rq->ring->vma);
-}
-
 struct i915_request *
 intel_engine_find_active_request(struct intel_engine_cs *engine)
 {
@@ -1686,11 +1679,7 @@ intel_engine_find_active_request(struct intel_engine_cs *engine)
 			continue;
 
 		if (!i915_request_started(request))
-			continue;
-
-		/* More than one preemptible request may match! */
-		if (!match_ring(request))
-			continue;
+			break;
 
 		active = request;
 		break;
diff --git a/drivers/gpu/drm/i915/gt/intel_ring.c b/drivers/gpu/drm/i915/gt/intel_ring.c
index bdb324167ef3..c17cb9f24962 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring.c
@@ -24,33 +24,42 @@ unsigned int intel_ring_update_space(struct intel_ring *ring)
 int intel_ring_pin(struct intel_ring *ring)
 {
 	struct i915_vma *vma = ring->vma;
-	unsigned int flags;
 	void *addr;
 	int ret;
 
 	if (atomic_fetch_inc(&ring->pin_count))
 		return 0;
 
-	/* Ring wraparound at offset 0 sometimes hangs. No idea why. */
-	flags = PIN_OFFSET_BIAS | i915_ggtt_pin_bias(vma);
+	if (!(ring->flags & INTEL_RING_CREATE_INTERNAL)) {
+		unsigned int pin;
 
-	if (vma->obj->stolen)
-		flags |= PIN_MAPPABLE;
-	else
-		flags |= PIN_HIGH;
+		/* Ring wraparound at offset 0 sometimes hangs. No idea why. */
+		pin |= PIN_OFFSET_BIAS | i915_ggtt_pin_bias(vma);
 
-	ret = i915_ggtt_pin(vma, 0, flags);
-	if (unlikely(ret))
-		goto err_unpin;
+		if (vma->obj->stolen)
+			pin |= PIN_MAPPABLE;
+		else
+			pin |= PIN_HIGH;
 
-	if (i915_vma_is_map_and_fenceable(vma))
-		addr = (void __force *)i915_vma_pin_iomap(vma);
-	else
-		addr = i915_gem_object_pin_map(vma->obj,
-					       i915_coherent_map_type(vma->vm->i915));
-	if (IS_ERR(addr)) {
-		ret = PTR_ERR(addr);
-		goto err_ring;
+		ret = i915_ggtt_pin(vma, 0, pin);
+		if (unlikely(ret))
+			goto err_unpin;
+
+		if (i915_vma_is_map_and_fenceable(vma))
+			addr = (void __force *)i915_vma_pin_iomap(vma);
+		else
+			addr = i915_gem_object_pin_map(vma->obj,
+						       i915_coherent_map_type(vma->vm->i915));
+		if (IS_ERR(addr)) {
+			ret = PTR_ERR(addr);
+			goto err_ring;
+		}
+	} else {
+		addr = i915_gem_object_pin_map(vma->obj, I915_MAP_WB);
+		if (IS_ERR(addr)) {
+			ret = PTR_ERR(addr);
+			goto err_ring;
+		}
 	}
 
 	i915_vma_make_unshrinkable(vma);
@@ -91,10 +100,12 @@ void intel_ring_unpin(struct intel_ring *ring)
 		i915_gem_object_unpin_map(vma->obj);
 
 	i915_vma_make_purgeable(vma);
-	i915_vma_unpin(vma);
+	if (!(ring->flags & INTEL_RING_CREATE_INTERNAL))
+		i915_vma_unpin(vma);
 }
 
-static struct i915_vma *create_ring_vma(struct i915_ggtt *ggtt, int size)
+static struct i915_vma *
+create_ring_vma(struct i915_ggtt *ggtt, int size, unsigned int flags)
 {
 	struct i915_address_space *vm = &ggtt->vm;
 	struct drm_i915_private *i915 = vm->i915;
@@ -102,7 +113,8 @@ static struct i915_vma *create_ring_vma(struct i915_ggtt *ggtt, int size)
 	struct i915_vma *vma;
 
 	obj = ERR_PTR(-ENODEV);
-	if (i915_ggtt_has_aperture(ggtt))
+	if (!(flags & INTEL_RING_CREATE_INTERNAL) &&
+	    i915_ggtt_has_aperture(ggtt))
 		obj = i915_gem_object_create_stolen(i915, size);
 	if (IS_ERR(obj))
 		obj = i915_gem_object_create_internal(i915, size);
@@ -128,12 +140,14 @@ static struct i915_vma *create_ring_vma(struct i915_ggtt *ggtt, int size)
 }
 
 struct intel_ring *
-intel_engine_create_ring(struct intel_engine_cs *engine, int size)
+intel_engine_create_ring(struct intel_engine_cs *engine, unsigned int size)
 {
 	struct drm_i915_private *i915 = engine->i915;
+	unsigned int flags = size & GENMASK(11, 0);
 	struct intel_ring *ring;
 	struct i915_vma *vma;
 
+	size ^= flags;
 	GEM_BUG_ON(!is_power_of_2(size));
 	GEM_BUG_ON(RING_CTL_SIZE(size) & ~RING_NR_PAGES);
 
@@ -142,8 +156,10 @@ intel_engine_create_ring(struct intel_engine_cs *engine, int size)
 		return ERR_PTR(-ENOMEM);
 
 	kref_init(&ring->ref);
+
 	ring->size = size;
 	ring->wrap = BITS_PER_TYPE(ring->size) - ilog2(size);
+	ring->flags = flags;
 
 	/*
 	 * Workaround an erratum on the i830 which causes a hang if
@@ -156,11 +172,12 @@ intel_engine_create_ring(struct intel_engine_cs *engine, int size)
 
 	intel_ring_update_space(ring);
 
-	vma = create_ring_vma(engine->gt->ggtt, size);
+	vma = create_ring_vma(engine->gt->ggtt, size, flags);
 	if (IS_ERR(vma)) {
 		kfree(ring);
 		return ERR_CAST(vma);
 	}
+
 	ring->vma = vma;
 
 	return ring;
diff --git a/drivers/gpu/drm/i915/gt/intel_ring.h b/drivers/gpu/drm/i915/gt/intel_ring.h
index cc0ebca65167..d022fa209325 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring.h
+++ b/drivers/gpu/drm/i915/gt/intel_ring.h
@@ -9,12 +9,14 @@
 
 #include "i915_gem.h" /* GEM_BUG_ON */
 #include "i915_request.h"
+#include "i915_vma.h"
 #include "intel_ring_types.h"
 
 struct intel_engine_cs;
 
 struct intel_ring *
-intel_engine_create_ring(struct intel_engine_cs *engine, int size);
+intel_engine_create_ring(struct intel_engine_cs *engine, unsigned int size);
+#define INTEL_RING_CREATE_INTERNAL BIT(0)
 
 u32 *intel_ring_begin(struct i915_request *rq, unsigned int num_dwords);
 int intel_ring_cacheline_align(struct i915_request *rq);
@@ -137,4 +139,12 @@ __intel_ring_space(unsigned int head, unsigned int tail, unsigned int size)
 	return (head - tail - CACHELINE_BYTES) & (size - 1);
 }
 
+static inline u32 intel_ring_address(const struct intel_ring *ring)
+{
+	if (ring->flags & INTEL_RING_CREATE_INTERNAL)
+		return -1;
+
+	return i915_ggtt_offset(ring->vma);
+}
+
 #endif /* INTEL_RING_H */
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_types.h b/drivers/gpu/drm/i915/gt/intel_ring_types.h
index 1a189ea00fd8..d927deafcb33 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_ring_types.h
@@ -47,6 +47,8 @@ struct intel_ring {
 	u32 size;
 	u32 wrap;
 	u32 effective_size;
+
+	unsigned long flags;
 };
 
 #endif /* INTEL_RING_TYPES_H */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
