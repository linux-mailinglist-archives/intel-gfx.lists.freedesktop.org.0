Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E441F6BCE
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 18:06:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0D216E83F;
	Thu, 11 Jun 2020 16:06:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B0686E83F
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 16:06:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21467001-1500050 
 for multiple; Thu, 11 Jun 2020 17:05:32 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jun 2020 17:05:29 +0100
Message-Id: <20200611160529.9558-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Flush gen3 relocs harder, again
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

gen3 does not fully flush MI stores to memory on MI_FLUSH, such that a
subsequent read from e.g. the sampler can bypass the store and read the
stale value from memory. This is a serious issue when we are using MI
stores to rewrite the batches for relocation, as it means that the batch
is reading from random user/kernel memory. While it is particularly
sensitive [and detectable] for relocations, reading stale data at any
time is a worry.

Having started with a small number of delaying stores and doubling until
no more incoherency was seen over a few hours (with and without
background memory pressure), 32 was the magic number.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2018
References: a889580c087a ("drm/i915: Flush GPU relocs harder for gen3")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
So gen3 requires a delay after to flush the previous stores, gen5 is
assuming it requires a delay between the seqno and the
MI_USER_INTERRUPT. Here I've made gen5 reuse the gen3 approach, but I
need to verify that it still holds.
---
 drivers/gpu/drm/i915/gt/gen2_engine_cs.c | 39 +++++++++---------------
 1 file changed, 15 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
index 3fb0dc1fb910..342c476ec872 100644
--- a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
@@ -142,19 +142,26 @@ int gen4_emit_flush_vcs(struct i915_request *rq, u32 mode)
 	return 0;
 }
 
-u32 *gen3_emit_breadcrumb(struct i915_request *rq, u32 *cs)
+static u32 *__gen2_emit_breadcrumb(struct i915_request *rq, u32 *cs, int count)
 {
 	GEM_BUG_ON(i915_request_active_timeline(rq)->hwsp_ggtt != rq->engine->status_page.vma);
 	GEM_BUG_ON(offset_in_page(i915_request_active_timeline(rq)->hwsp_offset) != I915_GEM_HWS_SEQNO_ADDR);
 
 	*cs++ = MI_FLUSH;
+	*cs++ = MI_NOOP;
+
+	while (count--) {
+		*cs++ = MI_STORE_DWORD_INDEX;
+		*cs++ = I915_GEM_HWS_SCRATCH * sizeof(u32);
+		*cs++ = rq->fence.seqno;
+		*cs++ = MI_FLUSH | MI_NO_WRITE_FLUSH;
+	}
 
 	*cs++ = MI_STORE_DWORD_INDEX;
 	*cs++ = I915_GEM_HWS_SEQNO_ADDR;
 	*cs++ = rq->fence.seqno;
 
 	*cs++ = MI_USER_INTERRUPT;
-	*cs++ = MI_NOOP;
 
 	rq->tail = intel_ring_offset(rq, cs);
 	assert_ring_tail_valid(rq->ring, rq->tail);
@@ -162,31 +169,15 @@ u32 *gen3_emit_breadcrumb(struct i915_request *rq, u32 *cs)
 	return cs;
 }
 
-#define GEN5_WA_STORES 8 /* must be at least 1! */
-u32 *gen5_emit_breadcrumb(struct i915_request *rq, u32 *cs)
+u32 *gen3_emit_breadcrumb(struct i915_request *rq, u32 *cs)
 {
-	int i;
-
-	GEM_BUG_ON(i915_request_active_timeline(rq)->hwsp_ggtt != rq->engine->status_page.vma);
-	GEM_BUG_ON(offset_in_page(i915_request_active_timeline(rq)->hwsp_offset) != I915_GEM_HWS_SEQNO_ADDR);
-
-	*cs++ = MI_FLUSH;
-
-	BUILD_BUG_ON(GEN5_WA_STORES < 1);
-	for (i = 0; i < GEN5_WA_STORES; i++) {
-		*cs++ = MI_STORE_DWORD_INDEX;
-		*cs++ = I915_GEM_HWS_SEQNO_ADDR;
-		*cs++ = rq->fence.seqno;
-	}
-
-	*cs++ = MI_USER_INTERRUPT;
-
-	rq->tail = intel_ring_offset(rq, cs);
-	assert_ring_tail_valid(rq->ring, rq->tail);
+	return __gen2_emit_breadcrumb(rq, cs, 32);
+}
 
-	return cs;
+u32 *gen5_emit_breadcrumb(struct i915_request *rq, u32 *cs)
+{
+	return __gen2_emit_breadcrumb(rq, cs, 8);
 }
-#undef GEN5_WA_STORES
 
 /* Just userspace ABI convention to limit the wa batch bo to a resonable size */
 #define I830_BATCH_LIMIT SZ_256K
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
