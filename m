Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC83B220C30
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 13:52:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 970AC6EAD2;
	Wed, 15 Jul 2020 11:52:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 791E26EACD
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 11:52:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21826169-1500050 
 for multiple; Wed, 15 Jul 2020 12:52:00 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jul 2020 12:51:42 +0100
Message-Id: <20200715115147.11866-61-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200715115147.11866-1-chris@chris-wilson.co.uk>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 61/66] drm/i915/gt: Support creation of
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
index 9ba1c15114d7..fb32b6c92f29 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -129,7 +129,7 @@ int __intel_context_do_pin(struct intel_context *ce)
 			goto err_active;
 
 		CE_TRACE(ce, "pin ring:{start:%08x, head:%04x, tail:%04x}\n",
-			 i915_ggtt_offset(ce->ring->vma),
+			 intel_ring_address(ce->ring),
 			 ce->ring->head, ce->ring->tail);
 
 		smp_mb__before_atomic(); /* flush pin before it is visible */
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index af9cc42d3061..df234ce10907 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1342,7 +1342,7 @@ static int print_ring(char *buf, int sz, struct i915_request *rq)
 
 		len = scnprintf(buf, sz,
 				"ring:{start:%08x, hwsp:%08x, seqno:%08x, runtime:%llums}, ",
-				i915_ggtt_offset(rq->ring->vma),
+				intel_ring_address(rq->ring),
 				tl ? tl->hwsp_offset : 0,
 				hwsp_seqno(rq),
 				DIV_ROUND_CLOSEST_ULL(intel_context_get_total_runtime_ns(rq->context),
@@ -1634,7 +1634,7 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 		print_request(m, rq, "\t\tactive ");
 
 		drm_printf(m, "\t\tring->start:  0x%08x\n",
-			   i915_ggtt_offset(rq->ring->vma));
+			   intel_ring_address(rq->ring));
 		drm_printf(m, "\t\tring->head:   0x%08x\n",
 			   rq->ring->head);
 		drm_printf(m, "\t\tring->tail:   0x%08x\n",
@@ -1715,13 +1715,6 @@ ktime_t intel_engine_get_busy_time(struct intel_engine_cs *engine, ktime_t *now)
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
@@ -1761,11 +1754,7 @@ intel_engine_find_active_request(struct intel_engine_cs *engine)
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
index 1c21f5725731..9aeb4025c485 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring.c
@@ -33,33 +33,42 @@ int intel_ring_pin_locked(struct intel_ring *ring)
 {
 	struct i915_vma *vma = ring->vma;
 	enum i915_map_type type;
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
 
-	ret = i915_ggtt_pin_locked(vma, 0, flags);
-	if (unlikely(ret))
-		goto err_unpin;
+		if (vma->obj->stolen)
+			pin |= PIN_MAPPABLE;
+		else
+			pin |= PIN_HIGH;
 
-	type = i915_coherent_map_type(vma->vm->i915);
-	if (i915_vma_is_map_and_fenceable(vma))
-		addr = (void __force *)i915_vma_pin_iomap(vma);
-	else
-		addr = __i915_gem_object_pin_map_locked(vma->obj, type);
-	if (IS_ERR(addr)) {
-		ret = PTR_ERR(addr);
-		goto err_ring;
+		ret = i915_ggtt_pin_locked(vma, 0, pin);
+		if (unlikely(ret))
+			goto err_unpin;
+
+		type = i915_coherent_map_type(vma->vm->i915);
+		if (i915_vma_is_map_and_fenceable(vma))
+			addr = (void __force *)i915_vma_pin_iomap(vma);
+		else
+			addr = __i915_gem_object_pin_map_locked(vma->obj, type);
+		if (IS_ERR(addr)) {
+			ret = PTR_ERR(addr);
+			goto err_ring;
+		}
+	} else {
+		addr = __i915_gem_object_pin_map_locked(vma->obj, I915_MAP_WB);
+		if (IS_ERR(addr)) {
+			ret = PTR_ERR(addr);
+			goto err_ring;
+		}
 	}
 
 	i915_vma_make_unshrinkable(vma);
@@ -100,10 +109,12 @@ void intel_ring_unpin(struct intel_ring *ring)
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
@@ -111,7 +122,8 @@ static struct i915_vma *create_ring_vma(struct i915_ggtt *ggtt, int size)
 	struct i915_vma *vma;
 
 	obj = ERR_PTR(-ENODEV);
-	if (i915_ggtt_has_aperture(ggtt))
+	if (!(flags & INTEL_RING_CREATE_INTERNAL) &&
+	    i915_ggtt_has_aperture(ggtt))
 		obj = i915_gem_object_create_stolen(i915, size);
 	if (IS_ERR(obj))
 		obj = i915_gem_object_create_internal(i915, size);
@@ -137,12 +149,14 @@ static struct i915_vma *create_ring_vma(struct i915_ggtt *ggtt, int size)
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
 
@@ -151,8 +165,10 @@ intel_engine_create_ring(struct intel_engine_cs *engine, int size)
 		return ERR_PTR(-ENOMEM);
 
 	kref_init(&ring->ref);
+
 	ring->size = size;
 	ring->wrap = BITS_PER_TYPE(ring->size) - ilog2(size);
+	ring->flags = flags;
 
 	/*
 	 * Workaround an erratum on the i830 which causes a hang if
@@ -165,11 +181,12 @@ intel_engine_create_ring(struct intel_engine_cs *engine, int size)
 
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
index 34134a0b80b3..55eb1e139c12 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring.h
+++ b/drivers/gpu/drm/i915/gt/intel_ring.h
@@ -9,13 +9,15 @@
 
 #include "i915_gem.h" /* GEM_BUG_ON */
 #include "i915_request.h"
+#include "i915_vma.h"
 #include "intel_ring_types.h"
 
 struct i915_acquire_ctx;
 struct intel_engine_cs;
 
 struct intel_ring *
-intel_engine_create_ring(struct intel_engine_cs *engine, int size);
+intel_engine_create_ring(struct intel_engine_cs *engine, unsigned int size);
+#define INTEL_RING_CREATE_INTERNAL BIT(0)
 
 u32 *intel_ring_begin(struct i915_request *rq, unsigned int num_dwords);
 int intel_ring_cacheline_align(struct i915_request *rq);
@@ -140,4 +142,12 @@ __intel_ring_space(unsigned int head, unsigned int tail, unsigned int size)
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
