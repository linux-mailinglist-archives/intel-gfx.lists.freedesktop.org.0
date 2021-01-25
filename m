Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 190A93025D2
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 15:02:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AB8E89DA3;
	Mon, 25 Jan 2021 14:01:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EF4D89D8E
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 14:01:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23693666-1500050 
 for multiple; Mon, 25 Jan 2021 14:01:43 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 14:01:31 +0000
Message-Id: <20210125140136.10494-36-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210125140136.10494-1-chris@chris-wilson.co.uk>
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 36/41] drm/i915/gt: Support creation of
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
Cc: thomas.hellstrom@intel.com, Chris Wilson <chris@chris-wilson.co.uk>
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
 drivers/gpu/drm/i915/gt/intel_engine_cs.c  | 17 +-----
 drivers/gpu/drm/i915/gt/intel_ring.c       | 66 ++++++++++++++--------
 drivers/gpu/drm/i915/gt/intel_ring.h       | 12 +++-
 drivers/gpu/drm/i915/gt/intel_ring_types.h |  2 +
 5 files changed, 59 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 57b6bde2b736..c7ab4ed92da4 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -258,7 +258,7 @@ int __intel_context_do_pin_ww(struct intel_context *ce,
 		}
 
 		CE_TRACE(ce, "pin ring:{start:%08x, head:%04x, tail:%04x}\n",
-			 i915_ggtt_offset(ce->ring->vma),
+			 intel_ring_address(ce->ring),
 			 ce->ring->head, ce->ring->tail);
 
 		handoff = true;
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index a1cd511223a2..936820b240dd 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1321,7 +1321,7 @@ static int print_ring(char *buf, int sz, struct i915_request *rq)
 
 		len = scnprintf(buf, sz,
 				"ring:{start:%08x, hwsp:%08x, seqno:%08x, runtime:%llums}, ",
-				i915_ggtt_offset(rq->ring->vma),
+				intel_ring_address(rq->ring),
 				tl ? tl->ggtt_offset : 0,
 				hwsp_seqno(rq),
 				DIV_ROUND_CLOSEST_ULL(intel_context_get_total_runtime_ns(rq->context),
@@ -1655,7 +1655,7 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 		i915_request_show(m, rq, "\t\tactive ", 0);
 
 		drm_printf(m, "\t\tring->start:  0x%08x\n",
-			   i915_ggtt_offset(rq->ring->vma));
+			   intel_ring_address(rq->ring));
 		drm_printf(m, "\t\tring->head:   0x%08x\n",
 			   rq->ring->head);
 		drm_printf(m, "\t\tring->tail:   0x%08x\n",
@@ -1736,13 +1736,6 @@ ktime_t intel_engine_get_busy_time(struct intel_engine_cs *engine, ktime_t *now)
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
@@ -1782,11 +1775,7 @@ intel_engine_find_active_request(struct intel_engine_cs *engine)
 			continue;
 
 		if (!__i915_request_has_started(request))
-			continue;
-
-		/* More than one preemptible request may match! */
-		if (!match_ring(request))
-			continue;
+			break;
 
 		active = request;
 		break;
diff --git a/drivers/gpu/drm/i915/gt/intel_ring.c b/drivers/gpu/drm/i915/gt/intel_ring.c
index 29c87b3c23bc..3ece56251dac 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring.c
@@ -31,33 +31,42 @@ void __intel_ring_pin(struct intel_ring *ring)
 int intel_ring_pin(struct intel_ring *ring, struct i915_gem_ww_ctx *ww)
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
+		int type = i915_coherent_map_type(vma->vm->i915);
+		unsigned int pin;
 
-	if (i915_gem_object_is_stolen(vma->obj))
-		flags |= PIN_MAPPABLE;
-	else
-		flags |= PIN_HIGH;
+		/* Ring wraparound at offset 0 sometimes hangs. No idea why. */
+		pin |= PIN_OFFSET_BIAS | i915_ggtt_pin_bias(vma);
 
-	ret = i915_ggtt_pin(vma, ww, 0, flags);
-	if (unlikely(ret))
-		goto err_unpin;
+		if (i915_gem_object_is_stolen(vma->obj))
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
+		ret = i915_ggtt_pin(vma, ww, 0, pin);
+		if (unlikely(ret))
+			goto err_unpin;
+
+		if (i915_vma_is_map_and_fenceable(vma))
+			addr = (void __force *)i915_vma_pin_iomap(vma);
+		else
+			addr = i915_gem_object_pin_map(vma->obj, type);
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
@@ -98,10 +107,12 @@ void intel_ring_unpin(struct intel_ring *ring)
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
@@ -109,8 +120,10 @@ static struct i915_vma *create_ring_vma(struct i915_ggtt *ggtt, int size)
 	struct i915_vma *vma;
 
 	obj = ERR_PTR(-ENODEV);
-	if (i915_ggtt_has_aperture(ggtt))
-		obj = i915_gem_object_create_stolen(i915, size);
+	if (!(flags & INTEL_RING_CREATE_INTERNAL)) {
+		if (i915_ggtt_has_aperture(ggtt))
+			obj = i915_gem_object_create_stolen(i915, size);
+	}
 	if (IS_ERR(obj))
 		obj = i915_gem_object_create_internal(i915, size);
 	if (IS_ERR(obj))
@@ -135,12 +148,14 @@ static struct i915_vma *create_ring_vma(struct i915_ggtt *ggtt, int size)
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
 
@@ -149,8 +164,10 @@ intel_engine_create_ring(struct intel_engine_cs *engine, int size)
 		return ERR_PTR(-ENOMEM);
 
 	kref_init(&ring->ref);
+
 	ring->size = size;
 	ring->wrap = BITS_PER_TYPE(ring->size) - ilog2(size);
+	ring->flags = flags;
 
 	/*
 	 * Workaround an erratum on the i830 which causes a hang if
@@ -163,11 +180,12 @@ intel_engine_create_ring(struct intel_engine_cs *engine, int size)
 
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
index dbf5f14a136f..cbff78cf5508 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring.h
+++ b/drivers/gpu/drm/i915/gt/intel_ring.h
@@ -8,12 +8,14 @@
 
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
@@ -138,4 +140,12 @@ __intel_ring_space(unsigned int head, unsigned int tail, unsigned int size)
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
index 49ccb76dda3b..3d091c699110 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_ring_types.h
@@ -46,6 +46,8 @@ struct intel_ring {
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
