Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD4B1F7801
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 14:40:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B67C56E07D;
	Fri, 12 Jun 2020 12:40:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30D3F6E07D
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 12:40:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21475497-1500050 
 for multiple; Fri, 12 Jun 2020 13:39:50 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jun 2020 13:39:49 +0100
Message-Id: <20200612123949.7093-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200611160529.9558-1-chris@chris-wilson.co.uk>
References: <20200611160529.9558-1-chris@chris-wilson.co.uk>
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

v2: Follow more closer with the gen5 w/a and include some
post-invalidate flushes as well.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2018
References: a889580c087a ("drm/i915: Flush GPU relocs harder for gen3")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/gen2_engine_cs.c | 61 ++++++++++--------------
 1 file changed, 25 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
index 3fb0dc1fb910..5400d657f334 100644
--- a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
@@ -13,28 +13,25 @@
 
 int gen2_emit_flush(struct i915_request *rq, u32 mode)
 {
-	unsigned int num_store_dw;
+	unsigned int num_store_dw = 12;
 	u32 cmd, *cs;
 
 	cmd = MI_FLUSH;
-	num_store_dw = 0;
 	if (mode & EMIT_INVALIDATE)
 		cmd |= MI_READ_FLUSH;
-	if (mode & EMIT_FLUSH)
-		num_store_dw = 4;
 
-	cs = intel_ring_begin(rq, 2 + 3 * num_store_dw);
+	cs = intel_ring_begin(rq, 2 + 4 * num_store_dw);
 	if (IS_ERR(cs))
 		return PTR_ERR(cs);
 
 	*cs++ = cmd;
 	while (num_store_dw--) {
-		*cs++ = MI_STORE_DWORD_IMM | MI_MEM_VIRTUAL;
-		*cs++ = intel_gt_scratch_offset(rq->engine->gt,
-						INTEL_GT_SCRATCH_FIELD_DEFAULT);
-		*cs++ = 0;
+		*cs++ = MI_STORE_DWORD_INDEX;
+		*cs++ = I915_GEM_HWS_SCRATCH * sizeof(u32);
+		*cs++ = rq->fence.seqno - 1;
+		*cs++ = MI_FLUSH | MI_NO_WRITE_FLUSH;
 	}
-	*cs++ = MI_FLUSH | MI_NO_WRITE_FLUSH;
+	*cs++ = cmd;
 
 	intel_ring_advance(rq, cs);
 
@@ -142,38 +139,21 @@ int gen4_emit_flush_vcs(struct i915_request *rq, u32 mode)
 	return 0;
 }
 
-u32 *gen3_emit_breadcrumb(struct i915_request *rq, u32 *cs)
+static u32 *__gen2_emit_breadcrumb(struct i915_request *rq, u32 *cs,
+				   int flush, int post)
 {
 	GEM_BUG_ON(i915_request_active_timeline(rq)->hwsp_ggtt != rq->engine->status_page.vma);
 	GEM_BUG_ON(offset_in_page(i915_request_active_timeline(rq)->hwsp_offset) != I915_GEM_HWS_SEQNO_ADDR);
 
 	*cs++ = MI_FLUSH;
 
-	*cs++ = MI_STORE_DWORD_INDEX;
-	*cs++ = I915_GEM_HWS_SEQNO_ADDR;
-	*cs++ = rq->fence.seqno;
-
-	*cs++ = MI_USER_INTERRUPT;
-	*cs++ = MI_NOOP;
-
-	rq->tail = intel_ring_offset(rq, cs);
-	assert_ring_tail_valid(rq->ring, rq->tail);
-
-	return cs;
-}
-
-#define GEN5_WA_STORES 8 /* must be at least 1! */
-u32 *gen5_emit_breadcrumb(struct i915_request *rq, u32 *cs)
-{
-	int i;
-
-	GEM_BUG_ON(i915_request_active_timeline(rq)->hwsp_ggtt != rq->engine->status_page.vma);
-	GEM_BUG_ON(offset_in_page(i915_request_active_timeline(rq)->hwsp_offset) != I915_GEM_HWS_SEQNO_ADDR);
-
-	*cs++ = MI_FLUSH;
+	while (flush--) {
+		*cs++ = MI_STORE_DWORD_INDEX;
+		*cs++ = I915_GEM_HWS_SCRATCH * sizeof(u32);
+		*cs++ = rq->fence.seqno;
+	}
 
-	BUILD_BUG_ON(GEN5_WA_STORES < 1);
-	for (i = 0; i < GEN5_WA_STORES; i++) {
+	while (post--) {
 		*cs++ = MI_STORE_DWORD_INDEX;
 		*cs++ = I915_GEM_HWS_SEQNO_ADDR;
 		*cs++ = rq->fence.seqno;
@@ -186,7 +166,16 @@ u32 *gen5_emit_breadcrumb(struct i915_request *rq, u32 *cs)
 
 	return cs;
 }
-#undef GEN5_WA_STORES
+
+u32 *gen3_emit_breadcrumb(struct i915_request *rq, u32 *cs)
+{
+	return __gen2_emit_breadcrumb(rq, cs, 16, 8);
+}
+
+u32 *gen5_emit_breadcrumb(struct i915_request *rq, u32 *cs)
+{
+	return __gen2_emit_breadcrumb(rq, cs, 8, 8);
+}
 
 /* Just userspace ABI convention to limit the wa batch bo to a resonable size */
 #define I830_BATCH_LIMIT SZ_256K
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
